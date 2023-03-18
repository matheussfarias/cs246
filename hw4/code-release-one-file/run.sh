#!/bin/bash

clear

export PIN_ROOT=/n/home13/madiletta/workspace/course_code/cs148_248_computer_architecture/pin

rm -rf ./obj-intel64/* >> /dev/null
make


#$PIN_ROOT/pin -t ./obj-intel64/hw4.so -config config-base -outfile base.out -max_inst 1000 -- /bin/ls
$PIN_ROOT/pin -t ./obj-intel64/hw4.so -config config-base -outfile base.out -- /bin/ls

