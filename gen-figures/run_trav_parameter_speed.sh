#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cd $batch_dir

cp `find ~/Documents -name extract_wavespeed.R` ./
Rscript extract_wavespeed.R
rm extract_wavespeed.R
cp $curr_dir/plot_parameter_speed.gnu ./
gnuplot plot_parameter_speed.gnu
rm plot_parameter_speed.gnu param*dat

mkdir $curr_dir/Figures 2> /dev/null
mv parameter_speed* $curr_dir/Figures
cd $curr_dir

