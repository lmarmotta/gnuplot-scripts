#!/usr/bin/gnuplot 

# ------------------------------------------------------------------------------
# Curve: Pressure Coefficient from file.
# ------------------------------------------------------------------------------
set term pdf monochrome size 15.0cm,9.0cm

set encoding iso_8859_1

# In case you are using *.csv file.
set datafile separator ","

set output "cp_oat15a.pdf"

set grid

set xtics font "Times-Roman, 15"
set ytics font "Times-Roman, 15"

set xlabel "x/c" center
set ylabel "cp" center

set offset graph 0.10,0.10,0.10,0.10
set yrange[1.2:-1.2] 
set xrange[0.0:1.0] 

set border lw 2

set pointsize 0.3

set key right box font ",15"

plot "exp.dat" using 1:2:(0.008) lt 1.5 lw 1.0 with circles title "Exp",\
     "result.dat" u 1:3 with points lw 1.5 title "result"
