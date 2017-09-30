add_library(libB B_mod.F90)
target_link_libraries(libB libC)
target_include_directories(libB PUBLIC ${CMAKE_CURRENT_BINARY_DIR})