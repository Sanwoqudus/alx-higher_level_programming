#!/bin/bash

# Source directory (where the files are located)
source_dir="/alx-higher_level_programming"

# Destination directory (where you want to move the files)
destination_dir="/alx-higher_level_programming/0x00-python-hello_world"

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Source directory not found: $source_dir"
    exit 1
fi

# Check if the destination directory exists
if [ ! -d "$destination_dir" ]; then
    echo "Destination directory not found: $destination_dir"
    exit 1
fi

# Use a for loop to iterate through files in the source directory
for file in "$source_dir"/*; do
    # Check if the file is a regular file (not a directory or symlink)
    if [ -f "$file" ]; then
        # Move the file to the destination directory using mv
        mv "$file" "$destination_dir"
        echo "Moved $file to $destination_dir"
    fi
done

echo "All files from $source_dir have been moved to $destination_dir."
