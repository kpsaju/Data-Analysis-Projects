# Sales Insights – Atliq Hardware

#  Project Objective
The company's sales head has noticed a **decline in overall sales** and lacks visibility into key performance metrics.  
This project aims to:

- Explore and query sales data using SQL in MySQL Workbench to uncover trends and patterns
- Summarize findings to help leadership understand where sales are coming from
- Identify underperforming areas to support data-driven strategic decisions

# Business Challenge
The company faces difficulties in:
- Identifying where sales are coming from
- Spotting underperforming products or regions
- Tracking monthly and yearly performance

# Tools Used
- **MySQL Workbench** – For querying and exploring the `db_dump.sql` sales dataset
- **Power BI** – 
  - **Power Query**: For data cleaning and transformation  
  - **Data Model**: Relationships and calculations (DAX)  
  - **Dashboard**: Interactive visualizations and filtering

# Power BI Visuals Created
The final dashboard includes the following visuals:
- **Top 5 Customers by Revenue**
- **Top 5 Products by Revenue**
- **Yearly Revenue Overview**
- **Monthly Sales and Revenue Trends**
- **Sales by City**
- **Revenue by City**

These visuals allow the business to:
- Identify high-value customers and products
- Detect underperforming locations
- Track performance over time

# Deliverables
- Cleaned and transformed data using Power Query
- Calculated metrics (DAX) for revenue and sales KPIs
- Interactive Power BI dashboard with slicers for drill-downs

# Data Analysis Using SQL (MySQL Workbench)

Below are the SQL queries used to explore and analyze the sales dataset:

1. Show all customer records

    `SELECT * FROM customers;`

2. Show total number of customers

    `SELECT count(*) FROM customers;`

3. Show transactions for Chennai market (market code for chennai is Mark001

    `SELECT * FROM transactions where market_code='Mark001';`

4. Show distrinct product codes that were sold in chennai

    `SELECT distinct product_code FROM transactions where market_code='Mark001';`

5. Show transactions where currency is US dollars

    `SELECT * from transactions where currency="USD"`

6. Show transactions in 2020 join by date table

    `SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;`

7. Show total revenue in year 2020,

    `SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";`
	
8. Show total revenue in year 2020, January Month,

    `SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");`

9. Show total revenue in year 2020 in Chennai

    `SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001";`

# Data Analysis using POWER BI

1.Formula to create norm_amount column

`= Table.AddColumn(#"Filtered Rows", "norm_amount", each if [currency] = "USD" or [currency] ="USD#(cr)" then [sales_amount]*75 else [sales_amount], type any)`




