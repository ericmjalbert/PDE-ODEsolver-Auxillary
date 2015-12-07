#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cd $batch_dir

cp $curr_dir/plot_typical.gnu ./
cp $curr_dir/plot_typical_total.gnu ./

gnuplot plot_typical.gnu
gnuplot plot_typical_total.gnu

rm plot_typical.gnu
rm plot_typical_total.gnu

mkdir $curr_dir/Figures 2> /dev/null
mv typical* $curr_dir/Figures
cd $curr_dir

