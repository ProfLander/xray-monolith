include_guard()

set(XRAY_COMPILER_FLAGS
  # Compatibility flags
  -Wno-shift-negative-value
  -Wno-narrowing
  -Wno-template-body

  -fpermissive
)

set(XRAY_C_COMPILER_FLAGS
  -Wno-implicit-function-declaration
)

set(XRAY_CXX_COMPILER_FLAGS
  -Wno-register
)

# Explicitly state when we're compiling for Win32
if(WIN32)
  list(APPEND XRAY_COMPILER_FLAGS -DWIN32)
endif()
