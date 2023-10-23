# Kafka Connect JDBC Snowflake Source Connector

This project provides an example setup for Kafka Connect with the JDBC Snowflake Source Connector.

## Project Structure

Here's the structure of the project:

```plaintext
kafka-connect-jdbc-snowflake/
├── config/
│ ├── connect-distributed.properties
│ └── snowflake-jdbc-source.properties
├── connectors/
│ ├── snowflake-jdbc-source-connector.json
├── data/
│ ├── input/
│ ├── output/
│ └── log/
├── libs/
│ ├── snowflake-jdbc-driver.jar
│ └── other-jars.jar
├── logs/
├── scripts/
│ ├── start-connect-distributed.sh
│ ├── stop-connect-distributed.sh
│ └── submit-connector-config.sh
├── docker/
│ ├── Dockerfile
│ ├── build-docker-image.sh
├── .gitignore
├── README.md
├── docker-compose.yml
├── .github/
│ ├── workflows/
│ │ ├── ci-cd.yml
│ └── secrets/
│ ├── snowflake-credentials.json
│ ├── kafka-credentials.json
```


## Usage

1. Clone the repository.
2. Set up your configuration in the `config/` directory.
3. Build and run the Docker image for Kafka Connect using the provided scripts in the `docker/` directory.
4. Submit your connector configuration using `submit-connector-config.sh`.
5. Monitor the Kafka Connect service and check the logs.

## GitHub Actions

This project includes GitHub Actions for continuous integration and continuous deployment (CI/CD). The workflows in the `.github/workflows/` directory automate building, testing, and deploying your Kafka Connect setup. Ensure you configure the secret files in the `secrets/` directory with your actual credentials.



