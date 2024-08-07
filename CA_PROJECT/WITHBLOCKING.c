#include <stdio.h>

#define N 8
#define BLOCK_SIZE 3
#define min(a, b) ((a) < (b) ? (a) : (b))


void matmul_blocked(double A[N][N], double B[N][N], double C[N][N]) {

for (int jj = 0; jj < N; jj = jj+BLOCK_SIZE){
	for (int kk = 0; kk < N; kk = kk+BLOCK_SIZE){
		for (int i = 0; i < N; i = i+1){
			for (int j = jj; j < min(jj+BLOCK_SIZE,N); j = j+1)
				{double r = 0;
				for (int k = kk; k < min(kk+BLOCK_SIZE,N); k = k + 1)
					r = r + A[i][k]*B[k][j];
					C[i][j] = C[i][j] + r;
}}}}}
int main() {
    double A[N][N] = {{3, 7, 12, 8, 5, 6, 9, 11},
 {6, 10, 15, 20, 25, 30, 35, 40},
 {9, 13, 17, 21, 23, 27, 32, 36},
 {14, 18, 22, 26, 31, 37, 41, 45},
 {17, 21, 26, 29, 34, 39, 44, 48},
 {20, 24, 28, 32, 36, 40, 45, 50},
 {25, 29, 33, 37, 41, 45, 49, 53},
 {28, 32, 36, 40, 44, 48, 52, 56}}
;

    double B[N][N] = {{2, 5, 8, 11, 14, 17, 20, 23},
 {7, 10, 13, 16, 19, 22, 25, 28},
 {12, 15, 18, 21, 24, 27, 30, 33},
 {17, 20, 23, 26, 29, 32, 35, 38},
 {22, 25, 28, 31, 34, 37, 40, 43},
 {27, 30, 33, 36, 39, 42, 45, 48},
 {32, 35, 38, 41, 44, 47, 50, 53},
 {37, 40, 43, 46, 49, 52, 55, 58}}
;
    double C[N][N] = {0};


    // Multiply matrices using blocking optimization
    matmul_blocked(A, B, C);

    
    return 0;
}