CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    contact VARCHAR(255),
    membership VARCHAR(255)
);

INSERT INTO customer (customer_id, customer_name, contact, membership)
SELECT
    FLOOR(RANDOM() * 100000) + 1 AS customer_id,
    CONCAT(first_names.first_name, ' ', last_names.last_name) AS customer_name,
    CONCAT(first_names.first_name, '.', last_names.last_name, '@gmx.de') AS contact,
    CASE WHEN RANDOM() < 0.5 THEN 'premium' ELSE 'standard' END AS membership
FROM (
    SELECT 'John' AS first_name UNION ALL
    SELECT 'Jane' UNION ALL
    SELECT 'Michael' UNION ALL
    SELECT 'Emily' UNION ALL
    SELECT 'David' UNION ALL
    SELECT 'Sophia' UNION ALL
    SELECT 'William' UNION ALL
    SELECT 'Olivia' UNION ALL
    SELECT 'James' UNION ALL
    SELECT 'Emma'
    -- Add more first names here if needed
) AS first_names
CROSS JOIN (
    SELECT 'Smith' AS last_name UNION ALL
    SELECT 'Johnson' UNION ALL
    SELECT 'Williams' UNION ALL
    SELECT 'Brown' UNION ALL
    SELECT 'Jones' UNION ALL
    SELECT 'Miller' UNION ALL
    SELECT 'Davis' UNION ALL
    SELECT 'Garcia' UNION ALL
    SELECT 'Rodriguez' UNION ALL
    SELECT 'Martinez'
    -- Add more last names here if needed
) AS last_names
LIMIT 100;

select * from customer;
  