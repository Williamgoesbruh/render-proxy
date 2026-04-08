FROM ubuntu:22.04

RUN apt update && apt install -y shadowsocks-libev v2ray-plugin

CMD ss-server -s 0.0.0.0 -p $PORT \
-k yourpassword \
-m chacha20-ietf-poly1305 \
--plugin v2ray-plugin \
--plugin-opts "server;path=/ws"
