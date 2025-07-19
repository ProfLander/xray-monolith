add_module(XRay.Game.Physics
  TYPE STATIC

  SOURCES
  ph_shell_interface.h

  ../xrServerEntities/PHNetState.cpp
  ../xrServerEntities/PHNetState.h

  PHShellCreator.cpp
  PHShellCreator.h

  physics_game.cpp
  physics_game.h

  PhysicsGamePars.cpp
  PhysicsGamePars.h
)

add_module(XRay.Game.Physics.AnimationMovementController
  SOURCES
  animation_movement_controller.cpp
  animation_movement_controller.h

  poses_blending.cpp
  poses_blending.h
)

add_module(XRay.Game.Physics.CharacterSupport
  SOURCES
  ActivatingCharCollisionDelay.cpp
  ActivatingCharCollisionDelay.h

  animation_utils.cpp
  animation_utils.h

  character_shell_control.cpp
  character_shell_control.h

  CharacterPhysicsSupport.cpp
  CharacterPhysicsSupport.h
)

add_module(XRay.Game.Physics.CharacterSupport.Anims.Death
  SOURCES
  death_anims.cpp
  death_anims.h

  death_anims_predicates.cpp
)

add_module(XRay.Game.Physics.CharacterSupport.Anims.Hit
  SOURCES
  character_hit_animations.cpp
  character_hit_animations.h
  character_hit_animations_params.h
)

add_module(XRay.Game.Physics.CharacterSupport.Anims.Interactive
  SOURCES
  interactive_animation.cpp
  interactive_animation.h

  physics_shell_animated.cpp
  physics_shell_animated.h
)

add_module(XRay.Game.Physics.CharacterSupport.Motion.Interactive
  SOURCES
  interactive_motion.cpp
  interactive_motion.h

  imotion_position.cpp
  imotion_position.h

  imotion_velocity.cpp
  imotion_velocity.h
)

add_module(XRay.Game.Physics.DamageableItem
  SOURCES
  DamagableItem.cpp
  DamagableItem.h
)

add_module(XRay.Game.Physics.Debug
  SOURCES
  PHDebug.cpp
  PHDebug.h
)

add_module(XRay.Game.Physics.Hit
  SOURCES
  Hit.cpp
  Hit.h
)

add_module(XRay.Game.Physics.IK
  SOURCES
  ik/aint.cxx
  ik/Dof7control.cpp
  ik/eqn.cxx
  ik/eulersolver.cxx
  ik/IKLimb.cpp
  ik/jtlimits.cxx
  ik/limb.cxx
  ik/math3d.cpp
  ik/mathTrig.cpp
  ik_anim_state.cpp
  ik_calculate_data.cpp
  ik_dbg_matrix.cpp
  ik_foot_collider.cpp
  ik_limb_state.cpp
  ik_object_shift.cpp

  ik/aint.h
  ik/Dof7control.h
  ik/eqn.h
  ik/eulersolver.h
  ik/IKLimb.h
  ik/jtlimits.h
  ik/limb.h
  ik/math3d.h
  ik/mathTrig.h
  ik_anim_state.h
  ik_calculate_data.h
  ik_calculate_state.h
  ik_collide_data.h
  ik_dbg_matrix.h
  ik_foot_collider.h
  ik_limb_state.h
  ik_limb_state_predict.h
  ik_object_shift.h

  IKFoot.cpp
  IKFoot.h
  IKFoot_inl.h

  IKLimbscontroller.cpp
  IKLimbscontroller.h

  pose_extrapolation.cpp
  pose_extrapolation.h
)

add_module(XRay.Game.Physics.MovementControl
  SOURCES
  PHMovementControl.cpp
  PHMovementControl.h

  PHMovementDynamicActivate.cpp

  CaptureBoneCallback.h
)

add_module(XRay.Game.Physics.PHCommander
  SOURCES
  PHCommander.cpp
  PHCommander.h

  PHReqComparer.h

  PHScriptCall.cpp
  PHScriptCall.h

  PHSimpleCalls.cpp
  PHSimpleCallsScript.cpp
  PHSimpleCalls.h
)

add_module(XRay.Game.Physics.PhysicsSoundPlayer
  SOURCES
  moving_bones_snd_player.cpp
  moving_bones_snd_player.h

  PHSoundPlayer.cpp
  PHSoundPlayer.h
)

add_module(XRay.Game.Physics.Scripts
  SOURCES
  physics_element_scripted.cpp
  physics_element_scripted.h

  physics_joint_scripted.cpp
  physics_joint_scripted.h

  physics_shell_scripted.cpp
  physics_shell_scripted.h

  physics_world_scripted.cpp
  physics_world_scripted.h
)