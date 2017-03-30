#!/usr/bin/env bash

# Check environment variables, if VPN_ONLY=1 is set,
# only expose the server through the VPN / Public Device URL, and not locally
if [[ ${VPN_ONLY:-0} = "1" ]]; then
  echo "Listening on the VPN IP only for Public Device URL"
  IP=$(ip addr show resin-vpn | grep -o 'inet [0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+' | grep -o [0-9].*)
else
  echo "Listening on all interfaces"
  IP='0.0.0.0'
fi
sed -i 's/\%\%IP\%\%/'"${IP}"'/g' /root/.screenly/screenly.conf

cd screenly
python server.py
