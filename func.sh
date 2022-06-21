#!/bin/bash

function facter {
result=1
n=5
while(( n >= 1 ))
do
(( result=n*result ))
(( n = n - 1 ))
done
echo $result
}


facter
