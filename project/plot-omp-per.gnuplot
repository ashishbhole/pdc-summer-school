set terminal postscript
set output  "omp-speedup.ps"
set title "Time vs. no of OpenMP threads for energy storm simulations"
set xlabel "No of OpenMP threads"
set ylabel "Time"
plot "see-omp-performance.txt" w lp lw 6
