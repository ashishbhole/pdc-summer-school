#!/bin/bash

# make sure that node/resources are allocated before running this script
# results from the two codes should be identical

make clean

make energy_storms_seq
srun -n 1 ./energy_storms_seq 400000 test_files/test_01_*

make energy_storms_mpi
srun -n 4 ./energy_storms_mpi 400000 test_files/test_01_*
