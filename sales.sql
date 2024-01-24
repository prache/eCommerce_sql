--- schema definition

CREATE TABLE sales (
    transaction_id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INTEGER NOT null,
    store_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    total_price DECIMAL(10, 2) NOT null
);

--data insertion
INSERT INTO sales (date, customer_id, store_id, product_id, quantity, total_price)
SELECT
    current_date - (random() * 365)::INTEGER AS date,
    c.customer_id,
    (random() * 9 + 1)::INTEGER AS store_id,
    (random() * 59 + 1)::INTEGER AS product_id,
    (random() * 9 + 1)::INTEGER AS quantity,
    (random() * 1000)::NUMERIC(10, 2) AS total_price
FROM generate_series(1, 1000)
JOIN (SELECT customer_id FROM customer ORDER BY random()) AS c
    ON true;

SELECT * FROM sales;


