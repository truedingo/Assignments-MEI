// Adapted from Rosetta Code


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
FILE * fp4;

int comp=0;

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


void merge (int *a, int n, int m) {
    int i, j, k;
    int *x = malloc(n * sizeof (int));
    for (i = 0, j = m, k = 0; k < n; k++) {
        comp++;
        if (r() > eps) {			//no failure
		x[k] = j == n ? a[i++]
             	: i == m      ? a[j++]
             	: a[j] < a[i] ? a[j++]
             	:               a[i++];
    	}
	else {			// failure
		x[k] = j == n ? a[i++]
             	: i == m      ? a[j++]
             	: a[j] >= a[i] ? a[j++]
             	:               a[i++];
    	}
    }
    for (i = 0; i < n; i++) {
        a[i] = x[i];
    }
    free(x);
}
 
void merge_sort (int *a, int n) {
    if (n < 2)
        return;
    int m = n / 2;
    merge_sort(a, m);
    merge_sort(a + m, n - m);
    merge(a, n, m);
}



int main() {

    fp = fopen("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/merge_n_subarray.txt", "a");
	fp2 = fopen("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/merge_n_data.txt", "a");
	fp3 = fopen("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/merge_n_runtime.txt", "a");
    fp4 = fopen("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/merge_comparisons.txt", "a");


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
        merge_sort(A,n);
        end = clock();

        cpu_time_used = ((double) (end - start));
	    fprintf(fp3, "%lf\n", cpu_time_used);
	    fclose(fp3);
        
        fprintf(fp4, "%d\n", comp);
        fclose(fp4); 

        fprintf(fp2, "Processed array: ");
        printf("%d",A[0]);
        fprintf(fp2, " %d", A[0]);
        for (i=1; i<n;i++){
                printf(" %d", A[i]);
                fprintf(fp2, " %d", A[i]);
        }
        printf("\n");
        eps = -1.0;
        int count = LNDS(n);

        merge_sort(B,n);

        fprintf(fp2, "Sorted array: ");
        printf("%d",B[0]);
        fprintf(fp3, " %d", B[0]);
        for (i=1; i<n;i++)
                printf(" %d", B[i]);
                fprintf(fp3, " %d", B[i]);
        
        printf("\n%d\n",count);

        fprintf(fp, "%d\n", count);
		fprintf(fp2, "\n");
		fprintf(fp2, "\n");
   		fclose(fp);
		fclose(fp2);


}





