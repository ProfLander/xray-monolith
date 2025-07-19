# X-Ray entrypoint
# Link this to a Win32 executable alongside an XRay.Render.R* module to produce a runnable game
add_library(XRay.Engine.Main INTERFACE)

target_sources(XRay.Engine.Main
  INTERFACE
  x_ray.cpp
  x_ray.h

  EngineAPI.cpp
  EngineAPI.h

  resource.h
  resource.rc

  dpi-aware.manifest
)

target_link_libraries(XRay.Engine.Main
  INTERFACE
  discord
  DPlay
  icu
  LuaPanda
  optick

  XRay.Core
  XRay.Engine
  XRay.Render.API
)
