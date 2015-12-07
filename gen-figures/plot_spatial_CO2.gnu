set size square

set xl "t"
set xr[0:50]
set key top left

set terminal post eps color enhanced font ',18'

set yl "R(t)"
set output "spatial_CO2.eps"
plot 'out-spatial-clump/COprod.dat' us 1:2 wi li t "Clumped IC",\
     'out-spatial-even/COprod.dat' us 1:2 wi li t "Even IC"

set yl "P(t)"
set output "spatial_CO2_total.eps"
plot 'out-spatial-clump/COprod.dat' us 1:3 wi li t "Clumped IC",\
     'out-spatial-even/COprod.dat' us 1:3 wi li t "Even IC"
