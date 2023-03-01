# naive
bpb_size='128'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25 -o quantum_naive_128
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10 -o deal_naive_128
cd ..

bpb_size='256'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/libquantum_O3 400 25 -o quantum_naive_128
$PIN_ROOT/pin -t obj-intel64/hw3.so -- $HOME/shared_data/benchmarks/dealII_O3 10 -o deal_naive_128
cd ..
