#!/bin/bash
module load libraries/openmpi-1.6-gcc-4.4.6
#module load openmpi-x86_64
#module load libraries/mpich2-3.0.2-gcc-4.4.6 
#module load libraries/openmpi-1.6-gcc-4.6.3
time PATH=$PATH:$HOME/CC/montage/Montage mpirun --mca mpi_warn_on_fork 0 -np $1 mProjExecMPI -p new_test/rawdir new_test/images-rawdir.tbl new_test/template.hdr new_test/projdir new_test/stats.tbl
