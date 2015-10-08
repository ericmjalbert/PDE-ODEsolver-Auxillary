#! /bin/bash

batch_dir=`find ~/Documents/ -name batch-results -type d`
error_dir=`find ~/Documents/ -name error-calc -type d`
curr_dir=`pwd`

cd $batch_dir
 tolA=`sed '21q;d'     out-eSoln-0e/parameter.txt | awk '{print $3}'`
iterA=`sed '5q;d'     out-eSoln-0e/statReport.dat | awk '{print $8}'`
timeA=`sed '3q;d'     out-eSoln-0e/statReport.dat | awk '{print $5}'`
waveA=`sort -k2 -n -r out-eSoln-0e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolB=`sed '21q;d'     out-eSoln-1e/parameter.txt | awk '{print $3}'`
iterB=`sed '5q;d'     out-eSoln-1e/statReport.dat | awk '{print $8}'`
timeB=`sed '3q;d'     out-eSoln-1e/statReport.dat | awk '{print $5}'`
waveB=`sort -k2 -n -r out-eSoln-1e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolC=`sed '21q;d'     out-eSoln-2e/parameter.txt | awk '{print $3}'`
iterC=`sed '5q;d'     out-eSoln-2e/statReport.dat | awk '{print $8}'`
timeC=`sed '3q;d'     out-eSoln-2e/statReport.dat | awk '{print $5}'`
waveC=`sort -k2 -n -r out-eSoln-2e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolD=`sed '21q;d'     out-eSoln-3e/parameter.txt | awk '{print $3}'`
iterD=`sed '5q;d'     out-eSoln-3e/statReport.dat | awk '{print $8}'`
timeD=`sed '3q;d'     out-eSoln-3e/statReport.dat | awk '{print $5}'`
waveD=`sort -k2 -n -r out-eSoln-3e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolE=`sed '21q;d'     out-eSoln-4e/parameter.txt | awk '{print $3}'`
iterE=`sed '5q;d'     out-eSoln-4e/statReport.dat | awk '{print $8}'`
timeE=`sed '3q;d'     out-eSoln-4e/statReport.dat | awk '{print $5}'`
waveE=`sort -k2 -n -r out-eSoln-4e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolF=`sed '21q;d'     out-eSoln-5e/parameter.txt | awk '{print $3}'`
iterF=`sed '5q;d'     out-eSoln-5e/statReport.dat | awk '{print $8}'`
timeF=`sed '3q;d'     out-eSoln-5e/statReport.dat | awk '{print $5}'`
waveF=`sort -k2 -n -r out-eSoln-5e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolG=`sed '21q;d'     out-eSoln-6e/parameter.txt | awk '{print $3}'`
iterG=`sed '5q;d'     out-eSoln-6e/statReport.dat | awk '{print $8}'`
timeG=`sed '3q;d'     out-eSoln-6e/statReport.dat | awk '{print $5}'`
waveG=`sort -k2 -n -r out-eSoln-6e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolH=`sed '21q;d'     out-eSoln-7e/parameter.txt | awk '{print $3}'`
iterH=`sed '5q;d'     out-eSoln-7e/statReport.dat | awk '{print $8}'`
timeH=`sed '3q;d'     out-eSoln-7e/statReport.dat | awk '{print $5}'`
waveH=`sort -k2 -n -r out-eSoln-7e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolI=`sed '21q;d' out-eSoln-8e/parameter.txt | awk '{print $3}'`
iterI=`sed '5q;d' out-eSoln-8e/statReport.dat | awk '{print $8}'`
timeI=`sed '3q;d' out-eSoln-8e/statReport.dat | awk '{print $5}'`
waveI=`sort -k2 -n -r out-eSoln-8e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolJ=`sed '21q;d'     out-eSoln-9e/parameter.txt | awk '{print $3}'`
iterJ=`sed '5q;d'     out-eSoln-9e/statReport.dat | awk '{print $8}'`
timeJ=`sed '3q;d'     out-eSoln-9e/statReport.dat | awk '{print $5}'`
waveJ=`sort -k2 -n -r out-eSoln-9e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolK=`sed '21q;d' out-eSoln-10e/parameter.txt | awk '{print $3}'`
iterK=`sed '5q;d' out-eSoln-10e/statReport.dat | awk '{print $8}'`
timeK=`sed '3q;d' out-eSoln-10e/statReport.dat | awk '{print $5}'`
waveK=`sort -k2 -n -r out-eSoln-10e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolL=`sed '21q;d'     out-eSoln-11e/parameter.txt | awk '{print $3}'`
iterL=`sed '5q;d'     out-eSoln-11e/statReport.dat | awk '{print $8}'`
timeL=`sed '3q;d'     out-eSoln-11e/statReport.dat | awk '{print $5}'`
waveL=`sort -k2 -n -r out-eSoln-11e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolM=`sed '21q;d' out-eSoln-12e/parameter.txt | awk '{print $3}'`
iterM=`sed '5q;d' out-eSoln-12e/statReport.dat | awk '{print $8}'`
timeM=`sed '3q;d' out-eSoln-12e/statReport.dat | awk '{print $5}'`
waveM=`sort -k2 -n -r out-eSoln-12e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

 tolN=`sed '21q;d'     out-eSoln-13e/parameter.txt | awk '{print $3}'`
iterN=`sed '5q;d'     out-eSoln-13e/statReport.dat | awk '{print $8}'`
timeN=`sed '3q;d'     out-eSoln-13e/statReport.dat | awk '{print $5}'`
waveN=`sort -k2 -n -r out-eSoln-13e/2D_out20.dat | sed -n '1p' | awk '{print $1}'`

cd $error_dir
bash ./run_error_implicit.sh
mv results_implicit.dat $batch_dir

cd $batch_dir
eps1A=`sed '1q;d' results_implicit.dat | awk '{print $1}'`
eps2A=`sed '1q;d' results_implicit.dat | awk '{print $2}'`
eps1B=`sed '2q;d' results_implicit.dat | awk '{print $1}'`
eps2B=`sed '2q;d' results_implicit.dat | awk '{print $2}'`
eps1C=`sed '3q;d' results_implicit.dat | awk '{print $1}'`
eps2C=`sed '3q;d' results_implicit.dat | awk '{print $2}'`
eps1D=`sed '4q;d' results_implicit.dat | awk '{print $1}'`
eps2D=`sed '4q;d' results_implicit.dat | awk '{print $2}'`
eps1E=`sed '5q;d' results_implicit.dat | awk '{print $1}'`
eps2E=`sed '5q;d' results_implicit.dat | awk '{print $2}'`
eps1F=`sed '6q;d' results_implicit.dat | awk '{print $1}'`
eps2F=`sed '6q;d' results_implicit.dat | awk '{print $2}'`
eps1G=`sed '7q;d' results_implicit.dat | awk '{print $1}'`
eps2G=`sed '7q;d' results_implicit.dat | awk '{print $2}'`
eps1H=`sed '8q;d' results_implicit.dat | awk '{print $1}'`
eps2H=`sed '8q;d' results_implicit.dat | awk '{print $2}'`
eps1I=`sed '9q;d' results_implicit.dat | awk '{print $1}'`
eps2I=`sed '9q;d' results_implicit.dat | awk '{print $2}'`
eps1J=`sed '10q;d' results_implicit.dat | awk '{print $1}'`
eps2J=`sed '10q;d' results_implicit.dat | awk '{print $2}'`
eps1K=`sed '11q;d' results_implicit.dat | awk '{print $1}'`
eps2K=`sed '11q;d' results_implicit.dat | awk '{print $2}'`
eps1L=`sed '12q;d' results_implicit.dat | awk '{print $1}'`
eps2L=`sed '12q;d' results_implicit.dat | awk '{print $2}'`
eps1M=`sed '13q;d' results_implicit.dat | awk '{print $1}'`
eps2M=`sed '13q;d' results_implicit.dat | awk '{print $2}'`
eps1N=`sed '14q;d' results_implicit.dat | awk '{print $1}'`
eps2N=`sed '14q;d' results_implicit.dat | awk '{print $2}'`
rm results_implicit.dat


# write this all to file {results_table}
cd $curr_dir
rm results_table.tex
echo "\begin{table}[h!tb]" >> results_table.tex
echo "  \centering" >> results_table.tex
echo "  \begin{tabular}{|c|c|c|c|c|c|}" >> results_table.tex
echo "    \hline" >> results_table.tex
echo "    Tol. & Avg. Iter. & $\epsilon_1$ & $\epsilon_2$ & Time & Wave Peak \\\\" >> results_table.tex
echo "    \hline" >> results_table.tex
echo "    $tolA & $iterA & $eps1A & $eps2A & $timeA & $waveA \\\\" >> results_table.tex
echo "    $tolB & $iterB & $eps1B & $eps2B & $timeB & $waveB \\\\" >> results_table.tex
echo "    $tolC & $iterC & $eps1C & $eps2C & $timeC & $waveC \\\\" >> results_table.tex
echo "    $tolD & $iterD & $eps1D & $eps2D & $timeD & $waveD \\\\" >> results_table.tex
echo "    $tolE & $iterE & $eps1E & $eps2E & $timeE & $waveE \\\\" >> results_table.tex
echo "    $tolF & $iterF & $eps1F & $eps2F & $timeF & $waveF \\\\" >> results_table.tex
echo "    $tolG & $iterG & $eps1G & $eps2G & $timeG & $waveG \\\\" >> results_table.tex
echo "    $tolH & $iterH & $eps1H & $eps2H & $timeH & $waveH \\\\" >> results_table.tex
echo "    $tolI & $iterI & $eps1I & $eps2I & $timeI & $waveI \\\\" >> results_table.tex
echo "    $tolJ & $iterJ & $eps1J & $eps2J & $timeJ & $waveJ \\\\" >> results_table.tex
echo "    $tolK & $iterK & $eps1K & $eps2K & $timeK & $waveK \\\\" >> results_table.tex
echo "    $tolL & $iterL & $eps1L & $eps2L & $timeL & $waveL \\\\" >> results_table.tex
echo "    $tolM & $iterM & $eps1M & $eps2M & $timeM & $waveM \\\\" >> results_table.tex
echo "    $tolN & $iterN & $eps1N & $eps2N & $timeN & $waveN \\\\" >> results_table.tex
echo "    \hline" >> results_table.tex
echo "  \end{tabular}" >> results_table.tex
echo "  \caption{Results from running simulations with different Tol.}" >> results_table.tex
echo "  \label{tab:tolerance_comparison}" >> results_table.tex
echo "\end{table}" >> results_table.tex
mv results_table.tex Figures/


