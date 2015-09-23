#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

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

# Basic SImulation - Growth [3D]
sed -i '26s/.*/fSelect   = 5/' ./parameter.txt
bash runAll_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterParalOutput
mv parameterParalOutput $curr_dir/out-basic-growth
sed -i '26s/.*/fSelect   = 3/' ./parameter.txt

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

# Converg Analysis [2D]
sed -i '4s/.*/pSize     = 33/' ./parameter.txt
sed -i '5s/.*/true2D    = 1/' ./parameter.txt
sed -i '15s/.*/tEnd      = 30/' ./parameter.txt
sed -i '16s/.*/nOuts     = 10/' ./parameter.txt
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
bash twodimension_runall_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterparaloutput
mv parameterparaloutput $curr_dir/out-p2049

# Fully-implicit tolerance 
sed -i '4s/.*/psize     = 513/' ./parameter.txt

sed -i '21s/.*/eSoln     = 1.0e-0' ./parameter.txt
bash twodimension_runall_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterparaloutput
mv parameterparaloutput $curr_dir/out-eSoln-0

sed -i '21s/.*/eSoln     = 1.0e-2' ./parameter.txt
bash twodimension_runall_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterparaloutput
mv parameterparaloutput $curr_dir/out-eSoln-2

sed -i '21s/.*/eSoln     = 1.0e-4' ./parameter.txt
bash twodimension_runall_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterparaloutput
mv parameterparaloutput $curr_dir/out-eSoln-4

sed -i '21s/.*/eSoln     = 1.0e-6' ./parameter.txt
bash twodimension_runall_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterparaloutput
mv parameterparaloutput $curr_dir/out-eSoln-6

sed -i '21s/.*/eSoln     = 1.0e-8' ./parameter.txt
bash twodimension_runall_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterparaloutput
mv parameterparaloutput $curr_dir/out-eSoln-8

sed -i '21s/.*/eSoln     = 1.0e-10' ./parameter.txt
bash twodimension_runall_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterparaloutput
mv parameterparaloutput $curr_dir/out-eSoln-10



cd $curr_dir


