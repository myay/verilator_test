#!/bin/bash

rm -r obj_dir

verilator --binary --trace --timescale 1ns/1ps --assert --top-module adder_tb -I *.sv

cd obj_dir

./Vadder_tb

gtkwave dump.vcd
