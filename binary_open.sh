#!/bin/bash
set -eux

source ./venv/bin/activate
python -m memory_profiler binary_open.py resource/t1M.txt
python -m memory_profiler binary_open.py resource/t10M.txt
python -m memory_profiler binary_open.py resource/t100M.txt
python -m memory_profiler binary_open.py resource/t1000M.txt

./line_profiler/kernprof.py -l -v binary_open.py resource/t1M.txt
./line_profiler/kernprof.py -l -v binary_open.py resource/t10M.txt
./line_profiler/kernprof.py -l -v binary_open.py resource/t100M.txt
./line_profiler/kernprof.py -l -v binary_open.py resource/t1000M.txt
