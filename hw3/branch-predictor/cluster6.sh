# naive
bpb_size='4'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_4 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25 &
cd ..

bpb_size='8'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_8 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25 &
cd ..

bpb_size='16'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_16 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25 &
cd ..

bpb_size='32'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_32 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25 &
cd ..

bpb_size='64'
sed -i "s/^#define SIZE.*/#define SIZE ${bpb_size}/" ./hw3_naive/hw3.cpp
cd ./hw3_naive/
make
$PIN_ROOT/pin -t obj-intel64/hw3.so -o quantum_naive_64 -- $HOME/shared_data/benchmarks/libquantum_O3 400 25 &
cd ..