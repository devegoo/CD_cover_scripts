#!/bin/sh
    for i in ghostcopy/*.mp3
do
    track=$(mp3info -p %t "$i")
          convert "$i.png" -pointsize 36 -fill black -annotate +300+800 "$track" "$i.png"
      done
