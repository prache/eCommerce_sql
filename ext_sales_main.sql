CREATE TABLE sales_table (
    transaction_id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL
);

INSERT INTO sales_table (date, customer_id, store_id, product_id, quantity, total_price)
SELECT
    current_date - (random() * 365)::INTEGER AS date,
    (random() * 1000)::INTEGER AS customer_id,
    (random() * 100)::INTEGER AS store_id,
    (random() * 10000)::INTEGER AS product_id,
    (random() * 10)::INTEGER AS quantity,
    (random() * 1000)::NUMERIC(10, 2) AS total_price
FROM generate_series(1, 100);

select * from sales_table