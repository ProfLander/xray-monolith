add_library(TinyXML STATIC)

target_folder(TinyXML ${FOLDER_EXTERNAL})

target_include_directories(TinyXML
  PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries(TinyXML
  PRIVATE
  XRay.Platform

  XRay.Core.Defines
  XRay.XMLParser.Defines
  
  XRay.Core.Includes
  XRay.XMLParser.Includes
)

target_compile_options(TinyXML
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
)

target_precompile_headers(TinyXML
  PRIVATE
  #[["xrCore.h"]]
  #[["xrXMLParser.h"]]
)

target_sources(TinyXML
  PRIVATE
  tinyxml.cpp
  tinyxmlerror.cpp
  tinyxmlparser.cpp
  
  tinyxml.h
)