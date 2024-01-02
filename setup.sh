#!/bin/sh

# Remove .zshrc file
zshrc_path="$HOME/.zshrc"

# Check if the file exists before attempting to remove
if [ -e "$zshrc_path" ]; then
    echo "Removing .zshrc file..."
    # Attempt to remove the file
    rm "$zshrc_path"
    
    # Check the exit status of the rm command
    if [ $? -eq 0 ]; then
        echo "Removal completed successfully."
    else
        exit
    fi
fi

target_link=$zshrc_path
source_file="$HOME/dotfiles/zsh/.zshrc"

# Check if the source file exists
if [ -e "$source_file" ]; then
    # Create a symbolic link
    ln -s "$source_file" "$target_link"
    
    # Check the exit status of the ln command
    if [ $? -eq 0 ]; then
        echo "Symbolic link created successfully: $target_link -> $source_file"
    else
        echo "Error: Failed to create symbolic link."
    fi
else
    echo "Error: Source file does not exist: $source_file"
fi
