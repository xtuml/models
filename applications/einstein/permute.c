#include <stdio.h>
#include <stdlib.h>

int N=5;
int map[5];
int p5[120][5];

void permute(int N) {
  int t, i, j;
  i = N-1; while (map[i-1] >= map[i])   i--;
  j = N;   while (map[j-1] <= map[i-1]) j--;
  t=map[i-1]; map[i-1]=map[j-1]; map[j-1]=t;
  i++; j=N;
  while (i<j) {
    t=map[i-1]; map[i-1]=map[j-1]; map[j-1]=t;
    i++; j--;
  }
}

int fact(int n) {
  if (n <= 1) return 1;
  return (n*fact(n-1));
}

int main(int argc, char **argv) {
  int i,j;

  if (argc == 2) N = atoi(argv[1]);

  for (i=0;i<N;i++) map[i] = i;

  for (i = 0; i < fact(N); i++) {
    for (j=0;j<N;j++) printf("%2d",map[j]); printf("\n");
    permute(N);
  }
  exit(0);
}
