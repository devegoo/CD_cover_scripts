#!/bin/sh
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
          convert "$i" -stroke green -fuzz 15% -strokewidth 1000 -draw 'stroke-linecap round line 500,500 500,500.00001' "$i"
      done
    )
done
