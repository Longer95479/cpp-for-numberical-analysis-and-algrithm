#声明要求的 cmake 最低版本
cmake_minimum_required(VERSION 2.8)

# 声明一个 cmake 工程
project(romberg_method)

# 添加可执行文件
add_executable(romberg_method main.cpp)

# 添加共享库
add_library(romberg_method_shared SHARED romberg_method.cpp)

# 链接
target_link_libraries(romberg_method romberg_method_shared)

# 添加头文件
include_directories("/home/longer95479/eigen")
include_directories("/home/longer95479/numberical_analysis/ch5/romberg_method")

#set( CMAKE_BUILD_TYPE "Release" )
set( CMAKE_BUILD_TYPE "Debug")


