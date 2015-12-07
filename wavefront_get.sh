#!/bin/bash

batch=$(find ~/Documents -name out-trav-stability-stddev -type d)
pydir=$(find ~/Documents -name wavefront_coordin.py)
currdir=$(pwd)

cd $batch

list=$(echo out* |\
  fmt -1 |\
  sort -n -t t -k 2)

rm wavefront.dat 2> /dev/null

for i in $list
do
  cp $i ./tmp_wavefront.dat
  python $pydir >> wavefront.dat
  echo "" >> wavefront.dat
done

rm ./tmp_wavefront.dat
cd $currdir
