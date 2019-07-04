set xlabel "control voltage"
set ylabel "deviation in cents"
set cblabel "data point index"
set xrange [0:2]
set yrange [-30:30]

plot\
	"<(head -n 2000 2019-05-25_pair5_voltagereg.txt)" u ($1/2000):( (log($2/$3*10000)/log(2) - ($1/2000))*1200 + 420 -8510) : 0 with points palette pt 4 title "top: regulated voltage",\
	"<(head -n 2000 2019-05-25_pair5.txt)" u ($1/2000):( (log($2/$3*10000)/log(2) - ($1/2000))*1200 -8510) : 0 with points palette pt 1 title "bottom: unregulated voltage"
pause -1
