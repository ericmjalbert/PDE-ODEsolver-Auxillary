#! \bin\bash

dir_path=`find ~/Documents/ -path */MSc-Thesis/Chapters/4_simulation -type d`

mkdir Figures

#bash run_show_dimension.sh
#bash run_spatial.sh
#bash run_trav_parameter_speed.sh
#bash run_trav_solution.sh
bash run_trav_stability.sh
#bash run_typical.sh

mkdir $dir_path/Figures 2> /dev/null
mv Figures/* $dir_path/Figures
rm -r Figures
