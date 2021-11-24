#!/bin/sh
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
          convert "$i" -size 1x2  gradient:gold-firebrick -fx 'v.p{0,1}+(v.p{0,0}-v.p{0,1})*u^4' "$i"
      done
    )
done

