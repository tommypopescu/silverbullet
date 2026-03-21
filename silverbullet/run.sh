#!/usr/bin/env bash
SPACE_PATH=$(cat /data/options.json | jq -r '.space_path')
mkdir -p "$SPACE_PATH"
./silverbullet-server --port 3000 --space "$SPACE_PATH"
