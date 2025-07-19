# Use a single directory for build artifacts
set(COMPILE_OUTPUT_DIR ${CMAKE_BINARY_DIR}/Binaries/$<CONFIG>)

# Add ./CMake to the module path and include NAME
macro(add_cmake_directory NAME)
  list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/CMake)
  include(${NAME})
endmacro()

function(find_parent TARGET OUT_VAR)
  # Unset the output var to prevent leakage across runs
  unset(${OUT_VAR})

  # Create a segment list from our target name
  string(REPLACE "." ";" PATH ${TARGET})

  # Loop
  while(true)
    # Pop the last segment of our list
    list(POP_BACK PATH SEG)

    # If the list is empty, break
    if(NOT SEG)
      break()
    endif()

    # Join our shortened path into a name
    list(JOIN PATH "." CAND)

    # Test if it refers to a valid target
    if(TARGET "${CAND}")
      # If so, we've found our parent
      set(${OUT_VAR} ${CAND})
      return(PROPAGATE ${OUT_VAR})
    endif()
  endwhile()
endfunction()

# Add a library with the given NAME, and the following optional keyword parameters:
# SOURCES
# INCLUDES
# PRECOMPILES
# DEFINES
# LINKS
function(add_module NAME)
  # Parse keyword arguments
  cmake_parse_arguments(PARSE_ARGV 1 ARG
    ""
    "TYPE"
    "SOURCES;INCLUDES;PRECOMPILES;DEFINES;LINKS"
  )

  # Determine whether we have any C or CPP sources
  set(HAS_SOURCES false)
  if(ARG_SOURCES MATCHES "\\.cpp" OR ARG_SOURCES MATCHES "\\.c")
    set(HAS_SOURCES true)
  endif()

  # If type has not been set explicitly, infer...
  if(NOT DEFINED ARG_TYPE)
    # If we have sources, this is a STATIC module, otherwise INTERFACE
    set(ARG_TYPE INTERFACE)
  endif()

  # If this is an interface module, override public and private semantics
  if(ARG_TYPE STREQUAL INTERFACE)
    set(TYPE_PUBLIC INTERFACE)
    set(TYPE_PRIVATE INTERFACE)
  else()
    set(TYPE_PUBLIC PUBLIC)
    set(TYPE_PRIVATE PRIVATE)
  endif()

  # Store semantics to parent scope for future reference
  set(${NAME}_TYPE_PUBLIC ${TYPE_PUBLIC} PARENT_SCOPE)
  set(${NAME}_TYPE_PRIVATE ${TYPE_PRIVATE} PARENT_SCOPE)

  # Add our module
  if(ARG_TYPE STREQUAL CUSTOM)
    add_custom_target(${NAME})
  else()
    add_library(${NAME} ${ARG_TYPE})
  endif()

  # Find our parent module
  find_parent(${NAME} PARENT)

  # Convert our module name into a folder path and apply it
  string(REPLACE "." ";" FOLDER ${NAME})
  list(POP_BACK FOLDER)
  list(JOIN FOLDER "/" FOLDER)
  string(REPLACE "XRay" "X-Ray" FOLDER ${FOLDER})

  set_target_properties(${NAME}
    PROPERTIES
    FOLDER ${FOLDER}
    UNITY_BUILD_MODE GROUP
  )

  set_source_files_properties(
    ${ARG_SOURCES}
    PROPERTIES
    UNITY_GROUP ${NAME}
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

  # Compose sources
  target_sources(${NAME}
    PRIVATE
    ${ARG_SOURCES}
    ${CMAKE_CURRENT_LIST_FILE}
  )

  # If this is an interface with sources,
  # expose them separately to ensure IDEs don't elide the module
  if(ARG_TYPE STREQUAL INTERFACE AND HAS_SOURCES)
    target_sources(${NAME}
      INTERFACE
      ${ARG_SOURCES}
      ${CMAKE_CURRENT_LIST_FILE}
    )
  endif()

  if(ARG_TYPE STREQUAL CUSTOM)
    return()
  endif()

  # Compose includes
  target_include_directories(${NAME}
    ${TYPE_PUBLIC}
    ${ARG_INCLUDES}
    ${${PARENT}_INCLUDES}
  )
  set(${NAME}_INCLUDES "${ARG_INCLUDES};${${PARENT}_INCLUDES}" PARENT_SCOPE)

  # Compose precompiled headers
  target_precompile_headers(${NAME}
    ${TYPE_PRIVATE}
    ${ARG_PRECOMPILES}
    ${${PARENT}_PRECOMPILES}
  )
  set(${NAME}_PRECOMPILES "$<$<COMPILE_LANGUAGE:CXX>:${ARG_PRECOMPILES}>;${${PARENT}_PRECOMPILES}" PARENT_SCOPE)

  # Compose compile definitions
  target_compile_definitions(${NAME}
    ${TYPE_PUBLIC}
    ${ARG_DEFINES}
    ${${PARENT}_DEFINES}
  )
  set(${NAME}_DEFINES "${ARG_DEFINES};${${PARENT}_DEFINES}" PARENT_SCOPE)

  # Compose linked libraries
  target_link_libraries(${NAME}
    ${TYPE_PUBLIC}
    ${ARG_LINKS}
    ${${PARENT}_LINKS}
  )
  set(${NAME}_LINKS "${ARG_LINKS};${${PARENT}_LINKS}" PARENT_SCOPE)

  # If we have a parent, link it to this module
  if(DEFINED PARENT)
    target_link_libraries(${PARENT} ${${PARENT}_TYPE_PRIVATE} ${NAME})
  endif()
endfunction()

if(CMAKE_UNITY_BUILD)
  set(UNITY_BUILD_UNIQUE_ID true)
endif()
