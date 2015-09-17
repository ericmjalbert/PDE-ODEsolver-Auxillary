#!/bin/bash

curr=`pwd`
resu=`find ~/Documents -name batch-results -type d`

cp -r $resu/p* ./
mv p64/parameterParalOutput/out.dat 64.dat
mv p128/parameterParalOutput/out.dat 128.dat
mv p256/parameterParalOutput/out.dat 256.dat
mv p512/parameterParalOutput/out.dat 512.dat
mv p1024/parameterParalOutput/out.dat 1024.dat

bash norm.R




