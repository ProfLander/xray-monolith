# Copy SOURCES to the binary directory of TARGET,
# optionally within DIRECTORY, with STRIP removed,
# and add them as sources.
function(target_sources_sandboxed TARGET)
  cmake_parse_arguments(
    PARSE_ARGV
    1
    ARG
    ""
    "DIRECTORY"
    "STRIP;SOURCES"
  )

  foreach(SOURCE ${ARG_SOURCES})
    set(DEST ${SOURCE})

    foreach(PREFIX ${ARG_STRIP})
      string(REPLACE ${PREFIX} "" DEST ${DEST})
    endforeach()

    if(ARG_DIRECTORY)
      set(DEST "${ARG_DIRECTORY}/${DEST}")
    endif()

    message(DEBUG "Copying ${SOURCE} to ${DEST}")
    configure_file(${SOURCE} ${DEST} COPYONLY)

    message(DEBUG "Adding target source: ${CMAKE_CURRENT_BINARY_DIR}/${DEST}")
    target_sources(${TARGET} PRIVATE "${CMAKE_CURRENT_BINARY_DIR}/${DEST}")
  endforeach()
endfunction()
