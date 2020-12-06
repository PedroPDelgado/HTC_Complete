#! /bin/bash
ffmpeg -f concat -safe 0 -i $2 -c copy $1 -v quiet