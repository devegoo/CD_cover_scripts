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
    mv -- "$f" "${f%.mp3}.png"
done

convert \( -size 1000x1000 xc:"rgb(100%,0%,0%)" -colorspace hsl \) \
\( -size 100x300 gradient: -rotate 90 +distort Polar '500,0,.5,.5' +repage -rotate 90 \) \
-compose CopyRed -composite -colorspace RGB \
\( -size 1000x1000 xc:black -fill white -draw 'ellipse 500,500 500,500 0,360' -alpha off \) \
-compose copy_opacity -composite colorwheel.png

for dir in ghostcopy
do
    (
      for i in ghostcopy/*.png
      do
           cp colorwheel.png "$i"
           if [ $? -ne 0 ]
           then
              echo "failed to copy '$1' "
           fi
      done
    )
done

