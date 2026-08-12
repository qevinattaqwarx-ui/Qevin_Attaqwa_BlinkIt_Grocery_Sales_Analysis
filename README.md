# BlinkIT Grocery Sales Analysis

## Data Analysis | Capstone Project

### Project Overview

This portfolio project analyzes BlinkIT grocery sales data to evaluate overall business performance and identify key factors influencing sales, customer satisfaction, product performance, and outlet performance.

Using SQL (MySQL) for data analysis and Power BI for visualization, the project transforms transactional data into actionable business insights.

The analysis covers overall business performance, outlet and location performance, customer satisfaction, product and category performance, outlet characteristics, and fat-content performance.

The final outcome is an interactive Power BI dashboard supported by SQL-based analysis, business insights, and recommendations.

---

## Project Scope

The analysis focuses on four main areas:

1. **Analyze sales performance** across different outlet types and locations.

2. **Evaluate customer satisfaction** using average product ratings.

3. **Identify top-performing product categories** and their contribution to total sales.

4. **Assess how outlet characteristics** such as size, type, and establishment year influence sales performance.

---

## Business Requirements

### Overall Business KPIs

The analysis evaluates overall business performance using:

- Total Sales
- Average Sales
- Number of Items
- Average Rating

### Granular Analysis

The analysis further evaluates:

- Sales performance by fat content
- Sales performance by item type
- Fat content performance by outlet type
- Sales performance by outlet establishment year
- Customer satisfaction by item type
- Customer satisfaction by outlet type
- Sales contribution by product category
- Sales performance by outlet size
- Outlet type performance comparison

---

## Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Sales | 1.20 Million |
| Average Sales | 140.99 |
| Number of Items | 8,523 |
| Average Rating | 3.97 / 5 |

These KPIs provide the overall performance baseline used throughout the analysis.

---

## Tools & Technologies

- **SQL (MySQL)** — Data preparation, cleaning, validation, and business analysis
- **Power BI** — Data visualization and dashboard development
- **Microsoft Excel** — Source dataset and initial data inspection

---

## Analytical Workflow

The project follows an end-to-end data analytics workflow:

1. Data Source Inspection
2. Database and Table Creation
3. CSV Data Import
4. Column Verification and Renaming
5. Data Cleaning and Standardization
6. Data Validation
7. SQL Business Analysis
8. Power BI Dashboard Development
9. Business Insights and Recommendations
10. Portfolio Documentation

---

## Business Analysis

### Overall Business Performance

The analysis establishes the overall business baseline using total sales, average sales, item volume, and average customer rating.

### Outlet Performance

Outlet performance is evaluated across:

- Outlet Type
- Outlet Location Type
- Outlet Size
- Outlet Establishment Year

### Product Performance

Product performance is evaluated across different item types using:

- Total Sales
- Average Sales
- Number of Items
- Average Rating
- Sales Contribution

### Customer Satisfaction

Customer satisfaction is evaluated using average product ratings across:

- Item Types
- Outlet Types

### Fat Content Performance

The analysis compares **Low Fat** and **Regular** products based on:

- Total Sales
- Average Sales
- Number of Items
- Average Rating
- Outlet Type

---

## Key Business Insights

### 1. Sales Volume Is a Major Driver of Revenue

The strongest total sales are generally associated with higher item volume rather than significantly higher average sales per item.

This pattern is particularly visible across Supermarket Type 1, Tier 3 locations, Medium-sized outlets, and the 2018 establishment group.

### 2. Supermarket Type 1 Is the Primary Sales Contributor

Supermarket Type 1 generates **0.79 million** in sales and accounts for **5,577 items**, making it the strongest outlet type by total sales and item volume.

### 3. Product Revenue Is Concentrated

**Fruits and Vegetables, Snack Foods, and Household** together contribute **40.74% of total sales**, indicating that several major product categories have a significant influence on overall revenue.

### 4. Customer Satisfaction and Sales Are Not Directly Proportional

The highest-rated categories and outlets are not necessarily the highest-selling ones.

For example, Meat achieves the highest product rating at **4.02**, while Fruits and Vegetables and Snack Foods generate the highest category sales.

### 5. Low Fat Products Have Stronger Demand

Low Fat products generate **0.78 million** in sales compared with **0.43 million** for Regular products.

The difference is primarily associated with higher item volume rather than higher average sales per item.

### 6. Outlet Size Does Not Automatically Determine Sales

Medium-sized outlets generate the highest total sales at **0.51 million**, while High-sized outlets have the highest average sales but the lowest total sales.

### 7. Operational Strategy Should Be Segment-Specific

The results indicate that inventory, assortment, customer experience, and promotional strategies should be adapted according to outlet type, location, product category, outlet characteristics, and customer demand rather than applying a single strategy across all segments.

---

## Power BI Dashboard

The Power BI dashboard provides an interactive view of the business analysis and supports exploration of:

- Overall business KPIs
- Outlet performance
- Location performance
- Product performance
- Customer satisfaction
- Outlet characteristics
- Fat-content performance

The dashboard complements the SQL analysis by transforming analytical results into interactive business visualizations.

---

## SQL Analysis

SQL (MySQL) was used to perform data preparation, cleaning, validation, and business analysis.

The SQL analysis includes:

- Database and table creation
- CSV data import
- Column verification and renaming
- Fat content standardization
- Data validation
- Overall business KPI analysis
- Outlet performance analysis
- Location performance analysis
- Product category analysis
- Customer satisfaction analysis
- Outlet characteristic analysis
- Fat content analysis

The complete SQL queries are available in:

`sql/Qevin_Attaqwa_BlinkIT_SQL_Analysis.sql`

Visual documentation of the SQL analysis process is available in:

`sql/screenshots/`

---

## Project Structure

```text
Qevin_Attaqwa_BlinkIT_Grocery_Sales_Analysis/
│
├── README.md
│
├── sql/
│   ├── Qevin_Attaqwa_BlinkIT_SQL_Analysis.sql
│   │
│   └── screenshots/
│       ├── 00_csv_screenshot.png
│       ├── 01_create_database_and_table.png
│       ├── 02_import_csv_data.png
│       ├── 03_rename_columns_1.png
│       ├── 04_verify_columns.png
│       ├── 05_standardize_fat_content.png
│       ├── 06_fat_content_after_cleaning.png
│       ├── 07_total_sales_column_renamed.png
│       ├── 08_verify_fat_content.png
│       ├── 09_overall_business_kpis.png
│       ├── 10_sales_performance_by_outlet_type.png
│       ├── 11_sales_performance_by_location_type.png
│       ├── 12_customer_satisfaction_by_item_type.png
│       ├── 13_customer_satisfaction_by_outlet_type.png
│       ├── 14_top_performing_product_categories.png
│       ├── 15_sales_contribution_by_product_category.png
│       ├── 16_sales_performance_by_outlet_size.png
│       ├── 17_sales_performance_by_outlet_type_characteristics.png
│       ├── 18_sales_performance_by_establishment_year.png
│       ├── 19_sales_performance_by_fat_content.png
│       └── 20_fat_content_performance_by_outlet_type.png
│
├── powerbi/
│   └── BlinkIT_Grocery_Sales_Analysis.pbix
│
└── report/
    └── Qevin_Attaqwa_BlinkIT_Grocery_Sales_Analysis.pdf


Project Report

The complete business analysis, including KPI results, business insights, business interpretations, and recommendations, is available in the project report:

Qevin_Attaqwa_BlinkIT_Grocery_Sales_Analysis.pdf


Conclusion

The BlinkIT Grocery Sales Analysis provides a comprehensive view of business performance using SQL (MySQL) and Power BI.

The analysis demonstrates that sales volume, product category, outlet characteristics, and customer satisfaction should be evaluated together to understand business performance effectively.

Supermarket Type 1, Fruits and Vegetables, Snack Foods, Medium-sized outlets, and Low Fat products emerge as important contributors to overall sales. At the same time, customer satisfaction analysis identifies opportunities to improve lower-rated product categories and outlet types.

Overall, the findings provide a data-driven foundation for inventory planning, product assortment, outlet management, customer experience improvement, and revenue optimization.

The project demonstrates an end-to-end analytical workflow, from SQL-based business analysis to Power BI visualization and business-oriented recommendations.


