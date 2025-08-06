add_module(XRay.Render.API
  TYPE STATIC
  
  INCLUDES
  ${CMAKE_CURRENT_SOURCE_DIR}

  LINKS
  XRay.Render.Common.Includes

  DEFINES
  $<$<PLATFORM_ID:Windows>:_WIN32_WINDOWS=0x0410>
  $<$<PLATFORM_ID:Windows>:WIN32_LEAN_AND_MEAN>
  
  SOURCES
  xrAPI.cpp
  xrAPI.h
)

target_compile_options(XRay.Render.API
  PRIVATE
  $<$<CXX_COMPILER_ID:MSVC>:/permissive->
)