#!/bin/bash

fileName=`hostname`

#use initial set of images
./copy_script.sh

echo "Started test with $1 processor"
echo "Stage 1 time"
time ./stage1_script.sh $1
echo "Stage 2 time"
time ./stage2_script.sh $1
echo "Stage 3 time"
time ./stage3_script.sh $1

