set size square

set xl "x"
set yl "y"
unset key

set pm3d
set view map
unset surf

set terminal post eps color enhanced font ',18'

set output "basic_spherical_M_t0.eps"
splot 'out-basic-spherical/out1.dat' us 1:2:3 wi lines 

set output "basic_spherical_M_t40.eps"
splot 'out-basic-spherical/out21.dat' us 1:2:3 wi lines 

set output "basic_spherical_C_t0.eps"
splot 'out-basic-spherical/out1.dat' us 1:2:4 wi lines 

set output "basic_spherical_C_t40.eps"
splot 'out-basic-spherical/out21.dat' us 1:2:4 wi lines 

