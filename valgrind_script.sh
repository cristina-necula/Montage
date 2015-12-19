#!/bin/bash

module load libraries/openmpi-1.6-gcc-4.7.0

PATH=$PATH:$HOME/CC/CC/Montage_v3.3/Montage mImgtbl rawdir images-rawdir.tbl
PATH=$PATH:$HOME/CC/CC/Montage_v3.3/Montage mpirun -np 2 valgrind --leak-check=full mProjExecMPI -p rawdir images-rawdir.tbl template.hdr projdir stats.tbl
PATH=$PATH:$HOME/CC/CC/Montage_v3.3/Montage mImgtbl projdir images.tbl

