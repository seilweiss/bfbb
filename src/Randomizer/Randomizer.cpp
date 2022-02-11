#define NULL 0

struct st_HIPLOADDATA;
struct st_PACKER_ASSETTYPE;
struct st_PACKER_READ_DATA;

struct st_XORDEREDARRAY
{
	void** list;
	int cnt;
	int max;
	int warnlvl;
};

struct st_PACKER_ATOC_NODE
{
	unsigned int aid;
	unsigned int asstype;
	int d_off;
	int d_size;
	int d_pad;
	unsigned int d_chksum;
	int assalign;
	int infoflag;
	int loadflag;
	char* memloc;
	int x_size;
	int readcnt;
	int readrem;
	st_PACKER_ASSETTYPE* typeref;
	st_HIPLOADDATA* ownpkg;
	st_PACKER_READ_DATA* ownpr;
	char basename[32];
};

enum en_LAYER_TYPE
{
	PKR_LTYPE_ALL = -1,
	PKR_LTYPE_DEFAULT = 0,
	PKR_LTYPE_TEXTURE,
	PKR_LTYPE_BSP,
	PKR_LTYPE_MODEL,
	PKR_LTYPE_ANIMATION,
	PKR_LTYPE_VRAM,
	PKR_LTYPE_SRAM,
	PKR_LTYPE_SNDTOC,
	PKR_LTYPE_CUTSCENE,
	PKR_LTYPE_CUTSCENETOC,
	PKR_LTYPE_JSPINFO,
	PKR_LTYPE_NOMORE
};

struct st_PACKER_LTOC_NODE
{
	en_LAYER_TYPE laytyp;
	st_XORDEREDARRAY assref;
	int flg_ldstat;
	int danglecnt;
	unsigned int chksum;
	int laysize;
	char* laymem;
	char* laytru;
};

struct st_PACKER_READ_DATA
{
	st_PACKER_ASSETTYPE* types;
	void* userdata;
	unsigned int opts;
	unsigned int pkgver;
	int cltver;
	int subver;
	int compatver;
	st_HIPLOADDATA* pkg;
	unsigned int base_sector;
	int lockid;
	char packfile[128];
	int asscnt;
	int laycnt;
	st_XORDEREDARRAY asstoc;
	st_XORDEREDARRAY laytoc;
	st_PACKER_ATOC_NODE* pool_anode;
	int pool_nextaidx;
	st_XORDEREDARRAY typelist[129];
	long time_made;
	long time_mod;
};

struct st_PKR_ASSET_TOCINFO
{
	unsigned int aid;
	st_PACKER_ASSETTYPE* typeref;
	unsigned int sector;
	unsigned int plus_offset;
	unsigned int size;
	void* mempos;
};

struct xBaseAsset
{
	unsigned int id;
	unsigned char baseType;
	unsigned char linkCount;
	unsigned short baseFlags;
};

struct xVec3
{
	float x;
	float y;
	float z;
};

struct xEntAsset : xBaseAsset
{
	unsigned char flags;
	unsigned char subtype;
	unsigned char pflags;
	unsigned char moreFlags;
	unsigned char pad;
	unsigned int surfaceID;
	xVec3 ang;
	xVec3 pos;
	xVec3 scale;
	float redMult;
	float greenMult;
	float blueMult;
	float seeThru;
	float seeThruSpeed;
	unsigned int modelInfoID;
	unsigned int animListID;
};

struct xPortalAsset : xBaseAsset
{
	unsigned int assetCameraID;
	unsigned int assetMarkerID;
	float ang;
	unsigned int sceneID;
};

extern "C" int strncmp(const char*, const char*, int);
extern "C" int strlen(const char*);

extern void xsrand(unsigned int seed);
extern unsigned int xrand();
extern void PKR_updateLayerAssets(st_PACKER_LTOC_NODE* laynode);

#define GetHipName(layer) (((st_PACKER_ATOC_NODE*)(layer)->assref.list[0])->ownpr->packfile)

static bool TestHipFileName(const char* name, unsigned int sceneid)
{
    // BOOT, FONT, etc.
    if (name[0] == ((sceneid >> 24) & 0xFF) &&
        name[1] == ((sceneid >> 16) & 0xFF) &&
        name[2] == ((sceneid >> 8) & 0xFF) &&
        name[3] == (sceneid & 0xFF))
    {
        return true;
    }

    // BB/BB01, MN/MNU5, etc.
    if (name[0] == ((sceneid >> 24) & 0xFF) &&
        name[1] == ((sceneid >> 16) & 0xFF) &&
        name[2] == '/' &&
        name[3] == ((sceneid >> 24) & 0xFF) &&
        name[4] == ((sceneid >> 16) & 0xFF) &&
        name[5] == ((sceneid >> 8) & 0xFF) &&
        name[6] == (sceneid & 0xFF))
    {
        return true;
    }

    return false;
}

static int CountAssetsByType(st_PACKER_LTOC_NODE* layer, unsigned int type)
{
    int count = 0;

    for (int i = 0; i < layer->assref.cnt; i++)
    {
        st_PACKER_ATOC_NODE* asset = (st_PACKER_ATOC_NODE*)layer->assref.list[i];

        if (asset->asstype == type)
        {
            count++;
        }
    }

    return count;
}

static st_PACKER_ATOC_NODE* GetAssetByType(st_PACKER_LTOC_NODE* layer, unsigned int type, int index)
{
    for (int i = 0; i < layer->assref.cnt; i++)
    {
        st_PACKER_ATOC_NODE* asset = (st_PACKER_ATOC_NODE*)layer->assref.list[i];

        if (asset->asstype == type)
        {
            if (index == 0)
            {
                return asset;
            }

            index--;
        }
    }

    return NULL;
}

static void RandomizePickupPositions(st_PACKER_LTOC_NODE* layer)
{
    int pkupCount = CountAssetsByType(layer, 'PKUP');

    for (int i = pkupCount - 1; i >= 1; i--)
    {
        xEntAsset* pkupA = (xEntAsset*)GetAssetByType(layer, 'PKUP', i)->memloc;
        xEntAsset* pkupB = (xEntAsset*)GetAssetByType(layer, 'PKUP', xrand() % (i + 1))->memloc;
        float tempX = pkupA->pos.x;
        float tempY = pkupA->pos.y;
        float tempZ = pkupA->pos.z;
        
        pkupA->pos.x = pkupB->pos.x;
        pkupA->pos.y = pkupB->pos.y;
        pkupA->pos.z = pkupB->pos.z;

        pkupB->pos.x = tempX;
        pkupB->pos.y = tempY;
        pkupB->pos.z = tempZ;
    }
}

static void RandomizePortals(st_PACKER_LTOC_NODE* layer)
{
    unsigned int SCENE_IDS[50];
    SCENE_IDS[0] = 'B101';
    SCENE_IDS[1] = 'B201';
    SCENE_IDS[2] = 'B302';
    SCENE_IDS[3] = 'B303';
    SCENE_IDS[4] = 'BB01';
    SCENE_IDS[5] = 'BB02';
    SCENE_IDS[6] = 'BB03';
    SCENE_IDS[7] = 'BB04';
    SCENE_IDS[8] = 'BC01';
    SCENE_IDS[9] = 'BC02';
    SCENE_IDS[10] = 'BC03';
    SCENE_IDS[11] = 'BC04';
    SCENE_IDS[12] = 'BC05';
    SCENE_IDS[13] = 'DB01';
    SCENE_IDS[14] = 'DB02';
    SCENE_IDS[15] = 'DB03';
    SCENE_IDS[16] = 'DB04';
    SCENE_IDS[17] = 'DB06';
    SCENE_IDS[18] = 'GL01';
    SCENE_IDS[19] = 'GL02';
    SCENE_IDS[20] = 'GL03';
    SCENE_IDS[21] = 'GY01';
    SCENE_IDS[22] = 'GY02';
    SCENE_IDS[23] = 'GY03';
    SCENE_IDS[24] = 'GY04';
    SCENE_IDS[25] = 'HB00';
    SCENE_IDS[26] = 'HB01';
    SCENE_IDS[27] = 'HB02';
    SCENE_IDS[28] = 'HB03';
    SCENE_IDS[29] = 'HB04';
    SCENE_IDS[30] = 'HB05';
    SCENE_IDS[31] = 'HB06';
    SCENE_IDS[32] = 'HB07';
    SCENE_IDS[33] = 'HB08';
    SCENE_IDS[34] = 'HB09';
    SCENE_IDS[35] = 'HB10';
    SCENE_IDS[36] = 'JF01';
    SCENE_IDS[37] = 'JF02';
    SCENE_IDS[38] = 'JF03';
    SCENE_IDS[39] = 'JF04';
    SCENE_IDS[40] = 'KF01';
    SCENE_IDS[41] = 'KF02';
    SCENE_IDS[42] = 'KF04';
    SCENE_IDS[43] = 'KF05';
    SCENE_IDS[44] = 'RB01';
    SCENE_IDS[45] = 'RB02';
    SCENE_IDS[46] = 'RB03';
    SCENE_IDS[47] = 'SM01';
    SCENE_IDS[48] = 'SM02';
    SCENE_IDS[49] = 'SM03';
    SCENE_IDS[50] = 'SM04';

    int portalCount = CountAssetsByType(layer, 'PORT');
    char* hipName = GetHipName(layer);

    for (int i = 0; i < portalCount; i++)
    {
        st_PACKER_ATOC_NODE* asset = GetAssetByType(layer, 'PORT', i);

        if (!asset) // idk why this is null sometimes
        {
            continue;
        }

        xPortalAsset* portal = (xPortalAsset*)asset->memloc;

        // Don't randomize portals that teleport to the same area (e.g. rooms in SpongeBob's Pineapple)
        if (TestHipFileName(hipName, portal->sceneID))
        {
            continue;
        }

        unsigned int oldSceneID = portal->sceneID;

        while (portal->sceneID == oldSceneID)
        {
            portal->sceneID = SCENE_IDS[xrand() % (sizeof(SCENE_IDS) / sizeof(SCENE_IDS[0]))];
        }
    }
}

static void RandomizeTextures(st_PACKER_LTOC_NODE* layer)
{
    for (int i = layer->assref.cnt - 1; i >= 1; i--)
    {
        st_PACKER_ATOC_NODE* textureA = (st_PACKER_ATOC_NODE*)layer->assref.list[i];
        st_PACKER_ATOC_NODE* textureB = (st_PACKER_ATOC_NODE*)layer->assref.list[xrand() % (i + 1)];

        if (textureA->memloc && textureB->memloc)
        {
            char* temp = textureA->memloc;

            textureA->memloc = textureB->memloc;
            textureB->memloc = temp;
        }
    }
}

// doesn't work
static void RandomizeSounds(st_PACKER_LTOC_NODE* layer)
{
    for (int i = layer->assref.cnt - 1; i >= 1; i--)
    {
        st_PACKER_ATOC_NODE* soundA = (st_PACKER_ATOC_NODE*)layer->assref.list[i];
        st_PACKER_ATOC_NODE* soundB = (st_PACKER_ATOC_NODE*)layer->assref.list[xrand() % (i + 1)];
        unsigned int temp = soundA->aid;

        soundA->aid = soundB->aid;
        soundB->aid = temp;
    }
}

extern "C" void RandomizerHook(st_PACKER_LTOC_NODE* layer)
{
    PKR_updateLayerAssets(layer);

    if (layer->assref.cnt == 0)
    {
        return;
    }

    char* hipName = GetHipName(layer);

    // Don't randomize non-level files
    if (TestHipFileName(hipName, 'BOOT') ||
        TestHipFileName(hipName, 'FONT') ||
        TestHipFileName(hipName, 'MNU4') ||
        TestHipFileName(hipName, 'MNU5'))
    {
        return;
    }

    xsrand(420 + 69 + 1337);

    // Avoid using switch here, don't want to generate a jumptable
    if (layer->laytyp == PKR_LTYPE_DEFAULT)
    {
        RandomizePickupPositions(layer);
        RandomizePortals(layer);
    }
    else if (layer->laytyp == PKR_LTYPE_TEXTURE)
    {
        RandomizeTextures(layer);
    }
    else if (layer->laytyp == PKR_LTYPE_SRAM)
    {
        RandomizeSounds(layer);
    }
}