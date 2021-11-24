#!/bin/sh
    for i in ghostcopy/*.mp3
do
    album=$(mp3info -p %l "$i")
          convert "$i.png" -pointsize 36 -fill white \
           -stroke black -strokewidth 25 -annotate +300+700 "$album" \
           -stroke white -strokewidth 20 -annotate +300+700 "$album" \
           -stroke black -strokewidth 15 -annotate +300+700 "$album" \
           -stroke white -strokewidth 10 -annotate +300+700 "$album" \
           -stroke black -strokewidth  5 -annotate +300+700 "$album" \
           -stroke none                  -annotate +300+700 "$album" \
           "$i.png"
      done

