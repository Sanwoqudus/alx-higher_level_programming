#!/bin/bash

# Specify the directory path where you want to make files executable
directory_path="/alx-higher_level_programming/0x02-python-import_modules"

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Directory not found: $directory_path"
    exit 1
fi

# Use a for loop to iterate through files in the directory
for file in "$directory_path"/*; do
    # Check if the file is a regular file (not a directory or symlink)
    if [ -f "$file" ]; then
        # Make the file executable using chmod
        chmod +x "$file"
        echo "Made $file executable"
    fi
done

echo "All files in $directory_path are now executable."

