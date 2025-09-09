#!/usr/bin/env bash
set -euo pipefail

: "${MBTILES_URL:?Set MBTILES_URL in Render environment}"
PORT="${PORT:-8080}"
FILE="data.mbtiles"
TMP="data.mbtiles.part"

download() {
  echo "Downloading mbtiles from $MBTILES_URL"
  curl -fL --retry 5 --retry-delay 2 -o "$TMP" "$MBTILES_URL"
  mv "$TMP" "$FILE"
}

if [ ! -f "$FILE" ]; then
  download
fi

if [ -n "${MBTILES_SHA256:-}" ]; then
  echo "$MBTILES_SHA256  $FILE" | sha256sum -c -
fi

echo "Starting tileserver-gl-light with config.json..."
npx tileserver-gl-light --port "$PORT" --config config.json --verbose

