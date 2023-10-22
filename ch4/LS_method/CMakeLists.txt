#声明要求的 cmake 最低版本
cmake_minimum_required(VERSION 2.8)

# 声明一个 cmake 工程
project(LS_method)

# 添加可执行文件
add_executable(LS_method main.cpp)

# # 添加共享库
# add_library(LS_method_shared SHARED LS_method.cpp)

# # 链接
# target_link_libraries(LS_method LS_method_shared)

# 添加头文件
include_directories("/home/longer95479/eigen")
include_directories("/home/longer95479/numberical_analysis/ch4/LS_method")

#set( CMAKE_BUILD_TYPE "Release" )
set( CMAKE_BUILD_TYPE "Debug")


