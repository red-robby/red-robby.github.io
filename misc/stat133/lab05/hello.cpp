#include <iostream>

auto main(int argc, char** argv) -> int {
  if (argc == 2) {
    std::cout << "Hello, " << argv[1] << '\n';
  }
}
