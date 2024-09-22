# predictive_spare_parts
Predictive Spare Part Inventory System
**Predictive Spare Part Inventory System: Low-Level Design and Implementation
Using Free Tools/Limits**

**Problem Statement:**

The goal is to design and implement a **Predictive Spare Parts Inventory** system that
forecasts demand for spare parts based on machine usage, failure patterns, and
historical spare parts data. The system must:

- Extract data from IoT machine logs, spare parts usage records, and inventory
    data.
- Transform and store this data in a relational database.
- Build a predictive model to forecast spare part demand.
- Visualize results in a dashboard.

**Solution Options:**

1. **Option 1: Full AWS Stack**
    o **AWS RDS** for relational data storage.
    o **AWS Lambda** for serverless ETL.
    o **AWS S3 and Athena** for ad-hoc queries.
    o **AWS SageMaker** for machine learning.
    o **AWS QuickSight** for data visualization.
**Pros** : Fully integrated AWS ecosystem, reliable infrastructure, scalable.
**Cons** : Costly for production-level usage beyond free tier; SageMaker can be overkill for
simple ML tasks.
2. **Option 2: Mixed AWS & DBT with Free ML and Visualization Tools**
o **AWS RDS** for relational data storage.
o **AWS Lambda** for serverless ETL.
o **AWS S3 and Athena** for data storage and querying.
o **Google Colab** for machine learning model development.
o **DBT Cloud** for data transformation.
o **Tableau Public/Power BI Desktop** for data visualization.
**Pros** : Leverages free tiers from AWS, DBT Cloud, and Google Colab; cost-effective for
small-scale applications.
**Cons** : Integration between AWS and external tools may require more configuration.


**Selected Solution:**

We choose **Option 2** as it allows us to leverage free-tier services for the implementation
without incurring high costs. It balances performance and ease of use while keeping it
affordable with free-tier tools.

**Low-Level Design:**

**Components:**

1. **Data Sources** :
    o Machine logs from IoT sensors.
    o Spare parts usage data.
    o Inventory data.
2. **Data Storage** :
    o **AWS RDS (PostgreSQL)** for storing structured data (machine usage,
       spare parts, inventory).
3. **ETL Pipeline** :
    o **AWS Lambda** for automating the extraction, transformation, and loading
       of data from S3 to RDS.
4. **Data Transformation** :
    o **DBT Cloud** for transforming raw data in RDS to generate clean, analysis-
       ready data models.
5. **Predictive Model** :
    o **Google Colab** for building and training a machine learning model to
       forecast spare part demand.
6. **Visualization** :
    o **Tableau Public** or **Power BI Desktop** to visualize predictive insights and
       present them to stakeholders.

