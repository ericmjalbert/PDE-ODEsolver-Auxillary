set terminal post eps color enhanced font ',18'
set output "converge_spatial.eps"

set xl "n"
set xtics ("6" 0, "7" 1, "8" 2, "9" 3, "10" 4, "11" 5)

set logscale y
set ytic 0.00001, 2, 0.02

plot 'results_norm.dat' us :1 wi li t "{/Symbol e}_1", '' us :2 wi lin t "{/Symbol e}_2"

