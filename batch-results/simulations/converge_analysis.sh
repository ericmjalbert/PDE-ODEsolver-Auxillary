#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/converge_analysis.txt $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput
 

  # Converg Analysis [2D]
  sed -i '4s/.*/pSize     = 33/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-p33
  
  sed -i '4s/.*/pSize     = 65/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-p65
  
  sed -i '4s/.*/pSize     = 129/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-p129
  
  sed -i '4s/.*/pSize     = 257/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-p257
  
  sed -i '4s/.*/pSize     = 513/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-p513
  
  sed -i '4s/.*/pSize     = 1025/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-p1025
  
  sed -i '4s/.*/psize     = 2049/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-p2049
  
  sed -i '4s/.*/psize     = 4097/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-p4097
 
cd $curr_dir


