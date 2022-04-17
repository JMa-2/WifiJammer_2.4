#!/usr/bin/python3

import csv

FREQ_INDEX = 0
DB_INDEX = 1

NUMVALS = 75


def FindFreqs():
    freqs = []
    with open('OUTPUTS/parsed.csv') as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        for row in csv_reader:
            if int(row[FREQ_INDEX]) not in freqs:
                freqs.append(int(row[FREQ_INDEX]))
    freqs.sort()
    return freqs



def FindValue(frequencies):
    meas = []

    for f in frequencies:
        meas.clear()
        with open('OUTPUTS/parsed.csv') as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=',')
            for row in csv_reader:
                if f == int(row[FREQ_INDEX]):
                    meas.append(float(row[DB_INDEX]))

        meas.sort(reverse=True)
        sum = 0
        for i in range(NUMVALS):
            sum += meas[i]

        average = sum / NUMVALS
        print(f'{f},{average}')



if __name__ == "__main__":
    freqsMeasured = FindFreqs()
    FindValue(freqsMeasured)
