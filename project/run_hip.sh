#!/bin/bash

make clean
hipcc --offload-arch=gfx90a -o energy_storms_hip energy_storms_hip.hip

#execute the program
EXE=energy_storms_hip
K=100*4
for i in {1..8}
do
    echo ./$EXE $K test_files/test_01_a35_p*
    srun -n 1 ./$EXE $K test_files/test_01_a35_p*
    K=$(($K*2))
done
