set size square

set xl "Number of Cores"
set yl "Computational speed fraction"
unset key

set terminal post eps color enhanced font ',18'

set output "corespeed.eps"
plot 'corespeed.dat' with lines


