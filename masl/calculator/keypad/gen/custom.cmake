target_include_directories ( keypad_interface PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/src )
target_sources( keypad_interface PRIVATE ${CMAKE_CURRENT_LIST_DIR}/keypad_services.cc )
