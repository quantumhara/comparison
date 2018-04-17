#include <stdio.h>
#include <math.h>

int main(void) {
  double pi;
  double ran_f, coords1, coords2, slength, farea, denom_f;
  int n, seed, number, denom_i, constant;

  n = 10000;
  pi = 3.14159265358979323;
  seed =1;

  constant = 48271;
  denom_f=pow(2.0, 31.0)-1.0;
  denom_i=pow(2.0, 31.0)-1.0;

  double incir=0.0;
  for (int i=1; i<=n ; i++){
    for (int j=1; j<=n ; j++){
      seed=(constant*seed)%denom_i;
      ran_f=seed/denom_f;

      coords1=ran_f;
      coords2=ran_f;

      slength=sqrt(coords1*coords1+coords1*coords1);

      if (slength <= 1)
	incir=incir+1;
    }
  }

  farea=4.0*incir/(n*n);

  printf("cal_pi = %f, ", farea);
  printf("pi=%f, ", pi);
  printf("error=%f\n", farea - pi);

  return 0;
}
