# satnogs-client-docker
Run satnogs-client inside one or more docker containers.

Tested with rtl-sdr, MiriSDR and hackrf.

## Running

````sh
git clone https://github.com/Xerbo/satnogs-client-docker && cd satnogs-client-docker
docker build -t knegge/satnogs-client:latest .
cp config/default config/YOUR_STATION
# Edit config/YOUR_STATION with your station details
./up YOUR_STATION
````

## "Plus" image

This image contains extra applications/features which may or may not be useful to you.

Use `--build-arg` to control what is build, currently it supports `BUILD_MIRISDR`, `BUILD_APTDEC` and `BUILD_MEDET`.

```sh
docker build -f Dockerfile.plus -t xerbo/satnogs-client-plus:latest .
./up YOUR_STATION xerbo/satnogs-client-plus:latest
```
