#!/bin/sh
mv *.mp3 ghostcopy/
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
      r=$(( $RANDOM % 255 ));
      g=$(( $RANDOM % 255 ));
      b=$(( $RANDOM % 255 ));
          convert "$i" -size 1000x1000 plasma:fractal -blur 0x10 -fuzz 15%  -draw 'stroke-linecap round line 500,500 500,500.00001' -colorize $r,$g,$b "$i"
      done
    )
done
