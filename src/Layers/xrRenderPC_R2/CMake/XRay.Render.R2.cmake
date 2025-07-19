add_module(XRay.Render.R2
  TYPE STATIC

  PRECOMPILES stdafx.h

  INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}

  DEFINES
  STATIC_RENDERER_R2
  XRRENDER_R2_EXPORTS

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
  XRay.Engine
  XRay.Render.API

  SOURCES
  ../../xrEngine/cl_intersect.h
  ../xrRender/xrD3DDefs.h
  ../xrRender/xrRender_console.cpp
  ../xrRender/xrRender_console.h
  xrRender_R2.cpp
  stdafx.h
)

add_module(XRay.Render.R2.Core
  SOURCES
  ../xrRender/particles_systems_library_interface.hpp

  ../xrRender/PSLibrary.cpp
  ../xrRender/PSLibrary.h

  ../xrRender/r__dsgraph_build.cpp
  ../xrRender/r__dsgraph_render.cpp
  ../xrRender/r__dsgraph_render_lods.cpp
  ../xrRender/r__dsgraph_structure.h
  ../xrRender/r__dsgraph_types.h

  ../xrRender/r__occlusion.cpp
  ../xrRender/r__occlusion.h

  ../xrRender/r__pixel_calculator.cpp
  ../xrRender/r__pixel_calculator.h

  ../xrRender/r__screenshot.cpp

  ../xrRender/r_sun_cascades.h

  r2.cpp
  r2.h

  r2_blenders.cpp
  r2_loader.cpp
  r2_R_calculate.cpp
  r2_R_lights.cpp
  r2_R_render.cpp
  r2_R_sun.cpp
  r2_sector_detect.cpp
  r2_test_hw.cpp

  r2_types.h

  ../xrRender/Texture.cpp

  ../xrRender/tga.cpp
  ../xrRender/tga.h
)

add_module(XRay.Render.R2.Core.Target
  SOURCES
  r2_rendertarget.cpp
  r2_rendertarget.h

  r2_rendertarget_accum_direct.cpp
  r2_rendertarget_accum_omnipart_geom.cpp
  r2_rendertarget_accum_point.cpp
  r2_rendertarget_accum_point_geom.cpp
  r2_rendertarget_accum_reflected.cpp
  r2_rendertarget_accum_spot.cpp
  r2_rendertarget_accum_spot_geom.cpp
  r2_rendertarget_draw_volume.cpp
  r2_rendertarget_enable_scissor.cpp
  r2_rendertarget_phase_accumulator.cpp
  r2_rendertarget_phase_bloom.cpp
  r2_rendertarget_phase_combine.cpp
  r2_rendertarget_phase_luminance.cpp
  r2_rendertarget_phase_occq.cpp
  r2_rendertarget_phase_PP.cpp
  r2_rendertarget_phase_scene.cpp
  r2_rendertarget_phase_smap_D.cpp
  r2_rendertarget_phase_smap_S.cpp
  r2_rendertarget_phase_ssao.cpp
  r2_rendertarget_wallmarks.h

  ../xrRender/rendertarget_phase_blur.cpp
  ../xrRender/rendertarget_phase_dof.cpp
  ../xrRender/rendertarget_phase_lut.cpp
  ../xrRender/rendertarget_phase_nightvision.cpp
  ../xrRender/rendertarget_phase_gasmask_drops.cpp
  ../xrRender/rendertarget_phase_gasmask_dudv.cpp
  ../xrRender/rendertarget_phase_pp_bloom.cpp
  ../xrRender/rendertarget_phase_smaa.cpp
  ../xrRender/rendertarget_phase_sunshafts.cpp
)

add_module(XRay.Render.R2.Core.Target.ColorMap
  SOURCES
  ../xrRender/ColorMapManager.cpp
  ../xrRender/ColorMapManager.h
)

add_module(XRay.Render.R2.Details
  SOURCES
  ../xrRender/DetailFormat.h

  ../xrRender/DetailManager.cpp
  ../xrRender/DetailManager.h

  ../xrRender/DetailManager_CACHE.cpp
  ../xrRender/DetailManager_Decompress.cpp
  ../xrRender/DetailManager_soft.cpp
  ../xrRender/DetailManager_VS.cpp

  ../xrRender/DetailModel.cpp
  ../xrRender/DetailModel.h
)

add_module(XRay.Render.R2.Interfaces.Application
  SOURCES
  ../xrRender/ApplicationRender.h

  ../xrRender/dxApplicationRender.cpp
  ../xrRender/dxApplicationRender.h
)

add_module(XRay.Render.R2.Interfaces.Console
  SOURCES
  ../xrRender/ConsoleRender.h

  ../xrRender/dxConsoleRender.cpp
  ../xrRender/dxConsoleRender.h
)

add_module(XRay.Render.R2.Interfaces.Debug
  SOURCES
  ../xrRender/DebugShader.h
)

add_module(XRay.Render.R2.Interfaces.Debug.Render
  SOURCES
  ../xrRender/DebugRender.h
  ../xrRender/dxDebugRender.cpp
  ../xrRender/dxDebugRender.h
)

add_module(XRay.Render.R2.Interfaces.Environment
  SOURCES
  ../xrRender/EnvironmentRender.h
  ../xrRender/dxEnvironmentRender.cpp
  ../xrRender/dxEnvironmentRender.h
)

add_module(XRay.Render.R2.Interfaces.FactoryPtr
  SOURCES
  ../xrRender/FactoryPtr.h
)

add_module(XRay.Render.R2.Interfaces.Font
  SOURCES
  ../xrRender/FontRender.h

  ../xrRender/dxFontRender.cpp
  ../xrRender/dxFontRender.h
)

add_module(XRay.Render.R2.Interfaces.ImGui
  SOURCES
  ../xrRender/ImGuiRender.h

  ../xrRender/dxImGuiRender.cpp
  ../xrRender/dxImGuiRender.h
)

add_module(XRay.Render.R2.Interfaces.LensFlare
  SOURCES
  ../xrRender/LensFlareRender.h

  ../xrRender/dxLensFlareRender.cpp
  ../xrRender/dxLensFlareRender.h
)

add_module(XRay.Render.R2.Interfaces.ObjectSpace
  SOURCES
  ../xrRender/ObjectSpaceRender.h

  ../xrRender/dxObjectSpaceRender.cpp
  ../xrRender/dxObjectSpaceRender.h
)

add_module(XRay.Render.R2.Interfaces.Rain
  SOURCES
  ../xrRender/RainRender.h
  ../xrRender/dxRainRender.cpp
  ../xrRender/dxRainRender.h
)

add_module(XRay.Render.R2.Interfaces.RenderDevice
  SOURCES
  ../xrRender/RenderDeviceRender.h
  ../xrRender/dxRenderDeviceRender.cpp
  ../xrRender/dxRenderDeviceRender.h
)

add_module(XRay.Render.R2.Interfaces.RenderFactory
  SOURCES
  ../xrRender/RenderFactory.h
  ../xrRender/dxRenderFactory.cpp
  ../xrRender/dxRenderFactory.h
)

add_module(XRay.Render.R2.Interfaces.StatGraph
  SOURCES
  ../xrRender/StatGraphRender.h

  ../xrRender/dxStatGraphRender.cpp
  ../xrRender/dxStatGraphRender.h
)

add_module(XRay.Render.R2.Interfaces.Stats
  SOURCES
  ../xrRender/StatsRender.h
  ../xrRender/dxStatsRender.cpp
  ../xrRender/dxStatsRender.h
)

add_module(XRay.Render.R2.Interfaces.ThunderboltDesc
  SOURCES
  ../xrRender/ThunderboltDescRender.h

  ../xrRender/dxThunderboltDescRender.cpp
  ../xrRender/dxThunderboltDescRender.h
)

add_module(XRay.Render.R2.Interfaces.Thunderbolt
  SOURCES
  ../xrRender/ThunderboltRender.h

  ../xrRender/dxThunderboltRender.cpp
  ../xrRender/dxThunderboltRender.h
)

add_module(XRay.Render.R2.Interfaces.UI.Render
  SOURCES
  ../xrRender/UIRender.h
  ../xrRender/dxUIRender.cpp
  ../xrRender/dxUIRender.h
)

add_module(XRay.Render.R2.Interfaces.UI.SequenceVideoItem
  SOURCES
  ../xrRender/UISequenceVideoItem.h

  ../xrRender/dxUISequenceVideoItem.cpp
  ../xrRender/dxUISequenceVideoItem.h
)

add_module(XRay.Render.R2.Interfaces.UI.Shader
  SOURCES
  ../xrRender/UIShader.h

  ../xrRender/dxUIShader.cpp
  ../xrRender/dxUIShader.h
)

add_module(XRay.Render.R2.Interfaces.WallMarkArray
  SOURCES
  ../xrRender/WallMarkArray.h
  ../xrRender/dxWallMarkArray.cpp
  ../xrRender/dxWallMarkArray.h
)

add_module(XRay.Render.R2.Lights
  SOURCES
  ../xrRender/light.cpp
  ../xrRender/light.h

  ../xrRender/Light_DB.cpp
  ../xrRender/Light_DB.h

  light_GI.cpp
  light_gi.h

  ../xrRender/Light_Package.cpp
  ../xrRender/Light_Package.h

  Light_Render_Direct.cpp
  Light_Render_Direct.h

  Light_Render_Direct_ComputeXFS.cpp

  light_smapvis.cpp
  light_smapvis.h

  light_vis.cpp

  ../xrRender/LightTrack.cpp
  ../xrRender/LightTrack.h

  SMAP_Allocator.h
)

add_module(XRay.Render.R2.Models
  SOURCES
  ../xrRender/ModelPool.cpp
  ../xrRender/ModelPool.h
)

add_module(XRay.Render.R2.Models.Visuals
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

add_module(XRay.Render.R2.Refactored.Backend
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

add_module(XRay.Render.R2.Refactored.Execution3D.DebugDraw
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

add_module(XRay.Render.R2.Refactored.Execution3D.Gamma
  SOURCES
  ../xrRender/xr_effgamma.cpp
  ../xrRender/xr_effgamma.h
)

add_module(XRay.Render.R2.Refactored.Execution3D.Shaders.Blender
  SOURCES
  ../xrRender/blenders/Blender.cpp
  ../xrRender/blenders/Blender.h

  ../xrRender/blenders/Blender_Palette.cpp

  ../xrRender/blenders/Blender_CLSID.h

  ../xrRender/blenders/Blender_Recorder.cpp
  ../xrRender/blenders/Blender_Recorder.h

  ../xrRender/Blender_Recorder_R2.cpp
  ../xrRender/Blender_Recorder_StandartBinding.cpp

  ../xrRender/tss.h

  ../xrRender/tss_def.cpp
  ../xrRender/tss_def.h
)

add_module(XRay.Render.R2.Refactored.Execution3D.Shaders.Resources
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

add_module(XRay.Render.R2.Refactored.Execution3D.Shaders.Resources.DX9RShader
  SOURCES
  ../xrRender/r_constants_cache.h

  ../xrRenderDX9/dx9r_constants_cache.cpp
  ../xrRenderDX9/dx9r_constants_cache.h
)

add_module(XRay.Render.R2.Refactored.Execution3D.Shaders.Manager
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

add_module(XRay.Render.R2.Refactored.Execution3D.Visuals
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

add_module(XRay.Render.R2.Refactored.Execution3D.Visuals.Skeleton
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
)

add_module(XRay.Render.R2.Refactored.HW
  SOURCES
  ../xrRender/HW.cpp
  ../xrRender/HW.h

  ../xrRender/HWCaps.cpp
  ../xrRender/HWCaps.h
)

add_module(XRay.Render.R2.Refactored.Interfaces
  SOURCES
  ../xrRender/IRenderDetailModel.h
  ../xrRender/RenderDetailModel.h
)

add_module(XRay.Render.R2.Refactored.StatsManager
  SOURCES
  ../xrRender/stats_manager.cpp
  ../xrRender/stats_manager.h
)

add_module(XRay.Render.R2.ShadingTemplates
  SOURCES
  ../xrRender/Blender_BmmD.cpp
  ../xrRender/Blender_BmmD.h

  ../xrRender/Blender_Editor_Selection.cpp
  ../xrRender/Blender_Editor_Selection.h

  ../xrRender/Blender_Editor_Wire.cpp
  ../xrRender/Blender_Editor_Wire.h

  ../xrRender/Blender_Particle.cpp
  ../xrRender/Blender_Particle.h

  blender_bloom_build.cpp
  blender_blur.cpp
  blender_combine.cpp
  blender_deffer_aref.cpp
  blender_deffer_flat.cpp
  blender_deffer_model.cpp
  blender_dof.cpp
  blender_lut.cpp
  blender_nightvision.cpp
  blender_gasmask_drops.cpp
  blender_gasmask_dudv.cpp
  blender_light_direct.cpp
  blender_light_direct_cascade.cpp
  blender_light_mask.cpp
  blender_light_occq.cpp
  blender_light_point.cpp
  blender_light_reflected.cpp
  blender_light_spot.cpp
  blender_luminance.cpp
  blender_pp_bloom.cpp
  blender_smaa.cpp
  blender_ssao.cpp
  blender_ss_sunshafts.cpp
  blender_bloom_build.h
  blender_blur.h
  blender_combine.h
  blender_deffer_aref.h
  blender_deffer_flat.h
  blender_deffer_model.h
  blender_dof.h
  blender_lut.h
  blender_nightvision.h
  blender_gasmask_drops.h
  blender_gasmask_dudv.h
  blender_light_direct.h
  blender_light_direct_cascade.h
  blender_light_mask.h
  blender_light_occq.h
  blender_light_point.h
  blender_light_reflected.h
  blender_light_spot.h
  blender_luminance.h
  blender_pp_bloom.h
  blender_smaa.h
  blender_ssao.h
  blender_ss_sunshafts.h

  ../xrRender/uber_deffer.cpp
  ../xrRender/uber_deffer.h
)

add_module(XRay.Render.R2.ShadingTemplates.R1
  SOURCES
  ../xrRender/Blender_detail_still.cpp
  ../xrRender/Blender_detail_still.h

  "../xrRender/Blender_Lm(EbB).cpp"
  "../xrRender/Blender_Lm(EbB).h"

  ../xrRender/Blender_Model_EbB.cpp
  ../xrRender/Blender_Model_EbB.h

  ../xrRender/Blender_Screen_SET.cpp
  ../xrRender/Blender_Screen_SET.h

  ../xrRender/Blender_tree.cpp
  ../xrRender/Blender_tree.h
)

add_module(XRay.Render.R2.Stripifier
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

add_module(XRay.Render.R2.Visibility.HOM
  SOURCES
  ../xrRender/HOM.cpp
  ../xrRender/HOM.h

  ../xrRender/occRasterizer.cpp
  ../xrRender/occRasterizer.h

  ../xrRender/occRasterizer_core.cpp
)

add_module(XRay.Render.R2.Visibility.Sector
  SOURCES
  ../xrRender/r__sector.cpp
  ../xrRender/r__sector.h

  ../xrRender/r__sector_traversal.cpp
)

add_module(XRay.Render.R2.Wallmarks
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
