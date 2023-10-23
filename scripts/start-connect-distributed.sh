#!/bin/bash

# This script starts the Kafka Connect Distributed service

# Set your Kafka Connect Distributed configuration file
CONNECT_CONFIG_FILE=config/connect-distributed.properties

# Start the Kafka Connect Distributed service
nohup connect-distributed $CONNECT_CONFIG_FILE > logs/connect-distributed.log 2>&1 &

echo "Kafka Connect Distributed started. Check logs/connect-distributed.log for details."
