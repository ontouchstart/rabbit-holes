cmake_minimum_required(VERSION 3.31)

project(rabbit-holes/tutorial/generators/UNIX/add_library)

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
