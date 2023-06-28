include (macros)

check_env_var( WM_PROJECT_DIR   "OpenFOAM is not sourced properly" )
check_env_var( FOAM_API         "OpenFOAM is not sourced properly" )
check_env_var( WM_LABEL_SIZE    "OpenFOAM is not sourced properly" )
check_env_var( FOAM_USER_LIBBIN "OpenFOAM is not sourced properly" )
check_env_var( FOAM_USER_APPBIN "OpenFOAM is not sourced properly" )


set(OF_version     $ENV{FOAM_API}      )
set(OF_label_size  $ENV{WM_LABEL_SIZE} )
set(OF_project_dir $ENV{WM_PROJECT_DIR})
set(OF_src         $ENV{FOAM_SRC}      )
set(OF_libbin      $ENV{FOAM_LIBBIN}   )
set(OF_mpi         $ENV{FOAM_MPI}      )

message(STATUS "Sourced OpenFOAM: "     ${FOAM_VERSION}  )
message(STATUS " * main OF directory: " ${OF_project_dir})
message(STATUS " * label size: "        ${OF_label_size} )

# base of OF compilation definitions
add_definitions( 
  -DWM_LABEL_SIZE=${OF_label_size}
  -DNoRepository
  -DOPENFOAM=${FOAM_VERSION}
  -DWM_DP
  )

# Set the outputs for the OpenFOAM application and libraires
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY $ENV{FOAM_USER_APPBIN})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY $ENV{FOAM_USER_LIBBIN})

