add_module(XRay.Physics
  TYPE STATIC

  PRECOMPILES stdafx.h

  INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}

  LINKS
  loki
  ode
  tbb
  XRay.Collision
  XRay.Engine
  XRay.Render.API

  SOURCES
  console_vars.cpp
  console_vars.h

  PhysicsExternalCommon.cpp
  PhysicsExternalCommon.h

  ShellHit.cpp

  xrPhysics.cpp
  xrPhysics.h

  DamageSource.h
  ode_include.h
  ode_redefine.h
  PhysicsCommon.h
)

add_module(XRay.Physics.ActivationBox
  SOURCES
  IActivationShape.cpp
  IActivationShape.h

  PHActivationShape.cpp
  PHActivationShape.h

  SpaceUtils.h
)

add_module(XRay.Physics.Debug
  SOURCES
  debug_output.cpp
  debug_output.h
)

add_module(XRay.Physics.Impact
  SOURCES
  PHImpact.h
)

add_module(XRay.Physics.Objects
  SOURCES
  PHDefs.h
)

add_module(XRay.Physics.Objects.BaseShell
  SOURCES
  IPhysicsShellHolder.h

  PhysicsShell.cpp
  PhysicsShell.h
)

add_module(XRay.Physics.Objects.BaseShell.PhysicsShellAnimator
  SOURCES
  PhysicsShellAnimator.cpp
  PhysicsShellAnimator.h
  PhysicsShellAnimatorBoneData.h
)

add_module(XRay.Physics.Objects.BodyEffectors
  SOURCES
  PHBaseBodyEffector.h

  PHContactBodyEffector.cpp
  PHContactBodyEffector.h
)

add_module(XRay.Physics.Objects.Breakable
  SOURCES
  PHFracture.cpp
  PHFracture.h

  PHJointDestroyInfo.cpp
  PHJointDestroyInfo.h

  PHShellSplitter.cpp
  PHShellSplitter.h
)

add_module(XRay.Physics.Objects.CollideValidator
  SOURCES
  ICollideValidator.h

  PHCollideValidator.cpp
  PHCollideValidator.h
)

add_module(XRay.Physics.Objects.Disabling
  SOURCES
  DisablingParams.cpp
  DisablingParams.h

  PHDisabling.cpp
  PHDisabling.h
)

add_module(XRay.Physics.Objects.Element
  SOURCES
  PHElement.cpp
  PHElement.h

  PHElementNetState.cpp
  PHElementInline.h
)

add_module(XRay.Physics.Objects.Element.Geom
  SOURCES
  ExtendedGeom.cpp
  ExtendedGeom.h

  Geometry.cpp
  Geometry.h

  PHGeometryOwner.cpp
  PHGeometryOwner.h
)

add_module(XRay.Physics.Objects.Joint
  SOURCES
  PHJoint.cpp
  PHJoint.h
)

add_module(XRay.Physics.Objects.MoveStorage
  SOURCES
  PHMoveStorage.cpp
  PHMoveStorage.h
)

add_module(XRay.Physics.Objects.PHIsland
  SOURCES
  PHIsland.cpp
  PHIsland.h
)

add_module(XRay.Physics.Objects.PHNet
  SOURCES
  ../xrServerEntities/PHNetState.cpp
  ../xrServerEntities/PHNetState.h
)

add_module(XRay.Physics.Objects.PHObject
  SOURCES
  PHObject.cpp
  PHObject.h
  PHUpdateObject.h
)

add_module(XRay.Physics.Objects.PhyMove.Character.Actor
  SOURCES
  PHActorCharacter.cpp
  PHActorCharacter.h
  PHActorCharacterInline.h
)

add_module(XRay.Physics.Objects.PhyMove.Character.AI
  SOURCES
  PHAICharacter.cpp
  PHAICharacter.h
)

add_module(XRay.Physics.Objects.PhyMove.Character.Base
  SOURCES
  IColisiondamageInfo.h

  MovementBoxDynamicActivate.cpp
  MovementBoxDynamicActivate.h

  PHCharacter.cpp
  PHCharacter.h
)

add_module(XRay.Physics.Objects.PhyMove.Capture
  SOURCES
  IPHCapture.h

  PHCapture.cpp
  PHCaptureInit.cpp
  PHCapture.h
)

add_module(XRay.Physics.Objects.PhyMove.Character.Simple
  SOURCES
  IElevatorState.h

  ElevatorState.cpp
  ElevatorState.h

  iclimableobject.h

  PHSimpleCharacter.cpp
  PHSimpleCharacter.h
  PHSimpleCharacterInline.h
)

add_module(XRay.Physics.Objects.Script
  SOURCES
  iphysics_scripted.h

  physics_scripted.cpp
  physics_scripted.h
)

add_module(XRay.Physics.Objects.Shell
  SOURCES
  PHShell.cpp
  PHShell.h

  PHShellBuildJoint.h

  PHShellActivate.cpp
  PHShellNetState.cpp
)

add_module(XRay.Physics.Objects.SplittedShell
  SOURCES
  PHSplitedShell.cpp
  PHSplitedShell.h
)

add_module(XRay.Physics.Objects.StaticShell
  SOURCES
  IPHStaticGeomShell.h
  PHStaticGeomShell.cpp
  PHStaticGeomShell.h
)

add_module(XRay.Physics.Objects.Utils
  SOURCES
  ph_valid_ode.h

  PHValideValues.h

  phvalide.cpp
  phvalide.h
)

add_module(XRay.Physics.Objects.Utils.Interpolation
  SOURCES
  PHInterpolation.cpp
  PHInterpolation.h
)

add_module(XRay.Physics.Objects.Utils.Math
  SOURCES
  CalculateTriangle.h

  MathUtils.cpp
  MathUtils.h
  MathUtilsOde.h

  matrix_utils.h

  PHDynamicData.cpp
  PHDynamicData.h
)

add_module(XRay.Physics.Objects.Utils.Storage
  SOURCES
  BlockAllocator.h
  CycleConstStorage.h
)

add_module(XRay.Physics.Objects.World
  SOURCES
  IPHWorld.h

  GeometryBits.cpp
  GeometryBits.h

  params.cpp
  params.h

  PHItemList.h

  PHWorld.cpp
  PHWorld.h

  Physics.cpp
  Physics.h
)

add_module(XRay.Physics.CameraCollision
  SOURCES
  ActorCameraCollision.cpp
  ActorCameraCollision.h
)

add_module(XRay.Physics.Colliders.Cylinder
  SOURCES
  dcylinder/dCylinder.cpp
  dcylinder/dCylinder.h
)

add_module(XRay.Physics.Colliders.RayMotions
  SOURCES
  dRayMotions.cpp
  dRayMotions.h
)

add_module(XRay.Physics.Colliders.Triangle
  SOURCES
  #tri-colliderknoopc/dcTriListCollider.cpp
  tri-colliderknoopc/dSortTriPrimitive.cpp
  tri-colliderknoopc/dTriBox.cpp
  tri-colliderknoopc/dTriCallideK.cpp
  tri-colliderknoopc/dTriCylinder.cpp
  tri-colliderknoopc/dTriList.cpp
  tri-colliderknoopc/dTriSphere.cpp
  tri-colliderknoopc/dcTriangle.h
  tri-colliderknoopc/dcTriListCollider.h
  tri-colliderknoopc/dSortTriPrimitive.h
  tri-colliderknoopc/dTriBox.h
  tri-colliderknoopc/dTriCollideK.h
  tri-colliderknoopc/dTriColliderCommon.h
  tri-colliderknoopc/dTriColliderMath.h
  tri-colliderknoopc/dTriCylinder.h
  tri-colliderknoopc/dTriList.h
  tri-colliderknoopc/dTriSphere.h
  tri-colliderknoopc/dxTriList.h
  tri-colliderknoopc/TriPrimitiveCollideClassDef.h
  tri-colliderknoopc/__aabb_tri.h
)

add_module(XRay.Physics.DamageReceiver
  SOURCES
  collisiondamagereceiver.cpp
  icollisiondamagereceiver.h
)

set_source_files_properties(
  CustomRocket.cpp
  PHContactBodyEffector.cpp
  PHElement.cpp
  PHJoint.cpp
  PHShell.cpp
  PHActivationShape.cpp
  PHShellActivate.cpp
  PHWorld.cpp
  Physics.cpp
  ShellHit.cpp
  PROPERTIES
  SKIP_UNITY_BUILD_INCLUSION true
)
