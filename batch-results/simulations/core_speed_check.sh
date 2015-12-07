#!/bin/bash

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/core_speed.txt $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput


  # Fully-implicit tolerance 
  export OMP_NUM_THREADS=1
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-core1
  export OMP_NUM_THREADS=2
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-core2
  export OMP_NUM_THREADS=3
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-core3
  export OMP_NUM_THREADS=4
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-core4
  export OMP_NUM_THREADS=5
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-core5
  export OMP_NUM_THREADS=6
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-core6
  export OMP_NUM_THREADS=7
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-core7
  export OMP_NUM_THREADS=8
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-core8



cd $curr_dir


