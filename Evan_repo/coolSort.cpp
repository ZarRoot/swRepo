#include <stdlib.h>
#include <iostream>

using namespace std;

int* CoolSort(int unsortedArr[], int arrSize, int H[], int hSize)
{
 
  int* sortedArr = unsortedArr;
  int acc = 0;

  while(acc < hSize){

    if(H[acc] > arrSize){
      perror("sequence element larger than number of elements in array");
      exit(1);
    }

    acc++;
  }

  return sortedArr;

} 
