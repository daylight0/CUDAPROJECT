#include <iostream>
#include <vector>
#include <fstream>
#include <set>
#include <cstdlib>
#include <cmath>
#include <ctime>
#include <chrono>

#include <opencv2/objdetect/objdetect.hpp>
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/opencv.hpp"
#include <opencv2/core/core.hpp>

__global__ void helloCUDA()
{
    printf("Hello CUDA1 from GPU!\n");
}

int main()
{
    // 调用CUDA核函数
    helloCUDA<<<1, 1>>>();
    cudaDeviceSynchronize();
    std::cout << "Hello CUDA from CPU!" << std::endl;

    return 0;
}