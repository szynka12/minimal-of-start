# Check if the environemtal variable exsits in current path
macro(check_env_var VAR_NAME MSG_COMMENT_VALUE)
  if(NOT DEFINED ENV{${VAR_NAME}})
    message( FATAL_ERROR 
      " ${MSG_COMMENT_VALUE}\n"
      "  * no ${VAR_NAME} env. variable has been found!\n" )
  endif()
endmacro()
