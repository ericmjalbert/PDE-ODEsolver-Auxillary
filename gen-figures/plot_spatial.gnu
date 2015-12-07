set size square

set xl "x"
set yl "y"
unset key

set pm3d
set view map
unset surf

set zr[0.00001:1]

set terminal post eps color enhanced font ',18'

set output "spatial_clump_t0.eps"
splot 'out-spatial-clump/out1.dat' us 1:2:3 wi lines 

set output "spatial_clump_t16.eps"
splot 'out-spatial-clump/out5.dat' us 1:2:3 wi lines 

set output "spatial_clump_t32.eps"
splot 'out-spatial-clump/out9.dat' us 1:2:3 wi lines 

set output "spatial_clump_t48.eps"
splot 'out-spatial-clump/out13.dat' us 1:2:3 wi lines 

set output "spatial_even_t0.eps"
splot 'out-spatial-even/out1.dat' us 1:2:3 wi lines 
                             
set output "spatial_even_t16.eps"
splot 'out-spatial-even/out5.dat' us 1:2:3 wi lines 
                             
set output "spatial_even_t32.eps"
splot 'out-spatial-even/out9.dat' us 1:2:3 wi lines 
                             
set output "spatial_even_t48.eps"
splot 'out-spatial-even/out13.dat' us 1:2:3 wi lines 

