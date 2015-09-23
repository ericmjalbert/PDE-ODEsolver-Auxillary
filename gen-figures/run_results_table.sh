#! /bin/bash

batch_dir=`find ~/Document/ -name batch-results -type d`
curr_dir=`pwd`

# Get tols from para
cd $batch_dir
tolA=
#out-eSoln-XX

iterA=
eps1A=
eps2A=
timeA=
waveA=

# write this all to file {results_table}
rm results_table.tex
echo "\begin{table}[h!tb]" >> results_table.tex
echo "  \centering" >> results_table.tex
echo "  \begin{tabular}{|c|c|c|c|c|c|" >> results_table.tex
echo "    \hline" >> results_table.tex
echo "    Tol. & Avg. Iter. & $\epsilon_1$ & $\epsilon_2$ & Time & Wave Peak \\" >> results_table.tex
echo "    \hline" >> results_table.tex
echo "    $tolA & $iterA & $eps1A & $eps2A & $timeA & $waveA" >> results_table.tex
echo "    $tolB & $iterB & $eps1B & $eps2B & $timeB & $waveB" >> results_table.tex
echo "    $tolC & $iterC & $eps1C & $eps2C & $timeC & $waveC" >> results_table.tex
echo "    $tolD & $iterD & $eps1D & $eps2D & $timeD & $waveD" >> results_table.tex
echo "    \hline" >> results_table.tex
echo "  \end{tabular}" >> results_table.tex
echo "  \caption{Results from running simulations with different Tol.}" >> results_table.tex
echo "  \label{tab:tolerance_comparison}" >> results_table.tex
echo "\end{table}" >> results_table.tex


