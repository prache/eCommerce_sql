CREATE TABLE sales_product (
    transaction_id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    product_id INTEGER NOT NULL,
    product_name VARCHAR(100),
    category VARCHAR(100),
    quantity INTEGER NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO sales_product (date, product_id, product_name, category, quantity, price)
SELECT
    st.date,
    st.product_id,
    s.product_name,
    s.category,
    st.quantity,
    s.price
FROM sales AS st
JOIN product AS s ON st.product_id = s.product_id;

SELECT * FROM sales_product;


			