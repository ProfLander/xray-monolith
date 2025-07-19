add_module(XRay.NetServer
  TYPE STATIC

  INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}

  PRECOMPILES stdafx.h

  LINKS
  DPlay
  DxErr
  optick
  Ws2_32
  XRay.Core

  SOURCES
  ip_filter.cpp
  NET_AuthCheck.cpp
  NET_Client.cpp
  NET_Common.cpp
  NET_Compressor.cpp
  NET_Log.cpp
  NET_Server.cpp

  ip_filter.h
  NET_AuthCheck.h
  NET_Client.h
  NET_Common.h
  NET_Compressor.h
  NET_Log.h
  NET_Messages.h
  NET_PlayersMonitor.h
  NET_Server.h
  NET_Shared.h
  stdafx.h
)

set_source_files_properties(
  NET_Server.cpp
  PROPERTIES
  SKIP_UNITY_BUILD_INCLUSION true
)