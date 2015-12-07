#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/fully_implicit_tol.txt $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput


  # Fully-implicit tolerance 
  sed -i '4s/.*/psize     = 513/' ./parameter.txt
  
  sed -i '21s/.*/eSoln     = 1.0e-0/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-0e
  
  sed -i '21s/.*/eSoln     = 1.0e-1/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-1e
  
  sed -i '21s/.*/eSoln     = 1.0e-2/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-2e
  
  sed -i '21s/.*/eSoln     = 1.0e-3/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-3e
  
  sed -i '21s/.*/eSoln     = 1.0e-4/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-4e
  
  sed -i '21s/.*/eSoln     = 1.0e-5/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-5e
  
  sed -i '21s/.*/eSoln     = 1.0e-6/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-6e
  
  sed -i '21s/.*/eSoln     = 1.0e-7/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-7e
  
  sed -i '21s/.*/eSoln     = 1.0e-8/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-8e
  
  sed -i '21s/.*/eSoln     = 1.0e-9/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-9e
  
  sed -i '21s/.*/eSoln     = 1.0e-10/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-10e
  
  sed -i '21s/.*/eSoln     = 1.0e-11/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-11e
  
  sed -i '21s/.*/eSoln     = 1.0e-12/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-12e
  
  sed -i '21s/.*/eSoln     = 1.0e-13/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-13e
  
  sed -i '21s/.*/eSoln     = 1.0e-14/' ./parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-eSoln-14e



cd $curr_dir


