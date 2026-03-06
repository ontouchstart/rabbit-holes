cmake_minimum_required(VERSION 3.14)
project(my-cli CXX)

set(LLAMA_BUILD_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../ggml-org/llama.cpp/build")

include_directories("${LLAMA_BUILD_DIR}/tools/server"
                    "${LLAMA_BUILD_DIR}/include")

add_executable(my-cli main.cpp)

# Link against the static library found in debug.log
target_link_libraries(my-cli PRIVATE
    "${LLAMA_BUILD_DIR}/tools/server/libserver-context.a"
)

# Ensure rpath is set if needed (optional for local testing)
set(CMAKE_INSTALL_RPATH "${LLAMA_BUILD_DIR}:${CMAKE_INSTALL_PREFIX}/lib")

