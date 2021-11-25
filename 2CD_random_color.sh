#!/bin/sh
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
      r=$(( $RANDOM % 255 ));
      g=$(( $RANDOM % 255 ));
      b=$(( $RANDOM % 255 ));
          convert "$i" -stroke green -fuzz 15% -strokewidth 1000 -draw 'stroke-linecap round line 500,500 500,500.00001' -colorize $r,$g,$b "$i"
      done
    )
done
