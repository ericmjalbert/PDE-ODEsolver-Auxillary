#! /usr/bin/env python

import numpy

f = open('tmp_wavefront.dat', 'r')

lines = f.readlines()
f.close()

y = []
x = []

lines = lines[::-1][1:-1] # Reverse list and ignore starting and ending '\n'
for line in lines:
    if len(line.split()) <= 1: # skip newline lines
        continue
    if float(line.split()[2]) >= 0.001 and float(line.split()[0]) not in x:
        y.append(float(line.split()[1])) # Append y location
        x.append(float(line.split()[0])) # Append x location 
        
if len(y) in [33, 65, 129, 257]:
    for i,j in zip(x,y):
        print i, j
else:
    print -1, -1


