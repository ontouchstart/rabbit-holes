cmake_minimum_required(VERSION 3.31)

project(rabbit-holes/tutorial/generators/UNIX/add_executable)

add_library(42)

target_sources(42
  PRIVATE
    src/42.cc

  PUBLIC
    FILE_SET HEADERS
    BASE_DIRS
      include
    FILES
      include/42.h
)
