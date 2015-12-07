set size square
unset key
set terminal post eps color enhanced font ',18'

set xl "t"
set yl"R(t)"
set xr[0:20]
set yr[-0.05:1.05]
set output "typical_CO2.eps"
plot 'out-typical/COprod.dat' us ($1*0.333):2 wi lines 

set xl "t"
set yl "P(t)"
set xr[0:20]
set yr[-0.05:1.05]
set output "typical_CO2_total.eps"
plot 'out-typical/COprod.dat' us ($1*0.333):3 wi lines 

set xl "t"
set yl "T_C(t)"
set xr[0:33]
set yr[-0.05:1.05]
set output "typical_total_C.eps"
plot 'out-typical/total.dat' us ($1*0.333):3 wi lines

set xl "t"
set yl "T_M(t)"
set xr[0:33]
set yr[-0.05:0.3]
set output "typical_total_M.eps"
plot 'out-typical/total.dat' us ($1*0.333):2 wi lines

set xl "t"
set yl "T_M(t)"
set xr[0:3.3]
set yr[-0.05:0.3]
set output "typical_total_M_zoomed.eps"
plot 'out-typical/total.dat' us ($1*0.333):2 wi lines

set xl "T_M(t)"
set yl "P(t)"
set xr[0:0.3]
set yr[-0.05:1.05]
set output "typical_total_PvM.eps"
plot "< join out-typical/COprod.dat out-typical/total.dat" us 4:3 wi lines
