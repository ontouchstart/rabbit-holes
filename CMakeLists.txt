cmake_minimum_required(VERSION 3.15)
project(HelloWorld LANGUAGES CXX)

# ---- Build the executable ------------------------------------
add_executable(hello src/main.cpp)

# ---- Enable testing ------------------------------------------
enable_testing()           # <‑‑ must come after add_executable

# ---- Simple test that just runs the binary --------------------
add_test(
    NAME HelloTest
    COMMAND hello              # ← runs the built binary
)

# Optional: give the test a timeout (seconds)
set_tests_properties(HelloTest PROPERTIES TIMEOUT 5)

