#!/bin/bash

if [ $# -eq 0 ]; then
    wc -l -w -c | awk '{printf "%d %d %d\n", $1, $2, $3}'
else
    if [ ! -f "$1" ]; then
        echo "Error: File '$1' not found." >&2
        exit 1
    fi
    
    result=$(wc -l -w -c "$1")
    
    lines=$(echo "$result" | awk '{print $1}')
    words=$(echo "$result" | awk '{print $2}')
    bytes=$(echo "$result" | awk '{print $3}')
    
    printf "%d %d %d %s\n" "$lines" "$words" "$bytes" "$1"
fi
