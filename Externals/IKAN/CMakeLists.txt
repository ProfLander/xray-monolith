add_library(IKAN STATIC)

target_folder(IKAN ${FOLDER_EXTERNAL})

set(IKAN_DIR ../IKAN-xr)

target_include_directories(IKAN
  PUBLIC
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}/IKAN
)

target_link_libraries(IKAN
  PRIVATE
  ode
  
  XRay.Platform
  
  XRay.Core.Defines

  XRay.Core.Includes
  XRay.Physics.Includes
)

target_compile_options(IKAN
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
  $<$<CXX_COMPILER_ID:MSVC>:/wd4996>
  $<$<CXX_COMPILER_ID:MSVC>:/wd5033>
)

target_precompile_headers(IKAN
  PRIVATE
  #[["xrCore.h"]]
  [["xrPhysics.h"]]
  [["_std_extensions.h"]]
  [["_stl_extensions.h"]]
)

target_sources_sandboxed(IKAN
  DIRECTORY IKAN

  STRIP
  ${IKAN_DIR}/

  SOURCES
  ${IKAN_DIR}/aint.cxx
  ${IKAN_DIR}/aint.h

  ${IKAN_DIR}/Dof7control.cpp
  ${IKAN_DIR}/Dof7control.h

  ${IKAN_DIR}/eqn.cxx
  ${IKAN_DIR}/eqn.h

  ${IKAN_DIR}/eulersolver.cxx
  ${IKAN_DIR}/eulersolver.h

  ${IKAN_DIR}/jtlimits.cxx
  ${IKAN_DIR}/jtlimits.h

  ${IKAN_DIR}/limb.cxx
  ${IKAN_DIR}/limb.h

  ${IKAN_DIR}/math3d.cpp
  ${IKAN_DIR}/math3d.h

  ${IKAN_DIR}/mathTrig.cpp
  ${IKAN_DIR}/mathTrig.h
)