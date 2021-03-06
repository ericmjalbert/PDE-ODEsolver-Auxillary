#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/sim_basic_trav_wave.txt $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput


  # Basic Simulation - Trav. Wave [3D]
  bash runAll_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-basic-trav-wave
  
cd $curr_dir


