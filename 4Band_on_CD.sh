#!/bin/sh
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
          convert "$i" -font Candice -pointsize 72 -fill white \
           -stroke black -strokewidth 25 -annotate +400+200 'MTMN' \
           -stroke white -strokewidth 20 -annotate +400+200 'MTMN' \
           -stroke black -strokewidth 15 -annotate +400+200 'MTMN' \
           -stroke white -strokewidth 10 -annotate +400+200 'MTMN' \
           -stroke black -strokewidth  5 -annotate +400+200 'MTMN' \
           -stroke none                  -annotate +400+200 'MTMN' \
           "$i"
      done
    )
done






 convert
