#!/bin/bash

#sort two files 

(( ps -aux))
pro=$!
(( uname ))
pro2=$!
wait $pro
wait $pro2
echo $pro
echo $pro2
