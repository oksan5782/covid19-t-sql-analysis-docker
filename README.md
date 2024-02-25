# covid19-t-sql-analysis-docker

# COVID-19 Data Analysis

This repository contains a project that explores various statistical information about COVID-19 using data sourced from the [Our World in Data COVID-19 dataset](https://github.com/owid/covid-19-data/tree/master/public/data). The project utilizes SQL queries to analyze the data and derive insights related to the pandemic.

## Project Description

The project involves analyzing COVID-19 data from the provided CSV files using SQL queries. It utilizes two tables containing data with 26 and 37 columns respectively. Various SQL functions and tools such as Common Table Expressions (CTEs), views, temporary tables, partitions, grouping, aggregate functions, aliases, and joins are used to perform the analysis.

Some of the queries implemented in the project include:

- Calculating the total population to vaccinated population ratio using CTEs.
- Identifying the highest death percentage per country.
- Assessing the possibility of death in case of contracting the disease across different countries.
- Determining the highest infection rate per population.
- Analyzing death rates per continent, grouped by continent.

## Running the Docker Container

To run the SQL Server Docker container with the necessary configurations for this project, follow these steps:

1. Make sure you have Docker installed on your system. If not, refer to the [official Docker documentation](https://docs.docker.com/get-docker/) for installation instructions.

2. Run the following command in your terminal to start the Docker container:
   ```bash
   docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=<strong_pw>" \
   -p 1433:1433 --name sql-server \
   -v /volume_filepath:/var/opt/mssql/data \
   -d \
   mcr.microsoft.com/mssql/server:2022-latest

  - Replace <strong_pw> with a strong password for the SQL Server SA account.
  - Replace /volume_filepath with the filepath on your host machine where you want to persist SQL Server data.

    Once the container is running, you can connect to the SQL Server instance using your preferred database management tool.

## T-SQL Commands

The project utilizes T-SQL commands to perform various analyses on the COVID-19 data. These commands leverage different SQL functionalities such as CTEs, views, temporary tables, partitions, grouping, aggregate functions, aliases, and joins to derive insights from the dataset.

For any questions or issues, please don't hesitate to open an issue in this repository.

