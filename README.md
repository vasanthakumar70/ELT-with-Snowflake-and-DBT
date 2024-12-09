# Retail Sales Analytics Pipeline with Snowflake and dbt  

## Project Overview  
This project demonstrates an end-to-end data engineering pipeline to process and analyze retail sales data. The pipeline leverages **Snowflake** for data warehousing and **dbt** for data transformation and modeling. The goal is to build a scalable analytics platform for generating actionable business insights.  

---

## Features  
- **Data Ingestion**: Load raw sales, customer, product, and geography data into Snowflake.  
- **Data Modeling**: Implement a Star Schema with fact and dimension tables.  
- **Data Transformation**: Use dbt to clean, join, and enrich raw data.  
- **Visualization**: Generate dashboards in Power BI/Tableau to analyze KPIs such as sales trends and customer behavior.  
---

## Tech Stack  
- **Snowflake**: Cloud-based data warehouse.  
- **dbt**: Data transformation and modeling.  
- **Git**: Version control for dbt models.  

---

## Data Workflow  
1. **Ingest Raw Data**: Load data files into Snowflake using stages and the COPY command.  
2. **Transform Data**: Use dbt to create models:  
   - **Staging**: Clean raw data.  
   - **Marts**: Fact and dimension tables in a Star Schema.  
3. **Analyze Data**: Query Snowflake tables and visualize results in Power BI/Tableau.  


---

