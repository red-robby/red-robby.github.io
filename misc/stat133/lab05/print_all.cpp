#include <iostream>

auto main(int argc, char** argv) -> int {
  for (int i = 0; i < argc; ++i) {
    std::cout << "Argument #" << i << ": " << argv[i] << '\n';
  }
}

