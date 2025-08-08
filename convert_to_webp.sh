#!/bin/bash
find . -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.tiff" -o -iname "*.tif" \) -print0 \
| xargs -0 -I {} bash -c 'f="{}"; dir=$(dirname "$f"); base=$(basename "$f"); name="${base%.*}"; cwebp -q 80 "$f" -o "$dir/$name.webp"'