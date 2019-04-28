#!/bin/bash
set -eux

source ../venv/bin/activate
# for loop
../line_profiler/kernprof.py -l -v exec_generate_list.py 0 1000
../line_profiler/kernprof.py -l -v exec_generate_list.py 0 10000
../line_profiler/kernprof.py -l -v exec_generate_list.py 0 100000
../line_profiler/kernprof.py -l -v exec_generate_list.py 0 1000000

# List Comprehension
../line_profiler/kernprof.py -l -v exec_generate_list.py 1 1000
../line_profiler/kernprof.py -l -v exec_generate_list.py 1 10000
../line_profiler/kernprof.py -l -v exec_generate_list.py 1 100000
../line_profiler/kernprof.py -l -v exec_generate_list.py 1 1000000
