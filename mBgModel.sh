#!/bin/bash
#module load libraries/openmpi-1.6-gcc-4.4.6
#module load libraries/openmpi-1.6-gcc-4.6.3
time PATH=$PATH:$HOME/CC/montage/Montage mBgModel new_test/images.tbl new_test/fits.tbl new_test/corrections.tbl
