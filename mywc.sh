#!/bin/bash

lines=0
words=0
bytes=0

if [ $# -eq 0 ]; then
  
  input=$(cat /dev/stdin)
else
    
    if [ ! -f "$1" ]; then
        echo "File '$1' not found."
        exit 1
    fi
  input=$(cat "$1")
fi

lines=$(echo "$input" | wc -l)
words=$(echo "$input" | wc -w)
bytes=$(echo "$input" | wc -c)

if [ $# -eq 0 ]; then
printf "%d %d %d\n" "$lines" "$words" "$bytes"
else
printf "%d %d %d %s\n" "$lines" "$words" "$bytes" "$1"
fi

