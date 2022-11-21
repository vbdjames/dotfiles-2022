#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

for app in "$SCRIPT_DIR"/*.app; do
  if [ ! -d /Applications/"$app" ]; then
    echo "Copying Chrome App: $app"
    cp -r "$app" /Applications
  fi
done
