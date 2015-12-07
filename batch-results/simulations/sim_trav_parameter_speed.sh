#!/bin/bash

export OMP_NUM_THREADS=4

dir_path=`find ~/Documents/ -name PDE-ODEsolver -type d`
curr_dir=`pwd`

cp ./parameterFiles/sim_trav_parameter_speed.txt $dir_path/parameter.txt
cd $dir_path
rm -r parameterParalOutput

  sed -i '15s/.*/delta     = 0.0000080/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta80000
  sed -i '15s/.*/delta     = 0.0000040/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta40000
  sed -i '15s/.*/delta     = 0.0000020/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta20000
  sed -i '15s/.*/delta     = 0.0000010/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta10000
  sed -i '15s/.*/delta     = 0.0000008/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta08000
  sed -i '15s/.*/delta     = 0.0000004/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta04000
  sed -i '15s/.*/delta     = 0.0000002/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta02000
  sed -i '15s/.*/delta     = 0.0000001/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta01000
  sed -i '15s/.*/delta     = 0.00000008/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00800
  sed -i '15s/.*/delta     = 0.0000000400/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00400
  sed -i '15s/.*/delta     = 0.0000000200/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00200
  sed -i '15s/.*/delta     = 0.0000000100/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00100
  sed -i '15s/.*/delta     = 0.0000000080/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00080
  sed -i '15s/.*/delta     = 0.0000000040/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00040
  sed -i '15s/.*/delta     = 0.0000000020/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00020
  sed -i '15s/.*/delta     = 0.0000000010/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00010
  sed -i '15s/.*/delta     = 0.0000000008/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00008
  sed -i '15s/.*/delta     = 0.0000000004/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00004
  sed -i '15s/.*/delta     = 0.0000000002/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00002
  sed -i '15s/.*/delta     = 0.0000000001/' parameter.txt   
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-delta00001
  sed -i '15s/.*/delta     = 0.000001/' parameter.txt

  sed -i '14s/.*/gama      = 0.900/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama900
  sed -i '14s/.*/gama      = 0.885/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama885
  sed -i '14s/.*/gama      = 0.870/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama87
  sed -i '14s/.*/gama      = 0.855/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama855
  sed -i '14s/.*/gama      = 0.840/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama84
  sed -i '14s/.*/gama      = 0.825/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama825
  sed -i '14s/.*/gama      = 0.810/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama81
  sed -i '14s/.*/gama      = 0.795/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama795
  sed -i '14s/.*/gama      = 0.780/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama78
  sed -i '14s/.*/gama      = 0.765/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama765
  sed -i '14s/.*/gama      = 0.750/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama75
  sed -i '14s/.*/gama      = 0.735/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama735
  sed -i '14s/.*/gama      = 0.720/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama72
  sed -i '14s/.*/gama      = 0.705/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama705
  sed -i '14s/.*/gama      = 0.690/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-gama69
  sed -i '14s/.*/gama      = 0.80/' parameter.txt

  sed -i '12s/.*/nu        = 0.10/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu10
  sed -i '12s/.*/nu        = 0.12/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu12
  sed -i '12s/.*/nu        = 0.14/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu14
  sed -i '12s/.*/nu        = 0.16/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu16
  sed -i '12s/.*/nu        = 0.18/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu18
  sed -i '12s/.*/nu        = 0.20/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu20
  sed -i '12s/.*/nu        = 0.22/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu22
  sed -i '12s/.*/nu        = 0.24/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu24
  sed -i '12s/.*/nu        = 0.26/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu26
  sed -i '12s/.*/nu        = 0.28/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu28
  sed -i '12s/.*/nu        = 0.30/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu30
  sed -i '12s/.*/nu        = 0.32/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu32
  sed -i '12s/.*/nu        = 0.34/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu34
  sed -i '12s/.*/nu        = 0.36/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu36
  sed -i '12s/.*/nu        = 0.38/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu38
  sed -i '12s/.*/nu        = 0.40/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-nu40
  sed -i '12s/.*/nu        = 0.12/' parameter.txt

  sed -i '13s/.*/kappa     = 0.8000/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa8
  sed -i '13s/.*/kappa     = 0.4000/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa4
  sed -i '13s/.*/kappa     = 0.2000/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa2
  sed -i '13s/.*/kappa     = 0.1000/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa1
  sed -i '13s/.*/kappa     = 0.0800/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa08
  sed -i '13s/.*/kappa     = 0.0400/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa04
  sed -i '13s/.*/kappa     = 0.0200/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa02
  sed -i '13s/.*/kappa     = 0.0100/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa01
  sed -i '13s/.*/kappa     = 0.0080/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa008
  sed -i '13s/.*/kappa     = 0.0040/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa004
  sed -i '13s/.*/kappa     = 0.0020/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa002
  sed -i '13s/.*/kappa     = 0.0010/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa001
  sed -i '13s/.*/kappa     = 0.0008/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa0008
  sed -i '13s/.*/kappa     = 0.0004/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa0004
  sed -i '13s/.*/kappa     = 0.0002/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa0002
  sed -i '13s/.*/kappa     = 0.0001/' parameter.txt
  bash twoDimension_runall_paral.sh parameter.txt >> runtime_stdout.log
  mv runtime_stdout.log parameterParalOutput
  mv parameterParalOutput $curr_dir/out-trav-param-kappa0001
  sed -i '13s/.*/kappa     = 0.01/'

  # Remove unneeded data files to trim file size
  rm out-trav-param-**/*_out*

cd $curr_dir


