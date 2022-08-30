#!/usr/bin/env bash
if [ -z "$1" ]; then
    echo "Usage: $0 STATION_NAME"
    exit
fi

docker exec -u root "satnogs-$1" bash -c 'cd /usr/bin/flowgraphs && for i in *.grc; do grcc "$i"; done && chown satnogs:satnogs *'
