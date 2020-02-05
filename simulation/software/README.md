Simulation analysis tooling
===========================

This tooling is intended to do transient simulation for various control
voltages using ngspice and to analyze the resulting time series.

GNU parallel is recommended for faster execution.

Usage
-----

To generate the netlist: Open `../vco/` in KiCAD, and export a netlist in spice format
(`vco.cir`).

To generate the joblist:

`bash generate_joblist.sh ../vco/vco.cir V2 0 5 0.5 sawtooth triangle square_ctl  > /tmp/jobs.txt`

The joblist can be executed with either `parallel < /tmp/jobs.txt` or `bash /tmp/jobs.txt`.

Results are placed in `/tmp/analog-synth-spice/`.

TODO: tooling for further analysis
