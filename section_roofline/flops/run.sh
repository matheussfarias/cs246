#!/bin/bash

clear


NUM_CORES=1

######################################################################
######################################################################
# Configure OMP Flags
export OMP_SCHEDULE=static
export OMP_PROC_BIND=close # close
export OMP_PLACES=cores # threads
export OMP_NUM_THREADS=$NUM_CORES


# Modify script so each core gets 10kB of data
# N:total_cache:num_threads - N:360kB:32 - 360kB total memory size, 36 threads, each core gets 10kB

# Note: add _sp after peakflops to get single precision results
likwid -t peakflops -W N:320kB:32
likwid-bench -t peakflops_sse -W N:320kB:32
likwid-bench -t peakflops_avx -W N:320kB:32
likwid-bench -t peakflops_avx_fma -W N:320kB:32

