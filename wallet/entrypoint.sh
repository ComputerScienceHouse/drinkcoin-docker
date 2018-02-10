#!/bin/sh
# Drinkcoin Wallet Entrypoint

set -e

EXTRA_ARGS=""
if [ "$1" == "generate" ]; then
  EXTRA_ARGS="--generate-container"
fi

exec /opt/walletd \
--log-file /dev/null \
--daemon-address "${DAEMON_HOST}" \
--daemon-port "${DAEMON_PORT}" \
--data-dir /data \
--container-file /wallet/container \
--container-password "${WALLET_PASSWORD}" \
${EXTRA_ARGS}
