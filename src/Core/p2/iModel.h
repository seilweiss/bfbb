#ifndef IMODEL_H
#define IMODEL_H

#include "../x/xMath3.h"
#include "../x/xModel.h"

#include <rwcore.h>
#include <rpworld.h>

int32 iModelCull(RpAtomic* model, RwMatrixTag* mat);
RpAtomic* iModelFile_RWMultiAtomic(RpAtomic* model);
void iModelSetMaterialAlpha(RpAtomic* model, uint8 alpha);
void iModelSetMaterialTexture(RpAtomic* model, void* texture);
void iModelResetMaterial(RpAtomic* model);
int32 iModelCullPlusShadow(RpAtomic* model, RwMatrix* mat, xVec3* shadowVec, int32* shadowOutside);
uint32 iModelVertEval(RpAtomic* model, uint32 index, uint32 count, RwMatrix* mat, xVec3* vert,
                      xVec3* dest);
uint32 iModelNormalEval(xVec3* out, const RpAtomic& m, const RwMatrix* mat, ulong32 index,
                        int32 size, const xVec3* in);
void iModelTagEval(RpAtomic* model, const xModelTag* tag, RwMatrix* mat, xVec3* dest);
RpAtomic* iModelFileNew(void* buffer, uint32 size);
void iModelRender(RpAtomic* model, RwMatrix* mat);

#endif