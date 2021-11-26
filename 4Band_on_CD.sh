#!/bin/sh
    for i in ghostcopy/*.mp3
do
    band=$(mp3info -p %a "$i")
          convert "$i.png" -pointsize 72 -fill white \
           -stroke black -strokewidth 25 -annotate +400+200 "$band" \
           -stroke white -strokewidth 20 -annotate +400+200 "$band" \
           -stroke black -strokewidth 15 -annotate +400+200 "$band" \
           -stroke white -strokewidth 10 -annotate +400+200 "$band" \
           -stroke black -strokewidth  5 -annotate +400+200 "$band" \
           -stroke none                  -annotate +400+200 "$band" \
           "$i.png"
      done
