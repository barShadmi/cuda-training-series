#include <stdio.h>

__global__ void hello(){

  printf("Hello from block: %u, thread: %u\n", blockIdx.x, threadIdx.x);
}

int main(){
  int blocks = 2, threads = 3;

  hello<<<blocks, threads>>>();
  cudaDeviceSynchronize();
}

