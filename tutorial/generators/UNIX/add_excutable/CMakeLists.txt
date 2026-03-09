cmake_minimum_required(VERSION 3.31)

project(rabbit-holes/tutorial/generators/UNIX/add_executable)

add_executable(42)

target_sources(42
  PRIVATE
    src/42.cc
)
