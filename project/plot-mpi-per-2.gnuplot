set terminal postscript
set output  "mpi-2-speedup.ps"
set title "Energy storm simulations by allocating -N 10 -p main"
set xlabel "No of mpi processes"
set ylabel "Time"
plot "see_mpi_performance_2.txt" u 1:2 w lp lw 10
