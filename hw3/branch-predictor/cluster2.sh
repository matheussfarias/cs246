# 2 level 12
ht_size='4096'
pt_size='128'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_128 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_12_128 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='4096'
pt_size='256'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_256 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_12_256 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='4096'
pt_size='512'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_512 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_12_512 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='4096'
pt_size='1024'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_1024 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_12_1024 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='4096'
pt_size='2048'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_2048 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_12_2048 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='4096'
pt_size='4096'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_4096 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_12_4096 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

# 2 level 14
ht_size='16384'
pt_size='128'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_128 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_14_128 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16384'
pt_size='256'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_256 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_14_256 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16384'
pt_size='512'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_512 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_14_512 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16384'
pt_size='1024'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_1024 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_14_1024 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16384'
pt_size='2048'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_2048 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_14_2048 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='16384'
pt_size='4096'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_4096 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_14_4096 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

# 2 level 16
ht_size='65536'
pt_size='128'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_128 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_128 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='65536'
pt_size='256'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_256 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_256 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='65536'
pt_size='512'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_512 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_512 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='65536'
pt_size='1024'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_1024 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_1024 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='65536'
pt_size='2048'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_2048 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_2048 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

ht_size='65536'
pt_size='4096'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_4096 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -o deal_b_16_4096 -- $HOME/shared_data/benchmarks/dealII_O3 10
cd ..

