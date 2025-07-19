add_module(XRay.Collision
  TYPE STATIC

  SOURCES
  #cl_raypick.cpp
  Frustum.cpp
  xrCDB.cpp
  xrCDB_box.cpp
  xrCDB_Collector.cpp
  xrCDB_frustum.cpp
  xrCDB_ray.cpp

  Frustum.h
  StdAfx.h
  xrCDB.h

  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}

  PRECOMPILES stdafx.h

  DEFINES XRCDB_EXPORTS

  LINKS
  OPCODE
  optick
  XRay.Core
  XRay.Render.API
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
