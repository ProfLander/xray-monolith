add_module(XRay.Engine.Game
  SOURCES
  IGame_Level.cpp
  IGame_Level_check_textures.cpp
  IGame_Persistent.cpp
  IGame_Level.h
  IGame_Persistent.h

  xrLevel.h
)

add_module(XRay.Engine.Game.Objects
  SOURCES
  IGame_ObjectPool.cpp
  IGame_ObjectPool.h

  pure_relcase.cpp
  pure_relcase.h

  xr_object.cpp
  xr_object.h

  xr_object_list.cpp
  xr_object_list.h

  ShadersExternalData.h
)

add_module(XRay.Engine.Game.HUD
  SOURCES
  CustomHUD.cpp
  CustomHUD.h
)

add_module(XRay.Engine.Game.Materials
  SOURCES
  GameMtlLib.cpp
  GameMtlLib_Engine.cpp
  GameMtlLib.h
)

add_module(XRay.Engine.Game.Feelers
  SOURCES
  Feel_Sound.h

  Feel_Touch.cpp
  Feel_Touch.h

  Feel_Vision.cpp
  Feel_Vision.h
)

add_module(XRay.Engine.Game.Environment
  SOURCES
  Environment_misc.cpp
  Environment_render.cpp
  Environment.cpp
  Environment.h

  xrHemisphere.cpp
  xrHemisphere.h
)

add_module(XRay.Engine.Game.Environment.Effects
  SOURCES
  Rain.cpp
  Rain.h

  thunderbolt.cpp
  thunderbolt.h

  xr_efflensflare.cpp
  xr_efflensflare.h
)

add_module(XRay.Engine.Game.Demo
  SOURCES
  FDemoPlay.cpp
  FDemoRecord.cpp
  FDemoPlay.h
  FDemoRecord.h
)

add_module(XRay.Engine.Game.Debug
  SOURCES
  ObjectDump.cpp
  ObjectDump.h
)

add_module(XRay.Engine.Game.Collision
  SOURCES
  cf_dynamic_mesh.cpp
  cf_dynamic_mesh.h

  xr_collide_form.cpp
  xr_collide_form.h
)

add_module(XRay.Engine.Game.Cameras
  SOURCES
  CameraBase.cpp
  CameraManager.cpp
  CameraBase.h
  CameraDefs.h
  CameraManager.h

  Effector.cpp
  EffectorPP.cpp
  Effector.h
  EffectorPP.h
)

add_module(XRay.Engine.Game.Animator
  SOURCES
  bone.cpp
  bone.h

  Envelope.cpp
  envelope.h

  interp.cpp

  motion.cpp
  motion.h

  ObjectAnimator.cpp
  ObjectAnimator.h
)
