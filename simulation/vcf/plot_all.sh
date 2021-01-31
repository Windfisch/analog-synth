#!/bin/bash

PARALLEL=parallel

if [ x`which $PARALLEL` == x ]; then
	echo 'Warning: GNU parallel was not found in your PATH. (Required for parallelization).'
	echo '         Using `sh` as fallback executor instead. Things will be slow.'
	sleep 5
	PARALLEL=sh
fi

for plot in --thd --bode; do
	for file in *.cir; do
		echo python plot.py $plot $file -p
	done
done | parallel
