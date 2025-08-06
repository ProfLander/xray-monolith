add_module(XRay.Particles
  TYPE STATIC
  
  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}

  LINKS
  tbb
  
  XRay.Core.Defines
  XRay.Engine.Defines

  XRay.Core.Includes
  XRay.Engine.Includes
  XRay.CPUPipe.Includes
  XRay.ServerEntities.Includes
  XRay.Render.API.Includes
  XRay.Render.Common.Includes

  PRECOMPILES
  #[["xrCore.h"]]
  #psystem.h

  SOURCES
  psystem.h

  noise.cpp
  particle_actions.cpp
  particle_actions_collection.cpp
  particle_actions_collection_io.cpp
  particle_core.cpp
  particle_effect.cpp
  particle_manager.cpp
  
  noise.h
  particle_actions.h
  particle_actions_collection.h
  particle_core.h
  particle_effect.h
  particle_manager.h
)

target_compile_options(XRay.Particles
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
)