set size square

set xl "x"
set yl "y"
unset key

set pm3d
set view map
unset surf

set zr[0.01:1]

set terminal post eps color enhanced font ',18'

set output "typical_t0.eps"
splot 'out-typical/out1.dat' us ($1*0.333):2:3 wi lines 

set output "typical_t2.eps"
splot 'out-typical/out7.dat' us ($1*0.333):2:3 wi lines 

set output "typical_t3_67.eps"
splot 'out-typical/out14.dat' us ($1*0.333):2:3 wi lines 

set output "typical_t5_33.eps"
splot 'out-typical/out17.dat' us ($1*0.333):2:3 wi lines

set output "typical_t7.eps"
splot 'out-typical/out22.dat' us ($1*0.333):2:3 wi lines 

set output "typical_t9.eps"
splot 'out-typical/out28.dat' us ($1*0.333):2:3 wi lines 
