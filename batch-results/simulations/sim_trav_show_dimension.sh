#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/sim_basic_trav_wave.txt $dir_path/parameter.txt
#Use same prameter file as basic trave-wave
cd $dir_path
rm -r parameterParalOutput

  bash runAll_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-show-dimension-3D

  sed -i '5s/.*/true2D    = 1/' ./parameter.txt
  sed -i '16s/.*/nOuts     = 60/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-show-dimension-2D

cd $curr_dir


