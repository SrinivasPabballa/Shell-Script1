#!/bin/bash

for i in {1..20}
do 
  echo $i
done  

R="/e[31m"

for i in {apple,ball,cat,dog,elephant}
do 
  echo -e $i $R
done  