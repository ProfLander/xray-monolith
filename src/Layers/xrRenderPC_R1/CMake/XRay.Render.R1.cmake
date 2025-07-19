add_module(XRay.Render.R1
  TYPE STATIC

  PRECOMPILES stdafx.h

  INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}

  DEFINES
  STATIC_RENDERER_R1
  XRRENDER_R1_EXPORTS

  LINKS
  dxsdk
  imgui
  loki
  luabind
  LuaJIT
  NVAPI
  optick
  ReShadeCompat
  tbb
  XRay.Collision
  XRay.Core
  XRay.CPUPipe
  XRay.Engine
  XRay.Render.API

  SOURCES
  ../xrRender/xrRender_console.cpp
  ../xrRender/xrRender_console.h

  ../xrRender/cl_intersect.h
  ../xrRender/xrD3DDefs.h

  stdafx.h

  xrRender_R1.cpp
)

add_module(XRay.Render.R1.Core
  SOURCES
  FStaticRender.cpp
  FStaticRender.h

  FStaticRender_RenderTarget.cpp
  FStaticRender_RenderTarget.h

  FStaticRender_Blenders.cpp
  FStaticRender_DetectSector.cpp
  FStaticRender_Loader.cpp

  ../xrRender/particles_systems_library_interface.hpp

  ../xrRender/PSLibrary.h
  ../xrRender/PSLibrary.cpp

  ../xrRender/r__dsgraph_build.cpp
  ../xrRender/r__dsgraph_render.cpp
  ../xrRender/r__dsgraph_render_lods.cpp
  ../xrRender/r__dsgraph_structure.h
  ../xrRender/r__dsgraph_types.h

  ../xrRender/r__screenshot.cpp

  ../xrRender/Texture.cpp

  ../xrRender/tga.cpp
  ../xrRender/tga.h
)

add_module(XRay.Render.R1.Core.ColorMap
  SOURCES
  ../xrRender/ColorMapManager.cpp
  ../xrRender/ColorMapManager.h
)

add_module(XRay.Render.R1.Details
  SOURCES
  ../xrRender/DetailFormat.h

  ../xrRender/DetailManager.cpp
  ../xrRender/DetailManager_CACHE.cpp
  ../xrRender/DetailManager_Decompress.cpp
  ../xrRender/DetailManager_soft.cpp
  ../xrRender/DetailManager_VS.cpp
  ../xrRender/DetailManager.h

  ../xrRender/DetailModel.cpp
  ../xrRender/DetailModel.h
)

add_module(XRay.Render.R1.Glows
  SOURCES
  GlowManager.cpp
  GlowManager.h
)

add_module(XRay.Render.R1.Interfaces.Application
  SOURCES
  ../xrRender/ApplicationRender.h

  ../xrRender/dxApplicationRender.cpp
  ../xrRender/dxApplicationRender.h
)

add_module(XRay.Render.R1.Interfaces.Console
  SOURCES
  ../xrRender/ConsoleRender.h

  ../xrRender/dxConsoleRender.cpp
  ../xrRender/dxConsoleRender.h
)

add_module(XRay.Render.R1.Interfaces.Debug
  SOURCES
  ../xrRender/DebugShader.h
)

add_module(XRay.Render.R1.Interfaces.Debug.Render
  SOURCES
  ../xrRender/DebugRender.h

  ../xrRender/dxDebugRender.cpp
  ../xrRender/dxDebugRender.h
)

add_module(XRay.Render.R1.Interfaces.Environment
  SOURCES
  ../xrRender/EnvironmentRender.h

  ../xrRender/dxEnvironmentRender.cpp
  ../xrRender/dxEnvironmentRender.h
)

add_module(XRay.Render.R1.Interfaces.FactoryPtr
  SOURCES
  ../xrRender/FactoryPtr.h
)

add_module(XRay.Render.R1.Interfaces.Font
  SOURCES
  ../xrRender/FontRender.h

  ../xrRender/dxFontRender.cpp
  ../xrRender/dxFontRender.h
)

add_module(XRay.Render.R1.Interfaces.ImGui
  SOURCES
  ../xrRender/ImGuiRender.h

  ../xrRender/dxImGuiRender.cpp
  ../xrRender/dxImGuiRender.h
)

add_module(XRay.Render.R1.Interfaces.LensFlare
  SOURCES
  ../xrRender/LensFlareRender.h

  ../xrRender/dxLensFlareRender.cpp
  ../xrRender/dxLensFlareRender.h
)

add_module(XRay.Render.R1.Interfaces.ObjectSpace
  SOURCES
  ../xrRender/ObjectSpaceRender.h

  ../xrRender/dxObjectSpaceRender.cpp
  ../xrRender/dxObjectSpaceRender.h
)

add_module(XRay.Render.R1.Interfaces.Rain
  SOURCES
  ../xrRender/RainRender.h

  ../xrRender/dxRainRender.cpp
  ../xrRender/dxRainRender.h
)

add_module(XRay.Render.R1.Interfaces.RenderDevice
  SOURCES
  ../xrRender/RenderDeviceRender.h

  ../xrRender/dxRenderDeviceRender.cpp
  ../xrRender/dxRenderDeviceRender.h
)

add_module(XRay.Render.R1.Interfaces.RenderFactory
  SOURCES
  ../xrRender/RenderFactory.h

  ../xrRender/dxRenderFactory.cpp
  ../xrRender/dxRenderFactory.h
)

add_module(XRay.Render.R1.Interfaces.StatGraph
  SOURCES
  ../xrRender/StatGraphRender.h

  ../xrRender/dxStatGraphRender.cpp
  ../xrRender/dxStatGraphRender.h
)

add_module(XRay.Render.R1.Interfaces.Stats
  SOURCES
  ../xrRender/StatsRender.h

  ../xrRender/dxStatsRender.cpp
  ../xrRender/dxStatsRender.h
)

add_module(XRay.Render.R1.Interfaces.ThunderboltDesc
  SOURCES
  ../xrRender/ThunderboltDescRender.h

  ../xrRender/dxThunderboltDescRender.cpp
  ../xrRender/dxThunderboltDescRender.h
)

add_module(XRay.Render.R1.Interfaces.Thunderbolt
  SOURCES
  ../xrRender/ThunderboltRender.h

  ../xrRender/dxThunderboltRender.cpp
  ../xrRender/dxThunderboltRender.h
)

add_module(XRay.Render.R1.Interfaces.UI.Render
  SOURCES
  ../xrRender/UIRender.h

  ../xrRender/dxUIRender.cpp
  ../xrRender/dxUIRender.h
)

add_module(XRay.Render.R1.Interfaces.UI.SequenceVideoItem
  SOURCES
  ../xrRender/UISequenceVideoItem.h

  ../xrRender/dxUISequenceVideoItem.cpp
  ../xrRender/dxUISequenceVideoItem.h
)

add_module(XRay.Render.R1.Interfaces.UI.Shader
  SOURCES
  ../xrRender/UIShader.h

  ../xrRender/dxUIShader.cpp
  ../xrRender/dxUIShader.h
)

add_module(XRay.Render.R1.Interfaces.WallmarkArray
  SOURCES
  ../xrRender/WallMarkArray.h

  ../xrRender/dxWallMarkArray.cpp
  ../xrRender/dxWallMarkArray.h
)

add_module(XRay.Render.R1.Lights
  SOURCES
  ../xrRender/light.cpp
  ../xrRender/light.h

  ../xrRender/Light_DB.cpp
  ../xrRender/Light_DB.h

  ../xrRender/Light_Package.cpp
  ../xrRender/Light_Package.h

  ../xrRender/LightTrack.cpp
  ../xrRender/LightTrack.h

  ../xrRender/R_light.h

  LightPPA.cpp
  LightPPA.h

  LightProjector.cpp
  LightProjector.h

  LightShadows.cpp
  LightShadows.h
)

add_module(XRay.Render.R1.Models
  SOURCES
  ../xrRender/ModelPool.cpp
  ../xrRender/ModelPool.h
)

add_module(XRay.Render.R1.Models.Visuals
  SOURCES
  ../xrRender/FLOD.cpp
  ../xrRender/FLOD.h

  ../xrRender/FProgressive.cpp
  ../xrRender/FProgressive.h

  ../xrRender/FSkinned.cpp
  ../xrRender/FSkinned.h

  ../xrRender/FTreeVisual.cpp
  ../xrRender/FTreeVisual.h

  ../xrRender/FVisual.cpp
  ../xrRender/FVisual.h

  ../xrRender/ParticleEffect.cpp
  ../xrRender/ParticleEffect.h

  ../xrRender/ParticleEffectActions.cpp
  ../xrRender/ParticleEffectActions.h

  ../xrRender/ParticleEffectDef.cpp
  ../xrRender/ParticleEffectDef.h

  ../xrRender/ParticleGroup.cpp
  ../xrRender/ParticleGroup.h
)

add_module(XRay.Render.R1.Refactored.Backend
  SOURCES
  ../xrRenderDX9/dx9R_Backend_Runtime.h
  ../xrRender/FVF.h

  ../xrRender/R_Backend.cpp
  ../xrRender/R_Backend.h

  ../xrRender/R_Backend_DBG.cpp

  ../xrRender/R_Backend_hemi.cpp
  ../xrRender/R_Backend_hemi.h

  ../xrRender/R_Backend_Runtime.cpp
  ../xrRender/R_Backend_Runtime.h

  ../xrRender/R_Backend_tree.cpp
  ../xrRender/R_Backend_tree.h

  ../xrRender/R_Backend_xform.cpp
  ../xrRender/R_Backend_xform.h

  ../xrRender/R_DStreams.cpp
  ../xrRender/R_DStreams.h
)

add_module(XRay.Render.R1.Refactored.Execution3D.DebugDraw
  SOURCES
  ../xrRender/D3DUtils.cpp
  ../xrRender/D3DUtils.h

  ../xrRender/DrawUtils.h

  ../xrRender/du_box.cpp
  ../xrRender/du_box.h

  ../xrRender/du_cone.cpp
  ../xrRender/du_cone.h

  ../xrRender/du_cylinder.cpp
  ../xrRender/du_cylinder.h

  ../xrRender/du_sphere.cpp
  ../xrRender/du_sphere.h

  ../xrRender/du_sphere_part.cpp
  ../xrRender/du_sphere_part.h
)

add_module(XRay.Render.R1.Refactored.Execution3D.Gamma
  SOURCES
  ../xrRender/xr_effgamma.cpp
  ../xrRender/xr_effgamma.h
)

add_module(XRay.Render.R1.Refactored.Execution3D.Shaders.Blender
  SOURCES
  ../xrRender/blenders/Blender.cpp
  ../xrRender/blenders/Blender.h

  ../xrRender/blenders/Blender_CLSID.h

  ../xrRender/blenders/Blender_Recorder.cpp
  ../xrRender/blenders/Blender_Recorder.h

  ../xrRender/blenders/Blender_Palette.cpp
  ../xrRender/Blender_Recorder_R2.cpp
  ../xrRender/Blender_Recorder_StandartBinding.cpp

  ../xrRender/tss.h

  ../xrRender/tss_def.cpp
  ../xrRender/tss_def.h
)

add_module(XRay.Render.R1.Refactored.Execution3D.Shaders.Resources
  SOURCES
  ../xrRender/r_constants.cpp
  ../xrRender/r_constants.h

  ../xrRender/SH_Atomic.cpp
  ../xrRender/SH_Atomic.h

  ../xrRender/SH_Constant.cpp
  ../xrRender/SH_Constant.h

  ../xrRender/SH_Matrix.cpp
  ../xrRender/SH_Matrix.h

  ../xrRender/SH_RT.cpp
  ../xrRender/SH_RT.h

  ../xrRender/SH_Texture.cpp
  ../xrRender/SH_Texture.h

  ../xrRender/Shader.cpp
  ../xrRender/Shader.h
)

add_module(XRay.Render.R1.Refactored.Execution3D.Shaders.Resources.DX9RShader
  SOURCES
  ../xrRenderDX9/dx9r_constants_cache.cpp
  ../xrRenderDX9/dx9r_constants_cache.h

  ../xrRender/r_constants_cache.h
)

add_module(XRay.Render.R1.Refactored.Execution3D.Shaders.Manager
  SOURCES
  ../../xrEngine/ai_script_lua_debug.cpp
  ../../xrEngine/ai_script_lua_extension.cpp

  ../xrRender/ETextureParams.cpp
  ../xrRender/ETextureParams.h

  ../xrRender/ResourceManager.cpp
  ../xrRender/ResourceManager.h

  ../xrRender/ResourceManager_Loader.cpp
  ../xrRender/ResourceManager_Reset.cpp
  ../xrRender/ResourceManager_Resources.cpp
  ../xrRender/ResourceManager_Scripting.cpp

  ../xrRender/TextureDescrManager.cpp
  ../xrRender/TextureDescrManager.h
)

add_module(XRay.Render.R1.Refactored.Execution3D.Visuals
  SOURCES
  ../xrRender/dxParticleCustom.cpp
  ../xrRender/dxParticleCustom.h

  ../xrRender/FBasicVisual.cpp
  ../xrRender/FBasicVisual.h

  ../xrRender/FHierrarhyVisual.cpp
  ../xrRender/FHierrarhyVisual.h

  ../xrRender/ParticleCustom.h

  ../xrRender/RenderVisual.h
)

add_module(XRay.Render.R1.Refactored.Execution3D.Visuals.Skeleton
  SOURCES
  ../xrRender/Animation.cpp
  ../xrRender/Animation.h

  ../xrRender/animation_blend.h
  ../xrRender/animation_motion.h
  ../xrRender/AnimationKeyCalculate.h
  ../xrRender/KinematicAnimatedDefs.h
  ../xrRender/Kinematics.h
  ../xrRender/KinematicsAnimated.h

  ../xrRender/SkeletonAnimated.cpp
  ../xrRender/SkeletonAnimated.h

  ../xrRender/SkeletonCustom.cpp
  ../xrRender/SkeletonCustom.h

  ../xrRender/SkeletonRigid.cpp

  ../xrRender/SkeletonX.cpp
  ../xrRender/SkeletonX.h

  ../xrRender/SkeletonXVertRender.h
)

add_module(XRay.Render.R1.Refactored.HW
  SOURCES
  ../xrRender/HW.cpp
  ../xrRender/HW.h

  ../xrRender/HWCaps.cpp
  ../xrRender/HWCaps.h
)

add_module(XRay.Render.R1.Refactored.Interfaces
  SOURCES
  ../xrRender/RenderDetailModel.h
  ../xrRender/IRenderDetailModel.h
)

add_module(XRay.Render.R1.Refactored.StatsManager
  SOURCES
  ../xrRender/stats_manager.cpp
  ../xrRender/stats_manager.h
)

add_module(XRay.Render.R1.ShadingTemplates
  SOURCES
  ../xrRender/Blender_BmmD.cpp
  ../xrRender/Blender_BmmD.h

  ../xrRender/Blender_detail_still.cpp
  ../xrRender/Blender_detail_still.h

  ../xrRender/Blender_Editor_Selection.cpp
  ../xrRender/Blender_Editor_Selection.h

  ../xrRender/Blender_Editor_Wire.cpp
  ../xrRender/Blender_Editor_Wire.h

  "../xrRender/Blender_Lm(EbB).cpp"
  "../xrRender/Blender_Lm(EbB).h"

  ../xrRender/Blender_Model_EbB.cpp
  ../xrRender/Blender_Model_EbB.h

  ../xrRender/Blender_Particle.cpp
  ../xrRender/Blender_Particle.h

  ../xrRender/Blender_Screen_SET.cpp
  ../xrRender/Blender_Screen_SET.h

  ../xrRender/Blender_tree.cpp
  ../xrRender/Blender_tree.h

  BlenderDefault.cpp
  BlenderDefault.h

  Blender_Blur.cpp
  Blender_Blur.h

  Blender_default_aref.cpp
  Blender_default_aref.h

  Blender_LaEmB.cpp
  Blender_LaEmB.h

  Blender_Model.cpp
  Blender_Model.h

  Blender_Screen_GRAY.cpp
  Blender_Screen_GRAY.h

  Blender_Shadow_World.cpp
  Blender_Shadow_World.h

  Blender_Vertex_aref.cpp
  Blender_Vertex_aref.h

  Blender_Vertex.cpp
  Blender_Vertex.h
)

add_module(XRay.Render.R1.Stripifier
  SOURCES
  ../xrRender/NvTriStrip.cpp
  ../xrRender/NvTriStrip.h

  ../xrRender/NvTriStripObjects.cpp
  ../xrRender/NvTriStripObjects.h

  ../xrRender/VertexCache.cpp
  ../xrRender/VertexCache.h

  ../xrRender/xrStripify.cpp
  ../xrRender/xrStripify.h
)

add_module(XRay.Render.R1.Visibility.HOM
  SOURCES
  ../xrRender/HOM.cpp
  ../xrRender/HOM.h

  ../xrRender/occRasterizer.cpp
  ../xrRender/occRasterizer.h

  ../xrRender/occRasterizer_core.cpp
)

add_module(XRay.Render.R1.Visibility.Sector
  SOURCES
  ../xrRender/r__sector_traversal.cpp

  ../xrRender/r__sector.cpp
  ../xrRender/r__sector.h
)

add_module(XRay.Render.R1.Wallmarks
  SOURCES
  ../xrRender/WallmarksEngine.cpp
  ../xrRender/WallmarksEngine.h
)

set_source_files_properties(
  ../xrRender/FLOD.cpp
  ../xrRender/ResourceManager_Resources.cpp
  ../xrRender/occRasterizer_core.cpp
  ../xrRender/r_constants.cpp
  ../xrRender/ParticleEffectActions.cpp
  ../xrRender/ParticleEffectDef.cpp
  ../xrRender/PSLibrary.cpp
  PROPERTIES
  SKIP_UNITY_BUILD_INCLUSION true
)
