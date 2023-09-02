#!/bin/bash

# make sure that node/resources are allocated before running this script
# results from the two codes should be identical

make clean

make energy_storms_omp

allThreads=(1 2 4 8 16 32 64 128)

for nt in ${allThreads[@]}
do
   export OMP_NUM_THREADS=$nt
   ./energy_storms_omp 1000000 test_files/test_01_a35_p*
done
