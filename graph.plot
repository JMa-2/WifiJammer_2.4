#!/usr/bin/gnuplot


set terminal png truecolor rounded size 1440,540 enhanced
set output "OUTPUTS/2_4wifi.png"
unset key
set xtics 0.01
set mxtics 10
set grid xtics
set grid ytics
set yrange [-120:0]
set xrange [2.4:2.48]
set format x "%.2fGHz"
set arrow from 2.412,-120 to 2.412,0 nohead lc rgb 'red' dt 2
set arrow from 2.417,-120 to 2.417,0 nohead lc rgb 'red' dt 2
set arrow from 2.422,-120 to 2.422,0 nohead lc rgb 'red' dt 2
set arrow from 2.427,-120 to 2.427,0 nohead lc rgb 'red' dt 2
set arrow from 2.432,-120 to 2.432,0 nohead lc rgb 'red' dt 2
set arrow from 2.437,-120 to 2.437,0 nohead lc rgb 'red' dt 2
set arrow from 2.442,-120 to 2.442,0 nohead lc rgb 'red' dt 2
set arrow from 2.447,-120 to 2.447,0 nohead lc rgb 'red' dt 2
set arrow from 2.452,-120 to 2.452,0 nohead lc rgb 'red' dt 2
set arrow from 2.457,-120 to 2.457,0 nohead lc rgb 'red' dt 2
set arrow from 2.462,-120 to 2.462,0 nohead lc rgb 'red' dt 2
set label 12 center at screen 0.125,0.95, char 1 "CHANNELS:" font ",10" tc rgb 'red'
set label 1 center at screen 0.175,0.95, char 1 "1" font ",10" tc rgb 'red'
set label 2 center at screen 0.235,0.95, char 1 "2" font ",10" tc rgb 'red'
set label 3 center at screen 0.295,0.95, char 1 "3" font ",10" tc rgb 'red'
set label 4 center at screen 0.355,0.95, char 1 "4" font ",10" tc rgb 'red'
set label 5 center at screen 0.415,0.95, char 1 "5" font ",10" tc rgb 'red'
set label 6 center at screen 0.47,0.95, char 1 "6" font ",10" tc rgb 'red'
set label 7 center at screen 0.53,0.95, char 1 "7" font ",10" tc rgb 'red'
set label 8 center at screen 0.59,0.95, char 1 "8" font ",10" tc rgb 'red'
set label 9 center at screen 0.65,0.95, char 1 "9" font ",10" tc rgb 'red'
set label 10 center at screen 0.705,0.95, char 1 "10" font ",10" tc rgb 'red'
set label 11 center at screen 0.765,0.95, char 1 "11" font ",10" tc rgb 'red'
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2 pointtype 7 pointsize 0
set datafile separator ','
plot "OUTPUTS/parsed.csv" using ($1/1e9):2 pt 7 ps 0.5, \
				"OUTPUTS/lineplot.csv" using ($1/1e9):2 with linespoints linestyle 1
