add_module(XRay.XMLParser
  TYPE STATIC
  
  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}

  DEFINES
  XRXMLPARSER_EXPORTS

  LINKS
  TinyXML

  XRay.Core.Defines
  
  XRay.Core.Includes
  
  SOURCES
  xrXMLParser.cpp
  xrXMLParser.h
)

target_compile_options(XRay.XMLParser
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
)