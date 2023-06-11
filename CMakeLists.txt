cmake_minimum_required(VERSION 3.10)

if(NOT DEFINED CMAKE_CUDA_ARCHITECTURES)
    set(CMAKE_CUDA_ARCHITECTURES 86)
endif()

project(hello_cuda)

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)

# 查找CUDA包
find_package(CUDA REQUIRED)

# find opencv
find_package(OpenCV REQUIRED)

# 添加CUDA头文件路径
include_directories(${CUDA_INCLUDE_DIRS})

# 添加CUDA链接器库
list(APPEND CUDA_LIBRARIES ${CUDA_CUDA_LIBRARY} ${CUDA_cudart_LIBRARY})

# 添加可执行目标
cuda_add_executable(hello_cuda main.cu)

# 链接CUDA库
target_link_libraries(hello_cuda ${CUDA_LIBRARIES} ${OpenCV_LIBS})

# 添加可执行目标
cuda_add_executable(CUDA01 CUDA01.cu)

# 链接CUDA库
target_link_libraries(CUDA01 ${CUDA_LIBRARIES} ${OpenCV_LIBS})