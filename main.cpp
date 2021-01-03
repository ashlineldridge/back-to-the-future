//
// Created by Ashlin Eldridge on 7/12/20.
//

#include <iostream>
#include "build_config.h"

using namespace std;

int main(int argc, const char* argv[])
{
  if (argc < 2) {
    // report version
    std::cout << argv[0] << " Version " << cpp_journey_VERSION_MAJOR << "."
              << cpp_journey_VERSION_MINOR << std::endl;
    std::cout << "Usage: " << argv[0] << " number" << std::endl;
    return 1;
  }

  const double inputValue = std::stod(argv[1]);

  cout << "Hello, " << inputValue << "!" << endl;
  return 0;
}
