#!/bin/bash -x 

. ./env.sh

docker build -t $name:$current_commit . 
