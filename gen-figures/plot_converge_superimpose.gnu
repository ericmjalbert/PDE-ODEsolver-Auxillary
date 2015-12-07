set terminal post eps color enhanced font ',18'
set output "converge_spatial.eps"

set xl "n"
set xtics ("5" 0, "6" 1, "7" 2, "8" 3, "9" 4, "10" 5, "11" 6)

#set logscale y
#set ytic 0.0001, 2, 0.35

set ytic 0, 0.05

plot 'results_norm.dat' us :1 wi li t "{/Symbol e}_1", '' us :2 wi lin t "{/Symbol e}_2"

