cmake_minimum_required(VERSION 3.8)

project(tamago CXX)
add_library(canvas STATIC src/game/canvas.cpp src/game/canvas.hpp)
add_executable(app src/game/main.cpp)
target_link_libraries(app canvas)