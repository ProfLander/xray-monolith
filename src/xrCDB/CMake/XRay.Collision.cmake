add_module(XRay.Collision
  TYPE STATIC

  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}

  DEFINES
  [[ENGINE_API=]]
  XRCDB_EXPORTS

  LINKS
  loki
  OPCODE
  optick

  XRay.Core.Defines
  XRay.Engine.Defines
  
  XRay.Includes
  XRay.CPUPipe.Includes
  XRay.Core.Includes
  XRay.Engine.Includes
  XRay.Physics.Includes
  XRay.Render.API.Includes
  XRay.Render.Common.Includes
  XRay.ServerEntities.Includes

  PRECOMPILES
  #[["xrCore.h"]]
  #alloc.h
  #[["opcode.h"]]
  
  SOURCES
  #cl_raypick.cpp
  Frustum.cpp
  xrCDB.cpp
  xrCDB_box.cpp
  xrCDB_Collector.cpp
  xrCDB_frustum.cpp
  xrCDB_ray.cpp

  alloc.h
  Frustum.h
  xrCDB.h
)

target_compile_options(XRay.Collision
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
  $<$<CXX_COMPILER_ID:MSVC>:/wd4458>
)

set_source_files_properties(
  ISpatial_q_frustum.cpp
  ISpatial_q_ray.cpp
  ISpatial_verify.cpp
  OPC_OBBCollider.cpp
  OPC_TreeCollider.cpp
  PROPERTIES
  SKIP_UNITY_BUILD_INCLUSION true
)

include(XRay.Collision.Engine)
