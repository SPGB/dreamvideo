#!/bin/bash

set -e

# http://stackoverflow.com/a/26028597/864236

FFMPEG=$(which avconv)


${FFMPEG} -i /ddd/video.mp4 -f image2 /images/%08d.png

ipython /ddd/deepdreams.py $1 /images/*

bash /ddd/frames2movie.sh avconv '/images' video.mp4 'png'

mv images_done.mp4 /images/
