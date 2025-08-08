add_module(XRay.Game.Core.Client.Cameras
  SOURCES
  CameraFirstEye.cpp
  CameraFirstEye.h
  cameralook.cpp
  cameralook.h
)

add_module(XRay.Game.Core.Client.Effectors.Actor
  SOURCES
  ActorEffector_script.cpp
  ActorEffector.cpp
  ActorEffector.h

  ActorNightVision.cpp
  ActorNightVision.h

  CameraEffector.cpp
  CameraEffector.h
  
  EffectorBobbing.cpp
  EffectorBobbing.h
  
  EffectorFall.cpp
  EffectorFall.h
)

add_module(XRay.Game.Core.Client.Effectors.Monsters
  SOURCES
  ai/monsters/ai_monster_effector.cpp
  ai/monsters/ai_monster_effector.h

  pp_effector_custom.cpp
  pp_effector_custom.h

  pp_effector_distance.cpp
  pp_effector_distance.h
  PostprocessAnimator.cpp
  PostprocessAnimator.h
)

add_module(XRay.Game.Core.Client.Effectors.PostProcess
  SOURCES
  PostprocessAnimator.cpp
  PostprocessAnimator.h

  zone_effector.cpp
  zone_effector.h
)

add_module(XRay.Game.Core.Client.Effectors.Weapon
  SOURCES
  EffectorShot.cpp
  EffectorShot.h

  EffectorShotX.cpp
  EffectorShotX.h

  EffectorZoomInertion.cpp
  EffectorZoomInertion.h
)

add_module(XRay.Game.Core.Client.Effects
  SOURCES
  script_wallmarks_manager.cpp
  script_wallmarks_manager.h

  script_wallmarks_script.cpp
)

add_module(XRay.Game.Core.Client.Effects.Core
  SOURCES
  #DynamicHeightMap.cpp
  DynamicHeightMap.h
)

add_module(XRay.Game.Core.Client.GamePersistent
  SOURCES
  GamePersistent.cpp
  GamePersistent.h
)

add_module(XRay.Game.Core.Client.Level
  SOURCES
  Level.cpp
  LevelDebugScript.cpp
  Level_GameSpy_Funcs.cpp
  Level_input.cpp
  Level_load.cpp
  level_map_locations.cpp
  Level_network.cpp
  Level_network_compressed_updates.cpp
  Level_network_Demo.cpp
  Level_network_messages.cpp
  Level_network_spawn.cpp
  Level_network_start_client.cpp
  level_script.cpp
  Level_secure_messaging.cpp
  Level_SLS_Default.cpp
  Level_SLS_Load.cpp
  Level_SLS_Save.cpp
  Level_start.cpp

  Level.h
  LevelDebugScript.h
  level_location_selector.h
  level_location_selector_inline.h
  Level_network_Demo.h
)

add_module(XRay.Game.Core.Client.Level.AutoSaveManager
  SOURCES
  autosave_manager.cpp
  autosave_manager.h
  autosave_manager_inline.h
)

add_module(XRay.Game.Core.Client.Level.BulletManager
  SOURCES
  Level_bullet_manager_firetrace.cpp

  Level_Bullet_Manager.cpp
  Level_Bullet_Manager.h

  Tracer.cpp
  Tracer.h
)

add_module(XRay.Game.Core.Client.Level.ClientDigestComputer
  SOURCES
  Level_network_digest_computer.cpp
)

add_module(XRay.Game.Core.Client.Level.ClientSpawnManager
  SOURCES
  client_spawn_manager_script.cpp

  client_spawn_manager.cpp
  client_spawn_manager.h
  client_spawn_manager_inline.h
)

add_module(XRay.Game.Core.Client.Level.DebugRenderer
  SOURCES
  debug_renderer.cpp
  debug_renderer.h
  debug_renderer_inline.h
)

add_module(XRay.Game.Core.Client.Level.GlobalFeelTouch
  SOURCES
  GlobalFeelTouch.cpp
  GlobalFeelTouch.hpp
)

add_module(XRay.Game.Core.Client.Level.Sounds
  SOURCES
  level_sounds.cpp
  level_sounds.h
)

add_module(XRay.Game.Core.Client.Level.MapSync
  SOURCES
  Level_network_map_sync.cpp
  Level_network_map_sync.h
)

add_module(XRay.Game.Core.Client.Level.NetworkDemo
  SOURCES
  DemoInfo.cpp
  DemoInfo.h

  DemoInfo_Loader.cpp
  DemoInfo_Loader.h
  
  DemoPLay_Control.cpp
  DemoPlay_Control.h
  
  Message_Filter.cpp
  Message_Filter.h
)

add_module(XRay.Game.Core.Client.Level.SeniorityHierarchyHolder
  SOURCES
  ../xrServerEntities/LevelGameDef.cpp
  ../xrServerEntities/LevelGameDef.h
  
  seniority_hierarchy_holder.cpp
  seniority_hierarchy_holder.h
  seniority_hierarchy_holder_inline.h
  seniority_hierarchy_space.h
)

add_module(XRay.Game.Core.Client.Level.SeniorityHierarchyHolder.Group
  SOURCES
  group_hierarchy_holder.cpp
  group_hierarchy_holder.h
  group_hierarchy_holder_inline.h
)

add_module(XRay.Game.Core.Client.Level.SeniorityHierarchyHolder.Squad
  SOURCES
  squad_hierarchy_holder.cpp
  squad_hierarchy_holder.h
  squad_hierarchy_holder_inline.h
)

add_module(XRay.Game.Core.Client.Level.SeniorityHierarchyHolder.Team
  SOURCES
  team_hierarchy_holder.cpp
  team_hierarchy_holder.h
  team_hierarchy_holder_inline.h
)

add_module(XRay.Game.Core.Client.Level.Controller
  SOURCES
  xr_level_controller.cpp
  xr_level_controller.h
)

add_module(XRay.Game.Core.Client.Level.Debug
  SOURCES
  level_debug.cpp
  level_debug.h
)

add_module(XRay.Game.Core.Client.Objects
  SOURCES
)

add_module(XRay.Game.Core.Client.Objects.Actor.Base
  SOURCES
  Actor.cpp
  ActorAnimation.cpp
  ActorBackpack.cpp
  ActorCameras.cpp
  ActorCondition.cpp
  ActorCondition_script.cpp
  ActorInput.cpp
  actor_communication.cpp
  Actor_Events.cpp
  Actor_Feel.cpp
  actor_input_handler.cpp
  Actor_Movement.cpp
  Actor_Network.cpp
  actor_script.cpp
  Actor_Sleep.cpp
  Actor_Weapon.cpp
  Actor.h
  ActorAnimation.h
  ActorBackpack.h
  ActorCondition.h
  actor_anim_defs.h
  actor_defs.h
  Actor_Flags.h
  actor_input_handler.h
  
  fire_disp_controller.cpp
  fire_disp_controller.h
)

add_module(XRay.Game.Core.Client.Objects.Actor.Base.Memory
  SOURCES
  actor_memory.cpp
  actor_memory.h
)

add_module(XRay.Game.Core.Client.Objects.Actor.MP
  SOURCES
)

add_module(XRay.Game.Core.Client.Objects.Actor.MP.Client
  SOURCES
  actor_mp_client.cpp
  actor_mp_client_export.cpp
  actor_mp_client_import.cpp
  actor_mp_client.h
)

add_module(XRay.Game.Core.Client.Objects.Actor.MP.Server
  SOURCES
  actor_mp_server.cpp
  actor_mp_server_export.cpp
  actor_mp_server_import.cpp
  actor_mp_server.h
)

add_module(XRay.Game.Core.Client.Objects.Actor.MP.State
  SOURCES
  actor_mp_state.cpp
  actor_mp_state.h
  actor_mp_state_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Base
  SOURCES
  script_attachment_manager.cpp
  script_attachment_manager.h
)

add_module(XRay.Game.Core.Client.Objects.Base.Entity
  SOURCES
  Entity.cpp
  Entity.h
)

add_module(XRay.Game.Core.Client.Objects.Base.Entity.Alive
  SOURCES
  entity_alive.cpp
  entity_alive.h
  entity_alive_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Base.Entity.Condition
  SOURCES
  EntityCondition.cpp
  EntityCondition.h

  hit_immunity.cpp
  hit_immunity.h
  hit_immunity_space.h

  Wound.cpp
  Wound.h
)

add_module(XRay.Game.Core.Client.Objects.Base.GameObject
  SOURCES
  GameObject.cpp
  GameObject.h

  game_object_space.h
)

add_module(XRay.Game.Core.Client.Objects.Base.GameObject.AIObstacle
  SOURCES
  ai_obstacle.cpp
  ai_obstacle.h
  ai_obstacle_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Base.GameObject.AIObstacle.MinOBB
  SOURCES
  min_obb.cpp
)

add_module(XRay.Game.Core.Client.Objects.Base.GameObject.AIObstacle.MinOBB.MagicBox
  SOURCES
  magic_box3.cpp
  magic_box3.h
  magic_box3_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Base.GameObject.AIObstacle.MinOBB.MagicMinimizeND
  SOURCES
  magic_minimize_nd.h
  magic_minimize_nd_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Base.GameObject.AIObstacle.MinOBB.Minimize1D
  SOURCES
  magic_minimize_1d.cpp
  magic_minimize_1d.h
  magic_minimize_1d_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Base.GameObject.Holder
  SOURCES
  holder_custom.cpp
  holder_custom_script.cpp
  holder_custom.h
)

add_module(XRay.Game.Core.Client.Objects.Base.GameObject.Holder.ParticlesPlayer
  SOURCES
  ParticlesPlayer.cpp
  ParticlesPlayer.h
)

add_module(XRay.Game.Core.Client.Objects.Base.UsableScriptObject
  SOURCES
  UsableScriptObject.cpp
  UsableScriptObject.h
)

add_module(XRay.Game.Core.Client.Objects.DelayedActionFuse
  SOURCES
  DelayedActionFuse.cpp
  DelayedActionFuse.h
)

add_module(XRay.Game.Core.Client.Objects.HangingLamp
  SOURCES
  HangingLamp.cpp
  HangingLamp.h
  
  script_light_script.cpp
  script_light_inline.h
  script_light.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory
  SOURCES
  Inventory.cpp
  Inventory.h

  inventory_quickswitch.cpp
  ../xrServerEntities/inventory_space.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.AttachableItem
  SOURCES
  attachable_item.cpp
  attachable_item.h
  attachable_item_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.AttachmentOwner
  SOURCES
  attachment_owner.cpp
  attachment_owner.h
  attachment_owner_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.EatableItem
  SOURCES
  eatable_item_script.cpp
  eatable_item.cpp
  eatable_item.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.EatableItem.Object
  SOURCES
  eatable_item_object.cpp
  eatable_item_object.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryItem
  SOURCES
  inventory_item.cpp
  inventory_item.h
  inventory_item_impl.h
  inventory_item_inline.h

  inventory_item_script.cpp

  inventory_item_upgrade.cpp
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryItemObject
  SOURCES
  inventory_item_object.cpp
  inventory_item_object.h
  inventory_item_object_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryOwner
  SOURCES
  inventory_owner_info.cpp
  inventory_owner_inline.h

  InventoryOwner.cpp
  InventoryOwner_script.cpp
  InventoryOwner.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryOwner.CharacterInfo
  SOURCES
  ../xrServerEntities/character_info.cpp
  ../xrServerEntities/character_info.h
  ../xrServerEntities/character_info_defs.h

  ../xrServerEntities/specific_character.cpp
  ../xrServerEntities/specific_character.h

  character_community.cpp
  character_community.h
  
  character_rank.cpp
  character_rank.h

  character_reputation.cpp
  character_reputation.h

  ini_id_loader.h
  ini_table_loader.h

  monster_community.cpp
  monster_community.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryOwner.RelationRegistry
  SOURCES
  relation_registry.cpp
  relation_registry.h
  relation_registry_defs.h
  relation_registry_inline.h

  relation_registry_actions.cpp

  relation_registry_fights.cpp
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryOwner.TradeParameters
  SOURCES
  trade_parameters.cpp
  trade_parameters.h
  trade_parameters_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryOwner.TradeParameters.PurchaseList
  SOURCES
  purchase_list.cpp
  purchase_list.h
  purchase_list_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryOwner.TradeParameters.TradeAction
  SOURCES
  trade_action_parameters.h
  trade_action_parameters_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryOwner.TradeParameters.TradeBool
  SOURCES
  trade_bool_parameters.h
  trade_bool_parameters_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryOwner.TradeParameters.TradeFactor
  SOURCES
  trade_factor_parameters.h
  trade_factor_parameters_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.InventoryOwner.TradeParameters.TradeFactors
  SOURCES
  trade_factors.h
  trade_factors_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Inventory.PhysicsItem
  SOURCES
  physic_item.cpp
  physic_item.h
  physic_item_inline.h
)

add_module(XRay.Game.Core.Client.Objects.InventoryBox
  SOURCES
  InventoryBox.cpp
  InventoryBox_script.cpp
  InventoryBox.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts
  SOURCES
  Artefact.cpp
  Artefact.h
  
  artefact_activation.cpp
  artefact_activation.h

  artefact_script.cpp
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.Bast
  SOURCES
  BastArtifact.cpp
  BastArtifact.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.BlackDrops
  SOURCES
  BlackDrops.cpp
  BlackDrops.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.BlackGravi
  SOURCES
  BlackGraviArtifact.cpp
  BlackGraviArtifact.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.CtaGame
  SOURCES
  cta_game_artefact.cpp
  cta_game_artefact.h

  cta_game_artefact_activation.cpp
  cta_game_artefact_activation.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.Dummy
  SOURCES
  DummyArtifact.cpp
  DummyArtifact.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.ElectricBall
  SOURCES
  ElectricBall.cpp
  ElectricBall.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.FadedBall
  SOURCES
  FadedBall.cpp
  FadedBall.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.MercuryBall
  SOURCES
  MercuryBall.cpp
  MercuryBall.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.Galantine
  SOURCES
  GalantineArtifact.cpp
  GalantineArtifact.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.Gravi
  SOURCES
  GraviArtifact.cpp
  GraviArtifact.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.Needles
  SOURCES
  Needles.cpp
  Needles.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.RustyHair
  SOURCES
  RustyHairArtifact.cpp
  RustyHairArtifact.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.Thorn
  SOURCES
  ThornArtifact.cpp
  ThornArtifact.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Artefacts.Zuda
  SOURCES
  ZudaArtifact.cpp
  ZudaArtifact.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Devices
  SOURCES
  CustomDevice.cpp
  CustomDevice.h

  Dosimeter.cpp
  Dosimeter.h
  
  Flashlight.cpp
  Flashlight.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Devices.Detectors
  SOURCES
  ui/ArtefactDetectorUI.cpp
  ui/ArtefactDetectorUI.h
  
  CustomDetector.cpp
  CustomDetector.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Devices.Detectors.Advanced
  SOURCES
  AdvancedDetector.cpp
  AdvancedDetector.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Devices.Detectors.Elite
  SOURCES
  EliteDetector.cpp
  EliteDetector.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Devices.Detectors.Simple
  SOURCES
  SimpleDetector.cpp
  SimpleDetector.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Devices.Flare
  SOURCES
  flare.cpp
  flare.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Devices.Torch
  SOURCES
  Torch.cpp
  Torch.h

  torch_script.cpp
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Documents
  SOURCES
  InfoDocument.cpp
  InfoDocument.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Explosives
  SOURCES
  Explosive.cpp
  #Explosive.h

  ExplosiveItem.cpp
  ExplosiveItem.h

  ExplosiveScript.cpp
  
  wallmark_manager.cpp
  wallmark_manager.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.FoodDrugs
  SOURCES
  antirad.cpp
  antirad_script.cpp
  antirad.h

  BottleItem.cpp
  BottleItem_script.cpp
  BottleItem.h
  
  FoodItem.cpp
  FoodItem_script.cpp
  FoodItem.h

  medkit.cpp
  medkit_script.cpp
  medkit.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.HudItem
  SOURCES
  hud_item_object.cpp
  hud_item_object.h

  HudItem.cpp
  HudItem.h

  HudSound.cpp
  HudSound.h

  player_hud.cpp
  player_hud_script.cpp
  player_hud_tune.cpp
  player_hud.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.MPAnticheat
  SOURCES
  mpactor_dump_impl.cpp
  shootingObject_dump_impl.cpp
  weapon_ammo_dump_impl.cpp
  weapon_dump_impl.cpp

  anticheat_dumpable_object.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.MPPlayersBag
  SOURCES
  MPPlayersBag.cpp
  MPPlayersBag.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Outfit
  SOURCES
  ActorHelmet.cpp
  ActorHelmet.h

  BoneProtections.cpp
  BoneProtections.h

  CustomOutfit.cpp
  CustomOutfit_script.cpp
  CustomOutfit.h
  
  ExoOutfit.cpp
  ExoOutfit.h

  MilitaryOutfit.cpp
  MilitaryOutfit.h

  ScientificOutfit.cpp
  ScientificOutfit.h

  stalkerOutfit.cpp
  stalkerOutfit.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.PDAInformation
  SOURCES
  PDA.cpp
  PDA.h
  PdaMsg.h
  pda_space.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.Addons.GrenadeLauncher
  SOURCES
  GrenadeLauncher.cpp
  GrenadeLauncher.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.Addons.Scope
  SOURCES
  Scope.cpp
  Scope.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.Addons.Silencer
  SOURCES
  Silencer.cpp
  Silencer.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.Ammo
  SOURCES
  WeaponAmmo.cpp
  WeaponAmmo_script.cpp
  WeaponAmmo.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.Automatic
  SOURCES
  WeaponCustomAuto.cpp
  WeaponCustomAuto.h

  WeaponMagazined.cpp
  WeaponMagazined.h

  WeaponMagazinedWGrenade.cpp
  WeaponMagazinedWGrenade.h

  WeaponMagazineExtended.cpp
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.Grenade
  SOURCES
  Grenade.cpp
  Grenade.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.Missile
  SOURCES
  Missile.cpp
  Missile.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.Pistol
  SOURCES
  WeaponCustomPistol.cpp
  WeaponCustomPistol.h

  WeaponPistol.cpp
  WeaponPistol.h

  WeaponRevolver.cpp
  WeaponRevolver.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.RocketLauncher
  SOURCES
  CustomRocket.cpp
  CustomRocket.h
  
  ExplosiveRocket.cpp
  ExplosiveRocket.h

  RocketLauncher.cpp
  RocketLauncher.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Custom.Generic
  SOURCES
  first_bullet_controller.cpp
  first_bullet_controller.h

  CameraRecoil.h
  firedeps.h

  ShootingObject.cpp
  ShootingObject.h

  Weapon.cpp
  Weapon.h

  WeaponDispersion.cpp
  WeaponFire.cpp
  WeaponUpgrade.cpp
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.StationaryMinigun
  SOURCES
  WeaponStatMgun.cpp
  WeaponStatMgun.h

  WeaponStatMgunFire.cpp

  WeaponStatMgunIR.cpp
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.Binocular
  SOURCES
  WeaponBinoculars.cpp
  WeaponBinoculars.h

  WeaponBinocularsVision.cpp
  WeaponBinocularsVision.h

  WeaponBinoculars_script.cpp
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.BM16
  SOURCES
  weaponBM16.cpp
  weaponBM16_script.cpp
  weaponBM16.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.Bolt
  SOURCES
  Bolt.cpp
  Bolt.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.FN2000
  SOURCES
  WeaponFN2000.cpp
  WeaponFN2000.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.FORT
  SOURCES
  WeaponFORT.cpp
  WeaponFORT.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.GrenadeF1
  SOURCES
  F1.cpp
  F1.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.HPSA
  SOURCES
  WeaponHPSA.cpp
  WeaponHPSA_script.cpp
  WeaponHPSA.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.Knife
  SOURCES
  WeaponKnife.cpp
  WeaponKnife_script.cpp
  WeaponKnife.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.LR300
  SOURCES
  WeaponLR300.cpp
  WeaponLR300.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.PM
  SOURCES
  WeaponPM.cpp
  WeaponPM.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.RGD5
  SOURCES
  RGD5.cpp
  RGD5.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.RPG7
  SOURCES
  WeaponRPG7.cpp
  WeaponRPG7_script.cpp
  WeaponRPG7.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.SSRS
  SOURCES
  WeaponSSRS.cpp
  WeaponSSRS_script.cpp
  WeaponSSRS.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.SVD
  SOURCES
  WeaponSVD.cpp
  WeaponSVD.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.SVU
  SOURCES
  WeaponSVU.cpp
  WeaponSVU.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.AK74
  SOURCES
  WeaponAK74.cpp
  WeaponAK74.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.AutomaticShotgun
  SOURCES
  WeaponAutomaticShotgun.cpp
  WeaponAutomaticShotgun.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.Groza
  SOURCES
  WeaponGroza.cpp
  WeaponGroza.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.RG6
  SOURCES
  WeaponRG6.cpp
  WeaponRG6_script.cpp
  WeaponRG6.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.GrenadeLauncher
  SOURCES
  WeaponGrenadeLauncher.cpp
  WeaponGrenadeLauncher.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.Shotgun
  SOURCES
  WeaponShotgun.cpp
  weaponshotgun_script.cpp
  WeaponShotgun.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.USP45
  SOURCES
  WeaponUSP45.cpp
  WeaponUSP45.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.Val
  SOURCES
  WeaponVal.cpp
  WeaponVal.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.Vintorez
  SOURCES
  WeaponVintorez.cpp
  WeaponVintorez.h
)

add_module(XRay.Game.Core.Client.Objects.ItemsWeapons.Weapons.Various.Walther99
  SOURCES
  WeaponWalther.cpp
  WeaponWalther.h
)

add_module(XRay.Game.Core.Client.Objects.Physics.Breakable
  SOURCES
  BreakableObject.cpp
  BreakableObject.h
)

add_module(XRay.Game.Core.Client.Objects.Physics.Climbable
  SOURCES
  ClimableObject.cpp
  ClimableObject.h
)

add_module(XRay.Game.Core.Client.Objects.Physics.CollisionDamageReceiver
  SOURCES
  PHCollisionDamageReceiver.cpp
  PHCollisionDamageReceiver.h
)

add_module(XRay.Game.Core.Client.Objects.Physics.DestroyablePhysicsObject
  SOURCES
  DestroyablePhysicsObject.cpp
  DestroyablePhysicsObject.h
)

add_module(XRay.Game.Core.Client.Objects.Physics.PHDestroyable
  SOURCES
  PHDestroyable.cpp
  PHDestroyable.h
)

add_module(XRay.Game.Core.Client.Objects.Physics.PHSkeleton
  SOURCES
  PHSkeleton.cpp
  PHSkeleton.h
)

add_module(XRay.Game.Core.Client.Objects.Physics.PhysicsObject
  SOURCES
  PhysicObject.cpp
  PhysicObject.h
  
  PhysicObject_script.cpp

  animation_script_callback.cpp
  animation_script_callback.h
)

add_module(XRay.Game.Core.Client.Objects.Physics.PhysicsShellHolder
  SOURCES
  PhysicsShellHolder.cpp
  PhysicsShellHolder.h
)

add_module(XRay.Game.Core.Client.Objects.Physics.PhysicsSkeletonObject
  SOURCES
  PhysicsSkeletonObject.cpp
  PhysicsSkeletonObject.h

  PHDestroyableNotificate.cpp
  PHDestroyableNotificate.h
)

add_module(XRay.Game.Core.Client.Objects.Searchlight
  SOURCES
  searchlight.cpp
  searchlight.h
)

add_module(XRay.Game.Core.Client.Objects.Trade
  SOURCES
  trade.cpp
  trade2.cpp
  trade.h
)

add_module(XRay.Game.Core.Client.Objects.TaskInfoDialogs
  SOURCES
  ../xrServerEntities/InfoPortionDefs.h
  ../xrServerEntities/xml_str_id_loader.h

  InfoPortion.cpp
  InfoPortion.h
)

add_module(XRay.Game.Core.Client.Objects.TaskInfoDialogs.Dialogs
  SOURCES
  AI_PhraseDialogManager.cpp
  AI_PhraseDialogManager.h

  Phrase.cpp
  Phrase.h

  PhraseDialog.cpp
  PhraseDialog.h
  PhraseDialogDefs.h

  PhraseDialogManager.cpp
  PhraseDialogManager.h

  PhraseDialog_script.cpp
  PhraseDialog_script.h

  PhraseScript.cpp
  PhraseScript.h
)

add_module(XRay.Game.Core.Client.Objects.TaskInfoDialogs.Encyclopedia
  SOURCES
  encyclopedia_article.cpp
  encyclopedia_article.h
  encyclopedia_article_defs.h
)

add_module(XRay.Game.Core.Client.Objects.TaskInfoDialogs.GameTasks
  SOURCES
  GameTask.cpp
  GameTask.h
  GameTaskDefs.h

  GameTask_script.cpp

  GametaskManager.cpp
  GametaskManager.h
)

add_module(XRay.Game.Core.Client.Objects.TaskInfoDialogs.Map
  SOURCES
  map_manager.cpp
  map_manager.h

  map_location.cpp
  map_location.h
  map_location_defs.h
)

add_module(XRay.Game.Core.Client.Objects.TaskInfoDialogs.News
  SOURCES
  game_news.cpp
  game_news.h
)

add_module(XRay.Game.Core.Client.Objects.TaskInfoDialogs.Statistics
  SOURCES
  actor_statistic_mgr.cpp
  actor_statistic_mgr.h
  actor_statistic_defs.h
)

add_module(XRay.Game.Core.Client.Objects.Vehicles
  SOURCES
  HolderEntityObject.cpp
  HolderEntityObject.h
)

add_module(XRay.Game.Core.Client.Objects.Vehicles.Car
  SOURCES
  Car.cpp
  Car.h

  CarCameras.cpp

  CarDamageParticles.cpp
  CarDamageParticles.h

  CarLights.cpp
  CarLights.h

  CarDoors.cpp
  CarExhaust.cpp
  CarInput.cpp
  CarScript.cpp
  CarSound.cpp
  CarWheels.cpp

  DBG_Car.cpp
)

add_module(XRay.Game.Core.Client.Objects.Vehicles.Car.Memory
  SOURCES
  car_memory.cpp
  car_memory.h
)

add_module(XRay.Game.Core.Client.Objects.Vehicles.Car.Weapon
  SOURCES
  CarWeapon.cpp
  CarWeapon.h
)

add_module(XRay.Game.Core.Client.Objects.Vehicles.Heli
  SOURCES
  Helicopter.cpp
  helicopter.h

  Helicopter2.cpp
  HelicopterMovementManager.cpp
  HelicopterWeapon.cpp
  helicopter_script.cpp
)

add_module(XRay.Game.Core.Client.Objects.Zones.Ameba
  SOURCES
  AmebaZone.cpp
  AmebaZone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Campfire
  SOURCES
  ZoneCampfire.cpp
  ZoneCampfire.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Custom
  SOURCES
  CustomZone.cpp
  CustomZone_script.cpp
  CustomZone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.FryUp
  SOURCES
  FryupZone.cpp
  FryupZone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Gravi
  SOURCES
  GraviZone.cpp
  GraviZone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Hairs
  SOURCES
  HairsZone.cpp
  HairsZone.h

  HairsZone_script.cpp
)

add_module(XRay.Game.Core.Client.Objects.Zones.LevelChanger
  SOURCES
  level_changer.cpp
  level_changer.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Mincer
  SOURCES
  Mincer.cpp
  mincer_script.cpp
  Mincer.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.MosquitoBald
  SOURCES
  MosquitoBald.cpp
  MosquitoBald_script.cpp
  MosquitoBald.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.NoGravity
  SOURCES
  NoGravityZone.cpp
  NoGravityZone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Radioactive
  SOURCES
  RadioactiveZone.cpp
  RadioactiveZone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Script
  SOURCES
  script_zone.cpp
  script_zone_script.cpp
  script_zone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Smart
  SOURCES
  smart_zone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.SpaceRestrictor
  SOURCES
  space_restrictor.cpp
  space_restrictor_script.cpp
  space_restrictor.h
  space_restrictor_inline.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.TeamBase
  SOURCES
  team_base_zone.cpp
  team_base_zone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Torrid
  SOURCES
  TorridZone.cpp
  TorridZone.h
)

add_module(XRay.Game.Core.Client.Objects.Zones.Visual
  SOURCES
  ZoneVisual.cpp
  ZoneVisual.h
)

add_module(XRay.Game.Core.Client.Particles
  SOURCES
  ParticlesObject.cpp
  ParticlesObject.h
)

add_module(XRay.Game.Core.Client.Spectator
  SOURCES
  Spectator.cpp
  Spectator.h
)

add_module(XRay.Game.Core.Client.Spectator.Cameras
  SOURCES
  spectator_camera_first_eye.cpp
  spectator_camera_first_eye.h
)