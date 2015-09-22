#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cp plot_basic_growth.gnu $batch_dir
cd $batch_dir
gnuplot plot_basic_growth.gnu
rm plot_basic_growth.gnu
mv basic_growth* $curr_dir/Figures
cd $curr_dir

