#!/bin/sh

nginx

aria2c --conf-path=/app/conf/aria2.conf \
	--enable-rpc \
	--rpc-listen-all \
	--rpc-secret="$RPC_SECRET" \
	--rpc-listen-port=6800 \
	--dir=/data
