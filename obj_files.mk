INIT_O_FILES :=                                     \
    $(BUILD_DIR)/asm/init.o

EXTAB_O_FILES :=                                    \
    $(BUILD_DIR)/asm/extab.o

TEXT_O_FILES :=                                     \
    $(BUILD_DIR)/asm/Core/x/xAnim.o                   \
    $(BUILD_DIR)/src/Core/x/xBase.o                   \
    $(BUILD_DIR)/asm/Core/x/xbinio.o                  \
    $(BUILD_DIR)/asm/Core/x/xBound.o                  \
    $(BUILD_DIR)/asm/Core/x/xCamera.o                 \
    $(BUILD_DIR)/asm/Core/x/xClimate.o                \
    $(BUILD_DIR)/asm/Core/x/xCollide.o                \
    $(BUILD_DIR)/asm/Core/x/xCollideFast.o            \
    $(BUILD_DIR)/asm/Core/x/xColor.o                  \
    $(BUILD_DIR)/src/Core/x/xCounter.o                \
    $(BUILD_DIR)/asm/Core/x/xCutscene.o               \
    $(BUILD_DIR)/asm/Core/x/xDebug.o                  \
    $(BUILD_DIR)/asm/Core/x/xEnt.o                    \
    $(BUILD_DIR)/asm/Core/x/xEntDrive.o               \
    $(BUILD_DIR)/asm/Core/x/xEntMotion.o              \
    $(BUILD_DIR)/asm/Core/x/xEnv.o                    \
    $(BUILD_DIR)/src/Core/x/xEvent.o                  \
    $(BUILD_DIR)/asm/Core/x/xFFX.o                    \
    $(BUILD_DIR)/asm/Core/x/xFog.o                    \
    $(BUILD_DIR)/asm/Core/x/xFont.o                   \
    $(BUILD_DIR)/asm/Core/x/xFX.o                     \
    $(BUILD_DIR)/asm/Core/x/xGroup.o                  \
    $(BUILD_DIR)/asm/Core/x/xhipio.o                  \
    $(BUILD_DIR)/asm/Core/x/xHud.o                    \
    $(BUILD_DIR)/asm/Core/x/xHudFontMeter.o           \
    $(BUILD_DIR)/asm/Core/x/xHudMeter.o               \
    $(BUILD_DIR)/asm/Core/x/xHudModel.o               \
    $(BUILD_DIR)/asm/Core/x/xHudUnitMeter.o           \
    $(BUILD_DIR)/asm/Core/x/xIni.o                    \
    $(BUILD_DIR)/asm/Core/x/xMath.o                   \
    $(BUILD_DIR)/asm/Core/x/xMath2.o                  \
    $(BUILD_DIR)/asm/Core/x/xMath3.o                  \
    $(BUILD_DIR)/asm/Core/x/xMemMgr.o                 \
    $(BUILD_DIR)/asm/Core/x/xModel.o                  \
    $(BUILD_DIR)/asm/Core/x/xMorph.o                  \
    $(BUILD_DIR)/asm/Core/x/xMovePoint.o              \
    $(BUILD_DIR)/asm/Core/x/xordarray.o               \
    $(BUILD_DIR)/asm/Core/x/xPad.o                    \
    $(BUILD_DIR)/asm/Core/x/xPar.o                    \
    $(BUILD_DIR)/asm/Core/x/xParCmd.o                 \
    $(BUILD_DIR)/asm/Core/x/xParGroup.o               \
    $(BUILD_DIR)/asm/Core/x/xParMgr.o                 \
    $(BUILD_DIR)/asm/Core/x/xPartition.o              \
    $(BUILD_DIR)/asm/Core/x/xpkrsvc.o                 \
    $(BUILD_DIR)/asm/Core/x/xQuickCull.o              \
    $(BUILD_DIR)/asm/Core/x/xsavegame.o               \
    $(BUILD_DIR)/asm/Core/x/xScene.o                  \
    $(BUILD_DIR)/asm/Core/x/xScrFx.o                  \
    $(BUILD_DIR)/asm/Core/x/xserializer.o             \
    $(BUILD_DIR)/asm/Core/x/xSFX.o                    \
    $(BUILD_DIR)/asm/Core/x/xShadow.o                 \
    $(BUILD_DIR)/asm/Core/x/xSnd.o                    \
    $(BUILD_DIR)/asm/Core/x/xSpline.o                 \
    $(BUILD_DIR)/asm/Core/x/xstransvc.o               \
    $(BUILD_DIR)/asm/Core/x/xString.o                 \
    $(BUILD_DIR)/asm/Core/x/xSurface.o                \
    $(BUILD_DIR)/asm/Core/x/xTimer.o                  \
    $(BUILD_DIR)/asm/Core/x/xTRC.o                    \
    $(BUILD_DIR)/asm/Core/x/xutil.o                   \
    $(BUILD_DIR)/asm/Core/x/xVec3.o                   \
    $(BUILD_DIR)/asm/Game/zActionLine.o               \
    $(BUILD_DIR)/asm/Game/zAnimList.o                 \
    $(BUILD_DIR)/asm/Game/zAssetTypes.o               \
    $(BUILD_DIR)/asm/Game/zCamera.o                   \
    $(BUILD_DIR)/asm/Game/zConditional.o              \
    $(BUILD_DIR)/asm/Game/zCutsceneMgr.o              \
    $(BUILD_DIR)/asm/Game/zDispatcher.o               \
    $(BUILD_DIR)/asm/Game/zEGenerator.o               \
    $(BUILD_DIR)/asm/Game/zEnt.o                      \
    $(BUILD_DIR)/asm/Game/zEntButton.o                \
    $(BUILD_DIR)/asm/Game/zEntCruiseBubble.o          \
    $(BUILD_DIR)/asm/Game/zEntDestructObj.o           \
    $(BUILD_DIR)/asm/Game/zEntHangable.o              \
    $(BUILD_DIR)/asm/Game/zEntPickup.o                \
    $(BUILD_DIR)/asm/Game/zEntPlayer.o                \
    $(BUILD_DIR)/asm/Game/zEntSimpleObj.o             \
    $(BUILD_DIR)/asm/Game/zEntTrigger.o               \
    $(BUILD_DIR)/asm/Game/zEnv.o                      \
    $(BUILD_DIR)/src/Game/zEvent.o                    \
    $(BUILD_DIR)/asm/Game/zFeet.o                     \
    $(BUILD_DIR)/asm/Game/zFMV.o                      \
    $(BUILD_DIR)/asm/Game/zFX.o                       \
    $(BUILD_DIR)/asm/Game/zGame.o                     \
    $(BUILD_DIR)/asm/Game/zGameExtras.o               \
    $(BUILD_DIR)/asm/Game/zGameState.o                \
    $(BUILD_DIR)/asm/Game/zGust.o                     \
    $(BUILD_DIR)/asm/Game/zHud.o                      \
    $(BUILD_DIR)/asm/Game/zLasso.o                    \
    $(BUILD_DIR)/asm/Game/zLight.o                    \
    $(BUILD_DIR)/asm/Game/zLightEffect.o              \
    $(BUILD_DIR)/asm/Game/zLightning.o                \
    $(BUILD_DIR)/asm/Game/zLOD.o                      \
    $(BUILD_DIR)/asm/Game/zMain.o                     \
    $(BUILD_DIR)/asm/Game/zMenu.o                     \
    $(BUILD_DIR)/asm/Game/zMovePoint.o                \
    $(BUILD_DIR)/asm/Game/zMusic.o                    \
    $(BUILD_DIR)/asm/Game/zParCmd.o                   \
    $(BUILD_DIR)/src/Game/zParEmitter.o               \
    $(BUILD_DIR)/asm/Game/zPendulum.o                 \
    $(BUILD_DIR)/asm/Game/zPickupTable.o              \
    $(BUILD_DIR)/asm/Game/zPlatform.o                 \
    $(BUILD_DIR)/asm/Game/zPortal.o                   \
    $(BUILD_DIR)/asm/Game/zRenderState.o              \
    $(BUILD_DIR)/asm/Game/zRumble.o                   \
    $(BUILD_DIR)/asm/Game/zSaveLoad.o                 \
    $(BUILD_DIR)/asm/Game/zScene.o                    \
    $(BUILD_DIR)/asm/Game/zScript.o                   \
    $(BUILD_DIR)/asm/Game/zSurface.o                  \
    $(BUILD_DIR)/asm/Game/zThrown.o                   \
    $(BUILD_DIR)/asm/Game/zUI.o                       \
    $(BUILD_DIR)/asm/Game/zUIFont.o                   \
    $(BUILD_DIR)/asm/Game/zVar.o                      \
    $(BUILD_DIR)/asm/Game/zVolume.o                   \
    $(BUILD_DIR)/asm/Core/p2/iAnim.o                  \
    $(BUILD_DIR)/asm/Core/p2/iAnimSKB.o               \
    $(BUILD_DIR)/asm/Core/x/iCamera.o                 \
    $(BUILD_DIR)/asm/Core/p2/iCollide.o               \
    $(BUILD_DIR)/src/Core/p2/iCollideFast.o           \
    $(BUILD_DIR)/src/Core/p2/iDraw.o                  \
    $(BUILD_DIR)/asm/Core/p2/iEnv.o                   \
    $(BUILD_DIR)/asm/Core/p2/iFile.o                  \
    $(BUILD_DIR)/asm/Core/p2/iFMV.o                   \
    $(BUILD_DIR)/asm/Core/p2/iFX.o                    \
    $(BUILD_DIR)/asm/Core/p2/iLight.o                 \
    $(BUILD_DIR)/src/Core/p2/iMath.o                  \
    $(BUILD_DIR)/asm/Core/p2/iMath3.o                 \
    $(BUILD_DIR)/asm/Core/p2/iMemMgr.o                \
    $(BUILD_DIR)/asm/Core/p2/iMix.o                   \
    $(BUILD_DIR)/asm/Core/p2/iModel.o                 \
    $(BUILD_DIR)/asm/Core/p2/iMorph.o                 \
    $(BUILD_DIR)/asm/Core/p2/iPad.o                   \
    $(BUILD_DIR)/asm/Core/p2/iParMgr.o                \
    $(BUILD_DIR)/asm/Core/p2/isavegame.o              \
    $(BUILD_DIR)/asm/Core/p2/iScrFX.o                 \
    $(BUILD_DIR)/asm/Core/p2/iSnd.o                   \
    $(BUILD_DIR)/asm/Core/p2/iSystem.o                \
    $(BUILD_DIR)/asm/Core/p2/iTime.o                  \
    $(BUILD_DIR)/asm/Core/p2/ngcrad3d.o               \
    $(BUILD_DIR)/asm/Game/zNPCGoals.o                 \
    $(BUILD_DIR)/asm/Game/zNPCGoalCommon.o            \
    $(BUILD_DIR)/asm/Game/zNPCGoalStd.o               \
    $(BUILD_DIR)/asm/Game/zNPCGoalRobo.o              \
    $(BUILD_DIR)/asm/Game/zNPCGoalTiki.o              \
    $(BUILD_DIR)/asm/Game/zNPCMessenger.o             \
    $(BUILD_DIR)/asm/Game/zNPCMgr.o                   \
    $(BUILD_DIR)/asm/Game/zNPCTypes.o                 \
    $(BUILD_DIR)/asm/Game/zNPCTypeCommon.o            \
    $(BUILD_DIR)/asm/Game/zNPCTypeRobot.o             \
    $(BUILD_DIR)/asm/Game/zNPCTypeVillager.o          \
    $(BUILD_DIR)/asm/Game/zNPCTypeAmbient.o           \
    $(BUILD_DIR)/asm/Game/zNPCTypeTiki.o              \
    $(BUILD_DIR)/asm/Core/x/xBehaveMgr.o              \
    $(BUILD_DIR)/asm/Core/x/xBehaviour.o              \
    $(BUILD_DIR)/asm/Core/x/xBehaveGoalSimple.o       \
    $(BUILD_DIR)/asm/Core/x/xSkyDome.o                \
    $(BUILD_DIR)/asm/Core/x/xRMemData.o               \
    $(BUILD_DIR)/asm/Core/x/xFactory.o                \
    $(BUILD_DIR)/asm/Core/x/xNPCBasic.o               \
    $(BUILD_DIR)/asm/Game/zEntPlayerBungeeState.o     \
    $(BUILD_DIR)/asm/Game/zCollGeom.o                 \
    $(BUILD_DIR)/asm/Core/x/xParSys.o                 \
    $(BUILD_DIR)/asm/Core/x/xParEmitter.o             \
    $(BUILD_DIR)/asm/Core/x/xVolume.o                 \
    $(BUILD_DIR)/asm/Core/x/xParEmitterType.o         \
    $(BUILD_DIR)/src/Core/x/xRenderState.o            \
    $(BUILD_DIR)/asm/Game/zEntPlayerOOBState.o        \
    $(BUILD_DIR)/asm/Core/x/xClumpColl.o              \
    $(BUILD_DIR)/asm/Core/x/xEntBoulder.o             \
    $(BUILD_DIR)/asm/Core/x/xGrid.o                   \
    $(BUILD_DIR)/asm/Core/x/xJSP.o                    \
    $(BUILD_DIR)/asm/Core/x/xLightKit.o               \
    $(BUILD_DIR)/asm/Game/zCamMarker.o                \
    $(BUILD_DIR)/asm/Game/zGoo.o                      \
    $(BUILD_DIR)/asm/Game/zGrid.o                     \
    $(BUILD_DIR)/asm/Game/zNPCGoalScript.o            \
    $(BUILD_DIR)/asm/Game/zNPCSndTable.o              \
    $(BUILD_DIR)/asm/Game/zNPCSndLists.o              \
    $(BUILD_DIR)/asm/Game/zNPCTypeDuplotron.o         \
    $(BUILD_DIR)/asm/Core/x/xModelBucket.o            \
    $(BUILD_DIR)/asm/Game/zShrapnel.o                 \
    $(BUILD_DIR)/asm/Game/zNPCGoalDuplotron.o         \
    $(BUILD_DIR)/asm/Game/zNPCSpawner.o               \
    $(BUILD_DIR)/asm/Game/zEntTeleportBox.o           \
    $(BUILD_DIR)/asm/Game/zBusStop.o                  \
    $(BUILD_DIR)/asm/Game/zNPCSupport.o               \
    $(BUILD_DIR)/asm/Game/zTalkBox.o                  \
    $(BUILD_DIR)/asm/Game/zTextBox.o                  \
    $(BUILD_DIR)/asm/Game/zTaskBox.o                  \
    $(BUILD_DIR)/asm/Core/p2/iCutscene.o              \
    $(BUILD_DIR)/asm/Game/zNPCTypeTest.o              \
    $(BUILD_DIR)/asm/Game/zNPCTypeSubBoss.o           \
    $(BUILD_DIR)/asm/Game/zNPCTypeBoss.o              \
    $(BUILD_DIR)/asm/Game/zNPCGoalVillager.o          \
    $(BUILD_DIR)/asm/Game/zNPCGoalSubBoss.o           \
    $(BUILD_DIR)/asm/Core/x/xShadowSimple.o           \
    $(BUILD_DIR)/asm/Core/x/xUpdateCull.o             \
    $(BUILD_DIR)/asm/Game/zDiscoFloor.o               \
    $(BUILD_DIR)/asm/Game/zNPCTypeBossSandy.o         \
    $(BUILD_DIR)/asm/Game/zNPCTypeKingJelly.o         \
    $(BUILD_DIR)/asm/Game/zNPCGoalBoss.o              \
    $(BUILD_DIR)/asm/Game/zNPCTypePrawn.o             \
    $(BUILD_DIR)/asm/Game/zNPCTypeBossSB1.o           \
    $(BUILD_DIR)/asm/Game/zNPCTypeBossSB2.o           \
    $(BUILD_DIR)/asm/Core/x/xJaw.o                    \
    $(BUILD_DIR)/asm/Game/zNPCTypeBossPatrick.o       \
    $(BUILD_DIR)/asm/Game/zNPCTypeBossPlankton.o      \
    $(BUILD_DIR)/asm/Game/zParPTank.o                 \
    $(BUILD_DIR)/asm/Game/zTaxi.o                     \
    $(BUILD_DIR)/asm/Game/zNPCTypeDutchman.o          \
    $(BUILD_DIR)/asm/Game/zCameraFly.o                \
    $(BUILD_DIR)/asm/Core/x/xCurveAsset.o             \
    $(BUILD_DIR)/asm/Core/x/xDecal.o                  \
    $(BUILD_DIR)/asm/Core/x/xLaserBolt.o              \
    $(BUILD_DIR)/asm/Game/zCameraTweak.o              \
    $(BUILD_DIR)/asm/Core/x/xPtankPool.o              \
    $(BUILD_DIR)/asm/Core/p2/iTRC.o                   \
    $(BUILD_DIR)/asm/Game/zNPCSupplement.o            \
    $(BUILD_DIR)/asm/Game/zNPCGlyph.o                 \
    $(BUILD_DIR)/asm/Game/zNPCHazard.o                \
    $(BUILD_DIR)/asm/Game/zNPCGoalAmbient.o           \
    $(BUILD_DIR)/asm/Game/zNPCFXCinematic.o           \
    $(BUILD_DIR)/asm/Core/x/xHudText.o                \
    $(BUILD_DIR)/asm/Game/zCombo.o                    \
    $(BUILD_DIR)/asm/Core/x/xCM.o                     \
    $(BUILD_DIR)/asm/bink/bink.o                      \
    $(BUILD_DIR)/asm/dolphin/dolphin.o                \
    $(BUILD_DIR)/asm/CodeWarrior/MSL_C.o              \
    $(BUILD_DIR)/asm/CodeWarrior/Runtime.o            \
    $(BUILD_DIR)/asm/ODEGdev/OdemuExi2.o              \
    $(BUILD_DIR)/asm/rwsdk/rwsdk.o

CTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=                                    \
    $(BUILD_DIR)/asm/dtors.o

BSS_O_FILES :=                                      \
    $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=                                    \
    $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES :=                                     \
    $(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES :=                                   \
    $(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=                                    \
    $(BUILD_DIR)/asm/sbss2.o
