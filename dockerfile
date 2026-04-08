# Use Ubuntu 22.04 as base
FROM ubuntu:22.04

# Prevent interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Shadowsocks
RUN apt update && \
    apt install -y shadowsocks-libev && \
    apt clean

# Expose port for Shadowsocks (Render uses PORT env)
ENV PORT 10000

# Set your Shadowsocks password here
ENV PASSWORD yourpassword

# Start Shadowsocks in exec form (fixes status 126)
CMD ["ss-server", "-s", "0.0.0.0", "-p", "10000", "-k", "yourpassword", "-m", "chacha20-ietf-poly1305"]
