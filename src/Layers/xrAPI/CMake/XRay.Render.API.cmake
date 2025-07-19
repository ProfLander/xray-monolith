add_module(XRay.Render.API
  TYPE STATIC

  INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}

  PRECOMPILES stdafx.h

  LINKS XRay.Render.Common

  SOURCES
  xrAPI.cpp
  stdafx.h
  xrAPI.h
)
