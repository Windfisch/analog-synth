#!/bin/bash

# Usage: $0 cirfile.cir running_variable first_value last_value stepsize variable [variable] ...

CIRPATH="$(realpath "$1")"
CIRDIR="$(dirname "$CIRPATH")"
CIRBASE="$(basename "$CIRPATH")"
VARIABLE="$2"
FIRST="$3"
LAST="$4"
STEP="$5"

N_STEPS=10

shift 5
SIGNALS="$@"

TMPDIR="/tmp/analog-synth-spice" 
# IMPORTANT: no trailing slash, otherwise ngspice fails with
# a totally misleading error message ("wrdata: too few arguments")

mkdir -p "$TMPDIR"

Q3=`perl -e "print($FIRST/4+3*$LAST/4)"`
Q1=`perl -e "print(3*$FIRST/4+$LAST/4)"`

function fn {
	echo "$TMPDIR/data_${VARIABLE}_${1}.txt"
}

function job {
	VALUE="$1"
	DURATION="$2"
	N_STEPS="$3"
	TIMESTEP=`perl -e "print($DURATION / $N_STEPS)"`
	echo "cd '$CIRDIR'; { cat '$CIRPATH' | sed 's/\.tran.*$/.tran ${TIMESTEP}u ${DURATION}u uic/'; echo -e \".control\n alter $VARIABLE $VALUE\n run\n wrdata '$TMPDIR/data_${VARIABLE}_${VALUE}.txt' $SIGNALS\n.endc\"; } | ngspice"
}

{
job $Q1 100000 1;
job $Q3 100000 1;
} | parallel --bar

F1=$(python analyze.py < `fn $Q1` | cut -d' ' -f1)
F2=$(python analyze.py < `fn $Q3` | cut -d' ' -f1)

echo $F1 @ $Q1
echo $F2 @ $Q3

#for VALUE in `seq $FIRST $STEP $LAST`; do
#	echo `perl -e "print( exp( log($F1) + (log($F2)-log($F1))*($VALUE-$Q1)/($Q3-$Q1) ) )"` @ $VALUE
#done

for VALUE in `seq $FIRST $STEP $LAST`; do
	FREQ=$(echo `perl -e "print( exp( log($F1) + (log($F2)-log($F1))*($VALUE-($Q1))/($Q3-($Q1)) ) )"`)
	DURATION=`perl -e "print(4*1000000/$FREQ)"`
	job $VALUE $DURATION 200
done | parallel --progress --bar --eta

for VALUE in `seq $FIRST $STEP $LAST`; do
	FN="$TMPDIR/data_${VARIABLE}_${VALUE}.txt"
	echo $VALUE `python analyze.py < "$FN"` `python median.py 7 < "$FN"` `python median.py 9 < "$FN"` `python median.py 11 < "$FN"`
done
