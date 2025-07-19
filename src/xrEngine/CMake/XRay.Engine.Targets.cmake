include_guard()

# Add a target with the given renderer, and an AVX variant
function(add_engine_target NAME)
  add_executable(${NAME} WIN32)

  if(${XRAY_AVX})
    set(${NAME}_NAME_EXECUTABLE ${NAME}.AVX)
  else()
    set(${NAME}_NAME_EXECUTABLE ${NAME})
  endif()

  string(REPLACE "." "" ${NAME}_NAME_OUTPUT ${${NAME}_NAME_EXECUTABLE})
  set_target_properties(${NAME}
    PROPERTIES OUTPUT_NAME
    ${${NAME}_NAME_OUTPUT}
  )

  # Apply artifact output directories
  set_target_properties(${NAME}
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY ${COMPILE_OUTPUT_DIR}
    LIBRARY_OUTPUT_DIRECTORY ${COMPILE_OUTPUT_DIR}
    RUNTIME_OUTPUT_DIRECTORY ${COMPILE_OUTPUT_DIR}
    PDB_OUTPUT_DIRECTORY ${COMPILE_OUTPUT_DIR}
    COMPILE_PDB_OUTPUT_DIRECTORY ${COMPILE_OUTPUT_DIR}
  )

  target_folder(${NAME} ${FOLDER_EXECUTABLES})

  target_link_libraries(${NAME}
    PRIVATE
    XRay.Engine.Main
    ${ARGN}
  )
endfunction()

# Setup executable targets
add_engine_target(
  Anomaly.DX8
  XRay.Render.R1
)
add_engine_target(
  Anomaly.DX9
  XRay.Render.R2
)
add_engine_target(
  Anomaly.DX10
  XRay.Render.R3
)
add_engine_target(
  Anomaly.DX11
  XRay.Render.R4
)

# Set visual studio startup project
set_property(
  DIRECTORY ${CMAKE_SOURCE_DIR}
  PROPERTY VS_STARTUP_PROJECT
  Anomaly.DX11
)
