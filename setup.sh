#!/bin/sh

# Functions
is_package_installed() {
    package_name="$1"
    if path=$(command -v "$package_name" 2>/dev/null); then
        return 0
    else
        return 1
    fi
}

show_package_missing_warning() {
    echo "\nwarning: '$1' is not installed"
    echo "suggestion: use 'sudo apt install $1'"
}

if ! is_package_installed git; then
    show_package_missing_warning git
    exit;
fi

if ! is_package_installed unzip; then
    show_package_missing_warning unzip
    exit;
fi

sh scripts/zshrc_setup.sh
sh scripts/nvim_setup.sh