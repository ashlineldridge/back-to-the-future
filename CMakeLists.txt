cmake_minimum_required(VERSION 3.19)

project(cpp_journey VERSION 0.1)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(app main.cpp)

configure_file(build_config.h.in build_config.h)

target_include_directories(app PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           )
