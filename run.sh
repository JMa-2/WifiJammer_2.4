#!/usr/bin/bash

cd ~/Gits/WifiJammer_2.4
rm -r OUTPUTS/*

echo "STARTING HACKRF SWEEP..."
hackrf_sweep -f 2400:2480 -w 1000000 -N 5000 -r OUTPUTS/sweep.csv
echo "SWEEP FINISHED..."

echo ""
echo ""
echo ""

echo "STARTING PARSING OF SWEEP..."
python3 parser.py > OUTPUTS/parsed.csv
echo "PARSING FINISHED..."

echo ""
echo ""
echo ""

echo "STARTING AVERAGING SWEPT MEASUREMENTS..."
python3 sweep2line.py > OUTPUTS/lineplot.csv
echo "AVERAGING FINISHED..."

echo ""
echo ""
echo ""

echo "STARTING PLOT GENERATION..."
gnuplot graph.plot
feh OUTPUTS/2_4wifi.png &
echo "PLOTTING FINISHED..."

echo ""
echo ""
echo ""

echo "STARTING CHANNEL ANALYSIS..."
python3 ChAnalysis.py
echo "ANALYSIS FINISHED..."

echo ""
echo ""
echo ""

bash StartJammer.sh
