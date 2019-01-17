set term pngcairo enhanced font ",24" size 1200,800
set xlabel "Number of threads"
set ylabel "Throughput [oper/s]"
set output "throughput.png"
set key inside top left nobox

set border lw 3
set grid lw 2.5
set pointsize 3.0

plot "throughput_mutex" using 1:2 \
     ti "mutex" \
     with lp lw 4 pt 2 lc rgb '#007BCC', \
     "throughput_spinlock" using 1:2 \
     ti "spinlock" \
     with lp lw 4 pt 4 lc rgb '#770033'
