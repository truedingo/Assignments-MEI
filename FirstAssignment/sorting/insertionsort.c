// Adapted from Rosetta Code.
 
#include <stdlib.h>     
#include <stdio.h>
#include <time.h>
#include <string.h>

#define MAX 10000

int A[MAX], B[MAX];
double eps;

FILE * fp;
FILE * fp2;
FILE * fp3;

// computes the length of the longest non-decreasing string
//
int LNDS(int n) {

  int max = 1; 
  int len = 1;
  for (int i = 1; i < n; i++) {
    if(A[i-1] <= A[i]) {
        len++;
        if (len > max) 
            max=len;
    } 
    else
        len=1;
  }
  return max;
}


double r(){
    return (double)rand() / (double)RAND_MAX ;
}


void insertion_sort(int *a, int n) {
	for(size_t i = 1; i < n; ++i) {
		int tmp = a[i];
		size_t j = i;
		while(j > 0) {
			if (r() > eps){		//no failure
				if (tmp >= a[j-1])
					break;
			}
			else {			//failure
				if (tmp < a[j-1])
					break;
			}
			a[j] = a[j - 1];
			--j;
		}
		a[j] = tmp;
	}
}


int main() {

        int n, i;

        clock_t start, end;
	double cpu_time_used;

        fp = fopen("/Users/dingo/Desktop/Mestrado/MEI/FirstAssignment/sorting/insert_n_subarray.txt", "a");
	fp2 = fopen("/Users/dingo/Desktop/Mestrado/MEI/FirstAssignment/sorting/insert_n_data.txt", "a");
	fp3 = fopen("/Users/dingo/Desktop/Mestrado/MEI/FirstAssignment/sorting/insert_n_runtime.txt", "a");  

        scanf("%lf",&eps);
        scanf("%d",&n);

        for (i=0; i < n; i++) 
                scanf("%d",&A[i]);
        srand((unsigned) time(NULL));
	memcpy(B, A, sizeof(A));
        
        fprintf(fp2, "Original array: ");
	printf("%d",A[0]);
        fprintf(fp2, " %d", A[0]);
        for (i=1; i<n;i++){
                printf(" %d", A[i]);
                fprintf(fp2, " %d", A[i]);
        }
        printf("\n");
        fprintf(fp2, "\n");

        start = clock();
        insertion_sort(A,n);
        end = clock();

        cpu_time_used = ((double) (end - start));
	fprintf(fp3, "%lf\n", cpu_time_used);
	fclose(fp3);

        fprintf(fp2, "Processed array: ");
        printf("%d",A[0]);
        fprintf(fp2, "%d ", A[0]);
        for (i=1; i<n;i++){
                printf(" %d", A[i]);
                fprintf(fp2, "%d ", A[i]);
        }
        printf("\n");
        fprintf(fp2, "\n");

       	int count = LNDS(n);

	eps = -1.0;

        insertion_sort(B,n);

        fprintf(fp2, "Sorted Array: ");
        printf("%d",B[0]);
        fprintf(fp2, "%d ", B[0]);
        for (i=1; i<n;i++){
                printf(" %d", B[i]);
                fprintf(fp2, "%d ", B[i]);
        }
        printf("\n%d\n",count);

        fprintf(fp, "%d\n", count);
	fprintf(fp2, "\n");
        fprintf(fp2, "\n");
	fclose(fp);
	fclose(fp2);


}




