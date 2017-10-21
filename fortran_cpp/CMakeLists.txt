cmake_minimum_required(VERSION 3.5)

enable_language(Fortran)

add_subdirectory(clib)

add_executable(FortranCpp FortranCpp.F90)
target_link_libraries(FortranCpp clib)