CREATE TABLE sales_customer (
    transaction_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    customer_name VARCHAR(255),
    quantity INTEGER NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL
);

INSERT INTO sales_customer (customer_id, customer_name, quantity, total_price)
SELECT
    st.customer_id,
    s.customer_name,
    st.quantity,
    st.total_price    
FROM sales AS st
JOIN customer AS s ON st.customer_id = s.customer_id;

SELECT * FROM sales_customer;

