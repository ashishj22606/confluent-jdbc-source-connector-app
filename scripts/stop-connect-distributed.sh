#!/bin/bash

# This script stops the Kafka Connect Distributed service

# Find the Kafka Connect Distributed process and kill it
CONNECT_PID=$(ps aux | grep 'connect-distributed' | grep -v 'grep' | awk '{print $2}')
if [ -n "$CONNECT_PID" ]; then
    kill $CONNECT_PID
    echo "Kafka Connect Distributed stopped (PID: $CONNECT_PID)."
else
    echo "Kafka Connect Distributed is not running."
fi
