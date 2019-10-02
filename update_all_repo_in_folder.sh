#!/usr/bin/env bash

dir=$(pwd)

for d in */ ; do
    cd ${dir}/${d}
    echo '\n'$(pwd)
    git pull
    cd ${dir}
done
