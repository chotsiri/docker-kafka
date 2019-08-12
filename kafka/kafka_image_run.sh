#!/usr/bin/env bash

#docker run -d -p 2181:2181 -p 9092:9092 \
#		--hostname localhost \
#		--net=taggnet \
#		--env ADVERTISED_HOST=192.168.1.11 \
#		--env ADVERTISED_PORT=9092 \
#		--name kafkadev2 taggdev/kafka \

docker run -d -p 2181:2181 -p 9092:9092 \
    --hostname localhost \
    --net=taggnet \
    --env ADVERTISED_HOST=192.168.1.11 \
    --env ADVERTISED_PORT=9092 \
    --name kafkadev taggdev/kafka

sleep 5

#docker exec kafkadev opt/kafka_2.11-2.0.0/bin/kafka-topics.sh \
#	--create --zookeeper localhost:2181 \
#	--replication-factor 1 --partitions 5 --topic test01

docker exec kafkadev opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 5 --topic UAT_SET03-omx-kafka1
sleep 2
docker exec kafkadev opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 5 --topic UAT_SET03-omx-kafka2
sleep 2
docker exec kafkadev opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 5 --topic UAT_SET03-omx-kafka3
sleep 2
docker exec kafkadev opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 5 --topic journey-fix-local
sleep 2
docker exec kafkadev opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 5 --topic journey-fail-local
sleep 2
docker exec kafkadev opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 5 --topic journey-disconnect-local
sleep 2
docker exec kafkadev opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 5 --topic journey-change-sub-num-local
sleep 2
docker exec kafkadev opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 5 --topic journey-change-msisdn-local
sleep 2
docker exec kafkadev2 opt/kafka_2.11-2.0.0/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 5 --topic journey-activity-local
