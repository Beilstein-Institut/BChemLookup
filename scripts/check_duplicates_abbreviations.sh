#!/bin/bash
if [ ! -f abbreviations.smi ]; then
  echo "abbreviatio.smi file not found!"
  exit 1
fi  

duplicates=$(sort abbreviations.smi | uniq -d)
if [ -n "$duplicates" ]; then
  echo "Duplicate entries found in abbreviations.smi:"
  echo "$duplicates"
  exit 1
fi 

echo "No duplicate entries found."
