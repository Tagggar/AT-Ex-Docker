#!/bin/bash
cat > /app/config.json <<EOF
{
  "RUFNUMMER": "${RUFNUMMER}",
  "PASSWORT": "${PASSWORT}",
  "TELEGRAM": "${TELEGRAM}",
  "BOT_TOKEN": "${BOT_TOKEN}",
  "CHAT_ID": "${CHAT_ID}",
  "AUTO_UPDATE": "${AUTO_UPDATE}",
  "SLEEP_MODE": "${SLEEP_MODE}",
  "SLEEP_INTERVAL": "${SLEEP_INTERVAL}",
  "BROWSER": "${BROWSER}"
}
EOF

exec "$@"
