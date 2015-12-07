#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cd $batch_dir

Rscript `find ~/Documents -name y_stddev.R` out-trav-show-dimension-3D/out20.dat

cp $curr_dir/plot_show_dimension.gnu ./
gnuplot plot_show_dimension.gnu
rm plot_show_dimension.gnu       
rm show_dimension_stddev.dat

mkdir $curr_dir/Figures 2> /dev/null
mv show_dimension* $curr_dir/Figures
cd $curr_dir

