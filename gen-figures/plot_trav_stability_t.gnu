set size square

set xl "x"
set yl "y"
unset key

set pm3d
set view map
unset surf

set zr[0.00001:1]

set terminal post eps color enhanced font ',18'

set output "trav_stability_t0.eps"
splot 'out-trav-stability-stddev/out1.dat' us 1:2:3 wi lines 

set output "trav_stability_t10.eps"
splot 'out-trav-stability-stddev/out51.dat' us 1:2:3 wi lines 

set output "trav_stability_t20.eps"
splot 'out-trav-stability-stddev/out101.dat' us 1:2:3 wi lines 

set output "trav_stability_t30.eps"
splot 'out-trav-stability-stddev/out151.dat' us 1:2:3 wi lines 

