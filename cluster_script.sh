#!/bin/bash
#fileName=`hostname`
#for (( i=1; i<=4; i++))
#do
	#use initial set of images
	#./copy_script.sh
	
	#echo "==========Started test with $i processors==========" >> $fileName
	
	#(time ./stage1_script.sh $i) &> $fileName
	#(time ./stage2_script.sh $i) &> $fileName
	#(time ./stage3_script.sh $i) &> $fileName
	
	#echo "==========Finished test with $i processors==========" >> $fileName 
#done
./mImgTbl.sh
./mProjExecMpi.sh $1
./mImgTbl.sh
