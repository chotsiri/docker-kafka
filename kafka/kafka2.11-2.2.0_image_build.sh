#!/usr/bin/env bash

SCALA_VERSION=2.11
KAFKA_VERSION=2.2.0

IMAGE_NAME=taggdev/kafka_${SCALA_VERSION}-${KAFKA_VERSION}

echo "Gen kafka image => $IMAGE_NAME"
docker build -f Dockerfile_kafka${SCALA_VERSION}-${KAFKA_VERSION} -t ${IMAGE_NAME} .