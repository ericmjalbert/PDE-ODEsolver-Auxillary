
unset key

set terminal post eps color enhanced font ',18'

set yl "wavespeed"
set xtic 1e-10, 10
set ytic 1e-7, 2
set xr[:1e-5]
set yr[1e-6:]
set logscale xy 2
set format xy "%.1e"
set xl "{/Symbol d}"
set output "parameter_speed_delta.eps"
plot 'param_delta.dat' wi li 

reset
set yl "wavespeed"
set format y "%.1e"
set xl "{/Symbol g}"
set output "parameter_speed_gama.eps"
plot 'param_gama.dat' wi li 

reset
set yl "wavespeed"
set format y "%.1e"
set xl "{/Symbol n}"
set output "parameter_speed_nu.eps"
plot 'param_nu.dat' wi li 

reset
set yl "wavespeed"
set xtic 1e-5, 10
set logscale x 2
set format xy "%.1e"
set xl "{/Symbol k}"
set output "parameter_speed_kappa.eps"
plot 'param_kappa.dat' wi li 

