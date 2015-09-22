#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cp plot_basic_trav_wave.gnu $batch_dir
cd $batch_dir
gnuplot plot_basic_trav_wave.gnu
rm plot_basic_trav_wave.gnu
mv basic_trav_wave* $curr_dir/Figures
cd $curr_dir

