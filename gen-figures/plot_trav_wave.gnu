set size square

set xl "x"
set yl "y"
unset key

set yr[0:1]

set terminal post eps color enhanced font ',18'

set output "trav_wave_solution_t0.eps"
plot 'out-trav-show-dimension-2D/2D_out1.dat' us 1:2 wi lines 

set output "trav_wave_solution_t20.eps"
plot 'out-trav-show-dimension-2D/2D_out21.dat' us 1:2 wi lines 

set output "trav_wave_solution_t40.eps"
plot 'out-trav-show-dimension-2D/2D_out41.dat' us 1:2 wi lines 

set output "trav_wave_solution_t60.eps"
plot 'out-trav-show-dimension-2D/2D_out61.dat' us 1:2 wi lines 
