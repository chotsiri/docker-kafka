#!/usr/bin/env bash

IMAGE_NAME=chotsiri/kafka

echo "Gen kafka image => $IMAGE_NAME"
docker build -t ${IMAGE_NAME} .