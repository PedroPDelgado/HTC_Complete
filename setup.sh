#!/bin/bash
# file name: setup.sh
ffmpeg -i $1-pre.mp4 -filter:v scale=256:-1 -c:a copy $1-post.mp4
