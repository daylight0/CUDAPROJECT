#include <iostream>
/* __global__ 是 CUDA C/C++ 中的一个修饰符，用于声明一个函数为 GPU 的全局函数。在
 * CUDA 编程中，我们可以使用这个修饰符来定义在 GPU 上执行的函数。
 * 具体地说，__global__ 修饰符告诉编译器该函数将在 GPU 上执行，并且可以从主机
 * （CPU）代码中调用。这样的函数被称为 CUDA 内核函数（kernel function），它在每个线程
 * 块（thread block）上并行执行。
 * 在 CUDA 内核函数中，我们可以使用 CUDA 提供的线程和内存管理机制来控制并发执行和数
 * 据传输。在执行 CUDA 内核函数时，我们需要使用特殊的语法来指定线程块和线程的数量，
 * 以便在 GPU 上并行执行代码。
 * 总结起来，__global__ 修饰符用于声明一个在 GPU 上执行的 CUDA 内核函数，它是
 * CUDA 编程中非常重要的概念之一。
 * */
__global__ void helloCUDA()
{
    printf("Hello CUDA0 from GPU!\n");
}

int main()
{
    // 调用CUDA核函数
    helloCUDA<<<1, 1>>>();
    cudaDeviceSynchronize();
    std::cout << "Hello CUDA from CPU!" << std::endl;

    return 0;
}