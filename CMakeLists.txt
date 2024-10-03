cmake_minimum_required(VERSION 3.30)

project(CGAL-example)

find_package(CGAL CONFIG REQUIRED)

add_executable(example main.cpp)
target_link_libraries(example CGAL::CGAL)
