#!/bin/sh
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
          convert "$i" -stroke white -strokewidth 150 -draw 'stroke-linecap round line 500,500 500,500.00001' "$i"
      done
    )
done
