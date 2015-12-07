#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cd $batch_dir

cp $curr_dir/plot_corespeed.gnu ./
gnuplot plot_corespeed.gnu
rm plot_corespeed.gnu

mkdir $curr_dir/Figures 2> /dev/null
mv corespeed* $curr_dir/Figures
cd $curr_dir

NEED TO DO SOMETHING SOMETIME....
for i in out-core*; do less $i/statReport.dat | awk '{if (NR==3) print $5}'; done
