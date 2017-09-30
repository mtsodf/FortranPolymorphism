add_library(libC C_mod.F90)
target_include_directories(libC PUBLIC ${CMAKE_CURRENT_BINARY_DIR})