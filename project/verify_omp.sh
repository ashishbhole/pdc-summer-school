#!/bin/bash

# make sure that node/resources are allocated before running this script
# results from the two codes should be identical

make clean

make energy_storms_seq
./energy_storms_seq 100000 test_files/test_01_a35_p*

make energy_storms_omp
export OMP_NUM_THREADS=10
./energy_storms_omp 100000 test_files/test_01_a35_p*

