set(TEST_TARGET demo)
add_executable(${TEST_TARGET} demo.cpp)
target_link_libraries(${TEST_TARGET} PRIVATE ggml)

