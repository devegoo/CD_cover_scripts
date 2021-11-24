 
#!/bin/bash
mkdir done/
mv ghostcopy/*.mp3.png done/
for f in done/*.mp3.png; do
    mv -- "$f" "${f%.mp3.png}.png"
done
