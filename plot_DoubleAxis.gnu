#!/usr/bin/gnuplot 

# ------------------------------------------------------------------------------
# Curve: forces convergence
# ------------------------------------------------------------------------------
set term pdf monochrome size 15.0cm,9.0cm

set encoding iso_8859_1

set output "conv_forces.pdf"

set grid

set xtics font "Times-Roman, 15"
set ytics font "Times-Roman, 15"

set xlabel "iter" center
set ylabel "cl" center
set y2label "cd" center

set offset graph 0.0,0.10,0.10,0.10
# set yrange[1.5:2.0] 
set y2range[0.015:0.055] 

set y2tics

set border lw 2

set pointsize 0.3

set key right box font ",15"

plot "forces.dat" u 1:2  w lp pt 4 ps 0.4 axis x1y1 title " BRU3D - Lift coeff", "forces.dat" u 1:3 w lp pt 2 ps 0.4 axis x1y2 title " BRU3D - Drag coeff",\
     1.55 w l dashtype 2 lt 8 axis x1y1 title " Exp. - Lift coeff", 0.0208 w l dashtype 3 lw 2 lt 8 axis x1y2 title " Exp. - Drag coeff"
