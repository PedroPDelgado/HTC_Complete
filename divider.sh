#! /bin/bash
DURATION=`ffprobe -i $2 -show_entries format=duration -v quiet -of csv="p=0"`
TIME=`echo $DURATION $1 | awk '{print $DURATION/$2}'`
counter=1
while [ $counter -le $1 ]
do
start=`echo $TIME $counter | awk '{print $1 * ($2-1)}'`
stop=`echo $TIME $counter | awk '{print $1 * $2}'`
echo Dividindo parte $counter entre $start e $stop
name=`echo $counter | awk '{print $1-1}'`
ffmpeg -i $2 -ss $start -to $stop $name-pre.mp4 -v quiet
echo file $name-post.mp4 >> partitions
((counter++))
done
