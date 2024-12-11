#!/bin/bash

# Improved script to find the largest number in a file, handling non-numeric input.

input_file="numbers.txt"

largest_number=0

while IFS= read -r number;
do
  # Check if the input is a number
  if [[ "$number" =~ ^-?[0-9]+$ ]]; then
    if (( number > largest_number )); then
      largest_number="$number"
    fi
  else
    echo "Warning: Non-numeric input '$number' encountered. Skipping."
  fi
done < "$input_file"

echo "Largest number: $largest_number"