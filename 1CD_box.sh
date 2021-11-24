#!/bin/sh
mkdir ghostcopy
for dir in .
do
    (
      for i in *.mp3
      do
           touch ghostcopy/"$i"
           if [ $? -ne 0 ]
           then
              echo "failed to touch '$1' "
           fi
      done
    )
done


for f in ghostcopy/*.mp3; do
    mv -- "$f" "${f%.mp3}.mp3.png"
done

for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
          convert -size 1000x1000 xc: -channel R +noise Random -virtual-pixel black -blur 0x7 -threshold 50% -separate +channel "$i"
      done
    )
done

