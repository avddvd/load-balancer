#!/bin/bash -x

current_commit=$(git rev-parse HEAD | cut -c 1-10)
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $dir
name="nginx-lb"

