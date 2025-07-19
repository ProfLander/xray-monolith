add_module(XRay.Core.Crypto
  TYPE STATIC

  LINKS
  OpenSSL

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
