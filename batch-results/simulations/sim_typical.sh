#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/sim_typical.txt $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput


  # Typical Simulation [3D]
  bash runAll_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-typical
  
cd $curr_dir


