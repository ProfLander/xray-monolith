add_module(XRay.Game
  TYPE STATIC
  
  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}
  
  DEFINES
  GP_EMAIL_LEN=128
  GP_NICK_LEN=32
  GP_UNIQUENICK_LEN=32
  GP_PASSWORD_LEN=32
  XRGAME_EXPORTS
  
  LINKS
  DPlay
  CxImage
  IKAN

  XRay.Core.Defines
  XRay.Engine.Defines

  XRay.Includes
  XRay.Collision.Includes
  XRay.Core.Includes
  XRay.Core.Crypto.Includes
  XRay.Engine.Includes
  XRay.NetServer.Includes
  XRay.Physics.Includes
  XRay.Render.API.Includes
  XRay.ServerEntities.Includes

  PRECOMPILES
  #[[$<$<COMPILE_LANGUAGE:CXX>:DPlay/dplay8.h>]]

  #$<$<COMPILE_LANGUAGE:CXX>:build_config_defines.h>

  #$<$<COMPILE_LANGUAGE:CXX>:macros.h>

  #[[$<$<COMPILE_LANGUAGE:CXX>:gamefont.h>]]
  [[$<$<COMPILE_LANGUAGE:CXX>:xr_object.h>]]
  #[[$<$<COMPILE_LANGUAGE:CXX>:igame_level.h>]]
  #[[$<$<COMPILE_LANGUAGE:CXX>:xrPhysics.h>]]
  #[[$<$<COMPILE_LANGUAGE:CXX>:smart_cast.h>]]

  SOURCES
  xrGame.cpp
)

target_compile_options(XRay.Game
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
)

include(XRay.Game.AI)
include(XRay.Game.Core)
include(XRay.Game.Physics)
include(XRay.Game.UI)