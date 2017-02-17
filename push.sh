#!/bin/bash -x 

. ./env.sh

docker push $name:$current_commit 
