#include <stdio.h>
#include <limits.h>
#define HOW_MANY 8
#define HALF 4
int main()
{

  int initial[HOW_MANY][2] = {
    {0,0},
    {2,0},
    {4,0},
    {6,2},
    {2,2},
    {4,2},
    {1,3},
    {3,3}
  };

//  printf("Input Order:\n");
//  printf("------------------\n");
//  for(int i = 0; i < HOW_MANY; ++i)
//    printf("   ( %d, %d )\n", initial[i][0], initial[i][1]);

  int x_order[HOW_MANY][2];             // a new array ordered by X
  int inserted = 0;                     // the number that have been inserted
  int value = 0;                        // the x value being inserted
  while( inserted < HOW_MANY ){
    for( int i = 0; i < HOW_MANY; ++i){
      if( initial[i][0] == value ){
        x_order[inserted][0] = initial[i][0];
        x_order[inserted][1] = initial[i][1];
        inserted ++;
      }
    }
    value ++;
  }

  int y_order[HOW_MANY][2];             // a new array ordered by y
  inserted = 0;                         // the number that have been inserted
  value = 0;                            // the y value being inserted
  while( inserted < HOW_MANY ){
    for( int i = 0; i < HOW_MANY; ++i){
      if( initial[i][1] == value ){
        y_order[inserted][0] = initial[i][0];
        y_order[inserted][1] = initial[i][1];
        inserted ++;
      }
    }
    value ++;
  }


  printf("\n\nOrder by x values:\n");
  printf("------------------\n");
  for(int i = 0; i < HOW_MANY; ++i)
    printf("   ( %d, %d )\n", x_order[i][0], x_order[i][1]);

  printf("\n\nOrder by y values:\n");
  printf("------------------\n");
  for(int i = 0; i < HOW_MANY; ++i)
    printf("   ( %d, %d )\n", y_order[i][0], y_order[i][1]);

printf("\n\n\n");


printf("done");

   return 0;
}




// obvious length formula
// sqrt(  (x_2-x_1)^2 + (y_2-y_1)^2);


// You are to trace out the execution of the closest pair algorithm on the
// following set of points in the plane.
// You could write a program to do this. If you do, please include the code
// in your submission. The code doesn’t have to be pretty.
//
// One way or another, you should explain the trace of your execution.
// For ease of grading, and because I created the example this way, please do
// the algorithm as the book describes by:
//
// median on the x coordinate
// and then working on the other
