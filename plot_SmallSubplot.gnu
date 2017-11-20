#!/usr/bin/gnuplot 

# ------------------------------------------------------------------------------
# Curve: Pressure Coefficient from file.
# ------------------------------------------------------------------------------
set term pdf monochrome size 15.0cm,9.0cm

set encoding iso_8859_1

# In case you are using *.csv file.
set datafile separator ","

set output "allcp.pdf"

set origin 0.0,0.0

set grid

set xtics font "Times-Roman, 15"
set ytics font "Times-Roman, 15"

set xlabel "x/c" center
set ylabel "cp" center

set offset graph 0.0,0.10,0.10,0.10
set yrange[1.2:-5.0] reverse
set xrange[-0.1:1.0] 

set border lw 2

set pointsize 0.3

set key right box font ",15"

set multiplot 

plot "oneraa_050X050.csv" using 5:6:(0.008) lt 1.5 lw 1.0 with circles title " Exp",\
     "oneraa_050X050.csv" using 9:10 with points pt 1 ps 0.5 title " m050X050-GG-LMSST",\
     "oneraa_100X100.csv" using 9:10 with points pt 2 ps 0.5 title " m100X100-GG-LMSST",\
     "oneraa_200X200.csv" using 9:10 with points pt 4 ps 0.2 title " m200X200-GG-LMSST"

unset key

set origin 0.50,0.35
set size 0.45,0.4
unset offset
unset grid
set yrange[-4.0:-5.0] reverse
set xrange[-0.05:0.1] 
set xtics font "Times-Roman, 10"
set ytics font "Times-Roman, 10"
unset xlabel
unset ylabel

plot "oneraa_050X050.csv" using 5:6:(0.008) lt 1.5 lw 1.0 with circles title " Exp",\
     "oneraa_050X050.csv" using 9:10 with points pt 1 ps 0.5 title " m050X050-GG-LMSST",\
     "oneraa_100X100.csv" using 9:10 with points pt 2 ps 0.5 title " m100X100-GG-LMSST",\
     "oneraa_200X200.csv" using 9:10 with points pt 4 ps 0.2 title " m200X200-GG-LMSST"

unset multiplot
