#!/usr/bin/env bash
if [ -z "$1" ]; then
    echo "Usage: $0 STATION_NAME"
    exit
fi

docker stop satnogs-$1
docker container rm satnogs-$1
