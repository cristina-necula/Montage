#!/bin/bash
#module load libraries/openmpi-1.6-gcc-4.7.0

time PATH=$PATH:$HOME/CC/montage/Montage mAdd -p new_test/corrdir new_test/images.tbl new_test/template.hdr new_test/final/m101_mosaic.fits
time PATH=$PATH:$HOME/CC/montage/bin mJPEG -gray new_test/final/m101_mosaic.fits 0s max gaussian-log -out new_test/final/m101_mosaic.jpg
