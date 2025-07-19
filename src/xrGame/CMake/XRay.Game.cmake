add_module(XRay.Game
  TYPE STATIC

  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_SOURCE_DIR}/src/xrServerEntities

  PRECOMPILES stdafx.h

  DEFINES XRGAME_EXPORTS

  LINKS
  CxImage
  XRay.Collision
  XRay.Core
  XRay.Core.Crypto
  XRay.Engine
  XRay.NetServer
  XRay.Physics

  SOURCES
  xrGame.cpp
)

include(XRay.Game.AI)
include(XRay.Game.Core)
include(XRay.Game.Physics)
include(XRay.Game.UI)
