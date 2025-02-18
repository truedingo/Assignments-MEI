//Adapted Rosetta Code


#include <stdlib.h>     
#include <stdio.h>
#include <time.h>
#include <string.h>

#define MAX 1000000

int A[MAX], B[MAX];
double eps;

FILE * fp;
FILE * fp2;
FILE * fp3;
FILE * fp4;

int comp=0;

double r(){
    return (double)rand() / (double)RAND_MAX ;
}

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



void swap(int *a, int *b) {
  int c = *a;
  *a = *b;
  *b = c;
}
 
int partition(int A[], int p, int q) {
  swap(&A[p + (rand() % (q - p + 1))], &A[q]);   // PIVOT = A[q]
 
  int i = p - 1;
  for(int j = p; j <= q; j++) {
	  comp++;
	if (r() > eps) { 	// no failure	
		if(A[j] <= A[q]){
      			swap(&A[++i], &A[j]);
		}
	}
	else {			// failure
		if (A[j] > A[q]){ 
			swap(&A[++i], &A[j]);
		}
	}
  }
 
  return i;
}
 
void quicksort(int A[], int p, int q) {

	if(p < q) {
    		int pivotIndx = partition(A, p, q);
    		quicksort(A, p, pivotIndx - 1);
    		quicksort(A, pivotIndx + 1, q);
    	}	
}


int main() {

	fp = fopen("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/quick_n_subarray.txt", "a");
	fp2 = fopen("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/quick_n_data.txt", "a");
	fp3 = fopen("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/quick_n_runtime.txt", "a");
	fp4 = fopen("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/quick_comparisons.txt", "a");

	int n, i;
	clock_t start, end;
	double cpu_time_used;

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
	quicksort(A,0,n-1);
	end = clock();

	cpu_time_used = ((double) (end - start));
	fprintf(fp3, "%lf\n", cpu_time_used);
	fclose(fp3);

	fprintf(fp4, "%d\n", comp);
    fclose(fp4);



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
	

	quicksort(B,0,n-1);
	
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


