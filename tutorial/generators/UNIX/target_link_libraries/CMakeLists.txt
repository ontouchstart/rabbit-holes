cmake_minimum_required(VERSION 3.31)

project(rabbit-holes/tutorial/generators/UNIX/target_link_libraries)

add_executable(main)

target_sources(main
  PRIVATE
    src/main.cc
)

add_library(answer)

target_sources(answer
  PRIVATE
    lib/answer.cc

  PUBLIC
    FILE_SET HEADERS
    BASE_DIRS
      include
    FILES
      include/answer.h
)

target_link_libraries(main answer)
