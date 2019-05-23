#!/usr/bin/env bash

docker run -d -p 2181:2181 -p 9092:9092 \
		--hostname localhost \
		--env ADVERTISED_HOST=127.0.0.1 \
		--env ADVERTISED_PORT=9092 \
		--name kafkadev chotsiri/kafka