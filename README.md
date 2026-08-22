# Customer Churn Analytics & Behaviour Insights Dashboard

## Project Title

**Customer Churn Analytics & Behaviour Insights Dashboard**

---

## Project Overview

The **Customer Churn Analytics & Behaviour Insights Dashboard** is a data analytics project developed for the **Banking & Financial Services (BFSI)** industry.

The project analyzes customer data to understand **customer churn, customer behaviour, financial patterns, and high-risk customers**. MySQL is used for database management and SQL analysis, while Power BI is used to create an interactive dashboard for business insights and retention strategy.

The project helps identify customers who are more likely to leave the bank and provides insights that can support **customer retention, targeted campaigns, and better business decision-making**.

---

## Project Objectives

* Analyze customer churn patterns.
* Identify high-risk customers.
* Understand customer behaviour and financial characteristics.
* Analyze churn based on geography, age, gender, products, tenure, and activity.
* Identify factors contributing to customer churn.
* Create interactive Power BI dashboards.
* Provide actionable insights for customer retention.
* Support data-driven decision-making for banking businesses.

---

## Industry – Problem Statement

### Industry

**Banking & Financial Services (BFSI)**

### Problem Statement

Customer churn is a major challenge for banking and financial institutions. When customers leave a bank, the organization may lose revenue, customer relationships, and future business opportunities.

Banks often have large amounts of customer data but may struggle to identify:

* Which customers are likely to churn.
* Which customer segments have high churn rates.
* Which products or services are associated with churn.
* How customer behaviour affects churn.
* Which customers should be targeted with retention strategies.

This project addresses these challenges by analyzing customer data using **MySQL, SQL, Power BI, Power Query/ETL, and DAX**.

---

## Project Objectives

1. Analyze overall customer churn.
2. Compare churned and active customers.
3. Identify high-risk customer segments.
4. Analyze customer behaviour and financial characteristics.
5. Study geography-wise and demographic churn.
6. Analyze product and account activity.
7. Create KPIs and interactive dashboards.
8. Generate business insights for customer retention.

---

## Tools & Technologies

| Technology            | Purpose                                          |
| --------------------- | ------------------------------------------------ |
| **MySQL**             | Database creation, data storage and SQL analysis |
| **SQL**               | Data querying and business analysis              |
| **Power BI**          | Dashboard development and visualization          |
| **Power Query / ETL** | Data transformation and cleaning                 |
| **DAX**               | Measures, KPIs and calculations                  |
| **Excel**             | Dataset preparation and initial analysis         |
| **GitHub**            | Project version control and documentation        |

---

## Dataset Introduction and Source

The project uses a **customer banking/churn dataset** containing customer demographic, financial, account and behavioural information.

The dataset is used to analyze customer churn and identify patterns associated with customers leaving the bank.

### Major Data Categories

* Customer information
* Demographic information
* Geography
* Credit score
* Account balance
* Estimated salary
* Tenure
* Number of products
* Active membership
* Customer churn status
* Customer behaviour information

### Dataset Source

The project dataset is based on a **bank customer churn dataset available through Kaggle** and prepared for SQL and Power BI analysis.

---

## Dataset Description

The dataset contains customer-level records used for churn analysis.

### Main Data Areas

**Customer Data**

* Customer ID
* Surname
* Age
* Gender
* Geography

**Financial Data**

* Credit Score
* Balance
* Estimated Salary

**Account Data**

* Tenure
* Number of Products
* Active Membership
* Account-related information

**Churn Data**

* Churn status
* Customer segmentation
* Risk-related attributes

The dataset was transformed into multiple logical tables to support structured analysis and Power BI relationships.

---

# MySQL – Database and Tables

MySQL is used as the primary database for storing and analyzing the customer data.

### Database

**Customer Churn Analytics Database**

### Main Tables

* `CustomerTable`
* `ChurnTable`
* `GeographyTable`
* `FinancialTable`
* `AccountTable`

### CustomerTable

Contains customer demographic information such as:

* Customer ID
* Surname
* Age
* Gender
* Geography ID

### GeographyTable

Contains geographical information such as:

* Geography ID
* Geography/Country

### FinancialTable

Contains financial attributes such as:

* Customer ID
* Credit Score
* Balance
* Estimated Salary

### AccountTable

Contains account and customer activity information such as:

* Customer ID
* Tenure
* Number of Products
* Active Member status

### ChurnTable

Contains customer churn-related information such as:

* Customer ID
* Churn status
* Customer segment
* Risk-related information

---

# SQL Analysis

SQL was used to perform data exploration and business analysis.

### SQL Analysis Includes

* Total customer count
* Churned customer count
* Non-churned customer count
* Overall churn rate
* Geography-wise churn
* Gender-wise churn
* Age-wise churn
* Product-wise churn
* Tenure-wise churn
* Active vs inactive customer churn
* Credit score analysis
* Balance analysis
* Salary analysis

### Example Business Questions

* What is the overall customer churn rate?
* Which geography has the highest churn?
* Which age group has the highest churn?
* Does customer activity affect churn?
* Which product category has higher churn?
* Which customers are at higher risk of leaving?
* How does financial behaviour relate to churn?

---

# Connecting MySQL with Power BI

The MySQL database was connected to Power BI to build the final analytics dashboard.

### Connection Process

1. Create the database in MySQL.
2. Create required tables.
3. Import and clean the dataset.
4. Insert customer data into the appropriate tables.
5. Establish relationships between tables.
6. Open Power BI Desktop.
7. Select **Get Data → MySQL Database**.
8. Enter the MySQL server and database details.
9. Select the required tables.
10. Load the data into Power BI.
11. Perform transformations using Power Query.
12. Create DAX measures.
13. Build dashboard visuals.

---

# Loading Data to ETL

Power Query was used as the ETL layer for preparing the data before dashboard development.

### ETL Process

**Extract**

* Import data from MySQL/Excel.

**Transform**

* Remove duplicate records.
* Handle missing values.
* Correct data types.
* Rename columns.
* Standardize categorical values.
* Create required categories.
* Validate customer records.

**Load**

* Load the transformed data into Power BI.
* Create relationships between tables.
* Prepare the model for reporting.

---

# Data Cleaning

The following data cleaning activities were performed:

* Removed duplicate records.
* Checked for missing/null values.
* Corrected column names.
* Corrected data types.
* Standardized categorical values.
* Checked customer IDs for consistency.
* Validated geography values.
* Checked churn values.
* Created meaningful categories for analysis.

---

# Basic DAX Measures

The following DAX measures were created for dashboard analysis.

### Total Customers

```DAX
Total Customers = COUNTROWS(CustomerTable)
```

### Churn Customers

```DAX
Churn Customers =
CALCULATE(
    [Total Customers],
    ChurnTable[Churn] = 1
)
```

### Churn Rate

```DAX
Churn Rate =
DIVIDE(
    [Churn Customers],
    [Total Customers],
    0
)
```

### Active Customers

```DAX
Active Customers =
CALCULATE(
    [Total Customers],
    ChurnTable[Churn] = 0
)
```

### Average Balance

```DAX
Average Balance =
AVERAGE(FinancialTable[Balance])
```

### Average Credit Score

```DAX
Average Credit Score =
AVERAGE(FinancialTable[CreditScore])
```

---

# Dashboard Design – Pages Overview

The Power BI dashboard is organized into multiple analytical pages.

### Page 1 – Churn Overview

Provides a high-level summary of customer churn.

### Page 2 – Customer Insights

Analyzes customer demographics and customer segments.

### Page 3 – Financial Insights

Analyzes financial characteristics related to churn.

### Page 4 – Behaviour Analysis

Analyzes customer activity and account behaviour.

### Page 5 – Churn Risk

Identifies high-risk customer segments and supports retention analysis.

---

# Dashboard Pages / Visuals

## Page 1 – Churn Overview

### KPIs

* Total Customers
* Total Churn Customers
* Active Customers
* Overall Churn Rate

### Visuals

* Churn vs Non-Churn Donut Chart
* Geography-wise Churn Chart
* Gender-wise Churn Chart
* Churn Trend/Distribution
* Customer Summary Cards

---

## Page 2 – Customer Insights

### Visuals

* Age Group-wise Churn
* Gender-wise Churn
* Geography-wise Churn
* Customer Segment Analysis
* Tenure-wise Churn
* Churn by Number of Products

---

## Page 3 – Financial Insights

### Visuals

* Credit Score Category-wise Churn
* Balance Category-wise Churn
* Salary Category-wise Churn
* Average Balance
* Average Credit Score
* Financial Profile of Churned Customers

---

## Page 4 – Behaviour Analysis

### Visuals

* Active vs Inactive Customer Churn
* Product-wise Churn
* Tenure-wise Customer Behaviour
* Customer Activity Analysis
* Behaviour-based customer segmentation

---

## Page 5 – Churn Risk

### Visuals

* High-Risk Customer Segments
* High Churn Geography
* High Churn Age Groups
* High Churn Product Segments
* Active/Inactive Risk Analysis
* Risk-based customer segmentation

---

# Key KPIs

| KPI                       | Purpose                                   |
| ------------------------- | ----------------------------------------- |
| **Total Customers**       | Measures the total customer base          |
| **Churn Customers**       | Measures customers who left the bank      |
| **Active Customers**      | Measures customers who remain active      |
| **Churn Rate**            | Measures the percentage of customers lost |
| **Average Balance**       | Measures average customer balance         |
| **Average Credit Score**  | Measures average customer credit profile  |
| **Average Tenure**        | Measures customer relationship duration   |
| **Products per Customer** | Measures product usage                    |

---

# Filters & Slicers

Interactive filters and slicers were added to improve dashboard usability.

### Main Slicers

* Geography
* Gender
* Age Group
* Customer Segment
* Tenure
* Number of Products
* Active Member
* Credit Score Category
* Balance Category
* Salary Category
* Churn Status

These filters allow users to explore specific customer groups and identify patterns quickly.

---

# Key Insights

The dashboard provides several important business insights:

* Customer churn can be analyzed across different geographical regions.
* Certain customer segments have higher churn than others.
* Customer activity status can be associated with churn behaviour.
* Product usage can influence customer retention.
* Age and tenure provide useful customer behaviour patterns.
* Financial characteristics such as balance, salary and credit score can help identify customer segments.
* High-risk customer groups can be identified for targeted retention campaigns.

### Business Value

These insights can help banks:

* Identify customers at risk of leaving.
* Create targeted retention campaigns.
* Improve customer engagement.
* Personalize offers and services.
* Reduce customer acquisition and replacement costs.
* Improve long-term customer relationships.

---

# Project Workflow

```text
Dataset Collection
        ↓
Data Preparation using Excel
        ↓
MySQL Database Creation
        ↓
Data Import into MySQL
        ↓
SQL Data Analysis
        ↓
MySQL → Power BI Connection
        ↓
Power Query / ETL
        ↓
Data Cleaning & Transformation
        ↓
Data Model & Relationships
        ↓
DAX Measures
        ↓
Dashboard Design
        ↓
Business Insights
        ↓
GitHub Documentation
```

---

# Repository Structure

```text
Customer-Churn-Analytics/
│
├── Dataset/
│   └── customer_churn_dataset.csv
│
├── MySQL/
│   ├── database_creation.sql
│   ├── table_creation.sql
│   └── sql_analysis.sql
│
├── PowerBI/
│   └── Customer_Churn_Dashboard.pbix
│
├── Documentation/
│   └── Project_Documentation.pdf
│
├── Screenshots/
│   ├── churn_overview.png
│   ├── customer_insights.png
│   ├── financial_insights.png
│   ├── behaviour_analysis.png
│   └── churn_risk.png
│
├── README.md
└── LICENSE
```

---

# Dashboard Screenshots

Dashboard screenshots can be added to this section to showcase the Power BI report.

### Churn OvervieW

<img width="930" height="525" alt="Executive churn overview screenshot" src="https://github.com/user-attachments/assets/3a75c010-87b6-4420-8cfd-dbfee89b3abc" />


### Customer Insights
<img width="929" height="522" alt="Customer demographics screenshot" src="https://github.com/user-attachments/assets/8848fc3b-b08f-4d6e-9ae3-22b66e73e7b1" />


### Financial Insights
<img width="939" height="527" alt="Financial profile screenshot" src="https://github.com/user-attachments/assets/c39ec13d-ca1d-4643-bcc7-48b56b2fb087" />


### Behaviour Analysis

<img width="930" height="522" alt="Customer behaviour screenshot" src="https://github.com/user-attachments/assets/70af40eb-f317-43f8-bd9e-618c8625b446" />


### Churn Risk
<img width="929" height="522" alt="churn risk screenshot" src="https://github.com/user-attachments/assets/a5e9dea2-6cbd-4023-9eb9-12f4944acf66" />

# How to Run the Project

### Step 1 – Clone the Repository

```bash
git clone <your-github-repository-link>
```

### Step 2 – Set Up MySQL

* Install MySQL.
* Create the project database.
* Run the database and table creation SQL scripts.
* Import the dataset.
* Run the SQL analysis queries.

### Step 3 – Open Power BI

* Install Power BI Desktop.
* Open the `.pbix` file.
* Connect to the MySQL database if required.
* Refresh the dataset.

### Step 4 – Explore Dashboard

Use the available:

* KPIs
* Charts
* Filters
* Slicers
* Customer segments

to explore customer churn and behaviour insights.

---

# GitHub Repository

The complete project includes:

* Dataset
* MySQL database scripts
* SQL analysis queries
* Power BI dashboard
* Documentation
* Dashboard screenshots
* README file

**Repository:** `<Add your GitHub Repository Link here>`

---

# Project Information

**Name:** ANGEL N

**Course & Centre Name:** Data & Business Analyst with AI – Anudip Foundation, Pallavaram

**Project Name:** Customer Churn Analytics & Behaviour Insights Dashboard

**Industry:** Banking & Financial Services (BFSI)

**Technologies:** MySQL | Power BI | Power Query/ETL | DAX | Excel | GitHub

**Project Focus:** Customer churn analysis, customer behaviour insights, high-risk customer identification, and retention strategy using MySQL, SQL, and Power BI.

---

# Author

**ANGEL N**

**Data & Business Analyst with AI – Anudip Foundation, Pallavaram**

# Conclusion

The **Customer Churn Analytics & Behaviour Insights Dashboard** successfully demonstrates how customer data can be transformed into meaningful business insights using **MySQL, SQL, Power Query, DAX, Excel, and Power BI**.

The project provides a centralized view of customer churn, behaviour, financial characteristics, and high-risk segments. The insights generated through the dashboard can support banks in developing **targeted customer retention strategies, improving customer engagement, reducing churn, and making data-driven business decisions**.

Overall, this project demonstrates an end-to-end **Data Analytics workflow**, from data preparation and SQL analysis to ETL, dashboard development, and business insight generation.
