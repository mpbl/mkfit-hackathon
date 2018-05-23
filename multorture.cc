#include <cstdio>
#include "gplex_mul.h"

int main() {

  {
    //size_t testN = 1000000;
    size_t testN = 7168;
    printf("Run raw_run_naive_mul\n");
    raw_run_naive_mul(testN);
  }

  printf("Bye\n");
  return 0;
}
