#!/bin/bash

curr=`pwd`
resu=`find ~/Documents -name batch-results -type d`

cp -r $resu/p* ./
mv p33/parameterParalOutput/out21.dat 33.tmp
mv p65/parameterParalOutput/out21.dat 65.tmp
mv p129/parameterParalOutput/out21.dat 129.tmp
mv p257/parameterParalOutput/out21.dat 257.tmp
mv p513/parameterParalOutput/out21.dat 513.tmp
mv p1025/parameterParalOutput/out21.dat 1025.tmp
mv p2049/parameterParalOutput/out21.dat 2049.tmp

Rscript norm.R

rm *.tmp


