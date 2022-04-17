#!/usr/bin/python3

import csv

DATE_INDEX = 0
TIME_INDEX = 1
START_INDEX = 2
STOP_INDEX = 3
WIDTH_INDEX = 4
SAMPLES_INDEX = 5
MEAS_ONE_INDEX = 6
MEAS_TWO_INDEX = 7
MEAS_THREE_INDEX = 8
MEAS_FOUR_INDEX = 9
MEAS_FIVE_INDEX = 10


with open('OUTPUTS/sweep.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    for row in csv_reader:
        freq = int(row[START_INDEX])
        index = MEAS_ONE_INDEX
        for i in range(5):
            currentFreq = float(row[index])
            print(f'{freq},{currentFreq}')
            freq += 1000000
            index += 1 
