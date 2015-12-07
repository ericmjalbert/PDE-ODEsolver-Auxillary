set size square

set xl "t"
set xr [0:8.5]

set yr [0:0.004]

unset key

set terminal post eps color enhanced font ',18'

set output "basic_growth.eps"
plot 'out-basic-growth/total.dat' us 1:(abs($2 - 0.000239689966652041197*exp($1)) / (0.000239689966652041197*exp($1)) ) wi lines 

set logscale y
set output "basic_growth_logscale.eps"
plot 'out-basic-growth/total.dat' us 1:2 wi lines, '' us 1:(0.000239689966652041197*exp($1)) wi lines
