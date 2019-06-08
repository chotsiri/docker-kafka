#!/usr/bin/env bash

IMAGE_NAME=taggdev/kafka

echo "Gen kafka image => $IMAGE_NAME"
docker build -t ${IMAGE_NAME} .