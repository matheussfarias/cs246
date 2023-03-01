# 2 bits
bpb_size='128'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
cd ./hw3_a/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_a_128 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_a_128 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='256'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
cd ./hw3_a/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_a_256 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_a_256 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='512'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
cd ./hw3_a/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_a_512 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_a_512 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='1024'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
cd ./hw3_a/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_a_1024 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_a_1024 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='2048'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
cd ./hw3_a/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_a_2048 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_a_2048 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='4096'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
cd ./hw3_a/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_a_4096 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_a_4096 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

bpb_size='8192'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
cd ./hw3_a/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_a_8192 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_a_8192 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

# 2 level 16
ht_size='16'
pt_size='128'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_128 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_128 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16'
pt_size='256'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_256 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_256 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16'
pt_size='512'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_512 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_512 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16'
pt_size='1024'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_1024 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_1024 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16'
pt_size='2048'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_2048 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_2048 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16'
pt_size='4096'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_4096 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_4096 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

