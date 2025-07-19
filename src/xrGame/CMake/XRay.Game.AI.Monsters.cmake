add_module(XRay.Game.AI.Monsters
  TYPE STATIC
)

add_module(XRay.Game.AI.Monsters.Common.Base
  SOURCES
  ai/monsters/basemonster/base_monster.cpp
  ai/monsters/basemonster/base_monster_anim.cpp
  ai/monsters/basemonster/base_monster_debug.cpp
  ai/monsters/basemonster/base_monster_feel.cpp
  ai/monsters/basemonster/base_monster_misc.cpp
  ai/monsters/basemonster/base_monster_net.cpp
  ai/monsters/basemonster/base_monster_path.cpp
  ai/monsters/basemonster/base_monster_script.cpp
  ai/monsters/basemonster/base_monster_startup.cpp
  ai/monsters/basemonster/base_monster_think.cpp

  ai/monsters/basemonster/base_monster.h
  ai/monsters/basemonster/base_monster_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Components
  SOURCES
  ai/monsters/ai_monster_defs.h
  ai/monsters/ai_monster_shared_data.h

  ai/monsters/ai_monster_utils.cpp
  ai/monsters/ai_monster_utils.h

  ai/monsters/anti_aim_ability.cpp
  ai/monsters/anti_aim_ability.h

  ai/monsters/monster_aura.cpp
  ai/monsters/monster_aura.h

  ai/monsters/monster_corpse_manager.cpp
  ai/monsters/monster_corpse_manager.h

  ai/monsters/monster_enemy_manager.cpp
  ai/monsters/monster_enemy_manager.h

  ai/monsters/monster_sound_defs.h
  ai/monsters/monster_velocity_space.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Abilities.Controlled
  SOURCES
  ai/monsters/controlled_entity.h
  ai/monsters/controlled_entity_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Abilities.EnergyHolder
  SOURCES
  ai/monsters/energy_holder.cpp
  ai/monsters/energy_holder.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Abilities.Invisibility
  SOURCES
  ai/monsters/invisibility.cpp
  ai/monsters/invisibility.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Abilities.PsyAura
  SOURCES
  ai/monsters/psy_aura.cpp
  ai/monsters/psy_aura.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Ability.Scan
  SOURCES
  ai/monsters/scanning_ability.h
  ai/monsters/scanning_ability_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Abilities.Telekinesis
  SOURCES
  ai/monsters/telekinesis.cpp
  ai/monsters/telekinesis.h
  ai/monsters/telekinesis_inline.h

  ai/monsters/telekinetic_object.cpp
  ai/monsters/telekinetic_object.h

  TeleWhirlwind.cpp
  TeleWhirlwind.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.ActorController
  SOURCES
  ai/monsters/controlled_actor.cpp
  ai/monsters/controlled_actor.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.AnomalyDetector
  SOURCES
  ai/monsters/anomaly_detector.cpp
  ai/monsters/anomaly_detector.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Bones
  SOURCES
  ai/monsters/ai_monster_bones.cpp
  ai/monsters/ai_monster_bones.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control
  SOURCES
  ai/monsters/control_combase.h
  ai/monsters/control_com_defs.h

  ai/monsters/control_manager.cpp
  ai/monsters/control_manager.h

  ai/monsters/control_manager_custom.cpp
  ai/monsters/control_manager_custom.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Base.Animation
  SOURCES
  ai/monsters/control_animation_base.cpp
  ai/monsters/control_animation_base_accel.cpp
  ai/monsters/control_animation_base_load.cpp
  ai/monsters/control_animation_base_update.cpp
  ai/monsters/control_animation_base.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Base.Direction
  SOURCES
  ai/monsters/control_direction_base.cpp
  ai/monsters/control_direction_base.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Base.Movement
  SOURCES
  ai/monsters/control_movement_base.cpp
  ai/monsters/control_movement_base.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Base.PathBuilder
  SOURCES
  ai/monsters/control_path_builder_base.cpp
  ai/monsters/control_path_builder_base_path.cpp
  ai/monsters/control_path_builder_base_set.cpp
  ai/monsters/control_path_builder_base_update.cpp
  ai/monsters/control_path_builder_base.h
  ai/monsters/control_path_builder_base_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Custom.CriticalWound
  SOURCES
  ai/monsters/control_critical_wound.cpp
  ai/monsters/control_critical_wound.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Custom.Jump
  SOURCES
  ai/monsters/control_jump.cpp
  ai/monsters/control_jump.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Custom.RotationJump
  SOURCES
  ai/monsters/control_melee_jump.cpp
  ai/monsters/control_melee_jump.h

  ai/monsters/control_rotation_jump.cpp
  ai/monsters/control_rotation_jump.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Custom.RunAttack
  SOURCES
  ai/monsters/control_run_attack.cpp
  ai/monsters/control_run_attack.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Custom.Sequencer
  SOURCES
  ai/monsters/control_sequencer.cpp
  ai/monsters/control_sequencer.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Custom.Threaten
  SOURCES
  ai/monsters/control_threaten.cpp
  ai/monsters/control_threaten.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.Custom.TripleAnimation
  SOURCES
  ai/monsters/anim_triple.cpp
  ai/monsters/anim_triple.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.PureComs.Animation
  SOURCES
  ai/monsters/control_animation.cpp
  ai/monsters/control_animation.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.PureComs.Direction
  SOURCES
  ai/monsters/control_direction.cpp
  ai/monsters/control_direction.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.PureComs.Movement
  SOURCES
  ai/monsters/control_movement.cpp
  ai/monsters/control_movement.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Control.PureComs.PathBuilder
  SOURCES
  ai/monsters/control_path_builder.cpp
  ai/monsters/control_path_builder.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Cover
  SOURCES
  ai/monsters/monster_cover_manager.cpp
  ai/monsters/monster_cover_manager.h

  ai/monsters/corpse_cover.cpp
  ai/monsters/corpse_cover.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.EventHandler
  SOURCES
  ai/monsters/custom_events.h

  ai/monsters/monster_event_manager.cpp
  ai/monsters/monster_event_manager.h
  ai/monsters/monster_event_manager_defs.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Home
  SOURCES
  ai/monsters/monster_home.cpp
  ai/monsters/monster_home.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.MeleeChecker
  SOURCES
  ai/monsters/melee_checker.cpp
  ai/monsters/melee_checker.h
  ai/monsters/melee_checker_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Memory
  SOURCES
  ai/monsters/monster_corpse_memory.cpp
  ai/monsters/monster_corpse_memory.h

  ai/monsters/monster_enemy_memory.cpp
  ai/monsters/monster_enemy_memory.h

  ai/monsters/monster_hit_memory.cpp
  ai/monsters/monster_hit_memory.h

  ai/monsters/monster_sound_memory.cpp
  ai/monsters/monster_sound_memory.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Morale
  SOURCES
  ai/monsters/monster_morale.cpp
  ai/monsters/monster_morale.h
  ai/monsters/monster_morale_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.MotionStats
  SOURCES
  ai/monsters/ai_monster_motion_stats.cpp
  ai/monsters/ai_monster_motion_stats.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.Squad
  SOURCES
  ai/monsters/ai_monster_squad_manager.cpp
  ai/monsters/ai_monster_squad_manager.h
  ai/monsters/ai_monster_squad_manager_inline.h

  ai/monsters/ai_monster_squad.cpp
  ai/monsters/ai_monster_squad_attack.cpp
  ai/monsters/ai_monster_squad_rest.cpp
  ai/monsters/ai_monster_squad.h
)

add_module(XRay.Game.AI.Monsters.Common.Components.State
  SOURCES
  ai/monsters/monster_state_manager.h
  ai/monsters/monster_state_manager_inline.h
  ai/monsters/state.h
  ai/monsters/state_defs.h
  ai/monsters/state_inline.h
  ai/monsters/state_manager.h
)

add_module(XRay.Game.AI.Monsters.Common.Custom
  SOURCES
  CustomMonster.cpp
  CustomMonster_VCPU.cpp
  CustomMonster.h
  CustomMonster_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Miscallaneous
  SOURCES
  ai_monster_space.h

  ai/ai_monsters_anims.h

  ai/ai_monsters_misc.cpp
  ai/ai_monsters_misc.h

  ai/position_prediction.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.ALife
  SOURCES
  ai/monsters/states/monster_state_smart_terrain_task.h
  ai/monsters/states/monster_state_smart_terrain_task_graph_walk.h
  ai/monsters/states/monster_state_smart_terrain_task_graph_walk_inline.h
  ai/monsters/states/monster_state_smart_terrain_task_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.Attack
  SOURCES
  ai/monsters/states/monster_state_attack.h
  ai/monsters/states/monster_state_attack_inline.h
  ai/monsters/states/monster_state_attack_melee.h
  ai/monsters/states/monster_state_attack_melee_inline.h
  ai/monsters/states/monster_state_attack_on_run.h
  ai/monsters/states/monster_state_attack_on_run_inline.h
  ai/monsters/states/monster_state_attack_run.h
  ai/monsters/states/monster_state_attack_run_attack.h
  ai/monsters/states/monster_state_attack_run_attack_inline.h
  ai/monsters/states/monster_state_attack_run_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.Camp
  SOURCES
  ai/monsters/states/monster_state_attack_camp.h
  ai/monsters/states/monster_state_attack_camp_inline.h
  ai/monsters/states/monster_state_attack_camp_stealout.h
  ai/monsters/states/monster_state_attack_camp_stealout_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.Controlled
  SOURCES
  ai/monsters/states/monster_state_controlled.h
  ai/monsters/states/monster_state_controlled_attack.h
  ai/monsters/states/monster_state_controlled_attack_inline.h
  ai/monsters/states/monster_state_controlled_follow.h
  ai/monsters/states/monster_state_controlled_follow_inline.h
  ai/monsters/states/monster_state_controlled_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.DangerSound
  SOURCES
  ai/monsters/states/monster_state_hear_danger_sound.h
  ai/monsters/states/monster_state_hear_danger_sound_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.Eat
  SOURCES
  ai/monsters/states/monster_state_eat.h
  ai/monsters/states/monster_state_eat_drag.h
  ai/monsters/states/monster_state_eat_drag_inline.h
  ai/monsters/states/monster_state_eat_eat.h
  ai/monsters/states/monster_state_eat_eat_inline.h
  ai/monsters/states/monster_state_eat_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.FindEnemy
  SOURCES
  ai/monsters/states/monster_state_find_enemy.h
  ai/monsters/states/monster_state_find_enemy_angry.h
  ai/monsters/states/monster_state_find_enemy_angry_inline.h
  ai/monsters/states/monster_state_find_enemy_inline.h
  ai/monsters/states/monster_state_find_enemy_look.h
  ai/monsters/states/monster_state_find_enemy_look_inline.h
  ai/monsters/states/monster_state_find_enemy_run.h
  ai/monsters/states/monster_state_find_enemy_run_inline.h
  ai/monsters/states/monster_state_find_enemy_walk.h
  ai/monsters/states/monster_state_find_enemy_walk_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.General
  SOURCES
  ai/monsters/states/state_data.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.General.CustomAction
  SOURCES
  ai/monsters/states/state_custom_action.h
  ai/monsters/states/state_custom_action_inline.h
  ai/monsters/states/state_custom_action_look.h
  ai/monsters/states/state_custom_action_look_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.General.HideFromPoint
  SOURCES
  ai/monsters/states/state_hide_from_point.h
  ai/monsters/states/state_hide_from_point_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.General.HitObject
  SOURCES
  ai/monsters/states/state_hit_object.h
  ai/monsters/states/state_hit_object_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.General.Look
  SOURCES
  ai/monsters/states/state_look_point.h
  ai/monsters/states/state_look_point_inline.h
  ai/monsters/states/state_look_unprotected_area.h
  ai/monsters/states/state_look_unprotected_area_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.General.Movement
  SOURCES
  ai/monsters/states/state_move_around_point.h
  ai/monsters/states/state_move_around_point_inline.h
  ai/monsters/states/state_move_to_point.h
  ai/monsters/states/state_move_to_point_inline.h
  ai/monsters/states/state_move_to_restrictor.h
  ai/monsters/states/state_move_to_restrictor_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.General.Test
  SOURCES
  ai/monsters/states/state_test_look_actor.h
  ai/monsters/states/state_test_look_actor_inline.h
  ai/monsters/states/state_test_state.h
  ai/monsters/states/state_test_state_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.GroupHome
  SOURCES
  ai/monsters/group_states/state_adapter.h
  ai/monsters/group_states/group_state_attack.h
  ai/monsters/group_states/group_state_attack_inline.h
  ai/monsters/group_states/group_state_attack_run.h
  ai/monsters/group_states/group_state_attack_run_inline.h
  ai/monsters/group_states/group_state_custom.h
  ai/monsters/group_states/group_state_custom_inline.h
  ai/monsters/group_states/group_state_eat.h
  ai/monsters/group_states/group_state_eat_drag.h
  ai/monsters/group_states/group_state_eat_drag_inline.h
  ai/monsters/group_states/group_state_eat_eat.h
  ai/monsters/group_states/group_state_eat_eat_inline.h
  ai/monsters/group_states/group_state_eat_inline.h
  ai/monsters/group_states/group_state_hear_danger_sound.h
  ai/monsters/group_states/group_state_hear_danger_sound_inline.h
  ai/monsters/group_states/group_state_panic.h
  ai/monsters/group_states/group_state_panic_inline.h
  ai/monsters/group_states/group_state_panic_run.h
  ai/monsters/group_states/group_state_panic_run_inline.h
  ai/monsters/group_states/group_state_rest.h
  ai/monsters/group_states/group_state_rest_idle.h
  ai/monsters/group_states/group_state_rest_idle_inline.h
  ai/monsters/group_states/group_state_rest_inline.h
  ai/monsters/group_states/group_state_squad_move_to_radius.h
  ai/monsters/group_states/group_state_squad_move_to_radius_inline.h
  ai/monsters/group_states/group_state_home_point_attack.h
  ai/monsters/group_states/group_state_home_point_attack_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.HelpSound
  SOURCES
  ai/monsters/states/monster_state_help_sound.h
  ai/monsters/states/monster_state_help_sound_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.Hitted
  SOURCES
  ai/monsters/states/monster_state_hitted.h
  ai/monsters/states/monster_state_hitted_hide.h
  ai/monsters/states/monster_state_hitted_hide_inline.h
  ai/monsters/states/monster_state_hitted_inline.h
  ai/monsters/states/monster_state_hitted_moveout.h
  ai/monsters/states/monster_state_hitted_moveout_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.HomePoint
  SOURCES
  ai/monsters/states/monster_state_home_point_attack.h
  ai/monsters/states/monster_state_home_point_attack_inline.h
  ai/monsters/states/monster_state_home_point_danger.h
  ai/monsters/states/monster_state_home_point_danger_inline.h
  ai/monsters/states/monster_state_home_point_rest.h
  ai/monsters/states/monster_state_home_point_rest_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.InterestingSound
  SOURCES
  ai/monsters/states/monster_state_hear_int_sound.h
  ai/monsters/states/monster_state_hear_int_sound_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.Panic
  SOURCES
  ai/monsters/states/monster_state_panic.h
  ai/monsters/states/monster_state_panic_inline.h
  ai/monsters/states/monster_state_panic_run.h
  ai/monsters/states/monster_state_panic_run_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.Rest
  SOURCES
  ai/monsters/states/monster_state_rest.h
  ai/monsters/states/monster_state_rest_fun.h
  ai/monsters/states/monster_state_rest_fun_inline.h
  ai/monsters/states/monster_state_rest_idle.h
  ai/monsters/states/monster_state_rest_idle_inline.h
  ai/monsters/states/monster_state_rest_inline.h
  ai/monsters/states/monster_state_rest_sleep.h
  ai/monsters/states/monster_state_rest_sleep_inline.h
  ai/monsters/states/monster_state_rest_walk_graph.h
  ai/monsters/states/monster_state_rest_walk_graph_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.Steal
  SOURCES
  ai/monsters/states/monster_state_steal.h
  ai/monsters/states/monster_state_steal_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.Binder
  SOURCES
  script_binder.cpp
  script_binder.h
  script_binder_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.Entity
  SOURCES
  script_entity.cpp
  script_entity.h
  script_entity_inline.h
  script_entity_space.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.Object
  SOURCES
  script_object.cpp
  script_object.h
)

add_module(XRay.Game.AI.Monsters.Common.Script.States.Squad
  SOURCES
  ai/monsters/states/monster_state_squad_rest.h
  ai/monsters/states/monster_state_squad_rest_follow.h
  ai/monsters/states/monster_state_squad_rest_follow_inline.h
  ai/monsters/states/monster_state_squad_rest_inline.h
)

add_module(XRay.Game.AI.Monsters.Common.Steering
  SOURCES
  steering_behaviour.cpp
  steering_behaviour.h
  steering_behaviour_alignment.h
  steering_behaviour_base.h
  steering_behaviour_base_inline.h
  steering_behaviour_cohesion.h
  steering_behaviour_manager.h
  steering_behaviour_separation.h
)

add_module(XRay.Game.AI.Monsters.Common.Trajectories
  SOURCES
  trajectories.cpp
  trajectories.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker
  SOURCES
  ai/stalker/ai_stalker.cpp
  ai/stalker/ai_stalker_script.cpp
  ai/stalker/ai_stalker.h
  ai/stalker/ai_stalker_impl.h
  ai/stalker/ai_stalker_inline.h
  ai/stalker/ai_stalker_space.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Animation
  SOURCES
  stalker_animation_callbacks.cpp
  stalker_animation_global.cpp
  stalker_animation_head.cpp
  stalker_animation_legs.cpp
  stalker_animation_manager.cpp
  stalker_animation_manager_debug.cpp
  stalker_animation_manager_update.cpp
  stalker_animation_torso.cpp
  stalker_animation_manager.h
  stalker_animation_manager_impl.h
  stalker_animation_manager_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Animation.Storage
  SOURCES
  stalker_animation_data_storage.cpp
  stalker_animation_data_storage.h
  stalker_animation_data_storage_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Animation.Storage.Data
  SOURCES
  stalker_animation_data.cpp
  stalker_animation_data.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Animation.Names
  SOURCES
  stalker_animation_names.cpp
  stalker_animation_names.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Animation.Pair
  SOURCES
  stalker_animation_pair.cpp
  stalker_animation_pair.h
  stalker_animation_pair_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Animation.Script
  SOURCES
  stalker_animation_script.cpp
  stalker_animation_script.h
  stalker_animation_script_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Animation.State
  SOURCES
  stalker_animation_state.cpp
  stalker_animation_state.h
  stalker_animation_state_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.CoverEvaluators
  SOURCES
  cover_evaluators.cpp
  cover_evaluators.h
  cover_evaluators_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker
  SOURCES
  stalker_decision_space.h

  stalker_planner.cpp
  stalker_planner.h
  stalker_planner_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions
  SOURCES
  stalker_base_action.cpp
  stalker_base_action.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.ALife
  SOURCES
  stalker_alife_actions.cpp
  stalker_alife_actions.h

  stalker_alife_task_actions.cpp
  stalker_alife_task_actions.h

  stalker_alife_planner.cpp
  stalker_alife_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Anomaly
  SOURCES
  stalker_anomaly_actions.cpp
  stalker_anomaly_actions.h

  stalker_anomaly_planner.cpp
  stalker_anomaly_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Combat
  SOURCES
  stalker_combat_planner.cpp
  stalker_combat_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Combat.Actions
  SOURCES
  stalker_combat_action_base.cpp
  stalker_combat_action_base.h

  stalker_combat_actions.cpp
  stalker_combat_actions.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Combat.GetDistance
  SOURCES
  stalker_get_distance_actions.h
  stalker_get_distance_actions.cpp

  stalker_get_distance_planner.h
  stalker_get_distance_planner.cpp
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Combat.KillWounded
  SOURCES
  stalker_kill_wounded_actions.cpp
  stalker_kill_wounded_actions.h

  stalker_kill_wounded_planner.cpp
  stalker_kill_wounded_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Combat.LowCoverPlanner
  SOURCES
  stalker_low_cover_actions.h
  stalker_low_cover_actions.cpp

  stalker_low_cover_planner.h
  stalker_low_cover_planner.cpp
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Combat.SearchPlanner
  SOURCES
  stalker_search_actions.cpp
  stalker_search_actions.h

  stalker_search_planner.cpp
  stalker_search_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Danger
  SOURCES
  stalker_danger_planner.cpp
  stalker_danger_planner.h
  stalker_danger_planner_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Danger.BySound
  SOURCES
  stalker_danger_by_sound_actions.cpp
  stalker_danger_by_sound_actions.h

  stalker_danger_by_sound_planner.cpp
  stalker_danger_by_sound_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Danger.Grenade
  SOURCES
  stalker_danger_grenade_actions.cpp
  stalker_danger_grenade_actions.h

  stalker_danger_grenade_planner.cpp
  stalker_danger_grenade_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Danger.InDirection
  SOURCES
  stalker_danger_in_direction_actions.cpp
  stalker_danger_in_direction_actions.h

  stalker_danger_in_direction_planner.cpp
  stalker_danger_in_direction_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Danger.Properties
  SOURCES
  stalker_danger_property_evaluators.cpp
  stalker_danger_property_evaluators.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Danger.Unknown
  SOURCES
  stalker_danger_unknown_actions.cpp
  stalker_danger_unknown_actions.h

  stalker_danger_unknown_planner.cpp
  stalker_danger_unknown_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Actions.Death
  SOURCES
  stalker_death_actions.cpp
  stalker_death_actions.h

  stalker_death_planner.cpp
  stalker_death_planner.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.DecisionMaker.Properties
  SOURCES
  stalker_property_evaluators.cpp
  stalker_property_evaluators.h
  stalker_property_evaluators_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Miscallaneous
  SOURCES
  ai_stalker_alife.cpp
  ai/stalker/ai_stalker_cover.cpp
  ai/stalker/ai_stalker_debug.cpp
  ai/stalker/ai_stalker_events.cpp
  ai/stalker/ai_stalker_feel.cpp
  ai/stalker/ai_stalker_fire.cpp
  ai/stalker/ai_stalker_misc.cpp
  ai/stalker/ai_stalker_script_entity.cpp
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement
  SOURCES
  stalker_movement_manager_space.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Base
  SOURCES
  stalker_movement_manager_base.cpp
  stalker_movement_manager_base.h
  stalker_movement_manager_base_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Base.Params
  SOURCES
  stalker_movement_params.cpp
  stalker_movement_params.h
  stalker_movement_params_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Base.Restriction
  SOURCES
  stalker_movement_restriction.h
  stalker_movement_restriction_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Base.VelocityCollection
  SOURCES
  stalker_velocity_collection.cpp
  stalker_velocity_collection.h
  stalker_velocity_collection_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Base.VelocityHolder
  SOURCES
  stalker_velocity_holder.cpp
  stalker_velocity_holder.h
  stalker_velocity_holder_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Obstacles
  SOURCES
  stalker_movement_manager_obstacles_path.cpp
  stalker_movement_manager_obstacles.cpp
  stalker_movement_manager_obstacles.h
  stalker_movement_manager_obstacles_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Obstacles.Avoiders.Dynamic
  SOURCES
  dynamic_obstacles_avoider.cpp
  dynamic_obstacles_avoider.h
  dynamic_obstacles_avoider_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Obstacles.Avoiders.Static
  SOURCES
  static_obstacles_avoider.cpp
  static_obstacles_avoider.h
  static_obstacles_avoider_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Obstacles.RefreshableQuery
  SOURCES
  refreshable_obstacles_query.h
  refreshable_obstacles_query_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.Obstacles.RestrictedObject
  SOURCES
  restricted_object_obstacle.cpp
  restricted_object_obstacle.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Movement.SmartCovers
  SOURCES
  stalker_movement_manager_smart_cover.cpp
  stalker_movement_manager_smart_cover_fov_range.cpp
  stalker_movement_manager_smart_cover_loopholes.cpp
  stalker_movement_manager_smart_cover.h
  stalker_movement_manager_smart_cover_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Sound.Data.Visitor
  SOURCES
  stalker_sound_data_visitor.cpp
  stalker_sound_data_visitor.h
  stalker_sound_data_visitor_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Stalker.Sound.Data
  SOURCES
  stalker_sound_data.cpp
  stalker_sound_data.h
  stalker_sound_data_inline.h
)

add_module(XRay.Game.AI.Monsters.Human.Trader
  SOURCES
  ai/trader/ai_trader_script.cpp
  ai/trader/ai_trader.cpp
  ai/trader/ai_trader.h
)

add_module(XRay.Game.AI.Monsters.Bloodsucker
  SOURCES
  ai/monsters/bloodsucker/bloodsucker_script.cpp

  ai/monsters/bloodsucker/bloodsucker.cpp
  ai/monsters/bloodsucker/bloodsucker.h

  ai/monsters/bloodsucker/bloodsucker_state_manager.cpp
  ai/monsters/bloodsucker/bloodsucker_state_manager.h

  ai/monsters/bloodsucker/bloodsucker_alien.cpp
  ai/monsters/bloodsucker/bloodsucker_alien.h

  ai/monsters/bloodsucker/bloodsucker_vampire_effector.cpp
  ai/monsters/bloodsucker/bloodsucker_vampire_effector.h

  ai/monsters/bloodsucker/bloodsucker_vampire.h
  ai/monsters/bloodsucker/bloodsucker_vampire_approach.h
  ai/monsters/bloodsucker/bloodsucker_vampire_approach_inline.h
  ai/monsters/bloodsucker/bloodsucker_vampire_execute.h
  ai/monsters/bloodsucker/bloodsucker_vampire_execute_inline.h
  ai/monsters/bloodsucker/bloodsucker_vampire_hide.h
  ai/monsters/bloodsucker/bloodsucker_vampire_hide_inline.h
  ai/monsters/bloodsucker/bloodsucker_vampire_inline.h
  ai/monsters/bloodsucker/bloodsucker_attack_state.h
  ai/monsters/bloodsucker/bloodsucker_attack_state_hide.h
  ai/monsters/bloodsucker/bloodsucker_attack_state_hide_inline.h
  ai/monsters/bloodsucker/bloodsucker_attack_state_inline.h
  ai/monsters/bloodsucker/bloodsucker_state_capture_jump.h
  ai/monsters/bloodsucker/bloodsucker_state_capture_jump_inline.h
  ai/monsters/bloodsucker/bloodsucker_predator.h
  ai/monsters/bloodsucker/bloodsucker_predator_inline.h
  ai/monsters/bloodsucker/bloodsucker_predator_lite.h
  ai/monsters/bloodsucker/bloodsucker_predator_lite_inline.h
)

add_module(XRay.Game.AI.Monsters.Boar
  SOURCES
  ai/monsters/boar/boar.cpp
  ai/monsters/boar/boar_script.cpp
  ai/monsters/boar/boar_state_manager.cpp
  ai/monsters/boar/boar.h
  ai/monsters/boar/boar_state_manager.h
)

add_module(XRay.Game.AI.Monsters.Burer
  SOURCES
  ai/monsters/burer/burer.cpp
  ai/monsters/burer/burer_fast_gravi.cpp
  ai/monsters/burer/burer_script.cpp
  ai/monsters/burer/burer_state_manager.cpp
  ai/monsters/burer/burer.h
  ai/monsters/burer/burer_fast_gravi.h
  ai/monsters/burer/burer_state_attack.h
  ai/monsters/burer/burer_state_attack_antiaim.h
  ai/monsters/burer/burer_state_attack_antiaim_inline.h
  ai/monsters/burer/burer_state_attack_gravi.h
  ai/monsters/burer/burer_state_attack_gravi_inline.h
  ai/monsters/burer/burer_state_attack_inline.h
  ai/monsters/burer/burer_state_attack_melee.h
  ai/monsters/burer/burer_state_attack_melee_inline.h
  ai/monsters/burer/burer_state_attack_run_around.h
  ai/monsters/burer/burer_state_attack_run_around_inline.h
  ai/monsters/burer/burer_state_attack_shield.h
  ai/monsters/burer/burer_state_attack_shield_inline.h
  ai/monsters/burer/burer_state_attack_tele.h
  ai/monsters/burer/burer_state_attack_tele_inline.h
  ai/monsters/burer/burer_state_manager.h
)

add_module(XRay.Game.AI.Monsters.Cat
  SOURCES
  ai/monsters/cat/cat.cpp
  ai/monsters/cat/cat_script.cpp
  ai/monsters/cat/cat_state_manager.cpp
  ai/monsters/cat/cat.h
  ai/monsters/cat/cat_state_manager.h
)

add_module(XRay.Game.AI.Monsters.Chimera
  SOURCES
  ai/monsters/chimera/chimera.cpp
  ai/monsters/chimera/chimera_script.cpp
  ai/monsters/chimera/chimera_state_manager.cpp
  ai/monsters/chimera/chimera.h
  ai/monsters/chimera/chimera_state_hunting.h
  ai/monsters/chimera/chimera_state_hunting_come_out.h
  ai/monsters/chimera/chimera_state_hunting_come_out_inline.h
  ai/monsters/chimera/chimera_state_hunting_inline.h
  ai/monsters/chimera/chimera_state_hunting_move_to_cover.h
  ai/monsters/chimera/chimera_state_hunting_move_to_cover_inline.h
  ai/monsters/chimera/chimera_state_manager.h
  ai/monsters/chimera/chimera_state_threaten.h
  ai/monsters/chimera/chimera_state_threaten_inline.h
  ai/monsters/chimera/chimera_state_threaten_roar.h
  ai/monsters/chimera/chimera_state_threaten_roar_inline.h
  ai/monsters/chimera/chimera_state_threaten_steal.h
  ai/monsters/chimera/chimera_state_threaten_steal_inline.h
  ai/monsters/chimera/chimera_state_threaten_walk.h
  ai/monsters/chimera/chimera_state_threaten_walk_inline.h
)

add_module(XRay.Game.AI.Monsters.Controller
  SOURCES
  ai/monsters/controller/controller.cpp
  ai/monsters/controller/controller_animation.cpp
  ai/monsters/controller/controller_direction.cpp
  ai/monsters/controller/controller_psy_hit.cpp
  ai/monsters/controller/controller_psy_hit_effector.cpp
  ai/monsters/controller/controller_script.cpp
  ai/monsters/controller/controller_state_manager.cpp
  ai/monsters/controller/controller.h
  ai/monsters/controller/controller_animation.h
  ai/monsters/controller/controller_direction.h
  ai/monsters/controller/controller_psy_hit.h
  ai/monsters/controller/controller_psy_hit_effector.h
  ai/monsters/controller/controller_state_attack.h
  ai/monsters/controller/controller_state_attack_camp.h
  ai/monsters/controller/controller_state_attack_camp_inline.h
  ai/monsters/controller/controller_state_attack_fast_move.h
  ai/monsters/controller/controller_state_attack_fast_move_inline.h
  ai/monsters/controller/controller_state_attack_fire.h
  ai/monsters/controller/controller_state_attack_fire_inline.h
  ai/monsters/controller/controller_state_attack_hide.h
  ai/monsters/controller/controller_state_attack_hide_inline.h
  ai/monsters/controller/controller_state_attack_hide_lite.h
  ai/monsters/controller/controller_state_attack_hide_lite_inline.h
  ai/monsters/controller/controller_state_attack_inline.h
  ai/monsters/controller/controller_state_attack_moveout.h
  ai/monsters/controller/controller_state_attack_moveout_inline.h
  ai/monsters/controller/controller_state_control_hit.h
  ai/monsters/controller/controller_state_control_hit_inline.h
  ai/monsters/controller/controller_state_manager.h
  ai/monsters/controller/controller_state_panic.h
  controller_state_panic_inline.h
  ai/monsters/controller/controller_tube.h
  ai/monsters/controller/controller_tube_inline.h
)

add_module(XRay.Game.AI.Monsters.Crow
  SOURCES
  ai_crow_script.cpp
  ai/crow/ai_crow.cpp
  ai/crow/ai_crow.h
)

add_module(XRay.Game.AI.Monsters.Dog
  SOURCES
  ai/monsters/dog/dog.cpp
  ai/monsters/dog/dog_script.cpp
  ai/monsters/dog/dog_state_manager.cpp
  ai/monsters/dog/dog.h
  ai/monsters/dog/dog_state_manager.h
)

add_module(XRay.Game.AI.Monsters.PsyDog
  SOURCES
  ai/monsters/pseudodog/psy_dog.cpp
  ai/monsters/pseudodog/psy_dog_aura.cpp
  ai/monsters/pseudodog/psy_dog_state_manager.cpp
  ai/monsters/pseudodog/psy_dog.h
  ai/monsters/pseudodog/psy_dog_aura.h
  ai/monsters/pseudodog/psy_dog_state_manager.h
  ai/monsters/pseudodog/psy_dog_state_psy_attack.h
  ai/monsters/pseudodog/psy_dog_state_psy_attack_hide.h
  ai/monsters/pseudodog/psy_dog_state_psy_attack_hide_inline.h
  ai/monsters/pseudodog/psy_dog_state_psy_attack_inline.h
)

add_module(XRay.Game.AI.Monsters.Flesh
  SOURCES
  ai/monsters/flesh/flesh.cpp
  ai/monsters/flesh/flesh_script.cpp
  ai/monsters/flesh/flesh_state_manager.cpp
  ai/monsters/flesh/flesh.h
  ai/monsters/flesh/flesh_state_manager.h
)

add_module(XRay.Game.AI.Monsters.Fracture
  SOURCES
  ai/monsters/fracture/fracture.cpp
  ai/monsters/fracture/fracture_script.cpp
  ai/monsters/fracture/fracture_state_manager.cpp
  ai/monsters/fracture/fracture.h
  ai/monsters/fracture/fracture_state_manager.h
)

add_module(XRay.Game.AI.Monsters.Phantom
  SOURCES
  ai/phantom/phantom.cpp
  ai/phantom/phantom.h
)

add_module(XRay.Game.AI.Monsters.Poltergeist
  SOURCES
  ai/monsters/poltergeist/poltergeist.cpp
  ai/monsters/poltergeist/poltergeist_ability.cpp
  ai/monsters/poltergeist/poltergeist_flame_thrower.cpp
  ai/monsters/poltergeist/poltergeist_movement.cpp
  ai/monsters/poltergeist/poltergeist_script.cpp
  ai/monsters/poltergeist/poltergeist_state_manager.cpp
  ai/monsters/poltergeist/poltergeist_telekinesis.cpp
  ai/monsters/poltergeist/poltergeist.h
  ai/monsters/poltergeist/poltergeist_movement.h
  ai/monsters/poltergeist/poltergeist_state_attack_hidden.h
  ai/monsters/poltergeist/poltergeist_state_attack_hidden_inline.h
  ai/monsters/poltergeist/poltergeist_state_manager.h
  ai/monsters/poltergeist/poltergeist_state_rest.h
)

add_module(XRay.Game.AI.Monsters.PseudoDog
  SOURCES
  ai/monsters/pseudodog/pseudodog.cpp
  ai/monsters/pseudodog/pseudodog_psi_effector.cpp
  ai/monsters/pseudodog/pseudodog_script.cpp
  ai/monsters/pseudodog/pseudodog_state_manager.cpp
  ai/monsters/pseudodog/pseudodog.h
  ai/monsters/pseudodog/pseudodog_psi_effector.h
  ai/monsters/pseudodog/pseudodog_state_manager.h
)

add_module(XRay.Game.AI.Monsters.PseudoGiant
  SOURCES
  ai/monsters/pseudogigant/pseudogigant_script.cpp
  ai/monsters/pseudogigant/pseudogigant_state_manager.cpp
  ai/monsters/pseudogigant/pseudo_gigant.cpp
  ai/monsters/pseudogigant/pseudo_gigant_step_effector.cpp
  ai/monsters/pseudogigant/pseudogigant_state_manager.h
  ai/monsters/pseudogigant/pseudo_gigant.h
  ai/monsters/pseudogigant/pseudo_gigant_step_effector.h
)

add_module(XRay.Game.AI.Monsters.Rat
  SOURCES
  ai/monsters/rats/ai_rat.cpp
  ai/monsters/rats/ai_rat_animations.cpp
  ai/monsters/rats/ai_rat_behaviour.cpp
  ai/monsters/rats/ai_rat_feel.cpp
  ai/monsters/rats/ai_rat_fire.cpp
  #ai/monsters/rats/ai_rat_fsm.cpp
  ai/monsters/rats/ai_rat_templates.cpp
  ai/monsters/rats/rat_state_activation.cpp
  ai/monsters/rats/rat_state_initialize.cpp
  ai/monsters/rats/rat_state_switch.cpp
  ai/monsters/rats/ai_rat.h
  ai/monsters/rats/ai_rat_impl.h
  ai/monsters/rats/ai_rat_inline.h
  ai/monsters/rats/ai_rat_space.h
)

add_module(XRay.Game.AI.Monsters.Rat.StateManager
  SOURCES
  rat_state_manager.cpp
  rat_state_manager.h
  rat_state_manager_inline.h
)

add_module(XRay.Game.AI.Monsters.Rat.States
  SOURCES
  rat_states.cpp
  rat_states.h
)

add_module(XRay.Game.AI.Monsters.Rat.States.Base
  SOURCES
  rat_state_base.cpp
  rat_state_base.h
  rat_state_base_inline.h
)

add_module(XRay.Game.AI.Monsters.Snork
  SOURCES
  ai/monsters/snork/snork.cpp
  ai/monsters/snork/snork_jump.cpp
  ai/monsters/snork/snork_script.cpp
  ai/monsters/snork/snork_state_manager.cpp
  ai/monsters/snork/snork.h
  ai/monsters/snork/snork_jump.h
  ai/monsters/snork/snork_state_manager.h
)

add_module(XRay.Game.AI.Monsters.Tushkano
  SOURCES
  ai/monsters/tushkano/tushkano.cpp
  ai/monsters/tushkano/tushkano_script.cpp
  ai/monsters/tushkano/tushkano_state_manager.cpp
  ai/monsters/tushkano/tushkano.h
  ai/monsters/tushkano/tushkano_state_manager.h
)

add_module(XRay.Game.AI.Monsters.Zombie
  SOURCES
  ai/monsters/zombie/zombie.cpp
  ai/monsters/zombie/zombie_script.cpp
  ai/monsters/zombie/zombie_state_manager.cpp
  ai/monsters/zombie/zombie.h
  ai/monsters/zombie/zombie_state_attack_run.h
  ai/monsters/zombie/zombie_state_attack_run_inline.h
  ai/monsters/zombie/zombie_state_manager.h
)
