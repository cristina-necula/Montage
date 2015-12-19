#!/bin/bash
#module load libraries/openmpi-1.6-gcc-4.7.0
#module load libraries/openmpi-1.6-gcc-4.4.6
#module load openmpi-x86_64
#./simple_cluster_script.sh 2
#time ./stage1_script.sh 2
#./stage2_script.sh 2
#./stage3_script.sh 2
#time PATH=$PATH:$HOME/CC/montage/Montage mpirun -np $1 mProjExecMPI -p new_test/rawdir new_test/images-rawdir.tbl new_test/template.hdr new_test/projdir new_test/stats.tbl
./mOverlaps.sh
./mDiffExecMPI.sh $1
./mFitExecMPI.sh $1
./mBgModel.sh
./mBgExecMPI.sh $1 
