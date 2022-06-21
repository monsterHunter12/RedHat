#!/bin/bash

$echo $1 | openssl aes-256-ecb -a -salt -pass pass:Pass@2022

$echo $1 | openssl aes-256-ecb -d -a -pass pass:Pass@2022
