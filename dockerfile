FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y shadowsocks-libev && \
    apt clean

# Use safer runtime flags
CMD ss-server \
-s 0.0.0.0 \
-p 10000 \
-k yourpassword \
-m chacha20-ietf-poly1305 \
--no-delay \
--fast-open=false
