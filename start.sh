#!/bin/sh

nginx

if [ $RPC_SECRET ]; then
	aria2c --conf-path=/app/conf/aria2.conf \
		--enable-rpc \
		--rpc-secret="$RPC_SECRET" \
		--rpc-listen-port=6800 \
		--dir=/data
else
	aria2c --conf-path=/app/conf/aria2.conf \
		--enable-rpc \
		--rpc-listen-port=6800 \
		--dir=/data
fi
