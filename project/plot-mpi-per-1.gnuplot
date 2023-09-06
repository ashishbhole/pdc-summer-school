set terminal postscript
set output  "mpi-1-speedup.ps"
set title "Energy storm simulations by allocating -N 1 -p main"
set xlabel "No of mpi processes"
set ylabel "Time"
plot "see_mpi_performance_1.txt" u 1:2 w lp lw 10
