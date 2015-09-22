#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cp plot_basic_spherical.gnu $batch_dir
cd $batch_dir
gnuplot plot_basic_spherical.gnu
rm plot_basic_spherical.gnu
mv basic_spherical* $curr_dir/Figures
cd $curr_dir

