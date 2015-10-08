#!/bin/bash

curr=`pwd`
resu=`find ~/Documents -name batch-results -type d`

cp -r $resu/out-eSoln-* ./

mv out-eSoln-0e/2D_out14.dat 0.tmp
mv out-eSoln-1e/2D_out14.dat 1.tmp
mv out-eSoln-2e/2D_out14.dat 2.tmp
mv out-eSoln-3e/2D_out14.dat 3.tmp
mv out-eSoln-4e/2D_out14.dat 4.tmp
mv out-eSoln-5e/2D_out14.dat 5.tmp
mv out-eSoln-6e/2D_out14.dat 6.tmp
mv out-eSoln-7e/2D_out14.dat 7.tmp
mv out-eSoln-8e/2D_out14.dat 8.tmp
mv out-eSoln-9e/2D_out14.dat 9.tmp
mv out-eSoln-10e/2D_out14.dat 10.tmp
mv out-eSoln-11e/2D_out14.dat 11.tmp
mv out-eSoln-12e/2D_out14.dat 12.tmp
mv out-eSoln-13e/2D_out14.dat 13.tmp
mv out-eSoln-14e/2D_out14.dat 14.tmp

#Rscript norm_vs_best.R
#mv results_norm.dat results_implicit.dat
#
#rm *.tmp


