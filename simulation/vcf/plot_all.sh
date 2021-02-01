#!/bin/bash

PARALLEL=parallel

if [ x`which $PARALLEL` == x ]; then
	echo 'Warning: GNU parallel was not found in your PATH. (Required for parallelization).'
	echo '         Using `sh` as fallback executor instead. Things will be slow.'
	sleep 5
	PARALLEL=sh
fi

if [ x$1 == x-n ] || [ x$1 == --dry-run ]; then
	PARALLEL=cat
fi

for plot in --thd --bode; do
	for file in *.cir; do
		if echo $file | grep -q 2stage; then
			TWOSTAGE=-2
		else
			TWOSTAGE=''
		fi
		echo python plot.py $plot $file -p $TWOSTAGE
	done
done | $PARALLEL
