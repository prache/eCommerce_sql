CREATE SEQUENCE customer_id_seq;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY DEFAULT nextval('customer_id_seq'),
    customer_name VARCHAR(255),
    contact VARCHAR(255),
    membership VARCHAR(255)
);

INSERT INTO customer (customer_name, contact, membership)
SELECT
    CONCAT(names.first_name, ' ', names.last_name) AS customer_name,
    CONCAT(names.first_name, '.', names.last_name, '@gmx.de') AS contact,
    memberships.membership
FROM (
    SELECT DISTINCT ON (first_name, last_name)
        first_name,
        last_name
    FROM (
        SELECT 'John' AS first_name UNION ALL
        SELECT 'Jane' UNION ALL
        SELECT 'Michael' UNION ALL
        SELECT 'Emily' UNION ALL
        SELECT 'David' UNION ALL
        SELECT 'Sophia' UNION ALL
        SELECT 'William' UNION ALL
        SELECT 'Olivia' UNION ALL
        SELECT 'James' UNION all
        select 'Maren' UNION all
        select 'Louisa' UNION all
        select 'Karin' UNION all
        select 'Cindy' UNION all
        select 'Christian' UNION all
        SELECT 'Maurice'
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
        SELECT 'Höffner' UNION all
        SELECT 'Bakmann' UNION all
        SELECT 'Schmitz' UNION all
        SELECT 'Müller' UNION all
        SELECT 'Schneider' UNION all
        SELECT 'Weiland' UNION all
        SELECT 'Martinez'
        -- Add more last names here if needed
    ) AS last_names
) AS names
CROSS JOIN (
    SELECT 'Standard' AS membership UNION ALL
    SELECT 'Premium'
) AS memberships
ORDER BY RANDOM()
LIMIT 100;

SELECT * FROM customer;