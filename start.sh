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
