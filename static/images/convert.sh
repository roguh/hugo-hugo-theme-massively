#!/bin/sh
set +x
inkscape --export-png=background.png background.svg
convert background.png -strip -interlace Plane -gaussian-blur 0.05 -quality 95 background.jpg
# convert background.png -quality 50 -define webp:lossless=true background.webp
convert background.png -quality 50 background.webp
