configure_file( ${CMAKE_CURRENT_LIST_DIR}/__ARCH__shutdown.cc ${CMAKE_CURRENT_LIST_DIR}/code_generation/ARCH/src COPYONLY )
target_sources( ARCH PRIVATE ${CMAKE_CURRENT_LIST_DIR}/code_generation/ARCH/src/__ARCH__shutdown.cc )
