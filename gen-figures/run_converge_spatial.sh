#!/bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`
error_dir=`find ~/Documents -name error-calc`

cd $error_dir

cp -r $batch_dir/out-p* ./
mv out-p33/2D_out15.dat 33.tmp
mv out-p65/2D_out15.dat 65.tmp
mv out-p129/2D_out15.dat 129.tmp
mv out-p257/2D_out15.dat 257.tmp
mv out-p513/2D_out15.dat 513.tmp
mv out-p1025/2D_out15.dat 1025.tmp
mv out-p2049/2D_out15.dat 2049.tmp

Rscript norm.R

cp $curr_dir/plot_converge_spatial.gnu ./
gnuplot plot_converge_spatial.gnu

rm plot_converge_spatial.gnu
rm -r out-p*
rm *.tmp
rm results_norm.dat

mv converge_spatial* $curr_dir/Figures
cd $curr_dir

