add_module(XRay.CPUPipe
  TYPE STATIC
  
  INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}

  LINKS
  dxsdk
  loki

  XRay.Core.Defines
  XRay.Engine.Defines
  
  XRay.Includes
  XRay.Collision.Includes
  XRay.Core.Includes
  XRay.Engine.Includes
  XRay.Render.Common.Includes
  XRay.Render.API.Includes
  XRay.Physics.Includes
  XRay.ServerEntities.Includes
  XRay.Sound.Includes

  DEFINES
  $<$<PLATFORM_ID:Windows>:_WIN32_WINNT=0x0501>
  WIN32_LEAN_AND_MEAN
  RENDER=1

  PRECOMPILES
  #[["windows.h"]]
  #[["stdio.h"]]
  #[["intrin.h"]]

  #[["xrCore.h"]]
  #[["SkeletonXVertRender.h"]]

  #xrCPU_Pipe.h
  #ttapi.h

  SOURCES
  xrCPU_Pipe.cpp
  xrCPU_Pipe.h
)

target_compile_options(XRay.CPUPipe
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
  $<$<CXX_COMPILER_ID:MSVC>:/wd4005>
)

add_module(XRay.CPUPipe.PLC
  SOURCES
  PLC.cpp
)

add_module(XRay.CPUPipe.Resources
  SOURCES
  resource.h
  xrCPU_Pipe.rc
)

add_module(XRay.CPUPipe.Skinning
  SOURCES
  xrSkin2W.cpp
  xrSkin2W_SSE.cpp
  xrSkin2W_thread.cpp
)

add_module(XRay.CPUPipe.TTAPI
  SOURCES
  ttapi.cpp
  ttapi.h
)
