# auguma_project
Example Case for Business Analyst  Case Study: Retail Sales Analysis 

Example Case for Business Analyst
Case Study: Retail Sales Analysis
Background:
Assume you are working as a Data Scientist for a retail company. The company has several
stores across the country and maintains a database of its sales, customer interactions, and
inventory.
Data Provided:
Sales Table: Contains records of sales transactions, including transaction ID, date,
customer ID, store ID, product ID, quantity sold, and total price.
Products Table: Includes details of each product, such as product ID, name, category,
supplier, and price.
Customers Table: Holds information about customers, like customer ID, name, contact
details, and membership status.
Stores Table: Contains information about each store, such as store ID, location, size, and
number of employees.
Tasks:
1.2.3.Write an SQL Script to create the example tables, incl. inserting the example dataset.
Write SQL Queries to answer the tasks below.
Describe your Solution.
Tasks for Point 2:
Sales Performance Analysis:
● Write SQL queries to calculate the total sales for each store last month.
● Identify the top 5 performing products in terms of quantity sold.
● Analyze the sales trend for a particular product category over the past year.
Customer Insights:
● Determine the average purchase value per customer.
● Identify the top 10 customers based on their total spending.
● Find patterns (look at avg. spendings) in purchase behavior based on membership
status.
Advanced Analysis:
● Use window functions to rank stores based on their growth in sales quarter over
quarter.
Sales Table
transaction_id
 date
 customer_id
 store_id
 product_id
 quantity
 total_price
1
 2023-05-31
 2
 1
 5
 6
 2257.44
2
 2023-02-17
 10
 1
 17
 4
 1233.04
3
 2023-10-24
 6
 1
 3
 4
 342.32
...
 ...
 ...
 ...
 ...
 ...
 ...
Products Table
product_id
 name
 category
 supplier
 price
1
 Schattenfugenrahmen
 Home and Living
 Supplier 1
 374.64
2
 Plissees
 Home and Living
 Supplier 1
 196.86
3
 Football
 Sports
 Supplier 5
 85.58
...
 ...
 ...
 ...
 ...
Customers Table
customer_id
 name
 contact
 membership
1
 Max Mueller
 m.mueller@example.com
 Premium
2
 Daniel Fischer
 daniel.fischer@example.com
 Standard
3
 Kevin Schmidt
 schmidt@example.com
 Standard
...
 ...
 ...
 ...
Stores Table
store_id
 location
 size
 employees
1
 Koeln
 1880
 8
2
 Berlin
 2274
 14
3
 Frankfurt
 1985
 17
...
 ...
 ...
 ..
