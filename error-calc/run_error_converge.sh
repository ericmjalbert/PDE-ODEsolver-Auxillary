#!/bin/bash

curr=`pwd`
resu=`find ~/Documents -name batch-results -type d`

cp -r $resu/out-p* ./

## need to get the smallest pNum for counting
#pNum=$(echo out-p* |\
#       sed 's/[^0-9 ]//g' |\
#       fmt -1 |\
#       sort -n |\
#       awk '{ if (NR==1) print $0}')
#
#for dir in out-p*
#do
#  mv $i/2D_out10.dat
#  # want something like
#  # mv "$dir"/2D_out"$last" "$pNum".tmp
#  pNum=$(bc <<< "$pNum*2-1")
#done

mv out-p33/2D_out10.dat 33.tmp
mv out-p65/2D_out10.dat 65.tmp
mv out-p129/2D_out10.dat 129.tmp
mv out-p257/2D_out10.dat 257.tmp
mv out-p513/2D_out10.dat 513.tmp
mv out-p1025/2D_out10.dat 1025.tmp
mv out-p2049/2D_out10.dat 2049.tmp
mv out-p4097/2D_out10.dat 4097.tmp

Rscript norm_vs_best.R

rm *.tmp
rm -r out-p*


