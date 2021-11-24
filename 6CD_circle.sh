#!/bin/sh
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
          convert "$i" -stroke white  -fill green  -strokewidth 5 \
          -draw 'ellipse 500,500 120,120 0,360' "$i"
      done
    )
done
