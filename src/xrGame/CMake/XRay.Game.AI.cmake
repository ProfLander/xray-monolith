add_module(XRay.Game.AI
  TYPE STATIC

  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_SOURCE_DIR}/src/xrServerEntities

  SOURCES
  ai/trader/trader_animation.cpp
  ai/trader/trader_animation.h

  mt_config.h
)

include(XRay.Game.AI.Components)
include(XRay.Game.AI.Cover)
include(XRay.Game.AI.Debug)
include(XRay.Game.AI.Eval)
include(XRay.Game.AI.Group)
include(XRay.Game.AI.Life)
include(XRay.Game.AI.Monsters)
include(XRay.Game.AI.Navigation)
include(XRay.Game.AI.Script)
include(XRay.Game.AI.Sound)
include(XRay.Game.AI.Space)
