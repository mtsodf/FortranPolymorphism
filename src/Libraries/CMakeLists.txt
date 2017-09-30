CMAKE_MINIMUM_REQUIRED(VERSION 3.0)

enable_language(Fortran)

add_subdirectory(C)
add_subdirectory(B)

add_executable(main Main.F90)
target_link_libraries(main libB)