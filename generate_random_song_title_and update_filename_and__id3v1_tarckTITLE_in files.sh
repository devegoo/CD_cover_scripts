 #!/bin/sh
 echo 'tool requaire ruby gems "titlegen" and "i18n"'
    for i in *.mp3
    do
        track=$(mp3info -p %t "$i")
        band=$(mp3info -p %a "$i")
        newTitle=$(generate-title)
        mp3info -t "$newTitle" "$i"
        echo "$band" - "$track" new name = "$newTitle"
        NEWname="$newTitle"
        mv "$i" "$NEWname".mp3
    done
