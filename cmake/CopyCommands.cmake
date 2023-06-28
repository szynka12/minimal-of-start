# copying the compile_commands.json to the base directory of the 
# repository
if (${CMAKE_EXPORT_COMPILE_COMMANDS})
  message (STATUS "I will copy compile_commands.json file for you.")
  add_custom_target(
    copy-compile-commands ALL
    ${CMAKE_COMMAND} -E copy_if_different
        ${CMAKE_BINARY_DIR}/compile_commands.json
        ${CMAKE_CURRENT_SOURCE_DIR}
  )
endif()
