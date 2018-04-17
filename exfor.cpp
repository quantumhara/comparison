#include <stdio.h>

int main(void) {
  int N = 1000000000;
  double sum = 0.0;
  for(int i = 1; i <= N ; i++) {
    sum = sum + i;
  }
  printf("sum = %f\n", sum);

  return 0;
}
