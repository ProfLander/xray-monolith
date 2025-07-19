add_module(XRay.Engine.Render.TextConsole
  SOURCES
  Text_Console.cpp
  Text_Console_WndProc.cpp
  Text_Console.h
)

add_module(XRay.Engine.Render.Textures
  SOURCES
  tntQAVI.cpp
  tntQAVI.h

  xrImage_Resampler.cpp
  xrImage_Resampler.h

  xrTheora_Stream.cpp
  xrTheora_Surface.cpp
  xrTheora_Surface_mmx.cpp

  xrTheora_Stream.h
  xrTheora_Surface.h
  xrTheora_Surface_mmx.h
)

add_module(XRay.Engine.Render.Shaders
  SOURCES
  Shader_xrLC.h
  WaveForm.h
)

add_module(XRay.Engine.Render.Fonts
  SOURCES
  GameFont.cpp
  GameFont.h

  MbHelpers.cpp
  MbHelpers.h
)

add_module(XRay.Engine.Render.Lighting
  SOURCES
  LightAnimLibrary.cpp
  LightAnimLibrary.h
)

add_module(XRay.Engine.Render.Particles
  SOURCES
  PS_instance.cpp
  PS_instance.h
)

add_module(XRay.Engine.Render.Visibility
  SOURCES
  vis_common.h
)

add_module(XRay.Engine.Render.Visuals
  SOURCES
  fmesh.cpp
  Fmesh.h
)

add_module(XRay.Engine.Render.Visuals.Skeleton
  SOURCES
  SkeletonMotions.cpp
  SkeletonMotionDefs.h
  SkeletonMotions.h
  EnnumerateVertices.h
)

add_module(XRay.Engine.Render.Device
  SOURCES
  device.cpp
  Device_create.cpp
  Device_destroy.cpp
  Device_Initialize.cpp
  Device_Misc.cpp
  Device_overdraw.cpp
  Device_wndproc.cpp
  device.h

  StatGraph.cpp
  Stats.cpp
  StatGraph.h
  Stats.h
)
