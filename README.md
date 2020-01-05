# Docker Aria2-AriaNG

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/dcsunset/aria2-ariang)](https://hub.docker.com/r/dcsunset/aria2-ariang)

Dockerized aria2 with aria-ng.

## Usage

```
docker run -d \
	-p <port>:80 -e RPC_SECRET=xxx \
	-v /DOWNLOADS:/data \
	-v /CONFIG:/app/conf \
	dcsunset/aria2-ariang
```

The `/data` volume is the path where files are saved.
The `/app/conf` is the aria2 configuration path.

The aria2 JSON-RPC is available at `http://<server-ip>:<port>/jsonrpc`.

The downloaded files can be viewed at `http://<server-ip>:<port>/data/`.

## Build

```
docker build . -t dcsunset/aria2-ariang
```
