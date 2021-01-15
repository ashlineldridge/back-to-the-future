#include "src/advertisement/advertisement.h"

std::string Advertisement::say_hello(std::string j) {
    std::string suffix = "---hello mate---";
    for (int i = 0; i < 100; i++) {
      suffix.append("aaa");
      suffix.append("Hello");
    }
    return suffix;
}


