set terminal png enhanced size 1200,700
set output 'plot.png'

set pointsize 0.3
set xrange [ -2174.04 : 9370.76 ] noreverse writeback
set yrange [ -481 : 304 ] noreverse writeback
set xlabel 'pitch(dac output + tune) in cents [distance from arbitrary reference point]'
set ylabel 'deviation in cents'
plot\
	1/0 with points ls 1 pt 7 ps 2 title 'arbitrary reference tuning',\
	1/0 with points ls 2 pt 7 ps 2 title 'tuned by approx. -480c',\
	1/0 with points ls 3 pt 7 ps 2 title 'tuned by approx. -1860c',\
	1/0 with points ls 4 pt 7 ps 2 title 'tuned by approx. +800c',\
	"run1.txt" u ($1*2.2      ):(log(78000000/$2 / (($3+$4+$5+$6+$7+$8+$9+$10+$11+$12)/5))/log(2)*1200 - (2.2*$1      ) - 4900) w points ls 1 pt 7 notitle,\
	"run2.txt" u ($1*2.2  -480):(log(78000000/$2 / (($3+$4+$5+$6+$7+$8+$9+$10+$11+$12)/5))/log(2)*1200 - (2.2*$1  -480) - 4900) w points ls 2 pt 7 notitle,\
	"run3.txt" u ($1*2.2 -1860):(log(78000000/$2 / (($3+$4+$5+$6+$7+$8+$9+$10+$11+$12)/5))/log(2)*1200 - (2.2*$1 -1860) - 4900) w points ls 3 pt 7 notitle,\
	"run4.txt" u ($1*2.2  +800):(log(78000000/$2 / (($3+$4+$5+$6+$7+$8+$9+$10+$11+$12)/5))/log(2)*1200 - (2.2*$1  +800) - 4900) w points ls 4 pt 7 notitle
pause -1
