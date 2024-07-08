Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](https://getdbt.com/community) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

Omni Channel Data Pipeline Project
Project Overview
This project aims to build a robust data pipeline that efficiently handles the extraction, transformation, and visualization of data. The pipeline moves raw data from a MySQL database to a Snowflake database using Airbyte, transforms the data using dbt (data build tool), and finally visualizes the transformed data using PowerBI. This setup ensures a streamlined data flow from the source to insightful business intelligence dashboards.

Project Structure
- Data Extraction: Using Airbyte to move raw data from MySQL DB to Snowflake DB.
- Data Transformation: Using dbt to transform and model the data in Snowflake.
- Data Visualization: Using PowerBI for visualization of the transformed data.

Steps and Details
1.  Data Extraction with Airbyte
Source: MySQL Database
Destination: Snowflake Database
Tool: Airbyte
Description: Airbyte is used to extract raw data from the MySQL database and load it into the Snowflake database. The data includes tables like channels, customers, products, visitHistory, and purchaseHistory.


Data Transformation with dbt
Schema: OM
Models: Raw, Staging, Dimension, and Fact tables
Details:
Raw Tables: Initial ingestion of data from MySQL into Snowflake.
Staging Tables: Clean and prepare the raw data.
Dimension Tables: Create dimensions for channels, customers, and products.
Fact Tables: Create fact tables for purchase_history and visit_history.


Project Structure
The project is structured into three main phases:

Data Extraction
Data Transformation
Data Visualization
Each phase leverages specific tools and techniques to achieve the desired outcomes.

1. Data Extraction with Airbyte
Source: MySQL Database
The raw data is stored in a MySQL database, containing tables such as channels, customers, products, visitHistory, and purchaseHistory.
Destination: Snowflake Database
Snowflake serves as the data warehouse where the extracted data will be loaded and stored.
Tool: Airbyte
Airbyte is an open-source data integration tool that facilitates the extraction of data from the MySQL database and loads it into the Snowflake database. It supports various connectors and provides an easy-to-use interface for setting up data pipelines.
Process:

Configure Airbyte: Set up Airbyte to connect to the MySQL database as the source and the Snowflake database as the destination.
Data Sync: Schedule regular syncs to ensure the data in Snowflake is updated with the latest information from the MySQL database.
2. Data Transformation with dbt
Schema: OM
The schema in Snowflake where the data transformations will occur.
Models: Raw, Staging, Dimension, and Fact tables
Raw Tables: Initial ingestion of data from MySQL into Snowflake. These tables mirror the structure of the source tables.
Staging Tables: Intermediate tables that clean and prepare the raw data for further transformations. This includes standardizing formats, handling missing values, and creating calculated fields.
Dimension Tables: Tables that store descriptive attributes related to the facts. These include tables for channels, customers, and products.
Fact Tables: Tables that store measurable, quantitative data. These include tables for purchase_history and visit_history.
Process:

Create Raw Models: Define raw models in dbt that load data from Snowflake's raw tables.
Create Staging Models: Transform raw data into a clean, consistent format.
Create Dimension Models: Define dimension tables that provide context and attributes to the facts.
Create Fact Models: Define fact tables that aggregate and measure the business processes.
3. Data Visualization with PowerBI
Tool: PowerBI
PowerBI is a powerful data visualization tool that allows for the creation of interactive dashboards and reports. It connects to the Snowflake database to fetch the transformed data and present it in a visually appealing manner.
Description: Using PowerBI, the transformed data is visualized to provide insights and support data-driven decision-making. This includes creating various dashboards and reports to analyze different aspects of the data, such as sales performance, customer behavior, and product trends.
Process:

Connect PowerBI to Snowflake: Establish a connection between PowerBI and the Snowflake database.
Create Dashboards: Design and create interactive dashboards that visualize key metrics and KPIs.
Share Reports: Share the dashboards and reports with stakeholders to facilitate data-driven decision-making.
How to Run the Project
Set Up Airbyte:

Follow the Airbyte documentation to install and configure Airbyte.
Set up the MySQL source and Snowflake destination connectors.
Schedule data syncs to keep the Snowflake database updated.
Set Up dbt:

Follow the dbt documentation to install and configure dbt.
Set up the dbt project and configure the profiles.yml file to connect to Snowflake.
Run dbt commands to build the raw, staging, dimension, and fact models.
Set Up PowerBI:

Install PowerBI Desktop and connect it to the Snowflake database.
Create dashboards and reports based on the transformed data.
Publish and share the reports on PowerBI Service.


Project Structure
The project is structured into three main phases:

Data Extraction
Data Transformation
Data Visualization
Each phase leverages specific tools and techniques to achieve the desired outcomes.

1. Data Extraction with Airbyte
Source: MySQL Database
The raw data is stored in a MySQL database, containing tables such as channels, customers, products, visitHistory, and purchaseHistory.
Destination: Snowflake Database
Snowflake serves as the data warehouse where the extracted data will be loaded and stored.
Tool: Airbyte
Airbyte is an open-source data integration tool that facilitates the extraction of data from the MySQL database and loads it into the Snowflake database. It supports various connectors and provides an easy-to-use interface for setting up data pipelines.
Process:

Configure Airbyte: Set up Airbyte to connect to the MySQL database as the source and the Snowflake database as the destination.
Data Sync: Schedule regular syncs to ensure the data in Snowflake is updated with the latest information from the MySQL database.
2. Data Transformation with dbt
Schema: OM
The schema in Snowflake where the data transformations will occur.
Models: Raw, Staging, Dimension, and Fact tables
Raw Tables: Initial ingestion of data from MySQL into Snowflake. These tables mirror the structure of the source tables.
Staging Tables: Intermediate tables that clean and prepare the raw data for further transformations. This includes standardizing formats, handling missing values, and creating calculated fields.
Dimension Tables: Tables that store descriptive attributes related to the facts. These include tables for channels, customers, and products.
Fact Tables: Tables that store measurable, quantitative data. These include tables for purchase_history and visit_history.
Process:

Create Raw Models: Define raw models in dbt that load data from Snowflake's raw tables.
Create Staging Models: Transform raw data into a clean, consistent format.
Create Dimension Models: Define dimension tables that provide context and attributes to the facts.
Create Fact Models: Define fact tables that aggregate and measure the business processes.
3. Data Visualization with PowerBI
Tool: PowerBI
PowerBI is a powerful data visualization tool that allows for the creation of interactive dashboards and reports. It connects to the Snowflake database to fetch the transformed data and present it in a visually appealing manner.
Description: Using PowerBI, the transformed data is visualized to provide insights and support data-driven decision-making. This includes creating various dashboards and reports to analyze different aspects of the data, such as sales performance, customer behavior, and product trends.
Process:

Connect PowerBI to Snowflake: Establish a connection between PowerBI and the Snowflake database.
Create Dashboards: Design and create interactive dashboards that visualize key metrics and KPIs.
Share Reports: Share the dashboards and reports with stakeholders to facilitate data-driven decision-making.
How to Run the Project
Set Up Airbyte:

Follow the Airbyte documentation to install and configure Airbyte.
Set up the MySQL source and Snowflake destination connectors.
Schedule data syncs to keep the Snowflake database updated.
Set Up dbt:

Follow the dbt documentation to install and configure dbt.
Set up the dbt project and configure the profiles.yml file to connect to Snowflake.
Run dbt commands to build the raw, staging, dimension, and fact models.
Set Up PowerBI:

Install PowerBI Desktop and connect it to the Snowflake database.
Create dashboards and reports based on the transformed data.
Publish and share the reports on PowerBI Service.
