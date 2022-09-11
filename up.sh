#!/usr/bin/env bash
if [ -z "$1" ]; then
    echo "Usage: $0 STATION_NAME"
    exit
fi
if [ ! -f "config/$1" ]; then
    echo "config/$1 does not exist"
    exit
fi

IMAGE_NAME="knegge/satnogs-client:latest"
if [ ! -z "$2" ]; then
    IMAGE_NAME="$2"
fi

docker run -d \
           --restart always \
           --name "satnogs-$1" \
           --device=/dev/bus/usb/ \
           --tmpfs /tmp \
           -v "$(pwd)/config/$1:/.env:ro" \
           -v "$(pwd)/satnogs-post:/usr/bin/satnogs-post:ro" \
           -v "$(pwd)/satnogs-pre:/usr/bin/satnogs-pre:ro" \
           -v "$(pwd)/flowgraphs:/usr/bin/flowgraphs" \
           "$IMAGE_NAME"
