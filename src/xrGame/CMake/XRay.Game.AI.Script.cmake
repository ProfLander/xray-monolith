add_module(XRay.Game.AI.Script
  TYPE STATIC

  LINKS
  lua-extensions

  SOURCES
  ../xrServerEntities/script_export_macroses.h
  ../xrServerEntities/script_export_space.h
  ../xrServerEntities/script_space_forward.h

  script_imgui_script.cpp
  script_attachment_script.cpp

  script_imgui.h
  script_imgui_inline.h
)

add_module(XRay.Game.AI.Script.LuaStudio
  SOURCES
  ../xrServerEntities/lua_studio.h
  ../xrServerEntities/lua_studio.cpp
)

add_module(XRay.Game.AI.Script.Classes
  SOURCES
  script_bind_macroses.h
)

add_module(XRay.Game.AI.Script.Classes.BaseClient
  SOURCES
  base_client_classes_script.cpp
  base_client_classes.h
  base_client_classes_wrappers.h
)

add_module(XRay.Game.AI.Script.Classes.Console
  SOURCES
  console_registrator_script.cpp
  console_registrator.h
)

add_module(XRay.Game.AI.Script.Classes.KeyBindings
  SOURCES
  key_binding_registrator_script.cpp
  key_binding_registrator.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Animation
  SOURCES
  script_animation_action_script.cpp
  script_animation_action.cpp
  script_animation_action.h
  script_animation_action_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Abstract
  SOURCES
  script_abstract_action.cpp
  script_abstract_action.h
  script_abstract_action_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Condition
  SOURCES
  script_action_condition_script.cpp
  script_action_condition.cpp
  script_action_condition.h
  script_action_condition_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Entity
  SOURCES
  script_entity_action_script.cpp
  script_entity_action.cpp
  script_entity_action.h
  script_entity_action_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Monster
  SOURCES
  script_monster_action.cpp
  script_monster_action_script.cpp
  script_monster_action.h
  script_monster_action_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Movement
  SOURCES
  script_movement_action_script.cpp
  script_movement_action.cpp
  script_movement_action.h
  script_movement_action_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Movement.Params
  SOURCES
  patrol_path_params_script.cpp
  patrol_path_params.cpp
  patrol_path_params.h
  patrol_path_params_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Object
  SOURCES
  script_object_action_script.cpp
  script_object_action.cpp
  script_object_action.h
  script_object_action_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Particle
  SOURCES
  script_particle_action_script.cpp
  script_particle_action.cpp
  script_particle_action.h
  script_particle_action_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Particle.Params
  SOURCES
  particle_params_script.cpp
  particle_params.cpp
  particle_params.h
  particle_params_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Sound
  SOURCES
  script_sound_action_script.cpp
  script_sound_action.cpp
  script_sound_action.h
  script_sound_action_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Actions.Watch
  SOURCES
  script_watch_action_script.cpp
  script_watch_action.cpp
  script_watch_action.h
  script_watch_action_inline.h
)

add_module(XRay.Game.AI.Script.Classes.BinderObject
  SOURCES
  script_binder_object_wrapper.cpp
  script_binder_object_wrapper.h
)

add_module(XRay.Game.AI.Script.Classes.BinderObject.Wrapper
  SOURCES
  script_binder_object_script.cpp
  script_binder_object.cpp
  script_binder_object.h
)

add_module(XRay.Game.AI.Script.Classes.CallbackEx
  SOURCES
  script_callback_ex.h
)

add_module(XRay.Game.AI.Script.Classes.Effector
  SOURCES
  script_effector.cpp
  script_effector_script.cpp
  script_effector.h
  script_effector_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Effector.Wrapper
  SOURCES
  script_effector_wrapper.cpp
  script_effector_wrapper.h
  script_effector_wrapper_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Fcolor
  SOURCES
  ../xrServerEntities/script_fcolor_script.cpp
  ../xrServerEntities/script_fcolor.h
)

add_module(XRay.Game.AI.Script.Classes.Flags
  SOURCES
  ../xrServerEntities/script_flags_script.cpp
  ../xrServerEntities/script_flags.h
)

add_module(XRay.Game.AI.Script.Classes.Fmatrix
  SOURCES
  ../xrServerEntities/script_fmatrix_script.cpp
  ../xrServerEntities/script_fmatrix.h
)

add_module(XRay.Game.AI.Script.Classes.FS
  SOURCES
  fs_registrator_script.cpp
  fs_registrator.h
)

add_module(XRay.Game.AI.Script.Classes.Fvector
  SOURCES
  ../xrServerEntities/script_fvector_script.cpp
  ../xrServerEntities/script_fvector.h
)

add_module(XRay.Game.AI.Script.Classes.GameObject
  SOURCES
  script_game_object.cpp
  script_game_object2.cpp
  script_game_object3.cpp
  script_game_object4.cpp
  script_game_object_inventory_owner.cpp
  script_game_object_script.cpp
  script_game_object_script2.cpp
  script_game_object_script3.cpp
  script_game_object_script_trader.cpp
  script_game_object_smart_covers.cpp
  script_game_object_trader.cpp
  script_game_object_use.cpp
  script_game_object_use2.cpp
  script_game_object.h
  script_game_object_impl.h
)

add_module(XRay.Game.AI.Script.Classes.Hit
  SOURCES
  script_hit_script.cpp
  script_hit.cpp
  script_hit.h
  script_hit_inline.h
)

add_module(XRay.Game.AI.Script.Classes.IniFile
  SOURCES
  ../xrServerEntities/script_ini_file_script.cpp
  ../xrServerEntities/script_ini_file.cpp
  ../xrServerEntities/script_ini_file.h
  ../xrServerEntities/script_ini_file_inline.h
)

add_module(XRay.Game.AI.Script.Classes.IniFile.TokenList
  SOURCES
  ../xrServerEntities/script_token_list_script.cpp
  ../xrServerEntities/script_token_list.cpp
  ../xrServerEntities/script_token_list.h
  ../xrServerEntities/script_token_list_inline.h
)

add_module(XRay.Game.AI.Script.Classes.IniFile.RTokenList
  SOURCES
  ../xrServerEntities/script_rtoken_list_script.cpp
  ../xrServerEntities/script_rtoken_list.h
  ../xrServerEntities/script_rtoken_list_inline.h
)

add_module(XRay.Game.AI.Script.Classes.LAnim
  SOURCES
  script_lanim.cpp
  script_lanim.h
)

add_module(XRay.Game.AI.Script.Classes.MonsterHitInfo
  SOURCES
  script_monster_hit_info_script.cpp
  script_monster_hit_info.h
)

add_module(XRay.Game.AI.Script.Classes.NetPacket
  SOURCES
  ../xrServerEntities/script_net_packet_script.cpp
  ../xrServerEntities/script_net_packet.h
)

add_module(XRay.Game.AI.Script.Classes.Particles
  SOURCES
  script_particles_script.cpp
  script_particles.cpp
  script_particles_script.cpp
  script_particles.h
  script_particles_inline.h
)

add_module(XRay.Game.AI.Script.Classes.Reader
  SOURCES
  ../xrServerEntities/script_reader_script.cpp
  ../xrServerEntities/script_reader.h
)

add_module(XRay.Game.AI.Script.Classes.RenderDevice
  SOURCES
  script_render_device_script.cpp
  script_render_device.h
)

add_module(XRay.Game.AI.Script.Classes.Sound
  SOURCES
  script_sound_script.cpp
  script_sound.cpp
  script_sound.h
  script_sound_inline.h
)

add_module(XRay.Game.AI.Script.Classes.SoundInfo
  SOURCES
  script_sound_info_script.cpp
  script_sound_info.h
)

add_module(XRay.Game.AI.Script.Classes.SoundType
  SOURCES
  ../xrServerEntities/script_sound_type_script.cpp
  ../xrServerEntities/script_sound_type.h
)

add_module(XRay.Game.AI.Script.Classes.UI
  SOURCES
  ui_export_script.cpp

  ScriptXMLInit.cpp
  ScriptXMLInit.h

  script_ui_registrator.h
)

add_module(XRay.Game.AI.Script.Debugger
  SOURCES
  ../xrServerEntities/mslotutils.h
  ../xrServerEntities/script_debugger_messages.h

  ../xrServerEntities/script_callStack.cpp
  ../xrServerEntities/script_callStack.h

  ../xrServerEntities/script_debugger.cpp
  ../xrServerEntities/script_debugger.h

  ../xrServerEntities/script_debugger_threads.cpp
  ../xrServerEntities/script_debugger_threads.h

  ../xrServerEntities/script_lua_helper.cpp
  ../xrServerEntities/script_lua_helper.h
)

add_module(XRay.Game.AI.Script.Engine
  SOURCES
  ../xrServerEntities/script_engine_script.cpp
  ../xrServerEntities/script_engine.cpp
  ../xrServerEntities/script_engine.h
  ../xrServerEntities/script_engine_inline.h
  ../xrServerEntities/script_engine_space.h

  script_engine_help.cpp

  ../xrServerEntities/script_engine_export.cpp
  ../xrServerEntities/script_engine_export.h
)

add_module(XRay.Game.AI.Script.Process
  SOURCES
  ../xrServerEntities/script_process.cpp
  ../xrServerEntities/script_process.h
  ../xrServerEntities/script_process_inline.h
)

add_module(XRay.Game.AI.Script.Storage
  SOURCES
  ../xrServerEntities/script_storage.cpp
  ../xrServerEntities/script_storage.h
  ../xrServerEntities/script_storage_inline.h
  ../xrServerEntities/script_storage_space.h
)

add_module(XRay.Game.AI.Script.Thread
  SOURCES
  ../xrServerEntities/script_thread.cpp
  ../xrServerEntities/script_thread.h
  ../xrServerEntities/script_thread_inline.h
)

add_module(XRay.Game.AI.Script.Thread.StackTracker
  SOURCES
  ../xrServerEntities/script_stack_tracker.cpp
  ../xrServerEntities/script_stack_tracker.h
  ../xrServerEntities/script_stack_tracker_inline.h
)