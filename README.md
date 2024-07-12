
## Welcome to the Omni Channel Data Pipeline Project!

## Project Overview

This project aims to build a robust data pipeline that efficiently handles the extraction, transformation, and visualization of data. The pipeline moves raw data from a PostgreSQL database to a Snowflake database using Airbyte, transforms the data using dbt (data build tool), and finally visualizes the transformed data using PowerBI. This setup ensures a streamlined data flow from the source to insightful business intelligence dashboards.

## Data Architecture

A robust data architecture is crucial for ensuring data quality, integrity, and accessibility. Here's the architecture for my projects:

![Data Architecture](https://github.com/user-attachments/assets/5a04d209-ad60-4565-bc3a-e5c7a2a3d5a5)


![Data Architecture](https://github.com/salmah52/project01-zoomcamp/assets/44398948/a85050dd-3f5d-4cc9-a865-073e24631246)
Project Structure
The project is structured into three main phases:

- Data Extraction: Using Airbyte to move raw data from a PostgreSQL database to a Snowflake database.
- Data Transformation: Using dbt to transform and model the data in Snowflake.
- Data Visualization: Using PowerBI for visualization of the transformed data.
  
1. Data Extraction with Airbyte
Source: PostgreSQL Database

The raw data is stored in a PostgreSQL database, containing tables such as channels, customers, products, visitHistory, and purchaseHistory.

Destination: Snowflake Database

Snowflake serves as the data warehouse where the extracted data will be loaded and stored.

Tool: Airbyte

Airbyte is an open-source data integration tool that facilitates the extraction of data from the PostgreSQL database and loads it into the Snowflake database. It supports various connectors and provides an easy-to-use interface for setting up data pipelines.

Process:

Configure Airbyte: Set up Airbyte to connect to the PostgreSQL database as the source and the Snowflake database as the destination.
Data Sync: Schedule regular syncs to ensure the data in Snowflake is updated with the latest information from the PostgreSQL database.

2. Data Transformation with dbt
Schema: OM

The schema in Snowflake where the data transformations will occur.

Models: Raw, Staging, Dimension, and Fact tables

Raw Tables: Initial ingestion of data from PostgreSQL into Snowflake. These tables mirror the structure of the source tables.
Staging Tables: Intermediate tables that clean and prepare the raw data for further transformations. This includes standardizing formats, handling missing values, and creating calculated fields.
Dimension Tables: Tables that store descriptive attributes related to the facts. These include tables for channels, customers, and products.
Fact Tables: Tables that store measurable, quantitative data. These include tables for purchase_history and visit_history.
Process:

Create Raw Models: Define raw models in dbt that load data from Snowflake's raw tables.
Create Staging Models: Transform raw data into a clean, consistent format.
Create Dimension Models: Define dimension tables that provide context and attributes to the facts.
Create Fact Models: Define fact tables that aggregate and measure the business processes.
Additional Capabilities:

Snapshots: Capture and store the state of tables at specific points in time to track historical changes.
Seeds: Manage static datasets and load them into Snowflake.
Tests: Ensure data integrity and accuracy with generic and custom tests.
Documentation: Document models, sources, and macros for clarity and transparency.
Macros: Reuse SQL code across the project for complex or repetitive transformations.
Packages: Include external dbt packages to extend project functionality.
Incremental Models: Process only new or updated data for performance efficiency.


3. Data Visualization with PowerBI
Tool: PowerBI

PowerBI is a powerful data visualization tool that allows for the creation of interactive dashboards and reports. It connects to the Snowflake database to fetch the transformed data and present it in a visually appealing manner.

Description: Using PowerBI, the transformed data is visualized to provide insights and support data-driven decision-making. This includes creating various dashboards and reports to analyze different aspects of the data, such as sales performance, customer behavior, and product trends.

Conclusion
This project showcases the end-to-end data pipeline from extracting raw data from PostgreSQL, transforming it using dbt, and visualizing it in PowerBI. By utilizing dbt's features like snapshots, seeds, tests, documentation, macros, packages, and incremental models, we ensure a robust, maintainable, and scalable data transformation process.
