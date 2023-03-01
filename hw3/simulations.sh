# naive
bpb_size='128'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='256'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='512'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='1024'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='2048'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='4096'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='8192'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

# 2 bits
bpb_size='128'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='256'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='512'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='1024'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='2048'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='4096'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

bpb_size='8192'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_a/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

# 2-level adaptive ht 12
ht_size='12'
pt_size='128'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='12'
pt_size='256'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='12'
pt_size='512'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='12'
pt_size='1024'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='12'
pt_size='2048'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='12'
pt_size='4096'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

# 2-level adaptive ht 14
ht_size='14'
pt_size='128'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='14'
pt_size='256'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='14'
pt_size='512'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='14'
pt_size='1024'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='14'
pt_size='2048'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='14'
pt_size='4096'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

# 2-level adaptive ht 16
ht_size='16'
pt_size='128'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='16'
pt_size='256'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='16'
pt_size='512'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='16'
pt_size='1024'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='16'
pt_size='2048'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10

ht_size='16'
pt_size='4096'
sed -i "s/^#define HT_LENGTH.*/#define HT_LENGTH ${ht_size}/" ./hw3_b/hw3.cpp
sed -i "s/^#define SIZE.*/#define SIZE ${pt_size}/" ./hw3_b/hw3.cpp
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10