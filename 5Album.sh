#!/bin/sh
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
          convert "$i" -font Candice -pointsize 72 -fill white \
           -stroke black -strokewidth 25 -annotate +300+700 'Discography' \
           -stroke white -strokewidth 20 -annotate +300+700 'Discography' \
           -stroke black -strokewidth 15 -annotate +300+700 'Discography' \
           -stroke white -strokewidth 10 -annotate +300+700 'Discography' \
           -stroke black -strokewidth  5 -annotate +300+700 'Discography' \
           -stroke none                  -annotate +300+700 'Discography' \
           "$i"
      done
    )
done






 convert
