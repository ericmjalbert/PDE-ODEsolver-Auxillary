#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/sim_trav_stability.txt $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput

  bash runAll_paral.sh parameter.txt >> runtime_stdou.log
  mv runtime_stdou.log parameterParalOutput
  bash stability_trav_wave.sh
  rm parameterParalOutput/*out*[02-9].dat
  mv parameterParalOutput $curr_dir/out-trav-stability-stddev

cd $curr_dir


