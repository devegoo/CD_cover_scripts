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

  convert -size 1000x3000 gradient: -rotate 90 \
          -distort Arc '360 -90.1 500' +repage \
          -gravity center -crop 1000x1000+0+0 +repage  angular.png
  convert -size 1000x1000 xc:white                     solid.png
  convert -size 1000x1000 radial-gradient: -negate     radial.png

  convert angular.png solid.png radial.png \
          -combine -set colorspace HSL \
          -colorspace sRGB colorwheel.png
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

