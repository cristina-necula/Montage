#!/bin/bash
module load libraries/openmpi-1.6-gcc-4.4.6
#module load libraries/openmpi-1.6-gcc-4.6.3
time PATH=$PATH:$HOME/CC/montage/Montage mpirun -np $1 mAddMPI -p new_test/corrdir new_test/images.tbl new_test/template.hdr new_test/final/m101_mosaic.fits
