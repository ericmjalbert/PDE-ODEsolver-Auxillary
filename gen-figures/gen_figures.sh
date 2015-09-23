#! \bin\bash

dir_path=`find ~/Documents/ -path */MSc-Thesis/Chapters/3_numerics/Figures -type d`

mkdir Figures

bash run_basic_trav_wave.sh
bash run_basic_spherical.sh
bash run_basic_growth.sh
bash run_converge_spatial.sh

mv Figures $dir_path