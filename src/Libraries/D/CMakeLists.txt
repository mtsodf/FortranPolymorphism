add_library(libD D_mod.F90)
target_include_directories(libD PUBLIC ${CMAKE_CURRENT_BINARY_DIR})