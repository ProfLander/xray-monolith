set(XRCORE_STATIC On CACHE BOOL "Build XRay.Core as a static library")

if(XRCORE_STATIC)
  set(XRCORE_TYPE STATIC)
else()
  set(XRCORE_TYPE SHARED)
endif()

add_module(XRay.Core
  TYPE ${XRCORE_TYPE}

  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}

  DEFINES
  PURE_ALLOC
  PORTABLE_BUGSLAYERUTIL

  LINKS
  DxErr
  LZO
  optick
  StackWalker
  winmm

  XRay.Includes
  XRay.Render.API.Includes
  XRay.Collision.Includes

  PRECOMPILES
  #xrCore.h

  SOURCES
  xrCore.cpp
  xrCore.h

  FTimer.cpp
  FTimer.h
  
  ChooseTypes.H
  client_id.h
  robin_hood.h

  destructor.h

  xr_rtoken.h
  xr_shortcut.h

  resource.h
  xrCore.rc
)

target_compile_options(XRay.Core
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
  $<$<CXX_COMPILER_ID:MSVC>:/wd4244>
)

target_compile_definitions(XRay.Core
  PRIVATE
  _STLP_DESIGNATED_DLL=1
  _STLP_USE_DECLSPEC=1
  XRCORE_EXPORTS
  MODULE_NAME="xrCore.dll"
)

target_compile_definitions(XRay.Core.Defines
  INTERFACE
  _STLP_USE_DECLSPEC=1
  xr_pure_interface=__interface
)

if(XRCORE_STATIC)
  target_compile_definitions(XRay.Core.Defines
    INTERFACE
    XRCORE_STATIC
    [[XRCORE_API=]]
  )
else()
  target_compile_definitions(XRay.Core
    PRIVATE
    XRCORE_API=__declspec\(dllexport\)
  )
  target_compile_definitions(XRay.Core.Defines
    INTERFACE
    XRCORE_API=__declspec\(dllimport\)
  )
endif()

set_source_files_properties(
  lzo_compressor.cpp
  rt_lzo1x_1.cpp
  rt_lzo1x_9x.cpp
  rt_lzo1x_d1.cpp
  rt_lzo1x_d2.cpp
  rt_lzo1x_d3.cpp
  rt_lzo_init.cpp
  xrCore.cpp
  blackbox/TLHELPProcessInfo.cpp
  Xr_ini.cpp
  patrol_path.cpp
  PROPERTIES
  SKIP_UNITY_BUILD_INCLUSION true
)

include(XRay.Core.Compression.LZ)
include(XRay.Core.Compression.LZO)
include(XRay.Core.Compression.PPMD)
include(XRay.Core.Compression.RT)
include(XRay.Core.Crypto)
include(XRay.Core.Debug)
include(XRay.Core.Debug.BlackBox)
include(XRay.Core.FS)
include(XRay.Core.IntrusivePointer)
include(XRay.Core.Math)
include(XRay.Core.Memory.Manager)
include(XRay.Core.Memory.Monitor)
include(XRay.Core.Memory.Shared)
include(XRay.Core.OS)
include(XRay.Core.Profiling)
include(XRay.Core.Threading)
