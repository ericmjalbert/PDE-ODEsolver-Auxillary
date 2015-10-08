#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/sim_basic_spherical.sh $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput


  # Basic Simulation - Spherical IC [3D]
  sed -i '4s/.*/pSize     = 1025/' ./parameter.txt
  sed -i '5s/.*/true2D    = 0/' ./parameter.txt
  sed -i '16s/.*/tEnd      = 40/' ./parameter.txt
  sed -i '15s/.*/nOuts     = 20/' ./parameter.txt
  sed -i '29s/.*/MinitialCond = 3/' ./parameter.txt
  bash runAll_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-basic-spherical
  

cd $curr_dir


