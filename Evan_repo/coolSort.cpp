#include <stdlib.h>
#include <iostream>

using namespace std;

int* CoolSort(int unsortedArr[], int arrSize, int H[], int hSize)
{
  //Instantiate and Assign Variables
  int* sortedArr = unsortedArr;
  int acc = 0;
  int a, b;

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
	
	cout << sortedArr[a] << " ";;
	while(b < arrSize){
	  cout << sortedArr[b] << " ";
	  b += stepSize;
	}
	
	cout << endl;
      }
    
    acc++;
  }

  return sortedArr;

} 
