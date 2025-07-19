add_module(XRay.XMLParser
  TYPE STATIC

  PRECOMPILES
  <xrCore.h>
  xrXMLParser.h

  INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}

  DEFINES
  XRXMLPARSER_EXPORTS

  LINKS
  TinyXML
  XRay.Core

  SOURCES
  xrXMLParser.cpp
  xrXMLParser.h
)
