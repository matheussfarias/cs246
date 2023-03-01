# naive
bpb_size='128'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_128 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_naive_128 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='256'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_256 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_naive_256 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='512'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_512 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_naive_512 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='1024'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_1024 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_naive_1024 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='2048'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_2048 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_naive_2048 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='4096'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_4096 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_naive_4096 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='8192'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_8192 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_naive_8192 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..