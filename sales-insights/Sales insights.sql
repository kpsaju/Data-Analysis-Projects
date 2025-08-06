SELECT * FROM sales.customers;

SELECT count(*) FROM sales.customers;

SELECT * FROM sales.transactions where market_code='Mark001';

SELECT distinct product_code FROM sales.transactions where market_code='Mark001';

SELECT * from sales.transactions where currency="USD";

SELECT * FROM sales.transactions where sales_amount<=0;

select distinct(transactions.currency) from sales.transactions;

SELECT transactions.*, date.* FROM transactions INNER JOIN date ON 
transactions.order_date=date.date where date.year=2020;

select count(transactions.currency) from sales.transactions where currency="INR\r";

select count(transactions.currency) from sales.transactions where currency="USD\r";

SELECT SUM(transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date ON transactions.order_date = date.date
WHERE date.year = 2017 and date.month_name="october";

SELECT SUM(transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date ON transactions.order_date = date.date
WHERE date.year = 2020 and transactions.market_code="Mark001";





