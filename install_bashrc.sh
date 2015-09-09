#!/bin/bash
source_file="$(cd "$(dirname "$0")" && pwd)"'/.bashrc'
import_text="
# импорт настроек консоли
if [ -f \"$source_file\" ]; then
    source \"$source_file\"
fi"

file=$HOME"/.bashrc"
if [ $(id -u) -eq 0 ]; then
    file="/root/.bashrc"
fi

if [ $(grep -cF "$source_file" -r "$file") -eq 0 ]; then
    echo "$import_text" >> "$file"
    echo "imported in: $file"
fi