#!/usr/bin/python3

import csv
from prettytable import PrettyTable

                #min        #center     #max
channelFreqs = [[2401000000, 2412000000, 2423000000],   #channel 1
                [2406000000, 2417000000, 2428000000],   #channel 2
                [2411000000, 2422000000, 2433000000],   #channel 3
                [2416000000, 2427000000, 2438000000],   #channel 4
                [2421000000, 2432000000, 2443000000],   #channel 5
                [2426000000, 2437000000, 2448000000],   #channel 6
                [2431000000, 2442000000, 2453000000],   #channel 7
                [2436000000, 2447000000, 2458000000],   #channel 8
                [2441000000, 2452000000, 2463000000],   #channel 9
                [2446000000, 2457000000, 2468000000],   #channel 10
                [2451000000, 2462000000, 2473000000]]   #channel 11

channelAvg = []
currentValues = []

NUM_CHANNELS = 11
NUM_FREQS = 3
 
MIN_FREQ_INDEX = 0
CENTER_FREQ_INDEX = 1
MAX_FREQ_INDEX = 2

CSV_FREQ_INDEX = 0
CSV_DB_INDEX = 1

pt = PrettyTable()
pt.field_names = ["CHANNEL", "MAX", "AVERAGE"]

for ch in range(NUM_CHANNELS):
    currentValues.clear()
    with open('OUTPUTS/lineplot.csv') as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for row in csv_reader:
            if int(row[CSV_FREQ_INDEX]) >= channelFreqs[ch][MIN_FREQ_INDEX] and int(row[CSV_FREQ_INDEX]) < channelFreqs[ch][MAX_FREQ_INDEX]:
                currentValues.append(float(row[CSV_DB_INDEX]))
    averageVal = sum(currentValues) / len(currentValues)
    maxVal = max(currentValues)
    channelAvg.append(averageVal)
    pt.add_row([ch+1, round(maxVal,2), round(averageVal,2)])


print(pt)

tmp = max(channelAvg)
index = channelAvg.index(tmp)

print()
print("--- RECCONMENDED JAMMER CHANNEL: ", index+1, " ---")
print()
print()     
            

