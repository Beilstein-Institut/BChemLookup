#!/bin/bash
if [ ! -f abbreviations.smi ]; then
  echo "abbreviations.smi file not found!"
  exit 1
fi  

# Extract the abbreviation column (first tab-separated field)
cut -f1 abbreviations.smi | sort | uniq -d > /tmp/duplicates.txt

if [ -s /tmp/duplicates.txt ]; then
  echo "Duplicate abbreviations found:"
  cat /tmp/duplicates.txt
  exit 1
fi

echo "No duplicate abbreviations found."
