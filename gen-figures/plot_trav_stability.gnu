set size square

set xl "t"
set yl "{/Symbol s}"
unset key
set xr[0:35]
set yr[0:]

set terminal post eps color enhanced font ',18'

set output "trav_stability.eps"
plot 'out-trav-stability-stddev/wave_stddev.dat' us ($0*0.2):2 with lines

