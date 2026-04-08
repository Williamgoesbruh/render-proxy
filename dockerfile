#!/bin/bash
# entrypoint.sh - Start Shadowsocks on Render

# Ensure PORT and PASSWORD are set
: "${PORT:?Need to set PORT environment variable}"
: "${PASSWORD:?Need to set PASSWORD environment variable}"

# Run Shadowsocks server
exec ss-server -s 0.0.0.0 -p "${PORT}" -k "${PASSWORD}" -m chacha20-ietf-poly1305
