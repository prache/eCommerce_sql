CREATE TABLE sales_store (
    transaction_id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    location_store VARCHAR(100),
    size_store VARCHAR(50),
    employee_number INTEGER
);

INSERT INTO sales_store (date, customer_id, store_id, product_id, quantity, total_price, location_store, size_store, employee_number)
SELECT
    st.date,
    st.customer_id,
    st.store_id,
    st.product_id,
    st.quantity,
    st.total_price,
    s.location_store,
    s.size_store,
    s.employee_number
FROM sales AS st
JOIN stores AS s ON st.store_id = s.store_id;

SELECT * FROM sales_store;

--Sales Performance Analysis:
--Write SQL queries to calculate the total sales for each store last month.

select date, store_id, location_store, sum(total_price) as total_sales
from sales_store ss
where extract (month from date) = 12
group by (date, store_id , location_store ,total_price);

-- Identify the top 5 performing products in terms of quantity sold.
select sp.product_id, sp.product_name, sp.category, sum(quantity) as quantity
from sales_product as sp
group by (sp.product_id, sp.product_name, sp.category, quantity)
order by quantity desc
limit 5;

-- Analyze the sales trend for a particular product category over the past year.
select category, sum(quantity)  as total_quantity
from sales_product sp 
group by category 
order by total_quantity desc;

--Customer Insights:
-- Determine the average purchase value per customer.
select sc.customer_id, customer_name, sum(total_price) as total_purchase,
avg(total_price) as average_purchase 
from sales_customer sc 
group by customer_id, customer_name
order by average_purchase desc;

-- Identify the top 10 customers based on their total spending.
select customer_id, customer_name, sum(total_price) as total_spending
from sales_customer sc 
group by customer_id , customer_name 
order by total_spending desc 
limit 10;

-- Find patterns (look at avg. spendings) in purchase behavior based on 
--membership status.
select 


--Advanced Analysis:
-- Use window functions to rank stores based on their growth in sales quarter over quarter.








