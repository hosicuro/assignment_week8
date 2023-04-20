#!/bin/bash

dir="files/"

for file in $dir/*.txt; do
    filename=$(basename $file)
    for j in {A..Z}; do
        if [[ $filename == $j* ]]; then
            mv $file ${j,}
        fi
    done
    for i in {a..z}; do
        if [[ $filename == $i* ]]; then
            mv $file $i
        fi
    done
done
