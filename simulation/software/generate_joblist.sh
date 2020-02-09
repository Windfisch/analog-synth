#!/bin/bash

CIRPATH="$(realpath "$1")"
CIRDIR="$(dirname "$CIRPATH")"
CIRBASE="$(basename "$CIRPATH")"
VARIABLE="$2"
FIRST="$3"
LAST="$4"
STEP="$5"

shift 5
SIGNALS="$@"

TMPDIR="/tmp/analog-synth-spice" 
# IMPORTANT: no trailing slash, otherwise ngspice fails with
# a totally misleading error message ("wrdata: too few arguments")

mkdir -p "$TMPDIR"

for VALUE in `seq $FIRST $STEP $LAST`; do
	echo "cd '$CIRDIR'; { cat '$CIRPATH'; echo -e \".control\n alter $VARIABLE $VALUE\n run\n wrdata '$TMPDIR/data_${VARIABLE}_${VALUE}.txt' $SIGNALS\n.endc\"; } | ngspice"
done | parallel --progress --bar --eta

for VALUE in `seq $FIRST $STEP $LAST`; do
	echo $VALUE `python analyze.py < "$TMPDIR/data_${VARIABLE}_${VALUE}.txt"`
done
