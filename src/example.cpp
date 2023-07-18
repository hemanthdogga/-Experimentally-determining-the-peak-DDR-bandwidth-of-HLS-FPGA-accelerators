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

/*
 * This file contains an example for creating an AXI4-master interface in Vivado HLS
 */

#include <stdio.h>
#include <string.h>

///burtst size is determined by volatile

#define max_burst 16


void copya(int* buffa, int* a,int i)
{
#pragma HLS inline off

	for(int j=0;j<max_burst;j++)
	{
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_FLATTEN off
#pragma HLS DEPENDENCE dependent=false direction=WAW type=inter variable=buffa
		buffa[max_burst*i+j]=a[max_burst*i+j];
	}

}




void copyb(int* buffb,int* b, int i )
{
#pragma HLS inline off


	for(int k=0;k<max_burst;k++)
	{
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_FLATTEN off
#pragma HLS DEPENDENCE  dependent=false direction=WAW type=inter variable=buffb
		buffb[max_burst*i+k]=b[max_burst*i+k];
	}

}


void example( int *a, int *b )
{

#pragma HLS INTERFACE m_axi port=a bundle=a depth=1024
#pragma HLS INTERFACE m_axi port=b bundle=b depth=1024



	int p;
	int buffa[1024]; //local on chip memory on  fpga
	int buffb[1024];


	//memcpy creates a burst access to memory
	//multiple calls of memcpy cannot be pipelined and will be scheduled sequentially
	//memcpy requires a local buffer to store the results of the memory transaction


	for(int i = 0; i < 1024/max_burst; i++)
		{
	#pragma HLS LOOP_FLATTEN off
	#pragma HLS PIPELINE off
		copya(buffa,a,i);
		copyb(buffb,b,i);

}


	/*for(int i = 0; i < 1024; i++) {
		buffa[i] = a[i];

		buffb[i] = b[i];
	}*/
	//memcpy(buffa,(const int*)a,1024*sizeof(int));

	//memcpy(destination, source , words in the source);

	// memcpy(buffb,(const int*)b,1024*sizeof(int));


	/* memcpy(buff,(const int*)a,59*sizeof(int));

  //memcpy(buff + 25,(const int*)a + 25,25*sizeof(int));
	 *
	 *
	 */
	for(p=0; p < 1024; p++){
		buffa[p]=  buffa[p] + 100;
		buffb[p]=  buffb[p] + 100+50;

	}




	/*for(i=0; i < 59; i++){
    buff[i] = buff[i] + 100;
  }*/

	/*for(i=25; i < 50; i++){
    buff[i] = buff[i] + 100;
  }*/

	memcpy((int *)a,buffa,1024*sizeof(int));
	memcpy((int *)b,buffb,1024*sizeof(int));

}



