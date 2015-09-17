#!/bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cp plot_converge_spatial.gnu $batch_dir
cd $batch_dir
gnuplot plot_converge_spatial.gnu
mv converge_spatial* $curr_dir
rm plot_converge_spatial.gnu
cd $curr_dir

