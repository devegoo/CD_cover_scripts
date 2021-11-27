#!/bin/bash
echo THIS NEEDS mp3gain
cd ghostcopy/
mp3gain -c -p -r *.mp3
echo "Done, id3_tag_v3 filled with custom gain to requaired level 89db "
