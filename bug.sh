#!/bin/bash

# This script attempts to find the largest number in a file, but contains a subtle bug.

input_file="numbers.txt"

largest_number=0

while IFS= read -r number;
do
  if [[ "$number" -gt "$largest_number" ]]; then
    largest_number="$number"
  fi
done < "$input_file"

echo "Largest number: $largest_number"