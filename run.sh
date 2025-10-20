#!/bin/sh
# Warten, bis USB-Gerät verfügbar ist
while [ ! -e /dev/ttyUSB0 ]; do
  echo "Warte auf Arduino..."
  sleep 2
done

echo "Starte Dashboard..."
python3 /data/send_dashboard_data.py
