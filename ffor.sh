#!/bin/bash 

for i in {1..100}
do
    echo ===================
    echo "Number $i: $(date + %Y-%m-%d-%H:%M:%S)"
    ( time ( echo $i ; sleep 1 ) ) 2>&1 | sed 's/^/   /'
done | tee timing.log