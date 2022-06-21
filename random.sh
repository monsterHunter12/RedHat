#!/bin/bash
# to get a random number between 1 and 6 
# RANDOM % upper_limit + lower_limit
rand=$(( (RANDOM % 6) +1 ))

echo $rand
