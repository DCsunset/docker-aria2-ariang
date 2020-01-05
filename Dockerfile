FROM alpine:latest

LABEL MAINTAINER="DCsunset"

RUN apk add --no-cache aria2 ca-certificates nginx \
	&& mkdir -p /app/conf /app/aria-ng /downloads /run/nginx \
	&& version="1.1.4" \
	&& wget https://github.com/mayswind/AriaNg/releases/download/${version}/AriaNg-${version}.zip \
	&& unzip AriaNg-${version}.zip -d /app/aria-ng \
	&& rm -rf AriaNg-${version}.zip

COPY start.sh /app/
COPY conf/aria2.conf /app/conf
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

WORKDIR /app

VOLUME ["/app/conf", "/data"]
CMD ["/app/start.sh"]
