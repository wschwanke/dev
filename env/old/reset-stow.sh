#!/bin/bash

# Script to unstow and restow all folders in the current directory

# Set the target directory (default is parent directory)
# You can change this or add as a command line parameter
TARGET_DIR="${1:-..}"

# Optional verbosity flag
VERBOSE="-v"

echo "Unstowing and restowing all directories in $(pwd) to target: $TARGET_DIR"
echo "------------------------"

# Loop through all directories in the current folder
for dir in */; do
    # Remove trailing slash
    dir=${dir%/}
    
    # Skip hidden directories
    if [[ $dir == .* ]]; then
        echo "Skipping hidden directory: $dir"
        continue
    fi
    
    echo "Processing: $dir"
    
    # Unstow (-D)
    echo "  Unstowing $dir..."
    stow -D $VERBOSE -t "$TARGET_DIR" "$dir"
    
    # Restow
    echo "  Restowing $dir..."
    stow $VERBOSE -t "$TARGET_DIR" "$dir"
    
    echo "  Done with $dir"
    echo "------------------------"
done

echo "All directories have been unstowed and restowed!"
