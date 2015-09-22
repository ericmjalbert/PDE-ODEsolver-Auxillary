set size square

set xl "t"
set xr [0:8.5]

set yr [0:0.004]

unset key

set terminal post eps color enhanced font ',18'

set output "basic_growth.eps"
plot 'out-basic-growth/total.dat' us 1:(abs($2 - 0.000239689966652041197*exp($1)) / (0.000239689966652041197*exp($1)) ) wi lines 

