#!/usr/bin/env bash

printf "Starting Docker for Mac";

open -a Docker;

while [[ -z "$(! docker stats --no-stream 2> /dev/null)" ]];
  do printf ".";
  sleep 1
done

echo "";

docker extension install -f mutagenio/docker-desktop-extension:latest
