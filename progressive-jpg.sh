#!/bin/bash

find . -type f -iname "*.jpg" -print0 | while IFS= read -r -d '' file; do
    jpegtran -progressive -copy none -outfile "$file".tmp "$file" && mv "$file".tmp "$file"
    echo "Converted: $file"
done