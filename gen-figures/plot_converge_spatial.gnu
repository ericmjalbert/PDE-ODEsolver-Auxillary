set terminal post eps color enhanced
set output "converge_spatial_a.eps"

set xl "t"
set yl "$T_M$"

plot "p64/parameterParalOutput/total.dat" wi lines t "n = 64", \
     "p127/parameterParalOutput/total.dat" wi lines t "n = 127", \
     "p253/parameterParalOutput/total.dat" wi lines t "n = 253", \
     "p505/parameterParalOutput/total.dat" wi lines t "n = 505", \
     "p1009/parameterParalOutput/total.dat" wi lines t "n = 1009"

