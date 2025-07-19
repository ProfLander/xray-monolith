add_module(XRay.Core.FS
  SOURCES
  file_stream_reader.cpp

  file_stream_reader.h

  stream_reader.cpp

  stream_reader.h
  stream_reader_inline.h

  FileSystem.cpp
  FileSystem_borland.cpp
  FS.cpp
  LocatorAPI.cpp
  LocatorAPI_auth.cpp
  LocatorAPI_defs.cpp
  #LocatorAPI_Notifications.cpp
  log.cpp
  NET_utils.cpp
  Xr_ini.cpp

  FileSystem.h
  FS.h
  FS_impl.h
  FS_internal.h
  LocatorAPI.h
  LocatorAPI_defs.h
  #LocatorAPI_Notifications.h
  log.h
  net_utils.h
  xr_ini.h
)
