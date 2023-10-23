#!/bin/bash

# This script submits a Kafka Connect connector configuration

# Set your Kafka Connect Distributed configuration file
CONNECT_CONFIG_FILE=config/connect-distributed.properties

# Set the path to your connector configuration JSON file
CONNECTOR_CONFIG_FILE=config/snowflake-jdbc-source-connector.json

# Submit the connector configuration to Kafka Connect
connect-standalone $CONNECT_CONFIG_FILE $CONNECTOR_CONFIG_FILE

echo "Kafka Connect connector configuration submitted. Check the Kafka Connect logs for details."
