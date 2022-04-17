#!/usr/bin/bash


echo "Select jammer channel..."
read INPUT

if [ $INPUT = '1' ]
then 
	echo "STARTING CHANNEL 1 JAMMER..."
	python3 jammer.py -f 2412000000
fi

if [ $INPUT = '2' ]
then 
	echo "STARTING CHANNEL 2 JAMMER..."
	python3 jammer.py -f 2415000000
fi

if [ $INPUT = '3' ]
then 
	echo "STARTING CHANNEL 3 JAMMER..."
	python3 jammer.py -f 2422000000
fi

if [ $INPUT = '4' ]
then 
	echo "STARTING CHANNEL 4 JAMMER..."
	python3 jammer.py -f 2427000000
fi

if [ $INPUT = '5' ]
then 
	echo "STARTING CHANNEL 5 JAMMER..."
	python3 jammer.py -f 2432000000
fi

if [ $INPUT = '6' ]
then 
	echo "STARTING CHANNEL 6 JAMMER..."
	python3 jammer.py -f 2437000000
fi

if [ $INPUT = '7' ]
then 
	echo "STARTING CHANNEL 7 JAMMER..."
	python3 jammer.py -f 2442000000
fi

if [ $INPUT = '8' ]
then 
	echo "STARTING CHANNEL 8 JAMMER..."
	python3 jammer.py -f 2447000000
fi

if [ $INPUT = '9' ]
then 
	echo "STARTING CHANNEL 9 JAMMER..."
	python3 jammer.py -f 2452000000
fi

if [ $INPUT = '10' ]
then 
	echo "STARTING CHANNEL 10 JAMMER..."
	python3 jammer.py -f 2457000000
fi

if [ $INPUT = '11' ]
then 
	echo "STARTING CHANNEL 11 JAMMER..."
	python3 jammer.py -f 2462000000
fi
