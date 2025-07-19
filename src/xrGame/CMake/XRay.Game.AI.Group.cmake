add_module(XRay.Game.AI.Group
  TYPE STATIC
)

add_module(XRay.Game.AI.Group.Agent
  SOURCES
  agent_manager.cpp
  agent_manager.h
  agent_manager_inline.h
  agent_manager_space.h
)

add_module(XRay.Game.AI.Group.Agent.Corpse
  SOURCES
  member_corpse.h
  member_corpse_inline.h

  agent_corpse_manager.cpp
  agent_corpse_manager.h
  agent_corpse_manager_inline.h
)

add_module(XRay.Game.AI.Group.Agent.Enemy
  SOURCES
  member_enemy.h
  member_enemy_inline.h

  agent_enemy_manager.cpp
  agent_enemy_manager.h
  agent_enemy_manager_inline.h
)

add_module(XRay.Game.AI.Group.Agent.Explosive
  SOURCES
  danger_explosive.cpp
  danger_explosive.h
  danger_explosive_inline.h

  agent_explosive_manager.cpp
  agent_explosive_manager.h
  agent_explosive_manager_inline.h
)

add_module(XRay.Game.AI.Group.Agent.Location
  SOURCES
  danger_cover_location.cpp
  danger_cover_location.h
  danger_cover_location_inline.h

  danger_location.cpp
  danger_location.h
  danger_location_inline.h

  danger_object_location.cpp
  danger_object_location.h
  danger_object_location_inline.h

  agent_location_manager.cpp
  agent_location_manager.h
  agent_location_manager_inline.h
)

add_module(XRay.Game.AI.Group.Agent.Member
  SOURCES
  member_order.h
  member_order_inline.h

  agent_member_manager.cpp
  agent_member_manager.h
  agent_member_manager_inline.h
)

add_module(XRay.Game.AI.Group.Agent.Memory
  SOURCES
  agent_memory_manager.cpp
  agent_memory_manager.h
  agent_memory_manager_inline.h
)

add_module(XRay.Game.AI.Group.Agent.Planner
  SOURCES
  agent_manager_actions.cpp
  agent_manager_actions.h

  agent_manager_properties.cpp
  agent_manager_properties.h
  agent_manager_properties_inline.h

  agent_manager_planner.cpp
  agent_manager_planner.h
)
