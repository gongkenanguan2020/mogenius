#!/bin/sh
if [ ! -f UUID ]; then
  UUID="42bb66c6-07d6-477e-9456-4a4f844f366e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

