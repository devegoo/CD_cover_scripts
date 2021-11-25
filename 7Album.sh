#!/bin/sh
    for i in ghostcopy/*.mp3
do
    album=$(mp3info -p %l "$i")
          convert "$i.png" -pointsize 52 -fill black -annotate +300+700 "$album" "$i.png"
      done

