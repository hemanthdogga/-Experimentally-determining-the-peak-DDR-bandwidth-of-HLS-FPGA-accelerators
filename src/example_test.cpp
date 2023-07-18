/*
 * Copyright 2021 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdio.h>

void example( int *a ,  int *b);

int main()
{
  int i;
  int A[1024];
  int B[1024];


  int C[1024];
  int D[1024];



  printf("HLS AXI-Stream no side-channel data example\n");
  //Put data into A
  for(int i=0; i < 1024; i++){
    A[i] = i;
  }

  for(int i=0; i < 1024; i++){
      C[i] = i+50;
    }



  //Call the hardware function
  example(A,C);

  //Run a software version of the hardware function to validate results
  for( int i=0; i < 1024; i++){
    B[i] = i + 100;
  }


  for(int i=0; i < 1024; i++){
      D[i] = i + 100;
    }

  //Compare results
  for(int i=0; i < 1024; i++){
    if((B[i] != A[i]) || (C[i] != D[i]) ){
      printf("i = %d A = %d  B= %d  C= %d  D= %d\n  ",i,A[i],B[i],C[i],D[i]);
      printf("ERROR HW and SW results mismatch\n");
      return 1;
    }
  }
  printf("Success HW and SW results match\n");
  return 0;
}

  


