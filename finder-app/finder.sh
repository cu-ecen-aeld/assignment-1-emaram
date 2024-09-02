#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: there must be 2 parameters: filedir and searchdir"
    exit 1
fi

filesdir=$1
searchdir=$2

if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a directory in this system"
    exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)
num_matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"