#!/bin/bash

REPO_URL="https://media.githubusercontent.com/media/tantowijh/portfolio-assets/refs/heads/main"
TARGET_DIR="${1:-.}"

find "$TARGET_DIR" -type f -name "*.webp" | while read -r file; do
    # Remove leading ./ if present
    clean_path="${file#./}"
    echo "$REPO_URL/$clean_path"
done