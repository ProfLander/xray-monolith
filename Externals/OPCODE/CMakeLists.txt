add_library(OPCODE STATIC)

target_folder(OPCODE ${FOLDER_EXTERNAL})

set(OPCODE_DIR ../OPCODE-xr)

target_include_directories(OPCODE
  PUBLIC
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/OPCODE
)

target_link_libraries(OPCODE
  PRIVATE
  XRay.Platform

  XRay.Core.Defines

  XRay.Collision.Includes
  XRay.Core.Includes
)

target_compile_options(OPCODE
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
  $<$<CXX_COMPILER_ID:MSVC>:/wd4100>
  $<$<CXX_COMPILER_ID:MSVC>:/wd4456>
  $<$<CXX_COMPILER_ID:MSVC>:/wd4458>
  $<$<CXX_COMPILER_ID:MSVC>:/wd4995>
  $<$<CXX_COMPILER_ID:Clang>:-Wno-unused-value>
)

target_precompile_headers(OPCODE
  PRIVATE
  #[["xrCore.h"]]
  #[["alloc.h"]]
  #[["opcode.h"]]
)

target_sources_sandboxed(OPCODE
  DIRECTORY OPCODE

  STRIP
  ${OPCODE_DIR}/
  
  SOURCES
  ${OPCODE_DIR}/Opcode.cpp
  ${OPCODE_DIR}/Opcode.h

  ${OPCODE_DIR}/OPC_AABB.cpp
  ${OPCODE_DIR}/OPC_AABB.h

  ${OPCODE_DIR}/OPC_AABBCollider.cpp
  ${OPCODE_DIR}/OPC_AABBCollider.h

  ${OPCODE_DIR}/OPC_AABBTree.cpp
  ${OPCODE_DIR}/OPC_AABBTree.h

  ${OPCODE_DIR}/OPC_Collider.cpp
  ${OPCODE_DIR}/OPC_Collider.h

  ${OPCODE_DIR}/OPC_Common.cpp
  ${OPCODE_DIR}/OPC_Common.h

  ${OPCODE_DIR}/OPC_Container.cpp
  ${OPCODE_DIR}/OPC_Container.h

  ${OPCODE_DIR}/OPC_Matrix3x3.cpp
  ${OPCODE_DIR}/OPC_Matrix3x3.h

  ${OPCODE_DIR}/OPC_Matrix4x4.cpp
  ${OPCODE_DIR}/OPC_Matrix4x4.h

  ${OPCODE_DIR}/OPC_Model.cpp
  ${OPCODE_DIR}/OPC_Model.h

  ${OPCODE_DIR}/OPC_OBB.cpp
  ${OPCODE_DIR}/OPC_OBB.h

  ${OPCODE_DIR}/OPC_OBBCollider.cpp
  ${OPCODE_DIR}/OPC_OBBCollider.h

  ${OPCODE_DIR}/OPC_OptimizedTree.cpp
  ${OPCODE_DIR}/OPC_OptimizedTree.h

  ${OPCODE_DIR}/OPC_Plane.cpp
  ${OPCODE_DIR}/OPC_Plane.h

  ${OPCODE_DIR}/OPC_PlanesCollider.cpp
  ${OPCODE_DIR}/OPC_PlanesCollider.h

  ${OPCODE_DIR}/OPC_Point.cpp
  ${OPCODE_DIR}/OPC_Point.h

  ${OPCODE_DIR}/OPC_Ray.cpp
  ${OPCODE_DIR}/OPC_Ray.h

  ${OPCODE_DIR}/OPC_RayCollider.cpp
  ${OPCODE_DIR}/OPC_RayCollider.h

  ${OPCODE_DIR}/OPC_SphereCollider.cpp
  ${OPCODE_DIR}/OPC_SphereCollider.h

  ${OPCODE_DIR}/OPC_TreeBuilders.cpp
  ${OPCODE_DIR}/OPC_TreeBuilders.h

  ${OPCODE_DIR}/OPC_TreeCollider.cpp
  ${OPCODE_DIR}/OPC_TreeCollider.h

  ${OPCODE_DIR}/OPC_Triangle.cpp
  ${OPCODE_DIR}/OPC_Triangle.h

  ${OPCODE_DIR}/OPC_VolumeCollider.cpp
  ${OPCODE_DIR}/OPC_VolumeCollider.h

  ${OPCODE_DIR}/OPC_BoundingSphere.h
  ${OPCODE_DIR}/OPC_BoxBoxOverlap.h
  ${OPCODE_DIR}/OPC_BVTCache.h
  ${OPCODE_DIR}/OPC_FPU.h
  ${OPCODE_DIR}/OPC_MemoryMacros.h
  ${OPCODE_DIR}/OPC_PlanesAABBOverlap.h
  ${OPCODE_DIR}/OPC_PlanesTriOverlap.h
  ${OPCODE_DIR}/OPC_Preprocessor.h
  ${OPCODE_DIR}/OPC_RayAABBOverlap.h
  ${OPCODE_DIR}/OPC_RayTriOverlap.h
  ${OPCODE_DIR}/OPC_Settings.h
  ${OPCODE_DIR}/OPC_SphereAABBOverlap.h
  ${OPCODE_DIR}/OPC_SphereTriOverlap.h
  ${OPCODE_DIR}/OPC_TriBoxOverlap.h
  ${OPCODE_DIR}/OPC_TriTriOverlap.h
  ${OPCODE_DIR}/OPC_Types.h
)
