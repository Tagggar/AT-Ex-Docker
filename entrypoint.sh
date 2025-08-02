#!/bin/bash

cat <<EOF > config.json
{
  "RUFNUMMER": "${RUFNUMMER}",
  "PASSWORT": "${PASSWORT}",
  "TELEGRAM": "1",
  "BOT_TOKEN": "${BOT_TOKEN}",
  "CHAT_ID": "${CHAT_ID}",
  "AUTO_UPDATE": "1",
  "SLEEP_MODE": "smart",
  "SLEEP_INTERVAL": "120",
  "BROWSER": "firefox"
}
EOF

python3 at-extender.py
