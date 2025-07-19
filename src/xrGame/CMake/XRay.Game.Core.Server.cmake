add_module(XRay.Game.Core.Server
  SOURCES
  ../xrServerEntities/xrServer_Space.h

  xrServer.cpp
  xrServer.h

  screenshot_server.cpp
  screenshot_server.h

  xrClientsPool.cpp
  xrClientsPool.h

  xrServer_balance.cpp

  xrServer_info.cpp
  xrServer_info.h

  xrServer_updates_compressor.cpp
  xrServer_updates_compressor.h

  xrServerMapSync.cpp
  xrServerMapSync.h
  xrServer_svclient_validation.h
)

add_module(XRay.Game.Core.Server.Editor
  SOURCES
  ../xrServerEntities/ItemListTypes.h
  ../xrServerEntities/WaveForm.h
  ../xrServerEntities/xrEProps.h
  ../xrCore/FastDelegate.h
  ../Layers/xrRender/DrawUtils.h
)

add_module(XRay.Game.Core.Server.FileTransfer
  SOURCES
  file_transfer.cpp
  file_transfer.h

  filereceiver_node.cpp
  filereceiver_node.h

  filetransfer_node.cpp
  filetransfer_node.h

  filetransfer_common.h
)

add_module(XRay.Game.Core.Server.Games
  SOURCES
  ../xrServerEntities/game_base_space.h
  game_base.cpp
  game_base.h
  game_base_kill_type.h
  game_base_menu_events.h
)

add_module(XRay.Game.Core.Server.Games.Client.ArtefactHunt
  SOURCES
  game_cl_artefacthunt.cpp
  game_cl_artefacthunt.h
  game_cl_artefacthunt_snd_msg.h
)

add_module(XRay.Game.Core.Server.Games.Client.Base
  SOURCES
  game_cl_base.cpp
  game_cl_base_weapon_usage_statistic.cpp
  game_cl_base_weapon_usage_statistic_save.cpp
  game_cl_base.h
  game_cl_base_weapon_usage_statistic.h
)

add_module(XRay.Game.Core.Server.Games.Client.CaptureTheArtefact
  SOURCES
  game_cl_capturetheartefact_buywnd.cpp
  game_cl_capture_the_artefact.cpp
  game_cl_capture_the_artefact_captions_manager.cpp
  game_cl_capture_the_artefact_messages_menu.cpp
  game_cl_capturetheartefact_snd_msg.h
  game_cl_capture_the_artefact.h
  game_cl_capture_the_artefact_captions_manager.h
)

add_module(XRay.Game.Core.Server.Games.Client.Deathmatch
  SOURCES
  game_cl_deathmatch.cpp
  game_cl_deathmatch_buywnd.cpp
  game_cl_deathmatch.h
  game_cl_deathmatch_snd_messages.h
)

add_module(XRay.Game.Core.Server.Games.Client.MP
  SOURCES
  game_cl_mp.cpp
  game_cl_mp_messages_menu.cpp
  game_cl_mp_snd_messages.cpp
  game_cl_mp.h
  game_cl_mp_messages_menu.h
  game_cl_mp_snd_messages.h
)

add_module(XRay.Game.Core.Server.Games.Client.MP.Anticheat
  SOURCES
  configs_common.cpp
  configs_common.h

  configs_dumper.cpp
  configs_dumper.h

  configs_dump_verifyer.cpp
  configs_dump_verifyer.h

  mp_config_sections.cpp
  mp_config_sections.h
)

add_module(XRay.Game.Core.Server.Games.Client.MP.AwardSystem
  SOURCES
  ammunition_groups.cpp
  ammunition_groups.h

  bone_groups.cpp
  bone_groups.h

  event_conditions_collection.cpp
  event_conditions_collection.h

  game_events_handler.h

  reward_event_generator.cpp
  reward_event_generator.h

  reward_manager.cpp
  reward_manager.h

  reward_snd_messages.h

  rewarding_events_handlers.cpp
  rewarding_events_handlers.h

  rewarding_state_events.cpp
  rewarding_state_events.h

  state_arguments_functions.h
)

add_module(XRay.Game.Core.Server.Games.Client.MP.AwardSystem.EventHandlers
  SOURCES
  best_scores_helper.cpp
  best_scores_helper.h

  reward_event_handler.h
)

add_module(XRay.Game.Core.Server.Games.Client.MP.AwardSystem.PlayerState
  SOURCES
  accumulative_states.h

  game_state_accumulator.cpp
  game_state_accumulator.h
  game_state_accumulator_inline.h

  game_state_accumulator_state_register.cpp

  hits_store.cpp
  hits_store.h
  hits_store_inline.h

  kills_store.cpp
  kills_store.h
  kills_store_inline.h

  obsolete_queue.h
  obsolete_queue_inline.h

  player_state_param.h
)

add_module(XRay.Game.Core.Server.Games.Client.MP.AwardSystem.PlayerState.StateParameters
  SOURCES
  black_list.cpp
  black_list.h

  command_switch_counter.h

  double_shot_double_kill.cpp
  double_shot_double_kill.h

  faster_than_bullets_time.cpp
  faster_than_bullets_time.h

  harvest_time.cpp
  harvest_time.h

  invincible_fury.cpp
  invincible_fury.h

  killer_victim_velocity_angle.cpp
  killer_victim_velocity_angle.h

  player_spot_params.cpp
  player_spot_params.h

  player_state_achilles_heel.cpp
  player_state_achilles_heel.h

  player_state_ambassador.cpp
  player_state_ambassador.h

  player_state_ammo_elapsed.cpp
  player_state_ammo_elapsed.h

  player_state_avenger.cpp
  player_state_avenger.h

  player_state_blitzkrieg.cpp
  player_state_blitzkrieg.h

  player_state_cherub.cpp
  player_state_cherub.h

  player_state_climber.cpp
  player_state_climber.h

  player_state_mad.cpp
  player_state_mad.h

  player_state_marksman.cpp
  player_state_marksman.h

  player_state_multichampion.cpp
  player_state_multichampion.h

  player_state_opener.cpp
  player_state_opener.h

  player_state_params.cpp
  player_state_params.h

  player_state_remembrance.cpp
  player_state_remembrance.h

  player_state_skewer.cpp
  player_state_skewer.h

  player_state_toughy.cpp
  player_state_toughy.h

  player_team_win_score.cpp
  player_team_win_score.h

  silent_shots.cpp
  silent_shots.h

  sprinter_stopper.cpp
  sprinter_stopper.h

  stalker_flair.cpp
  stalker_flair.h
)

add_module(XRay.Game.Core.Server.Games.Client.MP.Screenshots
  SOURCES
  screenshot_manager.cpp
  screenshot_manager.h

  screenshots_common.cpp
  screenshots_common.h

  screenshots_writer.cpp
  screenshots_writer.h
)

add_module(XRay.Game.Core.Server.Games.Client.Single
  SOURCES
  game_cl_single.cpp
  game_cl_single.h
)

add_module(XRay.Game.Core.Server.Games.Client.TeamDeathmatch
  SOURCES
  game_cl_teamdeathmatch.cpp
  game_cl_teamdeathmatch.h
  game_cl_teamdeathmatch_snd_messages.h
)

add_module(XRay.Game.Core.Server.Games.PlayerAccounts
  SOURCES
  account_manager.cpp
  account_manager.h

  account_manager_console.cpp
  account_manager_console.h

  account_manager_script.cpp

  atlas_stalkercoppc_v1.c
  atlas_stalkercoppc_v1.h

  atlas_submit_queue.cpp
  atlas_submit_queue.h

  awards_store.cpp
  awards_store.h

  best_scores_store.cpp
  best_scores_store.h

  gsc_dsigned_ltx.cpp
  gsc_dsigned_ltx.h

  login_manager.cpp
  login_manager_script.cpp
  login_manager.h

  mixed_delegate.h
  mixed_delegate_unique_tags.h

  player_account.cpp
  player_account.h

  profile_data_types.cpp
  profile_data_types_script.cpp
  profile_data_types.h

  profile_store.cpp
  profile_store_script.cpp
  profile_store.h

  queued_async_method.h

  stats_submitter.cpp
  stats_submitter_dsa_params.cpp
  stats_submitter.h
)

add_module(XRay.Game.Core.Server.Games.Server
  SOURCES

  game_sv_base.cpp
  game_sv_base.h

  game_sv_base_console_vars.cpp
  game_sv_base_console_vars.h

  game_sv_event_queue.cpp
  game_sv_event_queue.h

  game_sv_item_respawner.cpp
  game_sv_item_respawner.h

  xr_time.cpp
  xr_time.h
)

add_module(XRay.Game.Core.Server.Games.Server.ArtefactHunt
  SOURCES
  game_sv_artefacthunt.cpp
  game_sv_artefacthunt_process_event.cpp
  game_sv_artefacthunt.h
)

add_module(XRay.Game.Core.Server.Games.Server.CaptureTheArtefact
  SOURCES
  game_sv_capture_the_artefact.cpp
  game_sv_capture_the_artefact.h
  game_sv_capture_the_artefact_buy_event.cpp
  game_sv_capture_the_artefact_myteam_impl.cpp
  game_sv_capture_the_artefact_process_event.cpp
)

add_module(XRay.Game.Core.Server.Games.Server.Deathmatch
  SOURCES
  game_sv_deathmatch.cpp
  game_sv_deathmatch.h
  game_sv_deathmatch_process_event.cpp
)

add_module(XRay.Game.Core.Server.Games.Server.MP
  SOURCES
  cdkey_ban_list.cpp
  cdkey_ban_list.h
  game_sv_mp.cpp
  game_sv_mp.h
  game_sv_mp_team.h
  game_sv_mp_vote_flags.h
)

add_module(XRay.Game.Core.Server.Games.Server.Single
  SOURCES
  game_sv_single.cpp
  game_sv_single.h
)

add_module(XRay.Game.Core.Server.Games.Server.TeamDeathmatch
  SOURCES
  game_sv_teamdeathmatch.cpp
  game_sv_teamdeathmatch_process_event.cpp
  game_sv_teamdeathmatch.h
)

add_module(XRay.Game.Core.Server.GameSpy.CDKeyDecode
  SOURCES
  gamespy/cdkeydecode/base32.c
  gamespy/cdkeydecode/base32.h

  gamespy/cdkeydecode/cdkeydecode.c
  gamespy/cdkeydecode/cdkeydecode.h
)

add_module(XRay.Game.Core.Server.IDGenerator
  SOURCES
  id_generator.h
)

add_module(XRay.Game.Core.Server.Server.Connect
  SOURCES
  xrServer_CL_connect.cpp
  xrServer_CL_disconnect.cpp
  xrServer_Connect.cpp
  xrServer_Disconnect.cpp
)

add_module(XRay.Game.Core.Server.Server.Entities
  SOURCES
  ../xrCore/ChooseTypes.H

  ../xrServerEntities/gametype_chooser.cpp
  ../xrServerEntities/gametype_chooser.h

  ../xrServerEntities/PropertiesListTypes.h

  ../xrServerEntities/ShapeData.h

  ../xrServerEntities/xrServer_Factory.cpp

  ../xrServerEntities/xrServer_Objects_Abstract.cpp
  ../xrServerEntities/xrServer_Objects_Abstract.h
  ../xrServerEntities/xrServer_Objects_ALife_All.h
  ../xrServerEntities/xrServer_script_macroses.h
)

add_module(XRay.Game.Core.Server.Server.Entities.Objects
  SOURCES
  ../xrServerEntities/xrServer_Object_Base.cpp
  ../xrServerEntities/xrServer_Object_Base.h

  ../xrServerEntities/xrServer_Objects.cpp
  ../xrServerEntities/xrServer_Objects.h

  ../xrServerEntities/xrServer_Objects_script.cpp
  ../xrServerEntities/xrServer_Objects_script2.cpp
)

add_module(XRay.Game.Core.Server.Server.Entities.ALife
  SOURCES
  ../xrServerEntities/xrServer_Objects_ALife.cpp
  ../xrServerEntities/xrServer_Objects_ALife.h

  ../xrServerEntities/xrServer_Objects_ALife_script.cpp
  ../xrServerEntities/xrServer_Objects_ALife_script2.cpp
  ../xrServerEntities/xrServer_Objects_ALife_script3.cpp
)

add_module(XRay.Game.Core.Server.Server.Entities.ALife.Items
  SOURCES
  ../xrServerEntities/PHSynchronize.h

  ../xrServerEntities/xrServer_Objects_ALife_Items.cpp
  ../xrServerEntities/xrServer_Objects_ALife_Items.h

  ../xrServerEntities/xrServer_Objects_ALife_Items_script.cpp
  ../xrServerEntities/xrServer_Objects_ALife_Items_script2.cpp
  ../xrServerEntities/xrServer_Objects_ALife_Items_script3.cpp
)

add_module(XRay.Game.Core.Server.Server.Entities.ALife.Monsters
  SOURCES
  ../xrServerEntities/xrServer_Objects_ALife_monsters.cpp
  ../xrServerEntities/xrServer_Objects_ALife_monsters.h

  ../xrServerEntities/xrServer_Objects_ALife_monsters_script.cpp
  ../xrServerEntities/xrServer_Objects_ALife_monsters_script2.cpp
  ../xrServerEntities/xrserver_objects_alife_monsters_script3.cpp
  ../xrServerEntities/xrServer_Objects_ALife_monsters_script4.cpp
)

add_module(XRay.Game.Core.Server.Server.Entities.ALife.SmartCover
  SOURCES
  ../xrServerEntities/xrServer_Objects_Alife_Smartcovers.cpp
  ../xrServerEntities/xrServer_Objects_Alife_Smartcovers.h

  ../xrServerEntities/xrServer_Objects_Alife_Smartcovers_script.cpp
)

add_module(XRay.Game.Core.Server.Server.Entities.ScriptValueContainer
  SOURCES
  ../xrServerEntities/script_value_container.h
  ../xrServerEntities/script_value_container_impl.h
)

add_module(XRay.Game.Core.Server.Server.Perform
  SOURCES
  xrServer_perform_GameExport.cpp
  xrServer_perform_migration.cpp
  xrServer_perform_RPgen.cpp
  xrServer_perform_sls_default.cpp
  xrServer_perform_sls_load.cpp
  xrServer_perform_sls_save.cpp
  xrServer_perform_transfer.cpp
  xrServer_secure_messaging.cpp
  xrServer_sls_clear.cpp
)

add_module(XRay.Game.Core.Server.Server.Process
  SOURCES
  xrServer_process_event.cpp
  xrServer_process_event_activate.cpp
  xrServer_process_event_destroy.cpp
  xrServer_process_event_ownership.cpp
  xrServer_process_event_reject.cpp
  xrServer_process_spawn.cpp
  xrServer_process_update.cpp
  xrServer_svclient_validation.cpp
)

add_module(XRay.Game.Core.Server.GameSpyServer
  SOURCES
  xrGameSpyServer.cpp
  xrGameSpyServer.h

  xrGameSpyServer_callbacks.cpp
  xrGameSpyServer_callbacks.h

  xrGameSpy_GameSpyFuncs.cpp
)