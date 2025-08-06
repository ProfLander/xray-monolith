add_module(XRay.Core.Crypto
  TYPE STATIC

  LINKS
  loki
  OpenSSL

  XRay.Core.Defines
  XRay.Engine.Defines
  
  XRay.Core.Includes
  XRay.Engine.Includes
  XRay.Render.API.Includes
  XRay.Render.Common.Includes
  XRay.ServerEntities.Includes

  DEFINES
  CRYPTO_BUILD

  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}/crypto

  SOURCES
  crypto/crypto.cpp
  crypto/crypto.h

  crypto/crypto_api_def.h

  crypto/xr_dsa.cpp
  crypto/xr_sha.cpp

  crypto/xr_dsa_signer.cpp
  crypto/xr_dsa_signer.h

  crypto/xr_dsa_verifyer.cpp
  crypto/xr_dsa_verifyer.h
)

target_compile_options(XRay.Core.Crypto
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
)