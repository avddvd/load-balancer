#!/bin/bash -x

. ./env.sh

docker run -it -p 80:80 $name:$current_commit 
