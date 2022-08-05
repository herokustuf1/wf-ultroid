#!/bin/bash

folder="moiapp"

git clone $1 $folder
cd $folder
docker build . --rm --force-rm -t xyimage

if [ -f whitevc.sh ] ; then
    sudo bash whitevc.sh &
fi

docker run --privileged --rm -i xyimage
