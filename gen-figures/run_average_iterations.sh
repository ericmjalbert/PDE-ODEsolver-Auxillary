#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cd $batch_dir

cp $curr_dir/plot_averageIterations.gnu ./
gnuplot plot_averageIterations.gnu
rm plot_averageIterations.gnu

mkdir $curr_dir/Figures 2> /dev/null
mv averageIterations* $curr_dir/Figures
cd $curr_dir

