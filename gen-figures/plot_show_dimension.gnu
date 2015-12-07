set size square

set xl "x"
set yl "y"

set terminal post eps color enhanced font ',18'

set view 60, 30, 1, 1
set output "show_dimension_3D.eps"
splot 'out-trav-show-dimension-3D/out20.dat' us 1:2:3 ev 6:6 wi li t "M(t,x)" ,\
      '' us 1:2:4 ev 6:6 wi li t "C(t,x)"

set view 90, 90, 1, 1
set output "show_dimension_3D_side.eps"
splot 'out-trav-show-dimension-3D/out20.dat' us 1:2:3 ev 6:6 wi li t "M(t,x)" ,\
      '' us 1:2:4 ev 6:6 wi li t "C(t,x)"

set output "show_dimension_2D.eps"
plot 'out-trav-show-dimension-2D/2D_out40.dat' us 1:2 wi li t "M(t,x)" ,\
     '' us 1:3 wi li t "C(t,x)"

set yl "{/Symbol s}"
unset key
set output "show_dimension_stddev.eps"
plot 'show_dimension_stddev.dat' wi lines

