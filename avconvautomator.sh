#!/bin/bash

#Find the newest MP3 file in the home directory and capture the output into a file called 'read1'.

#You may need to change the search location and the file desc inside the ""

find /home/razor/ -mtime -1 -type f -iname "*btr.mp3" -printf "%f\n" | cat > read1

#Here's the encoder set to encode for MP3.  Obviously you will need to have a working knowledge of avconv to change the setting.  See 'man avconv' for more.

/usr/bin/avconv -y -i /home/razor/$(cat read1) -acodec libmp3lame   -b:a 64k -ac 2 -ar 44100   /home/razor/Music/btr/$(cat read1)

#These two lines below work exactly the same as the first two lines.  They are just set up for different file locations.

find /home/razor/Observations -mtime -1 -type f -iname "*.wav" -printf "%f\n" | cat > read2

/usr/bin/avconv -y -i "/home/razor/Observations/$(cat read2)" -acodec libmp3lame   -b:a 64k -ac 2 -ar 44100   "/home/razor/Music/ofot/$(cat read2).mp3"
