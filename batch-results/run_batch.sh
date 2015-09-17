#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cd $dir_path
rm -r parameterParalOutput


sed -i '4s/.*/pSize =  33/' ./parameter.txt
bash runAll_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterParalOutput
mkdir $curr_dir/p33
mv parameterParalOutput $curr_dir/p33

sed -i '4s/.*/pSize =  65/' ./parameter.txt
bash runAll_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterParalOutput
mkdir $curr_dir/p65
mv parameterParalOutput $curr_dir/p65

sed -i '4s/.*/pSize = 129/' ./parameter.txt
bash runAll_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterParalOutput
mkdir $curr_dir/p129
mv parameterParalOutput $curr_dir/p129

sed -i '4s/.*/pSize = 257/' ./parameter.txt
bash runAll_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterParalOutput
mkdir $curr_dir/p257
mv parameterParalOutput $curr_dir/p257

sed -i '4s/.*/pSize = 513/' ./parameter.txt
bash runAll_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterParalOutput
mkdir $curr_dir/p513
mv parameterParalOutput $curr_dir/p513

sed -i '4s/.*/pSize = 1025/' ./parameter.txt
bash runAll_paral.sh parameter.txt >> runtime_stdout.log
mv runtime_stdout.log parameterParalOutput
mkdir $curr_dir/p1025
mv parameterParalOutput $curr_dir/p1025

#sed -i '4s/.*/pSize = 2048/' ./parameter.txt
#bash runAll_paral.sh parameter.txt >> runtime_stdout.log
#mv runtime_stdout.log parameterParalOutput
#mkdir $curr_dir/p2048
#mv parameterParalOutput $curr_dir/p2048

cd $curr_dir


