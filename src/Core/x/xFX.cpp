#include "xFX.h"

#include "containers.h"
#include "xstransvc.h"

#include "../p2/iMath.h"
#include "../p2/iDraw.h"
#include "../p2/iModel.h"
#include "../p2/iFX.h"
#include "../p2/iParMgr.h"
#include "../../Game/zParEmitter.h"
#include "../../Game/zSurface.h"
#include "../../Game/zFX.h"
#include "../../Game/zGlobals.h"

#include <string.h>

#include <rpmatfx.h>
#include <rpskin.h>

/* boot.HIP texture IDs */
#define ID_gloss_edge 0xB8C2351E
#define ID_rainbowfilm_smooth32 0x741B0566

extern const char _stringBase0_7[];

extern float32 _957_0;
extern float32 _958;
extern float32 _995;
extern float32 _1132;
extern float32 _1171;
extern float32 _1872;

RpAtomicCallBackRender gAtomicRenderCallBack = NULL;
float32 EnvMapShininess = 1.0f;
RpLight* MainLight = NULL;

static uint32 num_fx_atomics = 0;

static uint32 xfx_initted = 0;

static void LightResetFrame(RpLight* light);

void xFXInit()
{
    if (!xfx_initted)
    {
        xfx_initted = 1;

        RpLight* light = RpLightCreate(rpLIGHTDIRECTIONAL);

        if (light)
        {
            RwFrame* frame = RwFrameCreate();

            if (frame)
            {
                RpLightSetFrame(light, frame);
                LightResetFrame(light);

                MainLight = light;
            }
            else
            {
                RpLightDestroy(light);
            }
        }

        xFXanimUVCreate();
        xFXAuraInit();
    }
}

#define RING_COUNT 8

extern xFXRing ringlist[RING_COUNT];
static uint32 Im3DBufferPos = 0;
static RwTexture* g_txtr_drawRing = NULL;

static void DrawRingSetup()
{
    g_txtr_drawRing = (RwTexture*)xSTFindAsset(ID_rainbowfilm_smooth32, NULL);
}

static void DrawRingSceneExit()
{
    g_txtr_drawRing = NULL;
}

#if 1
static void DrawRing(xFXRing* m);
// func_80026780
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "DrawRing__FP7xFXRing")
#else
static void DrawRing(xFXRing* m)
{
    // todo: uses int-to-float conversion
}
#endif

#ifndef NON_MATCHING
// func_80026D4C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXRingCreate__FPC5xVec3PC7xFXRing")
#else
xFXRing* xFXRingCreate(const xVec3* pos, const xFXRing* params)
{
    xFXRing* ring = &ringlist[0];

    if (!pos || !params)
    {
        return NULL;
    }

    for (int32 i = 0; i < RING_COUNT; i++, ring++)
    {
        if (ring->time <= _957_0)
        {
            // non-matching: _958 is only loaded once

            memcpy(ring, params, sizeof(xFXRing));

            ring->time = _995;
            ring->pos = *pos;
            ring->ring_radius_delta *= _958 / ring->lifetime;
            ring->ring_height_delta *= _958 / ring->lifetime;
            ring->ring_tilt_delta *= _958 / ring->lifetime;

            return ring;
        }
    }

    return NULL;
}
#endif

#ifndef NON_MATCHING
static void xFXRingUpdate(float32 dt);
// func_80026E34
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXRingUpdate__Ff")
#else
static void xFXRingUpdate(float32 dt)
{
    xFXRing* ring = &ringlist[0];

    if ((float32)iabs(dt) < _995)
    {
        return;
    }

    for (int32 i = 0; i < RING_COUNT; i++, ring++)
    {
        if (ring->time <= _957_0)
        {
            continue;
        }

        float32 lifetime = ring->lifetime;

        if (lifetime < dt)
        {
            lifetime = dt;
        }

        ring->time += dt;

        float32 t = ring->time / lifetime;

        // non-matching: float scheduling

        if (t > _958)
        {
            ring->time = _957_0;

            if (ring->parent)
            {
                *ring->parent = NULL;
            }

            ring->parent = NULL;
        }
    }
}
#endif

void xFXRingRender()
{
    int32 i;
    xFXRing* ring = &ringlist[0];

    for (i = 0; i < RING_COUNT; i++, ring++)
    {
        if (ring->time > _957_0)
        {
            DrawRing(ring);
        }
    }
}

static RpMaterial* MaterialSetEnvMap(RpMaterial* material, void* data);
static RpMaterial* MaterialSetBumpMap(RpMaterial* material, void* data);
static RpMaterial* MaterialSetBumpEnvMap(RpMaterial* material, RwTexture* env, float32 shininess,
                                         RwTexture* bump, float32 bumpiness);

#ifndef NON_MATCHING
// func_80026FA8
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFX_SceneEnter__FP7RpWorld")
#else
void xFX_SceneEnter(RpWorld* world)
{
    int32 i;
    int32 num = RpWorldGetNumMaterials(world);

    for (i = 0; i < num; i++)
    {
        xSurface* sp = zSurfaceGetSurface(i);
        zSurfaceProps* pp = (zSurfaceProps*)sp->moprops;

        if (pp && pp->asset)
        {
            zSurfMatFX* fxp = &pp->asset->matfx;

            if (fxp->flags)
            {
                if (fxp->flags == 0x10)
                {
                    fxp->flags |= 0x1;
                }

                RpMaterial* mp = RpWorldGetMaterial(world, i);

                if (RpMaterialGetTexture(mp))
                {
                    gFXSurfaceFlags = fxp->flags;

                    if (fxp->flags & 0x1)
                    {
                        RwTexture* env = (RwTexture*)xSTFindAsset(fxp->envmapID, NULL);

                        if (!env)
                        {
                            continue;
                        }

                        MaterialSetEnvMap(mp, env);
                        RpMatFXMaterialSetEnvMapCoefficient(mp, _1132 * fxp->shininess);
                    }

                    if (fxp->flags & 0x2)
                    {
                        RwTexture* bump = (RwTexture*)xSTFindAsset(fxp->bumpmapID, NULL);

                        if (!bump)
                        {
                            continue;
                        }

                        MaterialSetBumpMap(mp, bump);
                        RpMatFXMaterialSetBumpMapCoefficient(mp, fxp->bumpiness);
                    }

                    if (fxp->flags & 0x4)
                    {
                        RwTexture* env = (RwTexture*)xSTFindAsset(fxp->envmapID, NULL);
                        RwTexture* bump = (RwTexture*)xSTFindAsset(fxp->bumpmapID, NULL);

                        if (!env || !bump)
                        {
                            continue;
                        }

                        MaterialSetBumpEnvMap(mp, env, fxp->shininess, bump, fxp->bumpiness);
                    }
                }
            }
        }
    }

    zScene* sc = globals.sceneCur;

    for (i = 0; i < sc->num_act_ents; i++)
    {
        xEnt* ent = sc->act_ents[i];

        if (!gAtomicRenderCallBack && ent->model)
        {
            RpAtomicCallBackRender tmp = RpAtomicGetRenderCallBack(ent->model->Data);

            RpAtomicSetRenderCallBack(ent->model->Data, NULL);

            gAtomicRenderCallBack = RpAtomicGetRenderCallBack(ent->model->Data);

            RpAtomicSetRenderCallBack(ent->model->Data, tmp);
        }

        if (ent->model)
        {
            // non-matching: strings are getting cached for some reason

            uint32 bubble;

            bubble = (ent->id == xStrHash(_stringBase0_7));
            bubble |= (ent->id == xStrHash(_stringBase0_7 + 13));
            bubble |= (ent->id == xStrHash(_stringBase0_7 + 28));
            bubble |= (ent->id == xStrHash(_stringBase0_7 + 42));
            bubble |= (ent->id == xStrHash(_stringBase0_7 + 62));
            bubble |= (ent->id == xStrHash(_stringBase0_7 + 75));

            if (bubble)
            {
                xSTAssetName(ent->id);

                RpAtomicSetRenderCallBack(ent->model->Data, xFXBubbleRender);
            }
        }
    }

    num_fx_atomics = 0;
}
#endif

void xFX_SceneExit(RpWorld*)
{
}

void xFXUpdate(float32 dt)
{
    xFXRingUpdate(dt);
    xFXRibbonUpdate(dt);
    xFXAuraUpdate(dt);
}

static const RwV3d _1168 = { 1, 0, 0 };
static const RwV3d _1169 = { 0, 1, 0 };

#ifndef NON_MATCHING
// func_80027328
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "LightResetFrame__FP7RpLight")
#else
static void LightResetFrame(RpLight* light)
{
    // non-matching: lwzu instruction

    RwV3d v1 = { 1, 0, 0 };
    RwV3d v2 = { 0, 1, 0 };

    RwFrame* frame = RpLightGetFrame(light);

    RwFrameRotate(frame, &v1, _1171, rwCOMBINEREPLACE);
    RwFrameRotate(frame, &v2, _1171, rwCOMBINEPOSTCONCAT);
}
#endif

static RpMaterial* MaterialDisableMatFX(RpMaterial* material, void*)
{
    RpMatFXMaterialSetEffects(material, rpMATFXEFFECTNULL);
    return material;
}

RpAtomic* AtomicDisableMatFX(RpAtomic* atomic)
{
    RpMatFXAtomicEnableEffects(atomic);

    RpGeometry* geometry = RpAtomicGetGeometry(atomic);

    if (geometry)
    {
        RpGeometryForAllMaterials(geometry, MaterialDisableMatFX, NULL);
    }

    return atomic;
}

static RpAtomic* PreAllocMatFX_cb(RpAtomic* atomic, void*)
{
    AtomicDisableMatFX(atomic);
    return atomic;
}

void xFXPreAllocMatFX(RpClump* clump)
{
    RpClumpForAllAtomics(clump, PreAllocMatFX_cb, NULL);
}

RpMaterial* MaterialSetShininess(RpMaterial* material, void*)
{
    RpMatFXMaterialFlags flags = RpMatFXMaterialGetEffects(material);

    if (flags == rpMATFXEFFECTENVMAP || flags == rpMATFXEFFECTBUMPENVMAP)
    {
        RpMatFXMaterialSetEnvMapCoefficient(material, EnvMapShininess);
    }

    return material;
}

static RpAtomic* AtomicSetShininess(RpAtomic* atomic, void* data)
{
    RpGeometry* geometry = RpAtomicGetGeometry(atomic);

    if (geometry)
    {
        RpGeometryForAllMaterials(geometry, MaterialSetShininess, data);
    }

    return atomic;
}

static RpMaterial* MaterialSetEnvMap(RpMaterial* material, void* data)
{
    if (!data)
    {
        return NULL;
    }

    if (RpMaterialGetTexture(material))
    {
        RwTexture* texture = (RwTexture*)data;

        if (texture)
        {
            RwFrame* frame;

            if (gFXSurfaceFlags & 0x10)
            {
                if (globals.camera.lo_cam)
                {
                    frame = RwCameraGetFrame(globals.camera.lo_cam);
                }
                else
                {
                    frame = RpLightGetFrame(MainLight);
                }
            }
            else
            {
                frame = RpLightGetFrame(MainLight);
            }

            RpMatFXMaterialSetEffects(material, rpMATFXEFFECTENVMAP);
            RpMatFXMaterialSetupEnvMap(material, texture, frame, FALSE, _958);
        }
        else
        {
            RpMatFXMaterialSetEffects(material, rpMATFXEFFECTNULL);
        }
    }

    return material;
}

#ifndef NON_MATCHING
RpMaterial* MaterialSetEnvMap2(RpMaterial* material, void* data);
// func_800275F8
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "MaterialSetEnvMap2__FP10RpMaterialPv")
#else
RpMaterial* MaterialSetEnvMap2(RpMaterial* material, void* data)
{
    if (RpMaterialGetTexture(material))
    {
        const RwChar* textureName;
        RwTexture* texture = (RwTexture*)data;
        RwFrame* frame;

        // non-matching: scheduling

        textureName = RwTextureGetName(texture);

        if (rwstrcmp(textureName, _stringBase0_7 + 88) == 0)
        {
            frame = RwCameraGetFrame(globals.camera.lo_cam);
        }
        else
        {
            frame = RpLightGetFrame(MainLight);
        }

        RpMatFXMaterialSetEffects(material, rpMATFXEFFECTENVMAP);
        RpMatFXMaterialSetupEnvMap(material, texture, frame, FALSE, EnvMapShininess);
    }

    return material;
}
#endif

struct xFXBubbleParams
{
    uint32 pass1 : 1;
    uint32 pass2 : 1;
    uint32 pass3 : 1;
    uint32 padding : 5;
    uint8 pass1_alpha;
    uint8 pass2_alpha;
    uint8 pass3_alpha;
    uint32 pass1_fbmsk;
    uint32 fresnel_map;
    float32 fresnel_map_coeff;
    uint32 env_map;
    float32 env_map_coeff;
};

static xFXBubbleParams defaultBFX = {
    // pass1, pass2, pass3, padding
    1, 1, 1, 0,
    // pass1_alpha, pass2_alpha, pass3_alpha, pass1_fbsk
    0, 0, 192, 0xFFFFFFFF,
    // fresnel_map, fresnel_map_coeff
    ID_gloss_edge, 0.75f,
    // env_map, env_map_coeff
    ID_rainbowfilm_smooth32, 0.5f
};

static uint32 bfx_curr = 0;
static xFXBubbleParams* BFX = &defaultBFX;

#define env_map_setup(atomic, envmapID, shininess)                                                 \
    {                                                                                              \
        gFXSurfaceFlags = 0x10;                                                                    \
        xFXAtomicEnvMapSetup((atomic), (envmapID), (shininess));                                   \
        gFXSurfaceFlags = 0;                                                                       \
    }

#ifndef NON_MATCHING
// func_800276AC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXBubbleRender__FP8RpAtomic")
#else
RpAtomic* xFXBubbleRender(RpAtomic* atomic)
{
    RwCullMode cmode;
    xFXBubbleParams* bp = &BFX[bfx_curr];

    RwRenderStateGet(rwRENDERSTATECULLMODE, (void*)&cmode);
    RwRenderStateSet(rwRENDERSTATECULLMODE, (void*)rwCULLMODECULLBACK);

    iDrawSetFBMSK(bp->pass1_fbmsk);
    iModelSetMaterialAlpha(atomic, bp->pass1_alpha);

    if (bp->pass1)
    {
        AtomicDisableMatFX(atomic);
        gAtomicRenderCallBack(atomic);
    }

    iDrawSetFBMSK(0);
    iModelSetMaterialAlpha(atomic, bp->pass2_alpha);

    if (bp->pass2)
    {
        // non-matching: scheduling

        env_map_setup(atomic, bp->fresnel_map, bp->fresnel_map_coeff);
        gAtomicRenderCallBack(atomic);
    }

    iModelSetMaterialAlpha(atomic, bp->pass3_alpha);

    if (bp->pass3)
    {
        // non-matching: scheduling

        AtomicDisableMatFX(atomic);
        env_map_setup(atomic, bp->env_map, bp->env_map_coeff);
        gAtomicRenderCallBack(atomic);
    }

    RwRenderStateSet(rwRENDERSTATECULLMODE, (void*)cmode);
    return atomic;
}
#endif

static uint32 sFresnelMap = 0;
static uint32 sEnvMap = 0;
static int32 sTweaked = 0;

#ifndef NON_MATCHING
// func_800277EC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXShinyRender__FP8RpAtomic")
#else
RpAtomic* xFXShinyRender(RpAtomic* atomic)
{
    // non-matching: scheduling in multiple areas

    if (!sTweaked)
    {
        sEnvMap = xStrHash(_stringBase0_7 + 94);
        sFresnelMap = xStrHash(_stringBase0_7 + 114);
        sTweaked = 1;
    }

    RwCullMode cmode;

    RwRenderStateGet(rwRENDERSTATECULLMODE, (void*)&cmode);
    RwRenderStateSet(rwRENDERSTATECULLMODE, (void*)rwCULLMODECULLBACK);

    iDrawSetFBMSK(0xFFFFFFFF);
    iModelSetMaterialAlpha(atomic, 255);
    AtomicDisableMatFX(atomic);
    gAtomicRenderCallBack(atomic);

    iDrawSetFBMSK(0);
    iModelSetMaterialAlpha(atomic, 0);
    env_map_setup(atomic, sFresnelMap, _957_0);
    gAtomicRenderCallBack(atomic);

    iModelSetMaterialAlpha(atomic, 255);
    AtomicDisableMatFX(atomic);
    env_map_setup(atomic, sEnvMap, _958);
    gAtomicRenderCallBack(atomic);

    RwRenderStateSet(rwRENDERSTATECULLMODE, (void*)cmode);
    return atomic;
}
#endif

static RpAtomic* AtomicSetEnvMap(RpAtomic* atomic, void* data)
{
    RpMatFXAtomicEnableEffects(atomic);

    RpGeometry* geometry = RpAtomicGetGeometry(atomic);

    if (geometry)
    {
        RpGeometryForAllMaterials(geometry, MaterialSetEnvMap2, data);
    }

    return atomic;
}

RpAtomic* xFXAtomicEnvMapSetup(RpAtomic* atomic, uint32 envmapID, float32 shininess)
{
    RwTexture* env = (RwTexture*)xSTFindAsset(envmapID, NULL);

    if (env)
    {
        AtomicSetEnvMap(atomic, env);

        float32 tmp = EnvMapShininess;

        EnvMapShininess = shininess;
        AtomicSetShininess(atomic, NULL);

        EnvMapShininess = tmp;

        RpSkin* skin = RpSkinGeometryGetSkin(RpAtomicGetGeometry(atomic));

        if (skin)
        {
            RpSkinAtomicSetType(atomic, rpSKINTYPEMATFX);
        }

        return atomic;
    }

    return NULL;
}

static RpMaterial* MaterialSetBumpMap(RpMaterial* material, void* data)
{
    if (!data)
    {
        return NULL;
    }

    if (RpMaterialGetTexture(material))
    {
        RwTexture* texture = (RwTexture*)data;

        if (texture)
        {
            RwFrame* frame = RpLightGetFrame(MainLight);

            RpMatFXMaterialSetEffects(material, rpMATFXEFFECTBUMPMAP);
            RpMatFXMaterialSetupBumpMap(material, texture, frame, _958);
        }
        else
        {
            RpMatFXMaterialSetEffects(material, rpMATFXEFFECTNULL);
        }
    }

    return material;
}

static RpMaterial* MaterialSetBumpEnvMap(RpMaterial* material, RwTexture* env, float32 shininess,
                                         RwTexture* bump, float32 bumpiness)
{
    if (!env || !bump)
    {
        return NULL;
    }

    RpMatFXMaterialSetEffects(material, rpMATFXEFFECTBUMPENVMAP);

    RwFrame* frame;

    if (gFXSurfaceFlags & 0x10)
    {
        frame = RwCameraGetFrame(globals.camera.lo_cam);
    }
    else
    {
        frame = RpLightGetFrame(MainLight);
    }

    RpMatFXMaterialSetupEnvMap(material, env, frame, TRUE, shininess);

    frame = RpLightGetFrame(MainLight);

    RpMatFXMaterialSetupBumpMap(material, bump, frame, bumpiness);

    return material;
}

static RxPipeline* xFXanimUVPipeline = NULL;
float32 xFXanimUVRotMat0[2] = { 1.0f, 0.0f };
float32 xFXanimUVRotMat1[2] = { 0.0f, 1.0f };
float32 xFXanimUVTrans[2] = { 0.0f, 0.0f };
float32 xFXanimUVScale[2] = { 1.0f, 1.0f };
float32 xFXanimUV2PRotMat0[2] = { 1.0f, 0.0f };
float32 xFXanimUV2PRotMat1[2] = { 0.0f, 1.0f };
float32 xFXanimUV2PTrans[2] = { 0.0f, 0.0f };
float32 xFXanimUV2PScale[2] = { 1.0f, 1.0f };
RwTexture* xFXanimUV2PTexture = NULL;

void xFXanimUVSetTranslation(const xVec3* trans)
{
    xFXanimUVTrans[0] = trans->x;
    xFXanimUVTrans[1] = trans->y;
}

void xFXanimUVSetScale(const xVec3* scale)
{
    xFXanimUVScale[0] = scale->x;
    xFXanimUVScale[1] = scale->y;
}

#ifndef NON_MATCHING
// func_80027BBC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXanimUVSetAngle__Ff")
#else
void xFXanimUVSetAngle(float32 angle)
{
    // non-matching: scheduling

    float32 x = isin(angle);
    float32 y = icos(angle);

    xFXanimUVRotMat0[0] = y;
    xFXanimUVRotMat0[1] = -x;
    xFXanimUVRotMat1[0] = x;
    xFXanimUVRotMat1[1] = y;
}
#endif

void xFXanimUV2PSetTranslation(const xVec3* trans)
{
    xFXanimUV2PTrans[0] = trans->x;
    xFXanimUV2PTrans[1] = trans->y;
}

void xFXanimUV2PSetScale(const xVec3* scale)
{
    xFXanimUV2PScale[0] = scale->x;
    xFXanimUV2PScale[1] = scale->y;
}

#ifndef NON_MATCHING
// func_80027C48
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXanimUV2PSetAngle__Ff")
#else
void xFXanimUV2PSetAngle(float32 angle)
{
    // non-matching: scheduling

    float32 x = isin(angle);
    float32 y = icos(angle);

    xFXanimUV2PRotMat0[0] = y;
    xFXanimUV2PRotMat0[1] = -x;
    xFXanimUV2PRotMat1[0] = x;
    xFXanimUV2PRotMat1[1] = y;
}
#endif

void xFXanimUV2PSetTexture(RwTexture* texture)
{
    xFXanimUV2PTexture = texture;
}

RpAtomic* xFXanimUVAtomicSetup(RpAtomic* atomic)
{
    if (atomic && xFXanimUVPipeline)
    {
        RpAtomicSetPipeline(atomic, xFXanimUVPipeline);
    }

    return atomic;
}

uint32 xFXanimUVCreate()
{
    if (!xFXanimUVPipeline)
    {
        xFXanimUVPipeline = iFXanimUVCreatePipe();
    }

    return (xFXanimUVPipeline != NULL);
}

namespace
{
    struct vert_data
    {
        xVec3 loc;
        xVec3 norm;
        RwRGBA color;
        RwTexCoords uv;
        float32 depth;
    };

    struct tri_data
    {
        vert_data vert[3];

        void init(const xVec3* loc, const xVec3* normal, const RwTexCoords* uv,
                  const float32* depth, const uint16* vertIndex);
        tri_data& operator=(const tri_data&); // temp
    };

    void depth_sort(uint16* index, const tri_data* tri, ulong32 size)
    {
        for (ulong32 i = 0; i < size; i++)
        {
            uint16& e0 = index[i];
            float32 d0 = tri[e0].vert[0].depth;

            for (ulong32 j = i + 1; j < size; j++)
            {
                if (tri[index[j]].vert[0].depth > d0)
                {
                    uint16 temp = e0;
                    e0 = index[j];
                    index[j] = temp;
                }
            }
        }
    }

#define ALPHA_COUNT 300

    uint8 alpha_count0[ALPHA_COUNT];
    uint8 alpha_count1[ALPHA_COUNT];

    void push_triangle(RwIm3DVertex*& vert, const tri_data& tri);
    void set_vert(RwIm3DVertex& vert, const xVec3& loc, const xVec3& norm, const RwTexCoords& uv,
                  uint8 alpha);
    int32 clip_triangle(tri_data* r3, const tri_data& r4, float32 f1);
    void refresh_vert_buffer(RwIm3DVertex*& vert, bool r4);
    int32 count_alpha_triangles(const RpTriangle* tri, const float32* depth, ulong32 size);
} // namespace

#define alloc_temp(T, count) ((T*)xMemPushTemp((count) * sizeof(T)))
#define free_temp(ptr) xMemPopTemp((ptr))

#if 1 // wip
// func_80027D84
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXRenderProximityFade__FRC14xModelInstanceff")
#else
void xFXRenderProximityFade(const xModelInstance& model, float32 near_dist, float32 far_dist)
{
    memset(alpha_count0, 0, sizeof(alpha_count0));
    memset(alpha_count1, 0, sizeof(alpha_count1));

    RpGeometry* geometry = RpAtomicGetGeometry(model.Data);
    RwRaster* raster = RwRasterGetParent(
        RwTextureGetRaster(RpMaterialGetTexture(RpGeometryGetMaterial(geometry, 0))));
    RpTriangle* tri = RpGeometryGetTriangles(geometry);
    RwFrame* frame = RwCameraGetFrame(RwCameraGetCurrentCamera());
    RwTexCoords* uv = RpGeometryGetVertexTexCoords(geometry, 1);
    int32 vert_total = RpGeometryGetNumVertices(geometry);

    RwRenderStateSet(rwRENDERSTATESRCBLEND, (void*)rwBLENDSRCALPHA);
    RwRenderStateSet(rwRENDERSTATEDESTBLEND, (void*)rwBLENDINVSRCALPHA);
    RwRenderStateSet(rwRENDERSTATETEXTURERASTER, (void*)raster);
    RwRenderStateSet(rwRENDERSTATEVERTEXALPHAENABLE, (void*)TRUE);

    xVec3* vert = alloc_temp(xVec3, vert_total);
    xVec3* normal = alloc_temp(xVec3, vert_total);

    iModelVertEval(model.Data, 0, vert_total, model.Mat, NULL, vert);
    iModelNormalEval(normal, *model.Data, model.Mat, 0, -1, NULL);

    uint8* alpha = alloc_temp(uint8, vert_total);
    float32* depth = alloc_temp(float32, vert_total);

    xMat4x3& cm = *(xMat4x3*)RwFrameGetLTM(frame);
    xVec3 ov;
    float32 zfrac = (near_dist >= far_dist) ? (_958) : (_958 / (far_dist - near_dist));

    for (int32 i = 0; i < vert_total; i++)
    {
        xMat4x3Tolocal(&ov, &cm, &vert[i]);

        depth[i] = zfrac * (ov.z - near_dist);

        float32 a = _1872 * depth[i];

        if (a < _957_0)
        {
            alpha[i] = 0;
        }
        else if (a >= _1872)
        {
            alpha[i] = 255;
        }
        else
        {
            alpha[i] = _1132 + a;
        }
    }

    RwIm3DVertex* out_vert = gRenderBuffer.m_vertex;
    int32 tri_total;
    uint16* alpha_tri_index = NULL;
    tri_data* alpha_tri = NULL;
    uint32 alpha_tri_total = 0;

    tri_total = count_alpha_triangles(tri, depth, RpGeometryGetNumTriangles(geometry));

    if (tri_total)
    {
        alpha_tri_index = alloc_temp(uint16, tri_total);
        alpha_tri = alloc_temp(tri_data, tri_total);
    }
    else if (vert_total < 0 && depth[0] < _957_0)
    {
        goto done;
    }

    tri_data tri_buffer[2][3];
    tri_data cur_tri;
    RpTriangle* end = tri + RpGeometryGetNumTriangles(geometry);

    while (tri != end)
    {
        refresh_vert_buffer(out_vert, false);

        uint16 vi[3];
        vi[0] = tri->vertIndex[0];
        vi[1] = tri->vertIndex[1];
        vi[2] = tri->vertIndex[2];

        float32 d0 = depth[vi[0]];
        float32 d1 = depth[vi[1]];
        float32 d2 = depth[vi[2]];

        uint32 flags = 0;

#define D0_NEAR 0x1
#define D1_NEAR 0x2
#define D2_NEAR 0x4
#define NEAR_MASK (D0_NEAR | D1_NEAR | D2_NEAR)

#define D0_MIDDLE 0x8
#define D1_MIDDLE 0x10
#define D2_MIDDLE 0x20
#define MIDDLE_MASK (D0_MIDDLE | D1_MIDDLE | D2_MIDDLE)

#define D0_FAR 0x40
#define D1_FAR 0x80
#define D2_FAR 0x100
#define FAR_MASK (D0_FAR | D1_FAR | D2_FAR)

        if (d0 < _957_0)
        {
            flags |= D0_NEAR;
        }
        else if (d0 > _958)
        {
            flags |= D0_FAR;
        }
        else
        {
            flags |= D0_MIDDLE;
        }

        if (d1 < _957_0)
        {
            flags |= D1_NEAR;
        }
        else if (d1 > _958)
        {
            flags |= D1_FAR;
        }
        else
        {
            flags |= D1_MIDDLE;
        }

        if (d2 < _957_0)
        {
            flags |= D2_NEAR;
        }
        else if (d2 > _958)
        {
            flags |= D2_FAR;
        }
        else
        {
            flags |= D2_MIDDLE;
        }

        if ((flags & MIDDLE_MASK) == MIDDLE_MASK || (flags & FAR_MASK) == FAR_MASK)
        {
            if (alpha[vi[0]])
            {
                set_vert(*out_vert++, vert[vi[0]], normal[vi[0]], uv[vi[0]], alpha[vi[0]]);
                set_vert(*out_vert++, vert[vi[1]], normal[vi[1]], uv[vi[1]], alpha[vi[1]]);
                set_vert(*out_vert++, vert[vi[2]], normal[vi[2]], uv[vi[2]], alpha[vi[2]]);
            }
        }
        else if ((flags & NEAR_MASK) == NEAR_MASK)
        {
            cur_tri.init(vert, normal, uv, depth, vi);

            int32 i;
            int32 size1 = clip_triangle(tri_buffer[0], cur_tri, _957_0);

            for (i = 0; i < size1; i++)
            {
                if (tri_buffer[0][i].vert[0].depth <= _957_0 ||
                    tri_buffer[0][i].vert[1].depth <= _957_0 ||
                    tri_buffer[0][i].vert[2].depth <= _957_0)
                {
                    int32 j;
                    int32 size2 = clip_triangle(&tri_buffer[1][0], tri_buffer[0][i], _958);

                    for (j = 0; j < size2; j++)
                    {
                        if (tri_buffer[1][i].vert[0].depth >= _958 &&
                            tri_buffer[1][i].vert[1].depth >= _958 &&
                            tri_buffer[1][i].vert[2].depth >= _958)
                        {
                            push_triangle(out_vert, tri_buffer[1][i]);
                        }
                        else
                        {
                        }
                    }
                }
            }
        }
    }

done:
    free_temp(depth);
    free_temp(alpha);
    free_temp(normal);
    free_temp(vert);
}
#endif

// func_800283D0
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "__as__Q217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_8tri_dataFRCQ217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_8tri_data")

namespace
{
    void set_vert(RwIm3DVertex& vert, const vert_data& vd);

    void push_triangle(RwIm3DVertex*& vert, const tri_data& tri)
    {
        for (int32 i = 0; i < 3; i++, vert++)
        {
            set_vert(*vert, tri.vert[i]);
        }
    }

#ifndef NON_MATCHING
// func_80028460
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "set_vert__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FR18RxObjSpace3DVertexRCQ217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_9vert_data")
#else
    void set_vert(RwIm3DVertex& vert, const vert_data& vd)
    {
        uint8 alpha;
        float32 a = _1872 * vd.depth;

        if (a < _957_0)
        {
            alpha = 0;
        }
        else if (a >= _1872)
        {
            alpha = 255;
        }
        else
        {
            alpha = _1132 + a;
        }

        // non-matching: regalloc

        RwIm3DVertexSetPos(&vert, vd.loc.x, vd.loc.y, vd.loc.z);
        RwIm3DVertexSetNormal(&vert, vd.norm.x, vd.norm.y, vd.norm.z);
        RwIm3DVertexSetRGBA(&vert, 255, 255, 255, alpha);
        RwIm3DVertexSetU(&vert, vd.uv.u);
        RwIm3DVertexSetV(&vert, vd.uv.v);
    }
#endif
} // namespace

// clip_triangle jumptable
static uint32 _1933[] = { 0x80028610, 0x80028640, 0x80028640, 0x80028640, 0x80028640, 0x80028640,
                          0x80028640, 0x80028620, 0x80028640, 0x80028640, 0x80028640, 0x80028640,
                          0x80028640, 0x80028640, 0x80028630, 0x80028640, 0x80028640, 0x80028640,
                          0x80028640, 0x80028640, 0x80028640, 0x80028630, 0x80028640, 0x80028640,
                          0x80028640, 0x80028640, 0x80028640, 0x80028640, 0x80028620, 0x80028640,
                          0x80028640, 0x80028640, 0x80028640, 0x80028640, 0x80028640, 0x80028610 };

// func_80028508
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "clip_triangle__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FPQ217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_8tri_dataRCQ217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_8tri_dataf")

// func_8002875C
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "lerp__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FRQ217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_9vert_datafRCQ217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_9vert_dataRCQ217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_9vert_data")

// func_800287F8
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "lerp__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FR11RwTexCoordsfRC11RwTexCoordsRC11RwTexCoords")

// func_8002886C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "lerp__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FRffff")

// func_8002887C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "lerp__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FR6RwRGBAf6RwRGBA6RwRGBA")

// func_80028910
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "lerp__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FRUcfUcUc")

// func_8002897C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "lerp__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FR5xVec3fRC5xVec3RC5xVec3")

// func_80028A04
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "__as__Q217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_9vert_dataFRCQ217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_9vert_data")

// func_80028A58
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "init__Q217_esc__2_unnamed_esc__2_xFX_cpp_esc__2_8tri_dataFPC5xVec3PC5xVec3PC11RwTexCoordsPCfPCUs")

// func_80028AFC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "__as__11RwTexCoordsFRC11RwTexCoords")

// func_80028B10
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "set_vert__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FR18RxObjSpace3DVertexRC5xVec3RC5xVec3RC11RwTexCoordsUc")

// func_80028B68
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "refresh_vert_buffer__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FRP18RxObjSpace3DVertexb")

static const uint8 segments_1637[43] = { 0, 1, 3, 0, 1, 2, 4, 0, 3, 4, 3, 0, 0, 0, 0,
                                         0, 1, 2, 4, 0, 2, 1, 2, 0, 4, 2, 1, 0, 0, 0,
                                         0, 0, 3, 4, 3, 0, 4, 2, 1, 0, 3, 1, 0 };

// func_80028BF0
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "count_alpha_triangles__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FPC10RpTrianglePCfUl")

struct _tagFirework
{
    int32 state;
    float32 timer;
    xVec3 vel;
    xVec3 pos;
    float32 fuel;
};

#define FIREWORK_COUNT 10

static _tagFirework sFirework[FIREWORK_COUNT];
static zParEmitter* sFireworkTrailEmit = NULL;
static zParEmitter* sFirework1Emit = NULL;
static zParEmitter* sFirework2Emit = NULL;
static uint32 sFireworkSoundID = 0;
static uint32 sFireworkLaunchSoundID = 0;

// func_80028CC8
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXFireworksInit__FPCcPCcPCcPCcPCc")

// func_80028D90
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXFireworksLaunch__FfPC5xVec3f")

// func_80028E04
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXFireworksUpdate__Ff")

static RwIm3DVertex sStripVert_2188[4];

// func_80029238
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXStreakInit__Fv")

// func_800292A4
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXStreakUpdate__Ff")

// func_800294F4
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXStreakRender__Fv")

// func_80029710
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXStreakStart__FfffUiPC10iColor_tagPC10iColor_tagi")

// func_80029950
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXStreakStop__FUi")

// func_80029994
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXStreakUpdate__FUiPC5xVec3PC5xVec3")

// func_80029A68
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXShineInit__Fv")

// func_80029AD0
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXShineUpdate__Ff")

static RwIm3DVertex blah_2485[4];

// func_80029E30
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXShineRender__Fv")

// func_8002A20C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "xFXShineStart__FPC5xVec3ffffUiPC10iColor_tagPC10iColor_tagfi")

struct xFXRibbon
{
    struct config
    {
        float32 life_time;
        uint32 blend_src;
        uint32 blend_dst;
        float32 pivot;
    };

    struct joint_data
    {
        uint32 flags;
        uint32 born;
        xVec3 loc;
        xVec3 norm;
        float32 orient;
        float32 scale;
        float32 alpha;
    };

    struct curve_node
    {
        float32 time;
        iColor_tag color;
        float32 scale;
    };

    config cfg;
    bool activated;
    RwRaster* raster;
    tier_queue<joint_data> joints;
    curve_node* curve;
    uint32 curve_size;
    uint32 curve_index;
    float32 ilife;
    uint32 mtime;
    uint32 mlife;
};

namespace
{
#define RIBBON_COUNT 64

    xFXRibbon* active_ribbons[RIBBON_COUNT];
    uint32 active_ribbons_size = 0;
    bool ribbons_dirty = false;
} // namespace

// func_8002A214
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "compare_ribbons__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FPCvPCv")

// func_8002A26C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "sort_ribbons__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_Fv")

// func_8002A2C4
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "activate_ribbon__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FP9xFXRibbon")

// func_8002A2F8
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "deactivate_ribbon__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FP9xFXRibbon")

// func_8002A378
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "init__9xFXRibbonFPCcPCc")

// func_8002A404
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "set_default_config__9xFXRibbonFv")

// func_8002A444
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "refresh_config__9xFXRibbonFv")

// func_8002A4A4
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "set_curve__9xFXRibbonFPCQ29xFXRibbon10curve_nodeUl")

// func_8002A4E0
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "insert__9xFXRibbonFRC5xVec3RC5xVec3ffUi")

// func_8002A5B4
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "insert__9xFXRibbonFRC5xVec3fffUi")

// func_8002A69C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "activate__9xFXRibbonFv")

// func_8002A6DC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "deactivate__9xFXRibbonFv")

// func_8002A71C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "update__9xFXRibbonFf")

// func_8002A830
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "start_render__9xFXRibbonFv")

// func_8002A830
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "render__9xFXRibbonFv")

// func_8002A96C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "set_raster__9xFXRibbonFP8RwRaster")

// func_8002A988
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "set_texture__9xFXRibbonFP9RwTexture")

// func_8002A9BC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "set_texture__9xFXRibbonFUi")

// func_8002AA0C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "set_texture__9xFXRibbonFPCc")

// func_8002AA48
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "get_normal__9xFXRibbonFR5xVec3RC5xVec3f")

// func_8002ABF8
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "refresh_joint__9xFXRibbonFRQ29xFXRibbon10joint_dataRCQ236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iterator")

// func_8002ADB4
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "eval_joint__9xFXRibbonFRCQ29xFXRibbon10joint_dataR10iColor_tagRf")

// func_8002AF54
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "render_strip__9xFXRibbonFP18RxObjSpace3DVertexQ236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorUl")

// func_8002B15C
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "set_vert__17_esc__2_unnamed_esc__2_xFX_cpp_esc__2_FR18RxObjSpace3DVertexRC5xVec3ff10iColor_tag")

// func_8002B1A0
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "render_compare__9xFXRibbonCFRC9xFXRibbon")

// func_8002B214
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXRibbonSceneEnter__Fv")

// func_8002B260
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXRibbonUpdate__Ff")

// func_8002B2C8
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXRibbonRender__Fv")

struct _xFXAuraAngle
{
    float32 angle;
    float32 cc;
    float32 ss;
};

struct _xFXAura
{
    xVec3 pos;
    iColor_tag color;
    float32 size;
    void* parent;
    uint32 frame;
    float32 dangle[2];
};

#define AURA_COUNT 32

static float32 sAuraPulse[2];
static float32 sAuraPulseAng[2];
static _xFXAuraAngle sAuraAngle[2];
static RwTexture* gAuraTex = NULL;
static _xFXAura sAura[AURA_COUNT];

// func_8002B3A4
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXAuraInit__Fv")

// func_8002B3F4
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXAuraSetup__Fv")

// func_8002B424
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXAuraAdd__FPvP5xVec3P10iColor_tagf")

// func_8002B510
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXAuraUpdate__Ff")

// func_8002B730
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "RenderRotatedBillboard__FP5xVec3P13_xFXAuraAngleUiff10iColor_tagUi")

// func_8002BCD0
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXAuraRender__Fv")

// func_8002BE78
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXStartup__Fv")

// func_8002BE7C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXShutdown__Fv")

// func_8002BE80
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXSceneInit__Fv")

// func_8002BE84
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXSceneSetup__Fv")

// func_8002BEA8
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXSceneReset__Fv")

// func_8002BEAC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXScenePrepare__Fv")

// func_8002BEB0
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "xFXSceneFinish__Fv")

// func_8002BED8
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "set__10xParInterpFfffUi")

// func_8002BF0C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "debug_init__9xFXRibbonFPCcPCc")

// func_8002BF10
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "update_curve_tweaks__9xFXRibbonFv")

// func_8002BF14
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "debug_update_curve__9xFXRibbonFv")

// func_8002BF18
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "need_update__9xFXRibbonCFv")

// func_8002BF70
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "debug_need_update__9xFXRibbonCFv")

// func_8002BF78
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "visible__9xFXRibbonCFv")

// func_8002BFA8
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "debug_update__9xFXRibbonFf")

// func_8002BFAC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "get_age__9xFXRibbonCFRCQ29xFXRibbon10joint_data")

// func_8002BFE4
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "init__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_FR20tier_queue_allocator")

// func_8002C03C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "block_size__20tier_queue_allocatorCFv")

// func_8002C044
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "front__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_Fv")

// func_8002C074
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "__ml__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorCFv")

// func_8002C0A0
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "get_at__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFUl")

// func_8002C108
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "mod_block_size__20tier_queue_allocatorCFUl")

// func_8002C118
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "get_block__20tier_queue_allocatorCFUl")

// func_8002C12C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "get_block__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFUl")

// func_8002C160
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "block_size_shift__20tier_queue_allocatorCFv")

// func_8002C168
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "begin__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFv")

// func_8002C18C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "create_iterator__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFUl")

// func_8002C1AC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "push_front__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_Fv")

// func_8002C230
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "alloc_block__20tier_queue_allocatorFv")

// func_8002C2B8
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "alloc_block_data__20tier_queue_allocatorCFv")

// func_8002C2F0
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "wrap_index__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFUl")

// func_8002C2FC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "empty__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFv")

// func_8002C30C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "front_full__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFv")

// func_8002C360
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "full__20tier_queue_allocatorCFv")

// func_8002C384
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "pop_back__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_Fv")

// func_8002C41C
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "free_block__20tier_queue_allocatorFUc")

// func_8002C470
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "clear__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_Fv")

// func_8002C520
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "wrap_block__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFUl")

// func_8002C528
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "__mi__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorCFi")

// func_8002C564
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "__ami__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorFi")

// func_8002C594
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "__apl__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorFi")

// func_8002C5D4
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "end__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFv")

// func_8002C618
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "size__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_CFv")

// func_8002C384
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "back__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_Fv")

// func_8002C664
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "__pl__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorCFi")

// func_8002C6A0
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "__vc__36tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_Fi")

// func_8002C6E0
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "__rf__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorCFv")

// func_8002C700
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "__eq__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorCFRCQ236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iterator")

// func_8002C718
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "__ne__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorCFRCQ236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iterator")

// func_8002C734
#pragma GLOBAL_ASM("asm/Core/x/xFX.s",                                                             \
                   "__mm__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorFv")

// func_8002C768
#pragma GLOBAL_ASM(                                                                                \
    "asm/Core/x/xFX.s",                                                                            \
    "global_index__Q236tier_queue_esc__0_Q29xFXRibbon10joint_data_esc__1_8iteratorCFv")

// func_8002C770
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "init__20tier_queue_allocatorFUlUlUl")

// func_8002C8DC
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "clear__20tier_queue_allocatorFv")

// func_8002CA84
#pragma GLOBAL_ASM("asm/Core/x/xFX.s", "log2_ceil__20tier_queue_allocatorCFUl")

__declspec(section ".rodata") static const char _stringBase0_7[] = "bubble buddy\0"
                                                                   "bubble missile\0"
                                                                   "bubble helmet\0"
                                                                   "bubble bowling ball\0"
                                                                   "bubble shoeL\0"
                                                                   "bubble shoeR\0"
                                                                   "spec3\0"
                                                                   "default_env_map.RW3\0"
                                                                   "gloss_edge\0"
                                                                   "update frame\n\0"
                                                                   "fx_streak1\0"
                                                                   "BLENDZERO\0"
                                                                   "BLENDONE\0"
                                                                   "BLENDSRCCOLOR\0"
                                                                   "BLENDINVSRCCOLOR\0"
                                                                   "BLENDSRCALPHA\0"
                                                                   "BLENDINVSRCALPHA\0"
                                                                   "BLENDDESTALPHA\0"
                                                                   "BLENDINVDESTALPHA\0"
                                                                   "BLENDDESTCOLOR\0"
                                                                   "BLENDINVDESTCOLOR\0"
                                                                   "BLENDSRCALPHASAT\0"
                                                                   "FX|Ribbon";