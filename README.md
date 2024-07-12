# Omni Channel Data Pipeline Project

## Project Overview

This project builds a robust data pipeline to handle the extraction, transformation, and visualization of data efficiently. The pipeline moves raw data from a PostgreSQL database to a Snowflake database using Airbyte, transforms the data using dbt, and visualizes it using PowerBI, ensuring a streamlined data flow from source to business intelligence dashboards.

## Data Architecture

A robust data architecture is crucial for ensuring data quality, integrity, and accessibility. Here's the architecture for the project:

![Data Architecture](https://github.com/user-attachments/assets/5a04d209-ad60-4565-bc3a-e5c7a2a3d5a5)

## Project Structure

The project is structured into three main phases:

1. **Data Extraction**: Using Airbyte to move raw data from a PostgreSQL database to a Snowflake database.
2. **Data Transformation**: Using dbt to transform and model the data in Snowflake.
3. **Data Visualization**: Using PowerBI for visualization of the transformed data.

## Data Extraction with Airbyte

**Source**: PostgreSQL Database

The raw data is stored in a PostgreSQL database, containing tables such as channels, customers, products, visitHistory, and purchaseHistory.

**Destination**: Snowflake Database

Snowflake serves as the data warehouse where the extracted data is loaded and stored.

**Tool**: Airbyte

Airbyte is an open-source data integration tool that facilitates the extraction of data from PostgreSQL and loads it into Snowflake. It supports various connectors and provides an easy-to-use interface for setting up data pipelines.

**Process**:
- Configure Airbyte to connect to PostgreSQL (source) and Snowflake (destination).
- Schedule regular syncs to keep Snowflake updated with the latest data from PostgreSQL.

## Data Transformation with dbt

**Schema**: OM

The schema in Snowflake where data transformations occur.

**Models**: Raw, Staging, Dimension, and Fact tables
- **Raw Tables**: Initial ingestion of data from PostgreSQL into Snowflake, mirroring source tables.
- **Staging Tables**: Clean and prepare raw data for further transformations.
- **Dimension Tables**: Store descriptive attributes related to facts (e.g., channels, customers, products).
- **Fact Tables**: Store measurable, quantitative data (e.g., purchase_history, visit_history).

**Process**:
- Define raw models in dbt that load data from Snowflake's raw tables.
- Transform raw data into a clean, consistent format in staging models.
- Define dimension tables to provide context and attributes to facts.
- Define fact tables that aggregate and measure business processes.

**Additional Capabilities**:
- Snapshots: Capture and store table states at specific points to track historical changes.
- Tests: Ensure data integrity and accuracy with generic and custom tests.
- Documentation: Document models, sources, and macros for clarity and transparency.
- Macros: Reuse SQL code across the project for complex or repetitive transformations.
- Packages: Include external dbt packages to extend project functionality.

## Data Visualization with PowerBI

**Tool**: PowerBI

PowerBI is a powerful data visualization tool for creating interactive dashboards and reports. It connects to the Snowflake database to fetch transformed data and presents it visually.

**Description**:
Using PowerBI, the transformed data is visualized to provide insights and support data-driven decision-making. This includes creating dashboards and reports to analyze aspects like sales performance, customer behavior, and product trends.

## Challenges and Solutions

### Challenges with Airbyte

**Configuration Issues**: Initially, configuring Airbyte to connect PostgreSQL and Snowflake presented challenges, including network connectivity issues and authentication errors.

**Solution**: By carefully reviewing and adjusting the connection settings, ensuring correct credentials, and addressing firewall restrictions, I established stable connections between the sources and destinations.

**Data Sync Latency**: I faced latency issues during data synchronization, which affected the timeliness of the data updates.

**Solution**: To mitigate this, I optimized the sync schedules and implemented incremental data loading, which significantly reduced the latency and improved the overall efficiency.

**Error Handling**: Unexpected errors during data extraction and loading caused interruptions in the pipeline.

**Solution**: I enhanced the error handling mechanisms within Airbyte, added comprehensive logging, and set up automated alerts to quickly identify and resolve issues, ensuring minimal downtime.

### Other Challenges

**Data Transformation Complexity**: Managing complex transformations in dbt required careful planning and testing to ensure data integrity and accuracy.

**Solution**: I utilized dbt's testing and documentation features to validate transformations and maintain clear documentation, facilitating easier troubleshooting and maintenance.


## Conclusion

This project showcases an end-to-end data pipeline, from extracting raw data from PostgreSQL to transforming it with dbt and visualizing it in PowerBI. By utilizing dbt's features like snapshots, tests, and documentation, the project ensures a robust, maintainable, and scalable data transformation process. Additionally, the challenges faced and solutions implemented highlight the resilience and adaptability of the pipeline.
