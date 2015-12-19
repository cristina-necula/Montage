#!/bin/bash
#qsub -cwd -pe openmpi*1 24 cluster_script.sh
#qsub -q ibm-nehalem.q -cwd -pe openmpi*1 24 test_manual.sh
#qsub -cwd -pe openmpi*1 $1 manual_test.sh $1
qsub -cwd -pe openmpi*1 $1 $2 $1
