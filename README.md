# Docker Aria2-AriaNG

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/dcsunset/aria2-ariang)](https://hub.docker.com/r/dcsunset/aria2-ariang)
[![Docker Image Size](https://badgen.net/docker/size/dcsunset/aria2-ariang)](https://hub.docker.com/r/dcsunset/aria2-ariang)

Dockerized aria2 with aria-ng.

## Usage

Simple usage:

```
docker run -d \
	-e RPC_SECRET=xxx \
	-p <port>:80 \
	-v /DOWNLOADS:/data \
	dcsunset/aria2-ariang
```

Full-featured usage:

```
docker run -d \
	-e RPC_SECRET=xxx \
	-p <port>:80 \
	-v /DOWNLOADS:/data \
	-v /CONFIG:/app/conf \
	-v /NGINX_CONFIG:/etc/nginx/conf.d/default.conf \
	dcsunset/aria2-ariang
```

The aria2 JSON-RPC is available at `http://<server-ip>:<port>/jsonrpc`.

Customization can be easily done by using the volume
to change the settings of both aria2 and nginx.

### Ports

* `80`: Visit the webui and aria2 rpc

### Volumes

* `/data`: the path where downloaded files are saved.
* `/app/conf`: the path of aria2 configuration files. The template file can be found in the `conf` directory in this repo.
* `/etc/nginx/conf.d/default.conf`: the configuration of nginx. The template file can be found in the `conf` directory in this repo.

## Build

```
docker build . -t dcsunset/aria2-ariang
```

# License

MIT License
