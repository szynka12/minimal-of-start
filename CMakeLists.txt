# project ()

cmake_minimum_required (VERSION 3.18)

# modules and macros listed in repo/cmake folder
set (CMAKE_MODULE_PATH 
  "${CMAKE_MODULE_PATH};${CMAKE_CURRENT_SOURCE_DIR}/cmake")

set (CMAKE_CXX_STANDARD 11)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

# export the compile_commands.json 
set (CMAKE_EXPORT_COMPILE_COMMANDS ON)

# flags for different build types 
set (CMAKE_CXX_FLAGS_DEBUG "-g")
set (CMAKE_CXX_FLAGS_RELEASE "-O3")

include(CopyCommands OPTIONAL)

# main OpenFOAM module
include(OpenFOAM)

add_subdirectory( src/functionObjects )
add_subdirectory( applications )


