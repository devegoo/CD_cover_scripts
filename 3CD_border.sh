#!/bin/sh
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
          convert "$i" -stroke silver -strokewidth 5 -fill none\
          -draw 'ellipse 500,500 500,500 0,360' "$i"
      done
    )
done
