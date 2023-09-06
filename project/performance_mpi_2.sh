#!/bin/bash

# make sure that node/resources are allocated before running this script
# results from the two codes should be identical

make clean

make energy_storms_mpi

processes=(100 200 300 400 500)

for np in ${processes[@]}
do
   echo $np
   srun -n $np ./energy_storms_mpi 4000000 test_files/test_01_*
done
