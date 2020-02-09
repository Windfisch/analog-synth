#!/bin/bash

CIRPATH="$(realpath "$1")"
CIRDIR="$(dirname "$CIRPATH")"
CIRBASE="$(basename "$CIRPATH")"
VARIABLE="$2"
FIRST="$3"
LAST="$4"
STEP="$5"

N_STEPS=1000

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
	echo "cd '$CIRDIR'; { cat '$CIRPATH' | sed 's/\.tran.*$/.tran ${TIMESTEP}u ${DURATION}u/'; echo -e \".control\n alter $VARIABLE $VALUE\n run\n wrdata '$TMPDIR/data_${VARIABLE}_${VALUE}.txt' $SIGNALS\n.endc\"; } | ngspice"
}

{
job $Q1 10000 10000;
job $Q3 10000 10000;
} | parallel --bar

F1=$(python analyze.py < `fn $Q1` | cut -d' ' -f1)
F2=$(python analyze.py < `fn $Q3` | cut -d' ' -f1)

echo $F1 @ $Q1
echo $F2 @ $Q3

#for VALUE in `seq $FIRST $STEP $LAST`; do
#	echo `perl -e "print( exp( log($F1) + (log($F2)-log($F1))*($VALUE-$Q1)/($Q3-$Q1) ) )"` @ $VALUE
#done

for VALUE in `seq $FIRST $STEP $LAST`; do
	FREQ=$(echo `perl -e "print( exp( log($F1) + (log($F2)-log($F1))*($VALUE-$Q1)/($Q3-$Q1) ) )"`)
	DURATION=`perl -e "print(7*1000000/$FREQ)"`
	job $VALUE $DURATION 1000
done | parallel --progress --bar --eta

for VALUE in `seq $FIRST $STEP $LAST`; do
	echo $VALUE `python analyze.py < "$TMPDIR/data_${VARIABLE}_${VALUE}.txt"`
done
