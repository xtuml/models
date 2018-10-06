if ( TARGET keypad )           
configure_file( ${CMAKE_CURRENT_LIST_DIR}/keypad_services.cc ${CMAKE_CURRENT_LIST_DIR}/code_generation/keypad/src/keypad_services.cc COPYONLY )
target_sources( keypad PRIVATE ${CMAKE_CURRENT_LIST_DIR}/code_generation/keypad/src/keypad_services.cc )
endif()
