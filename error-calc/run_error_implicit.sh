#!/bin/bash

curr=$(pwd)
resu=$(find ~/Documents -name batch-results -type d)

cp -r $resu/out-eSoln-* ./

num=0
# Grabs the highest numbered output.
#   echo gives out-pXXX/2D_outYYY so the first sed gets rid 
#   of everything before the last YYY The second sed grabs 
#   remaining numbers. Because we want last num, sort in reverse
#   Note that the last out is corrupt, so use head and tail to 
#   grab the second to last output
last=$(echo out-eSoln-0e/2D_out* |\
       sed 's#out-eSoln-[0-9]*e/\(2D_out\|out\)##g' |\
       sed 's#[^0-9 ]##g' |\
       fmt -1 |\
       sort -nr |\
       head -n 2|\
       tail -n 1)

for dir in out-eSoln-*
do
  num=$(echo "$dir" | sed 's#[^0-9]##g') # need to get number for indexing
  mv "$dir"/2D_out"$last".dat "$num"-rev.tmp
done 

# reverse numbering so semi-implicit (first) is the 'best' for comparisons
max=$(echo *tmp | sed 's#[^0-9 ]##g' | fmt -1 | sort -rn |head -1)
for i in *tmp
do
  iNum=$(echo "$i" | sed 's#[^0-9 ]##g')
  mv "$i" $(bc <<< "$max - $iNum").tmp
done


Rscript norm_vs_best.R

# re-reverse ordering of results file to match tolerance numbering
tac results_norm.dat > results_implicit.dat
rm results_norm.dat

rm *.tmp
rm -r out-*

