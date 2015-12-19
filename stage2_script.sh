#!/bin/bash
#module load libraries/openmpi-1.6-gcc-4.7.0
#module load libraries/openmpi-1.6-gcc-4.4.6
time PATH=$PATH:$HOME/CC/montage/Montage mOverlaps new_test/images.tbl new_test/diffs.tbl
time PATH=$PATH:$HOME/CC/montage/Montage mDiffExec -p new_test/projdir new_test/diffs.tbl new_test/template.hdr new_test/diffdir
time PATH=$PATH:$HOME/CC/montage/Montage mFitExec new_test/diffs.tbl new_test/fits.tbl new_test/diffdir
time PATH=$PATH:$HOME/CC/montage/Montage mBgModel new_test/images.tbl new_test/fits.tbl new_test/corrections.tbl
time PATH=$PATH:$HOME/CC/montage/Montage mBgExec -p new_test/projdir new_test/images.tbl new_test/corrections.tbl new_test/corrdir


