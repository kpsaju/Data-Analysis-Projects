# Sales Insights – Atliq Hardware

This project delivers actionable insights into the sales performance of **Atliq Hardware**, addressing concerns around declining sales and lack of visibility into key metrics.
By leveraging SQL for data exploration and Power BI for visualization, this analysis helps identify revenue patterns, high-performing customers/products, and underperforming markets.

# Key Objectives

- **Explore Sales Data**  
  Use SQL to uncover transaction patterns and market-specific activity.

- **Measure Performance KPIs**  
  Calculate and visualize key metrics like total revenue and sales quantity using DAX.

- **Identify High & Low Performers**  
  Analyze top customers, products, and cities by revenue.

- **Visualize Sales Trends**  
  Track monthly and yearly sales performance for trend analysis.

# Data Sources

The project uses a structured database dump containing multiple related tables:

- `customers` – Customer information  
- `products` – Product catalog  
- `transactions` – Sales transactions (includes `sales_amount`, `quantity`, `currency`, etc.)  
- `date` – Calendar table for time-based analysis

#Methodology

### 1.Data Exploration Using SQL (MySQL Workbench)

Performed initial data analysis and validation using SQL queries.

### 2. Data Cleaning & Transformation (Power Query in Power BI)
Imported SQL tables into Power BI.

Used Power Query for cleaning and transformation:

Removed null/irrelevant fields

Standardized currency values

Converted USD to INR for consistent revenue analysis

###3. Data Modeling & DAX Calculations
Built relationships between tables: transactions, customers, products, and date

Created DAX measures to support KPI calculations

Key DAX Measures:

Total Revenue 

Sales Quantity 

Monthly Revenue

Revenue by Customer, Product, City, etc.

###4. Dashboard Creation (Power BI)
Designed an interactive dashboard in Power BI to support drill-down and filtering across dimensions like customer, product, and time.

Visuals Created:

Top 5 Customers by Revenue

Top 5 Products by Revenue

Yearly Revenue Overview

Monthly Sales and Revenue Trends

Sales by City

Revenue by City

Interactive Filters:

Year

Month

# Tools and Technologies
MySQL Workbench – For querying and exploring structured sales data

Power BI Desktop

Power Query: Data transformation

DAX: KPI calculations

Dashboard: Visualizations and filters

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

# Results and Insights

The dashboard reveals:

Who are the highest-value customers and products?

Which cities or markets are underperforming?

How has revenue changed month-over-month or year-over-year?

Are sales more dependent on certain products or customers?




