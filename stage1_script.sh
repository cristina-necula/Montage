#!/bin/bash
#mpich-autoload
#module load libraries/mpich2-3.0.2-gcc-4.4.6
#module load libraries/openmpi-1.6-gcc-4.7.0
./copy_script.sh
time PATH=$PATH:$HOME/CC/montage/Montage mImgtbl new_test/rawdir new_test/images-rawdir.tbl
time PATH=$PATH:$HOME/CC/montage/Montage mProjExec -p new_test/rawdir new_test/images-rawdir.tbl new_test/template.hdr new_test/projdir new_test/stats.tbl
time PATH=$PATH:$HOME/CC/montage/Montage mImgtbl new_test/projdir new_test/images.tbl

