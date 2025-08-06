add_module(XRay.NetServer
  TYPE STATIC
  
  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}

  LINKS
  DPlay
  DxErr
  optick
  Ws2_32

  XRay.Core.Defines
  
  XRay.Core.Includes

  PRECOMPILES
  #[["xrCore.h"]]
  #[["DPlay/dplay8.h"]]
  #NET_Shared.h
  #macros.h

  SOURCES
  macros.h

  ip_filter.cpp
  ip_filter.h
  
  NET_AuthCheck.cpp
  NET_AuthCheck.h

  NET_Client.cpp
  NET_Client.h

  NET_Common.cpp
  NET_Common.h

  NET_Compressor.cpp
  NET_Compressor.h

  NET_Log.cpp
  NET_Log.h

  NET_Server.cpp
  NET_Server.h

  NET_Messages.h
  NET_PlayersMonitor.h
  NET_Shared.h
)

target_compile_options(XRay.NetServer
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
)

set_source_files_properties(
  NET_Server.cpp
  PROPERTIES
  SKIP_UNITY_BUILD_INCLUSION true
)