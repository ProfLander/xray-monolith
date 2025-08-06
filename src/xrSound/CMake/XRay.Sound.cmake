set(EDITOR_BUILD Off)

add_module(XRay.Sound
  TYPE STATIC
  
  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}

  DEFINES
  # mmsystem.h
  MMNOSOUND
  MMNOMIDI
  MMNOAUX
  MMNOMIXER
  MMNOJOY

  # mmreg.h
  NOMMIDS
  NONEWRIFFF
  NOJPEGDIB
  NONEWIC
  NOBITMAP

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

  XRay.Core.Defines

  XRay.Core.Includes
  XRay.Collision.Includes
  XRay.Engine.Includes
  XRay.Physics.Includes
  XRay.Render.API.Includes
  XRay.Render.Common.Includes
  XRay.ServerEntities.Includes

  PRECOMPILES
  #[["xrCore.h"]]
  #[["xrCDB.h"]]

  #[["mmsystem.h"]]
  #[["mmreg.h"]]

  #[["vorbis/codec.h"]]
  #[["vorbis/vorbisfile.h"]]

  #sound.h
  #resource.h

  SOURCES
  guids.cpp
  OpenALDeviceList.cpp
  sound.cpp

  cl_intersect.h
  OpenALDeviceList.h
  Sound.h
  SoundRender.h

  NotificationClient.cpp
  NotificationClient.h

  resource.h
)

if(EDITOR_BUILD)
  target_precompile_headers(XRay.Sound
    PRIVATE
    ETools.h
  )
endif()

target_compile_options(XRay.Sound
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
  $<$<CXX_COMPILER_ID:MSVC>:/wd4005>
  $<$<CXX_COMPILER_ID:MSVC>:/wd4995>
)

include(XRay.Sound.Cache)
include(XRay.Sound.Core)
include(XRay.Sound.Emitter)
include(XRay.Sound.Environment)
include(XRay.Sound.Source)
include(XRay.Sound.Target)
