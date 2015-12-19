#!/bin/bash
#module load openmpi-x86_64
module load libraries/openmpi-1.6-gcc-4.4.6
#module load libraries/mpich2-3.0.2-gcc-4.4.6
#module load mpich2-x86_64
#module load libraries/openmpi-1.6-gcc-4.6.3
time PATH=$PATH:$HOME/CC/montage/Montage mpirun -np $1 mFitExecMPI new_test/diffs.tbl new_test/fits.tbl new_test/diffdir

