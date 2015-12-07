set size square

set xl "t"
set yl "Wave Interface"

set terminal post eps color enhanced font ',18'

# wavespeed approx
set fit quiet
set fit logfile '/dev/null'
f(x) = m*x + b
fit f(x) 'out-trav-show-dimension-2D/peakInfo.dat' us 1:2 every ::2000::20000 via m,b

set output "trav_wavespeed.eps"
plot 'out-trav-show-dimension-2D/peakInfo.dat' us 1:2 wi li t "Wavefront x-value", f(x) t "Wavespeed Approximation"

set print "tmp_wavespeed.dat"
print m
