#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cd $batch_dir

cp $curr_dir/plot_trav_wave.gnu ./
gnuplot plot_trav_wave.gnu
rm plot_trav_wave.gnu

# Wavespeed
cp $curr_dir/plot_trav_wavespeed.gnu ./
gnuplot plot_trav_wavespeed.gnu > /dev/null
rm plot_trav_wavespeed.gnu
wavespeed=$(less tmp_wavespeed.dat)
rm tmp_wavespeed.dat

# Horizontal translation
cp $curr_dir/plot_trav_translation.gnu ./
sed -i 's/ccccc/'$wavespeed'/' ./plot_trav_translation.gnu
gnuplot plot_trav_translation.gnu
rm plot_trav_translation.gnu


mkdir $curr_dir/Figures 2> /dev/null
mv trav_wave* $curr_dir/Figures
cd $curr_dir

