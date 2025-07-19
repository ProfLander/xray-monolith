add_module(XRay.Sound
  TYPE STATIC

  INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}

  PRECOMPILES stdafx.h

  DEFINES
  XRSOUND_EXPORTS

  LINKS
  dxsdk
  dxguid
  libogg
  libtheora
  libvorbis
  libvorbisfile
  OpenAL
  tbb
  XRay.Core
  XRay.Render.API

  SOURCES
  guids.cpp
  OpenALDeviceList.cpp
  sound.cpp

  cl_intersect.h
  OpenALDeviceList.h
  Sound.h
  SoundRender.h
  stdafx.h
)

include(XRay.Sound.Cache)
include(XRay.Sound.Core)
include(XRay.Sound.Emitter)
include(XRay.Sound.Environment)
include(XRay.Sound.Source)
include(XRay.Sound.Target)
