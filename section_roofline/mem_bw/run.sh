#!/bin/sh

clear


NUM_CORES=1

######################################################################
######################################################################
# Configure OMP Flags
export OMP_SCHEDULE=static
export OMP_PROC_BIND=close # close
export OMP_PLACES=cores # threads
export OMP_NUM_THREADS=$NUM_CORES

# Configure NUMA Flags
export NUMA_FLAGS='numactl --membind 0 --cpunodebind 0' # put all data on socket 0

# build and run
rm stream_c.exe

gcc -O0 -fopenmp stream.c -o stream_c.exe # double precision
        
$NUMA_FLAGS ./stream_c.exe 



