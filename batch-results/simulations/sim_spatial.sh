#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/sim_spatial.txt $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput

  bash runAll_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-spatial-clump
  
  sed -i '31s/.*/MinitialCond = 9/' parameter.txt
  bash runAll_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-spatial-even

cd $curr_dir


