#include <stdlib.h>
#include <iostream>

using namespace std;

void printArr(int arr[], int size){
  cout << "\n** Printing Arr **" << endl;
  for(int i=0; i<size; i++){
    cout << arr[i] << " ";
  }
  cout << endl;

  return;
}

int* CoolSort(int unsortedArr[], int arrSize, int H[], int hSize)
{
  //Instantiate and Assign Variables
  int* sortedArr = unsortedArr;
  int acc = 0;
  int a, b, tmp;

  //Begin sorting
  while(acc < hSize){
    int stepSize = H[acc];

    //Error Check
    if(stepSize > arrSize){
      perror("sequence element larger than number of elements in array");
      exit(1);
    }

    cout << "\nStep Size: " << stepSize << endl;
    cout << "Cylce: " << acc << endl;
    for(int i=0; i<stepSize; i++){
	a = i;
	b = a + stepSize;

	//	cout << sortedArr[a] << " ";
	while(b < arrSize){
	  // cout << sortedArr[b] << " ";
	  
	  if(sortedArr[b] < sortedArr[a]){
	    tmp = sortedArr[a];
	    sortedArr[a] = sortedArr[b];
	    sortedArr[b] = tmp;
	  }
	  a = b;
	  b += stepSize;
	}
	cout << endl;
    }

    printArr(sortedArr, arrSize);

    acc++;
  }

  return sortedArr;

} 
