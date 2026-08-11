#!/usr/bin/env bash

sed 's/<path/<path fill="#282828"/' favicon.svg \
    | magick -background '#fcf2c7' -size 285x256 - \
             -alpha off -colors 256 \
             -gravity Center -extent 256x256 favicon-256x256.png

sed 's/<path/<path fill="#282828"/' favicon.svg \
    | magick -background '#fcf2c7' -size 285x256 - \
             -gravity Center -extent 256x256 \
             -alpha off -colors 256 \
             -resize 192x192 favicon-192x192.png

sed 's/<path/<path fill="#282828"/' favicon.svg \
    | magick -background '#fcf2c7' -size 285x256 - \
             -gravity Center -extent 256x256 \
             -alpha off -colors 256 \
             -resize 128x128 favicon-128x128.png

sed 's/<path/<path fill="#282828"/' favicon.svg \
    | magick -background '#fcf2c7' -size 285x256 - \
             -gravity Center -extent 256x256 \
             -alpha off -colors 256 \
             -resize 64x64 favicon-64x64.png

sed 's/<path/<path fill="#282828"/' favicon.svg \
    | magick -background '#fcf2c7' -size 285x256 - \
             -gravity Center -extent 256x256 \
             -alpha off -colors 256 \
             -resize 32x32 favicon-32x32.png

sed 's/<path/<path fill="#282828"/' favicon.svg \
    | magick -background '#fcf2c7' -size 570x512 - \
             -alpha off -colors 256 \
             -gravity Center -extent 512x512 avatar.webp

sed 's/<path/<path fill="#282828"/' favicon.svg \
| magick -background '#fcf2c7' -size 285x256 - \
         -gravity Center -extent 256x256 \
      \( -clone 0 -resize 128x128 \) \
      \( -clone 0 -resize  96x96 \) \
      \( -clone 0 -resize  64x64 \) \
      \( -clone 0 -resize  48x48 \) \
      \( -clone 0 -resize  32x32 \) \
      \( -clone 0 -resize  16x16 \) \
         -alpha off -colors 256 favicon.ico
