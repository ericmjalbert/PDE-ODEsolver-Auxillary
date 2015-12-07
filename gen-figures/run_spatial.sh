#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cd $batch_dir

cp $curr_dir/plot_spatial.gnu ./
cp $curr_dir/plot_spatial_CO2.gnu ./

gnuplot plot_spatial.gnu
gnuplot plot_spatial_CO2.gnu

rm plot_spatial.gnu
rm plot_spatial_CO2.gnu

mkdir $curr_dir/Figures 2> /dev/null
mv spatial* $curr_dir/Figures
cd $curr_dir

