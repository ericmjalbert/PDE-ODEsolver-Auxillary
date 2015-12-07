#! /bin/bash

curr_dir=`pwd`
batch_dir=`find ~/Documents -name batch-results -type d`

cd $batch_dir

cp $curr_dir/plot_trav_stability.gnu ./
gnuplot plot_trav_stability.gnu
rm plot_trav_stability.gnu       

cp $curr_dir/plot_trav_stability_t.gnu ./
gnuplot plot_trav_stability_t.gnu
rm plot_trav_stability_t.gnu       

bash $(find ~/Documents -name wavefront_get.sh)
cp $curr_dir/plot_trav_stability_wavefront.gnu ./
gnuplot plot_trav_stability_wavefront.gnu
rm plot_trav_stability_wavefront.gnu

mkdir $curr_dir/Figures 2> /dev/null
mv trav_stability* $curr_dir/Figures
cd $curr_dir

