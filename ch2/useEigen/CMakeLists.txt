#声明要求的 cmake 最低版本
cmake_minimum_required(VERSION 2.8)

# 声明一个 cmake 工程
project(useEigen)

# 添加可执行文件
add_executable(gauss_and_gauss_col_remain gauss_and_gauss_col_remain.cpp)

# 添加头文件
include_directories("/home/longer95479/eigen/")

set( CMAKE_BUILD_TYPE "Release" )
#set( CMAKE_CXX_FLAGS "-std=c++11 -O3" )
