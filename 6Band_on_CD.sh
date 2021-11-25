#!/bin/sh
    for i in ghostcopy/*.mp3
do
    band=$(mp3info -p %a "$i")
          convert "$i.png" -pointsize 72 -fill black -annotate +400+200 "$band" "$i.png"
      done
