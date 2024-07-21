#!/bin/bash 
for i in {1..100}
do 
    echo Number ${i}
done | tee for.txt

echo ===================================

for ((i=1; i<=100; i++));
do
    echo $i
done | tee cir.txt

echo ===================================

i=1
while [[ $i -lt 100 ]]
do 
    echo "While $i"
    ((i += 1))
done | tee while.txt
