cmake_minimum_required(VERSION 3.31)

project(rabbit-holes/tutorial/generators/UNIX/add_executable)

add_executable(main)

target_sources(main
  PRIVATE
    src/main.cc
)
