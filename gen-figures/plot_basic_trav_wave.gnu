set size square

set xl "x"
set yl "y"
unset key

set pm3d
set view map
unset surf

set terminal post eps color enhanced font ',18'

set output "basic_trav_wave_M_t0.eps"
splot 'out-basic-trav-wave/out1.dat' us 1:2:3 wi lines 

set output "basic_trav_wave_M_t40.eps"
splot 'out-basic-trav-wave/out21.dat' us 1:2:3 wi lines 

set output "basic_trav_wave_C_t0.eps"
splot 'out-basic-trav-wave/out1.dat' us 1:2:4 wi lines 

set output "basic_trav_wave_C_t40.eps"
splot 'out-basic-trav-wave/out21.dat' us 1:2:4 wi lines 

