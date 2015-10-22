#!/bin/bash

curr=`pwd`
resu=`find ~/Documents -name batch-results -type d`

cp -r $resu/out-p* ./

## need to get the smallest pNum for counting
pNum=$(echo out-p* |\
       sed 's/[^0-9 ]//g' |\
       fmt -1 |\
       sort -n |\
       head -n 1)

# Grabs the highest numbered output.
#   echo gives out-p123/2D_out456.dat so the first sed gets rid 
#   of everything before the last 456. The second sed grabs 
#   remaining numbers. Because we want last num, sort in reverse
#   Note that the last out is corrupt, so use head and tail to 
#   grab the second to last output
last=$(echo out-p$pNum/2D_out* |\
       sed 's#out-p[0-9]*/\(2D_out\|out\)##g' |\
       sed 's#[^0-9 ]##g' |\
       fmt -1 |\
       sort -nr |\
       head -n 2|\
       tail -n 1)

for dir in out-p*
do
  mv "$dir"/2D_out"$last".dat "$pNum".tmp
  pNum=$(bc <<< "$pNum*2-1")
done


Rscript norm_vs_best.R

rm *.tmp
rm -r out-p*


