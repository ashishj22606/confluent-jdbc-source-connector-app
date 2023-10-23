# Use an official Confluent Platform image as the base image
FROM confluentinc/cp-kafka-connect:latest

# Add the Snowflake JDBC driver to the /usr/share/java/kafka-connect-jdbc directory
ADD libs/snowflake-jdbc-driver.jar /usr/share/java/kafka-connect-jdbc/snowflake-jdbc-driver.jar

# Set the CLASSPATH to include the Snowflake JDBC driver
ENV CLASSPATH="/usr/share/java/kafka-connect-jdbc/snowflake-jdbc-driver.jar:${CLASSPATH}"

# Copy the connector JAR to the /usr/share/confluent-hub-components directory
ADD connectors/snowflake-jdbc-source-connector.json /usr/share/confluent-hub-components/snowflake-jdbc-source-connector.json

ARG SFK_P8_FILE

# Copy the sfk.p8 file to the image
COPY $SFK_P8_FILE /path/to/sfk.p8