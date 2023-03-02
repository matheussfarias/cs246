# 2 level 12
ht_size='4096'
pt_size='4'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_4 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='4096'
pt_size='8'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_8 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='4096'
pt_size='16'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_16 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='4096'
pt_size='32'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_32 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='4096'
pt_size='64'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_12_64 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

# 2 level 14
ht_size='16384'
pt_size='4'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_4 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='16384'
pt_size='8'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_8 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='16384'
pt_size='16'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_16 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='16384'
pt_size='32'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_32 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='16384'
pt_size='64'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_14_64 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

# 2 level 16
ht_size='65536'
pt_size='4'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_4 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='65536'
pt_size='8'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_8 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='65536'
pt_size='16'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_16 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='65536'
pt_size='32'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_32 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

ht_size='65536'
pt_size='64'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
cd ./hw3_b/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_b_16_64 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
cd ..

