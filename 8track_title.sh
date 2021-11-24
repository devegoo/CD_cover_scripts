#!/bin/sh
    for i in ghostcopy/*.mp3
do
    track=$(mp3info -p %t "$i")
          convert "$i.png" -pointsize 36 -fill white \
           -stroke black -strokewidth 25 -annotate +300+800 "$track" \
           -stroke white -strokewidth 20 -annotate +300+800 "$track" \
           -stroke black -strokewidth 15 -annotate +300+800 "$track" \
           -stroke white -strokewidth 10 -annotate +300+800 "$track" \
           -stroke black -strokewidth  5 -annotate +300+800 "$track" \
           -stroke none                  -annotate +300+800 "$track" \
           "$i.png"
      done
