add_module(XRay.Render.R4
  TYPE STATIC

  PRECOMPILES stdafx.h

  INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}

  DEFINES
  STATIC_RENDERER_R4
  USE_DX11
  XRRENDER_R4_EXPORTS

  LINKS
  dxgi
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
  ../xrRenderDX10/DXCommonTypes.h
  ../xrRender/xrD3DDefs.h

  ../xrRender/xrRender_console.cpp
  ../xrRender/xrRender_console.h

  xrRender_R4.cpp

  stdafx.h
)

add_module(XRay.Render.R4.3DFluid
  SOURCES
  ../xrRenderDX10/3DFluid/dx103DFluidData.cpp
  ../xrRenderDX10/3DFluid/dx103DFluidData.h

  ../xrRenderDX10/3DFluid/dx103DFluidEmitters.cpp
  ../xrRenderDX10/3DFluid/dx103DFluidEmitters.h

  ../xrRenderDX10/3DFluid/dx103DFluidGrid.cpp
  ../xrRenderDX10/3DFluid/dx103DFluidGrid.h

  ../xrRenderDX10/3DFluid/dx103DFluidManager.cpp
  ../xrRenderDX10/3DFluid/dx103DFluidManager.h

  ../xrRenderDX10/3DFluid/dx103DFluidObstacles.cpp
  ../xrRenderDX10/3DFluid/dx103DFluidObstacles.h

  ../xrRenderDX10/3DFluid/dx103DFluidRenderer.cpp
  ../xrRenderDX10/3DFluid/dx103DFluidRenderer.h
)

add_module(XRay.Render.R4.Core
  SOURCES
  ../xrRenderDX10/dx10EventWrapper.cpp
  ../xrRenderDX10/dx10EventWrapper.h
  ../xrRenderDX10/dx10Texture.cpp
  ../xrRender/particles_systems_library_interface.hpp
  ../xrRender/PSLibrary.cpp
  ../xrRender/PSLibrary.h
  ../xrRender/QueryHelper.h
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
  r2_blenders.cpp
  r2_R_calculate.cpp
  r2_R_lights.cpp
  r2_R_sun.cpp
  r2_sector_detect.cpp
  r2_test_hw.cpp
  r2_types.h
  r4.cpp
  r4.h
  r4_loader.cpp
  r4_R_rain.cpp
  r4_R_render.cpp
  r4_R_sun_support.cpp
  r4_R_sun_support.h
  ../xrRender/tga.cpp
  ../xrRender/tga.h
)

add_module(XRay.Render.R4.Core.Target
  SOURCES
  ../xrRender/rendertarget_phase_blur.cpp
  ../xrRender/rendertarget_phase_dof.cpp
  ../xrRender/rendertarget_phase_lut.cpp
  ../xrRender/rendertarget_phase_nightvision.cpp
  ../xrRender/rendertarget_phase_gasmask_drops.cpp
  ../xrRender/rendertarget_phase_gasmask_dudv.cpp
  ../xrRender/rendertarget_phase_pp_bloom.cpp
  ../xrRender/rendertarget_phase_smaa.cpp
  ../xrRender/rendertarget_phase_sunshafts.cpp
  r4_rendertarget.cpp
  r4_rendertarget_accum_direct.cpp
  r4_rendertarget_accum_omnipart_geom.cpp
  r4_rendertarget_accum_point.cpp
  r4_rendertarget_accum_point_geom.cpp
  r4_rendertarget_accum_reflected.cpp
  r4_rendertarget_accum_spot.cpp
  r4_rendertarget_accum_spot_geom.cpp
  r4_rendertarget_create_minmaxSM.cpp
  r4_rendertarget_draw_rain.cpp
  r4_rendertarget_draw_volume.cpp
  r4_rendertarget_enable_scissor.cpp
  r4_rendertarget_mark_msaa_edges.cpp
  r4_rendertarget_phase_accumulator.cpp
  r4_rendertarget_phase_bloom.cpp
  r4_rendertarget_phase_combine.cpp
  r4_rendertarget_phase_hdao.cpp
  r4_rendertarget_phase_hdr10_bloom.cpp
  r4_rendertarget_phase_hdr10_lens_flare.cpp
  r4_rendertarget_phase_luminance.cpp
  r4_rendertarget_phase_occq.cpp
  r4_rendertarget_phase_PP.cpp
  r4_rendertarget_phase_rain.cpp
  r4_rendertarget_phase_scene.cpp
  r4_rendertarget_phase_smap_D.cpp
  r4_rendertarget_phase_smap_S.cpp
  r4_rendertarget_phase_ssao.cpp
  r4_rendertarget.h
  r4_rendertarget_wallmarks.h
)

add_module(XRay.Render.R4.Core.Target.ColorMap
  SOURCES
  ../xrRender/ColorMapManager.cpp
  ../xrRender/ColorMapManager.h
)

add_module(XRay.Render.R4.Debug
  SOURCES
  ../xrRender/Debug/dxPixEventWrapper.cpp
  ../xrRender/Debug/dxPixEventWrapper.h
)

add_module(XRay.Render.R4.Details
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
  ../xrRenderDX10/dx10DetailManager_VS.cpp
)

add_module(XRay.Render.R4.DX9ToDX10Utils
  SOURCES
  ../xrRenderDX10/dx10BufferUtils.cpp
  ../xrRenderDX10/dx10BufferUtils.h

  ../xrRenderDX10/dx10StateUtils.cpp
  ../xrRenderDX10/dx10StateUtils.h

  ../xrRenderDX10/dx10TextureUtils.cpp
  ../xrRenderDX10/dx10TextureUtils.h
)

add_module(XRay.Render.R4.Interfaces.Application
  SOURCES
  ../xrRender/ApplicationRender.h

  ../xrRender/dxApplicationRender.cpp
  ../xrRender/dxApplicationRender.h
)

add_module(XRay.Render.R4.Interfaces.Console
  SOURCES
  ../xrRender/ConsoleRender.h

  ../xrRender/dxConsoleRender.cpp
  ../xrRender/dxConsoleRender.h

)

add_module(XRay.Render.R4.Interfaces.Debug
  SOURCES
  ../xrRender/DebugShader.h
)

add_module(XRay.Render.R4.Interfaces.Debug.Render
  SOURCES
  ../xrRender/DebugRender.h

  ../xrRender/dxDebugRender.cpp
  ../xrRender/dxDebugRender.h
)

add_module(XRay.Render.R4.Interfaces.Environment
  SOURCES
  ../xrRender/EnvironmentRender.h

  ../xrRender/dxEnvironmentRender.cpp
  ../xrRender/dxEnvironmentRender.h
)

add_module(XRay.Render.R4.Interfaces.FactoryPtr
  SOURCES
  ../xrRender/FactoryPtr.h
)

add_module(XRay.Render.R4.Interfaces.Font
  SOURCES
  ../xrRender/FontRender.h
  ../xrRender/dxFontRender.cpp
  ../xrRender/dxFontRender.h
)

add_module(XRay.Render.R4.Interfaces.ImGui
  SOURCES
  ../xrRender/ImGuiRender.h
  ../xrRender/dxImGuiRender.cpp
  ../xrRender/dxImGuiRender.h
)

add_module(XRay.Render.R4.Interfaces.LensFlare
  SOURCES
  ../xrRender/LensFlareRender.h
  ../xrRender/dxLensFlareRender.cpp
  ../xrRender/dxLensFlareRender.h
)

add_module(XRay.Render.R4.Interfaces.MSAA
  SOURCES
  ../xrRenderDX10/MSAA/dx10MSAABlender.cpp
  ../xrRenderDX10/MSAA/dx10MSAABlender.h
)

add_module(XRay.Render.R4.Interfaces.ObjectSpace
  SOURCES
  ../xrRender/ObjectSpaceRender.h
  ../xrRender/dxObjectSpaceRender.cpp
  ../xrRender/dxObjectSpaceRender.h
)

add_module(XRay.Render.R4.Interfaces.Rain
  SOURCES
  ../xrRender/RainRender.h
  ../xrRender/dxRainRender.cpp
  ../xrRender/dxRainRender.h
)

add_module(XRay.Render.R4.Interfaces.RenderDevice
  SOURCES
  ../xrRender/RenderDeviceRender.h
  ../xrRender/dxRenderDeviceRender.cpp
  ../xrRender/dxRenderDeviceRender.h
)

add_module(XRay.Render.R4.Interfaces.RenderFactory
  SOURCES
  ../xrRender/RenderFactory.h
  ../xrRender/dxRenderFactory.cpp
  ../xrRender/dxRenderFactory.h
)

add_module(XRay.Render.R4.Interfaces.StatGraph
  SOURCES
  ../xrRender/StatGraphRender.h
  ../xrRender/dxStatGraphRender.cpp
  ../xrRender/dxStatGraphRender.h
)

add_module(XRay.Render.R4.Interfaces.Stats
  SOURCES
  ../xrRender/StatsRender.h
  ../xrRender/dxStatsRender.cpp
  ../xrRender/dxStatsRender.h
)

add_module(XRay.Render.R4.Interfaces.ThunderboltDesc
  SOURCES
  ../xrRender/ThunderboltDescRender.h
  ../xrRender/dxThunderboltDescRender.cpp
  ../xrRender/dxThunderboltDescRender.h
)

add_module(XRay.Render.R4.Interfaces.Thunderbolt
  SOURCES
  ../xrRender/ThunderboltRender.h
  ../xrRender/dxThunderboltRender.cpp
  ../xrRender/dxThunderboltRender.h
)

add_module(XRay.Render.R4.Interfaces.UI.Render
  SOURCES
  ../xrRender/UIRender.h
  ../xrRender/dxUIRender.cpp
  ../xrRender/dxUIRender.h
)

add_module(XRay.Render.R4.Interfaces.UI.SequenceVideoItem
  SOURCES
  ../xrRender/UISequenceVideoItem.h
  ../xrRender/dxUISequenceVideoItem.cpp
  ../xrRender/dxUISequenceVideoItem.h
)

add_module(XRay.Render.R4.Interfaces.UI.Shader
  SOURCES
  ../xrRender/UIShader.h
  ../xrRender/dxUIShader.cpp
  ../xrRender/dxUIShader.h
)

add_module(XRay.Render.R4.Interfaces.WallMarkArray
  SOURCES
  ../xrRender/WallMarkArray.h
  ../xrRender/dxWallMarkArray.cpp
  ../xrRender/dxWallMarkArray.h
)

add_module(XRay.Render.R4.Lights
  SOURCES
  ../xrRender/light.cpp
  ../xrRender/light.h

  ../xrRender/Light_DB.cpp
  ../xrRender/Light_DB.h

  light_GI.cpp
  light_gi.h

  ../xrRender/Light_Package.cpp
  ../xrRender/Light_Package.h

  Light_Render_Direct_ComputeXFS.cpp
  Light_Render_Direct.cpp
  Light_Render_Direct.h

  light_smapvis.cpp
  light_smapvis.h

  light_vis.cpp

  ../xrRender/LightTrack.cpp
  ../xrRender/LightTrack.h

  SMAP_Allocator.h
)

add_module(XRay.Render.R4.Models
  SOURCES
  ../xrRender/ModelPool.cpp
  ../xrRender/ModelPool.h
)

add_module(XRay.Render.R4.Models.Visuals
  SOURCES
  ../xrRenderDX10/3DFluid/dx103DFluidVolume.cpp
  ../xrRenderDX10/3DFluid/dx103DFluidVolume.h

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

add_module(XRay.Render.R4.Refactored.Backend
  SOURCES
  ../xrRenderDX10/dx10R_Backend_Runtime.h

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

  R_Backend_LOD.cpp
  R_Backend_LOD.h
)

add_module(XRay.Render.R4.Refactored.Execution3D.DebugDraw
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

add_module(XRay.Render.R4.Refactored.Execution3D.Gamma
  SOURCES
  ../xrRender/xr_effgamma.cpp
  ../xrRender/xr_effgamma.h
)

add_module(XRay.Render.R4.Refactored.Execution3D.Shaders.Blender
  SOURCES
  ../xrRender/blenders/Blender.cpp
  ../xrRender/blenders/Blender.h

  ../xrRender/blenders/Blender_CLSID.h

  ../xrRender/blenders/Blender_Palette.cpp

  ../xrRender/blenders/Blender_Recorder.cpp
  ../xrRender/blenders/Blender_Recorder.h

  ../xrRender/Blender_Recorder_R2.cpp
  ../xrRenderDX10/Blender_Recorder_R3.cpp
  ../xrRender/Blender_Recorder_StandartBinding.cpp

  ../xrRender/tss_def.cpp
  ../xrRender/tss_def.h

  ../xrRender/tss.h
)

add_module(XRay.Render.R4.Refactored.Execution3D.Shaders.Resources
  SOURCES
  ComputeShader.cpp
  ComputeShader.h

  CSCompiler.cpp
  CSCompiler.h

  ../xrRenderDX10/dx10ConstantBuffer.cpp
  ../xrRenderDX10/dx10ConstantBuffer.h
  ../xrRenderDX10/dx10ConstantBuffer_impl.h
  ../xrRenderDX10/dx10r_constants.cpp
  ../xrRenderDX10/dx10SH_RT.cpp
  ../xrRenderDX10/dx10SH_Texture.cpp
  ../xrRender/r_constants.cpp
  ../xrRender/r_constants.h
  ../xrRender/SH_Atomic.cpp
  ../xrRender/SH_Constant.cpp
  ../xrRender/SH_Matrix.cpp
  ../xrRender/SH_Atomic.h
  ../xrRender/SH_Constant.h
  ../xrRender/SH_Matrix.h
  ../xrRender/SH_RT.h
  ../xrRender/SH_Texture.h

  ../xrRender/Shader.cpp
  ../xrRender/Shader.h
)

add_module(XRay.Render.R4.Refactored.Execution3D.Shaders.Resources.DX10RShader
  SOURCES
  ../xrRenderDX10/dx10r_constants_cache.cpp
  ../xrRenderDX10/dx10r_constants_cache.h
  ../xrRender/r_constants_cache.h
)

add_module(XRay.Render.R4.Refactored.Execution3D.Shaders.Manager
  SOURCES
  ../../xrEngine/ai_script_lua_debug.cpp
  ../../xrEngine/ai_script_lua_extension.cpp
  ../xrRenderDX10/dx10ResourceManager_Resources.cpp
  ../xrRenderDX10/dx10ResourceManager_Scripting.cpp
  ../xrRender/ETextureParams.cpp
  ../xrRender/ETextureParams.h
  ../xrRender/ResourceManager.cpp
  ../xrRender/ResourceManager.h
  ../xrRender/ResourceManager_Loader.cpp
  ../xrRender/ResourceManager_Reset.cpp
  ../xrRender/ShaderResourceTraits.h
  ../xrRender/TextureDescrManager.cpp
  ../xrRender/TextureDescrManager.h
)

add_module(XRay.Render.R4.Refactored.Execution3D.Visuals
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

add_module(XRay.Render.R4.Refactored.Execution3D.Skeleton
  SOURCES
  ../xrRender/Animation.cpp
  ../xrRender/Animation.h
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

add_module(XRay.Render.R4.Refactored.HW
  SOURCES
  ../xrRenderDX10/dx10HW.cpp
  ../xrRender/HW.h
  ../xrRender/HWCaps.cpp
  ../xrRender/HWCaps.h
)

add_module(XRay.Render.R4.Refactored.Interfaces
  SOURCES
  ../xrRender/IRenderDetailModel.h
  ../xrRender/RenderDetailModel.h
)

add_module(XRay.Render.R4.Refactored.StatsManager
  SOURCES
  ../xrRender/stats_manager.cpp
  ../xrRender/stats_manager.h
)

add_module(XRay.Render.R4.ShadingTemplates
  SOURCES
  blender_bloom_build.cpp
  blender_blur.cpp
  blender_combine.cpp
  blender_deffer_aref.cpp
  blender_deffer_flat.cpp
  blender_deffer_model.cpp
  blender_dof.cpp
  blender_hdr10_bloom.cpp
  blender_hdr10_lens_flare.cpp
  blender_lut.cpp
  blender_nightvision.cpp
  blender_gasmask_drops.cpp
  blender_gasmask_dudv.cpp
  blender_light_direct.cpp
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
  blender_hdr10_bloom.h
  blender_hdr10_lens_flare.h
  blender_lut.h
  blender_nightvision.h
  blender_gasmask_drops.h
  blender_gasmask_dudv.h
  blender_light_direct.h
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

  dx11HDAOCSBlender.cpp
  dx11HDAOCSBlender.h

  dx11MinMaxSMBlender.cpp
  dx11MinMaxSMBlender.h

  ../xrRender/uber_deffer.cpp
  ../xrRender/uber_deffer.h
)

add_module(XRay.Render.R4.ShadingTemplates.3DFluid
  SOURCES
  ../xrRenderDX10/3DFluid/dx103DFluidBlenders.cpp
  ../xrRenderDX10/3DFluid/dx103DFluidBlenders.h
)

add_module(XRay.Render.R4.ShadingTemplates.DX10Rain
  SOURCES
  "../xrRenderDX10/DX10 Rain/dx10RainBlender.cpp"
  "../xrRenderDX10/DX10 Rain/dx10RainBlender.h"
)

add_module(XRay.Render.R4.ShadingTemplates.R1
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

  ../xrRender/Blender_BmmD.cpp
  ../xrRender/Blender_BmmD.h

  ../xrRender/Blender_Editor_Selection.cpp
  ../xrRender/Blender_Editor_Selection.h

  ../xrRender/Blender_Editor_Wire.cpp
  ../xrRender/Blender_Editor_Wire.h

  ../xrRender/Blender_Particle.cpp
  ../xrRender/Blender_Particle.h
)

add_module(XRay.Render.R4.StateManager
  SOURCES
  ../xrRenderDX10/StateManager/dx10SamplerStateCache.cpp
  ../xrRenderDX10/StateManager/dx10ShaderResourceStateCache.cpp
  ../xrRenderDX10/StateManager/dx10State.cpp
  ../xrRenderDX10/StateManager/dx10StateCache.cpp
  ../xrRenderDX10/StateManager/dx10StateManager.cpp
  ../xrRenderDX10/StateManager/dx10SamplerStateCache.h
  ../xrRenderDX10/StateManager/dx10ShaderResourceStateCache.h
  ../xrRenderDX10/StateManager/dx10State.h
  ../xrRenderDX10/StateManager/dx10StateCache.h
  ../xrRenderDX10/StateManager/dx10StateCacheImpl.h
  ../xrRenderDX10/StateManager/dx10StateManager.h
)

add_module(XRay.Render.R4.Stripifier
  SOURCES
  ../xrRender/NvTriStrip.cpp
  ../xrRender/NvTriStripObjects.cpp
  ../xrRender/NvTriStrip.h
  ../xrRender/NvTriStripObjects.h
  ../xrRender/VertexCache.cpp
  ../xrRender/VertexCache.h
  ../xrRender/xrStripify.cpp
  ../xrRender/xrStripify.h
)

add_module(XRay.Render.R4.Utils
  SOURCES
  ../xrRender/Utils/dxHashHelper.cpp
  ../xrRender/Utils/dxHashHelper.h
)

add_module(XRay.Render.R4.Visibility.HOM
  SOURCES
  ../xrRender/HOM.cpp
  ../xrRender/HOM.h

  ../xrRender/occRasterizer.cpp
  ../xrRender/occRasterizer_core.cpp
  ../xrRender/occRasterizer.h
)

add_module(XRay.Render.R4.Visibility.Sector
  SOURCES
  ../xrRender/r__sector.cpp
  ../xrRender/r__sector_traversal.cpp
  ../xrRender/r__sector.h
)

add_module(XRay.Render.R4.Wallmarks
  SOURCES
  ../xrRender/WallmarksEngine.cpp
  ../xrRender/WallmarksEngine.h
)

target_compile_options(XRay.Render.R4
  PRIVATE
  # Increase preallocated stack size by 13%
  $<$<CXX_COMPILER_ID:MSVC>:/Zm113>
)

set_source_files_properties(
  ../xrRender/FLOD.cpp
  ../xrRender/occRasterizer_core.cpp
  ../xrRender/r_constants.cpp
  ../xrRender/ParticleEffectActions.cpp
  ../xrRender/ParticleEffectDef.cpp
  ../xrRender/PSLibrary.cpp
  PROPERTIES
  SKIP_UNITY_BUILD_INCLUSION true
)
