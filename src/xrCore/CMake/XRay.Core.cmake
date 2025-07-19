add_module(XRay.Core
  TYPE STATIC

  PRECOMPILES stdafx.h

  DEFINES
  PURE_ALLOC
  XRCORE_EXPORTS
  PORTABLE_BUGSLAYERUTIL

  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}/..
  ${CMAKE_CURRENT_SOURCE_DIR}

  LINKS
  DxErr
  optick
  StackWalker
  winmm
  XRay.Render.API
  XRay.Collision

  SOURCES
  FTimer.cpp
  xrCore.cpp

  FTimer.h
  stdafx.h
  xrCore.h
  xrCore_platform.h

  ../build_config_defines.h
  ChooseTypes.H
  client_id.h
  robin_hood.h

  resource.h
  xrCore.rc
)

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
