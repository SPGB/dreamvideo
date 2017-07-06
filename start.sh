#!/bin/bash

set -e

# http://stackoverflow.com/a/26028597/864236

# FFMPEG=$(which avconv)
# ${FFMPEG} -i /ddd/video.mp4 -f image2 /images/%08d.png

# Movie to frames
./1_movie2frames.sh avconv /ddd/video.mp4 /images/input jpg

# ipython /ddd/deepdreams.py $1 /images/*
ipython 2_dreaming_time.py $i -i /images/input -o /images/output


# bash /ddd/frames2movie.sh avconv '/images' video.mp4 'png'
# mv images_done.mp4 /images/

./3_frames2movie.sh avconv /images/output /ddd/video.mp4 jpg

