#!/bin/bash

URL=${1:-}
VERSION=0.8.9

if [ -z "$URL" ]
  then
    echo "No argument supplied"
    exit 1
fi

regex='^(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]\.[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]$'

if [[ $URL =~ $regex ]]
then
    echo "Downloading from $URL"
else
    echo "$URL not valid, exiting."
    exit 1
fi

echo "Building..."
sudo docker build \
  --build-arg FOUNDRY_RELEASE_URL="$URL" \
  --build-arg VERSION="$VERSION" \
  --tag felddy/foundryvtt:"$VERSION" \
  https://github.com/felddy/foundryvtt-docker.git#develop
