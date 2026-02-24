#include <cstdlib>   // for std::system
#include <iostream>

int main() {
    // Run the binary that was built by CMake.
    int ret = std::system("./hello");
    // std::system returns the exit status in the lower 8 bits
    int exit_code = ret >> 8;
    if (exit_code != 0) {
        std::cerr << "hello returned " << exit_code << '\n';
        return 1;
    }
    return 0;   // test passed
}
