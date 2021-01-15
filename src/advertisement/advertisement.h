#pragma once

#include <string>

class Advertisement {
public:
    Advertisement() = default;
    std::string say_hello(std::string j);

    std::string say_goodbye() {
        std::string s = "Goodbye";
        return s;
    }



};
