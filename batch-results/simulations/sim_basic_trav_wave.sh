#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/sim_basic_trav_wave.sh $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput


  # Basic Simulation - Trav. Wave [3D]
  sed -i '4s/.*/pSize     = 513/' ./parameter.txt
  sed -i '11s/.*/nu        = 0.3/' ./parameter.txt
  sed -i '12s/.*/kappa     = 0.1/' ./parameter.txt
  sed -i '13s/.*/gama      = 0.50/' ./parameter.txt
  sed -i '14s/.*/delta     = 0.0000001/' ./parameter.txt
  sed -i '15s/.*/nOuts     = 20/' ./parameter.txt
  sed -i '16s/.*/tEnd      = 40/' ./parameter.txt
  sed -i '29s/.*/MinitialCond = 1/' ./parameter.txt
  bash runAll_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-basic-trav-wave
  
cd $curr_dir


