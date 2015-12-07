set size square

set xl "x"
set yl "y"
unset key
set xr[0:1]
set yr[0:1]

set terminal post eps color enhanced font ',18'

set output "trav_stability_wavefront.eps"
plot 'out-trav-stability-stddev/wavefront.dat' wi points pointtype 7 pointsize 0.7

