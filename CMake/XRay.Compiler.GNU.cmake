include_guard()

set(XRAY_COMPILER_FLAGS
  # Compatibility flags
  -Wno-implicit-function-declaration
  -Wno-shift-negative-value
  -Wno-register

  -DWIN32
)

set(XRAY_COMPILER_FLAGS_DEBUG
  -fexceptions
)

set(XRAY_COMPILER_FLAGS_RELEASE
  -fno-exceptions
)
