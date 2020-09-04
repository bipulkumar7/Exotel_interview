/* Program that prints the given sequence
 *
 *  INPUT    OUTPUT
 *   1         1
 *
 *   2         1
 *   	       1 2
 *
 *   3         1
 *   	       1 2
 *   	       1 2 3
 *
 *   4		1
 *   		1 2
 *   		1 2 3
 *   		1 2 3 4
 *
 *   And so on..
 *   
 *
 *  */
#include <stdio.h>
int f( int *n);
int main()
{
 int n;
     n = 4; // In case if you want user defined input please comment this  line and uncomment next two line from now
 //printf("Enter number\n");
// scanf("%d, &n");

 f(&n);
  return 0;
} 
int f( int * n)
{
   int i,j;
	for( i = 1; i < *n+1; i++ )
       {
         for( j = 0; j<i; j++ )
         {
          printf("%d ", j+1);
         }
        printf("\n");
        }

} 

