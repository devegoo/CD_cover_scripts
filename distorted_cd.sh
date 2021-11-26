#!/bin/sh
for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
gammaval=1
paintval=5
edgegain=2
convert "$i" -gamma $gammaval -selective-blur 0x${blur}+20% -paint $paintval \
\( +clone -sharpen 0x2 -morphology edgein diamond:1 \
-evaluate multiply $edgegain -colorspace gray -negate \) \
-compose multiply -composite \
"$i"

      done
    )
done
