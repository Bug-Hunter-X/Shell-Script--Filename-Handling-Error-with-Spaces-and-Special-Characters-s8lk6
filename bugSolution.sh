#!/bin/bash

# This script correctly processes files, even those with spaces or special characters

find . -maxdepth 1 -name "*.txt" -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # Now, the file variable is properly quoted when used,
  # preventing issues with spaces and special characters
  # Example using the file name (safely):
  # grep "pattern" "$file"
  # Or
  # cat "$file"
  # Or even more advanced like
  # awk '{print $1}' "$file"
  # ... other file processing commands that can now handle special characters correctly
done

# This uses find's -print0 to safely handle filenames with spaces or special characters
# and the while loop with IFS= read -r -d $'\0' ensures each filename is correctly parsed.