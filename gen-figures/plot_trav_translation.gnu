set size square

set xl "x"
set yl "M"

set key outside right center box

set yr[0:1]

set terminal post eps color enhanced font ',18'
set title "c = ccccc"

set output "trav_wave_translation.eps"
plot 'out-trav-show-dimension-2D/2D_out30.dat' us 1:2 wi li t "M(x + ct_0)" ,\
     'out-trav-show-dimension-2D/2D_out31.dat' us ($1-1*ccccc):2 wi li t "M(x + c(t_0 - t_1))",\
     'out-trav-show-dimension-2D/2D_out32.dat' us ($1-2*ccccc):2 wi li t "M(x + c(t_0 - t_2))",\
     'out-trav-show-dimension-2D/2D_out33.dat' us ($1-3*ccccc):2 wi li t "M(x + c(t_0 - t_3))",\
     'out-trav-show-dimension-2D/2D_out34.dat' us ($1-4*ccccc):2 wi li t "M(x + c(t_0 - t_4))",\
     'out-trav-show-dimension-2D/2D_out35.dat' us ($1-5*ccccc):2 wi li t "M(x + c(t_0 - t_5))",\
     'out-trav-show-dimension-2D/2D_out36.dat' us ($1-6*ccccc):2 wi li t "M(x + c(t_0 - t_6))",\
     'out-trav-show-dimension-2D/2D_out37.dat' us ($1-7*ccccc):2 wi li t "M(x + c(t_0 - t_7))",\
     'out-trav-show-dimension-2D/2D_out38.dat' us ($1-8*ccccc):2 wi li t "M(x + c(t_0 - t_8))",\
     'out-trav-show-dimension-2D/2D_out39.dat' us ($1-9*ccccc):2 wi li t "M(x + c(t_0 - t_9))",\
