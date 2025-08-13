#!/bin/bash
if [ ! -f abbreviations.smi ]; then
  echo "abbreviations.smi file not found!"
  exit 1
fi  

# Extract the string before the first space on each line (abbreviation)
cut -d' ' -f1 abbreviations.smi | sort | uniq -d > /tmp/duplicates.txt

if [ -s /tmp/duplicates.txt ]; then
  echo "Duplicate abbreviations found (before first space):"
  cat /tmp/duplicates.txt
  exit 1
fi

echo "No duplicate abbreviations found (before first space)."
