#!/bin/bash
set -eux

source ./venv/bin/activate
python -m memory_profiler file_open.py resource/t1M.txt 0
python -m memory_profiler file_open.py resource/t1M.txt 1
python -m memory_profiler file_open.py resource/t1M.txt 2
python -m memory_profiler file_open.py resource/t1M.txt 3

python -m memory_profiler file_open.py resource/t10M.txt 0
python -m memory_profiler file_open.py resource/t10M.txt 1
python -m memory_profiler file_open.py resource/t10M.txt 2
python -m memory_profiler file_open.py resource/t10M.txt 3

python -m memory_profiler file_open.py resource/t100M.txt 0
#python -m memory_profiler file_open.py resource/t100M.txt 1
#python -m memory_profiler file_open.py resource/t100M.txt 2
#python -m memory_profiler file_open.py resource/t100M.txt 3

python -m memory_profiler file_open.py resource/t1000M.txt 0
#python -m memory_profiler file_open.py resource/t1000M.txt 1
#python -m memory_profiler file_open.py resource/t1000M.txt 2
#python -m memory_profiler file_open.py resource/t1000M.txt 3

./line_profiler/kernprof.py -l -v file_open.py resource/t1M.txt 0
./line_profiler/kernprof.py -l -v file_open.py resource/t1M.txt 1
./line_profiler/kernprof.py -l -v file_open.py resource/t1M.txt 2
./line_profiler/kernprof.py -l -v file_open.py resource/t1M.txt 3

./line_profiler/kernprof.py -l -v file_open.py resource/t10M.txt 0
./line_profiler/kernprof.py -l -v file_open.py resource/t10M.txt 1
./line_profiler/kernprof.py -l -v file_open.py resource/t10M.txt 2
./line_profiler/kernprof.py -l -v file_open.py resource/t10M.txt 3

./line_profiler/kernprof.py -l -v file_open.py resource/t100M.txt 0
./line_profiler/kernprof.py -l -v file_open.py resource/t100M.txt 1
./line_profiler/kernprof.py -l -v file_open.py resource/t100M.txt 2
./line_profiler/kernprof.py -l -v file_open.py resource/t100M.txt 3

./line_profiler/kernprof.py -l -v file_open.py resource/t1000M.txt 0
./line_profiler/kernprof.py -l -v file_open.py resource/t1000M.txt 1
./line_profiler/kernprof.py -l -v file_open.py resource/t1000M.txt 2
./line_profiler/kernprof.py -l -v file_open.py resource/t1000M.txt 3
