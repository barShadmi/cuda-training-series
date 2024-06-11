cmake_minimum_required(VERSION 3.22)

set(CMAKE_CUDA_COMPILER /usr/local/cuda/bin/nvcc)

project(homework2 CUDA CXX)

find_package(CUDA REQUIRED)
include_directories(${CUDA_INCLUDE_DIRS})

set(CMAKE_CUDA_STANDARD 17)

add_executable(matrix_mul_shared matrix_mul_shared.cu)
add_executable(stencil_1d stencil_1d.cu)

set_target_properties(hello matrix_mul vector_add PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
