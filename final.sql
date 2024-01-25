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

CREATE TABLE product (
    product_id INTEGER NOT NULL,
    category VARCHAR(100),
    product_name VARCHAR(100),
    supplier VARCHAR(100),
    price DECIMAL(10, 2)
);

--CREATE SEQUENCE customer_id_seq;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY DEFAULT nextval('customer_id_seq'),
    customer_name VARCHAR(255),
    contact VARCHAR(255),
    membership VARCHAR(255)
);

create TABLE stores (
	store_id integer primary key not NULL,
	location_store varchar (25),
	size_store INTEGER not NULL,
	employee_number integer not null
);

---data insertion
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
    ON true
   limit 1000;

INSERT INTO product (product_id, category, product_name, supplier, price) values
('1', 'Furnitures', 'Supreme Comfort Sofa', 'Supplier 15', 799),
('2', 'Furnitures', 'Delightful Dining Table', 'Supplier 8', 499),
('3', 'Furnitures', 'Elegant Coffee Table Set', 'Supplier 7', 249),
('4', 'Furnitures', 'Royale Recliner Chair', 'Supplier 3', 699),
('5', 'Kitchen Appliances', 'Pro Smart Blender', 'Supplier 5', 89),
('6', 'Kitchen Appliances', 'Stainless Steel Toaster Oven', 'Supplier 4', 79),
('7', 'Kitchen Appliances', 'Master Multi-Cooker', 'Supplier 6', 129),
('8', 'Kitchen Appliances', 'Dream Espresso Machine', 'Supplier 19', 299),
('9', 'Decoration Articles', 'Artisanal Wall Mirror', 'Supplier 1', 149),
('10', 'Decoration Articles', 'Floral Canvas Artwork', 'Supplier 17', 79),
('11', 'Decoration Articles', 'Vintage Table Clock', 'Supplier 17', 39),
('12', 'Decoration Articles', 'Decorative Throw Blanket', 'Supplier 1', 49),
('13', 'Electronic Appliances', 'Ultra HD Smart TV', 'Supplier 8', 999),
('14', 'Electronic Appliances', 'Wireless Soundbar Speaker', 'Supplier 3', 149),
('15', 'Electronic Appliances', 'Robotic Vacuum Cleaner', 'Supplier 20', 299),
('16', 'Electronic Appliances', 'Smart Home Security Kit', 'Supplier 4', 199),
('17', 'Curtains', 'Sheer Elegance Window Curtains', 'Supplier 2', 59),
('18', 'Curtains', 'Blackout Drapery Panels', 'Supplier 5', 69),
('19', 'Curtains', 'Printed Window Valances', 'Supplier 7', 29),
('20', 'Curtains', 'Velvet Room Divider Screen', 'Supplier 15', 199),
('21', 'Beds and Mattresses', 'OrthoComfort Memory Foam Mattress', 'Supplier 15', 499),
('22', 'Beds and Mattresses', 'Adjustable Bed Base Frame', 'Supplier 8', 399),
('23', 'Beds and Mattresses', 'Plush Pillow Top Mattress', 'Supplier 7', 599),
('24', 'Beds and Mattresses', 'Hybrid Sleep System Mattress', 'Supplier 3', 799),
('25', 'Sports', 'Cardio Fitness Treadmill Machine', 'Supplier 5', 999),
('26', 'Sports', 'Durable Soccer Goal Net', 'Supplier 4', 79),
('27', 'Sports', 'Yoga Mat and Block Set', 'Supplier 6', 39),
('28', 'Sports', 'Outdoor Badminton Set', 'Supplier 19', 49),
('29', 'Sanitary Articles', 'Rainfall Shower Head', 'Supplier 1', 39),
('30', 'Sanitary Articles', 'Modern Bathroom Faucet', 'Supplier 17', 99),
('31', 'Sanitary Articles', 'Bidet Toilet Seat', 'Supplier 17', 149),
('32', 'Sanitary Articles', 'Glass Shelf with Towel Bar', 'Supplier 1', 59),
('33', 'Kids Furniture', 'Princess Castle Bed', 'Supplier 8', 399),
('34', 'Kids Furniture', 'Colorful Play Table and Chairs', 'Supplier 3', 149),
('35', 'Kids Furniture', 'Toy Storage Organizer', 'Supplier 20', 79),
('36', 'Kids Furniture', 'Kids Bean Bag Chair', 'Supplier 4', 99),
('37', 'Furnitures', 'Classic Leather Armchair', 'Supplier 2', 599),
('38', 'Furnitures', 'Contemporary Dining Set', 'Supplier 5', 799),
('39', 'Furnitures', 'Rustic Coffee Table', 'Supplier 7', 299),
('40', 'Furnitures', 'Modern TV Stand', 'Supplier 15', 199),
('41', 'Kitchen Appliances', 'High-Speed Blender', 'Supplier 15', 129),
('42', 'Kitchen Appliances', 'Compact Microwave Oven', 'Supplier 8', 89),
('43', 'Kitchen Appliances', 'Electric Pressure Cooker', 'Supplier 7', 109),
('44', 'Kitchen Appliances', 'Automatic Coffee Maker', 'Supplier 3', 89),
('45', 'Decoration Articles', 'Abstract Wall Art', 'Supplier 5', 79),
('46', 'Decoration Articles', 'Framed Landscape Painting', 'Supplier 4', 149),
('47', 'Decoration Articles', 'Decorative Floor Vase', 'Supplier 6', 69),
('48', 'Decoration Articles', 'Scented Candles Set', 'Supplier 19', 29),
('49', 'Electronic Appliances', '65-Inch 4K Smart TV', 'Supplier 1', 1499),
('50', 'Electronic Appliances', 'Wireless Bluetooth Speaker', 'Supplier 17', 79),
('51', 'Electronic Appliances', 'Robotic Lawn Mower', 'Supplier 17', 599),
('52', 'Electronic Appliances', 'Smart Thermostat System', 'Supplier 1', 199),
('53', 'Curtains', 'Energy-Efficient Curtains', 'Supplier 8', 49),
('54', 'Curtains', 'Sheer Voile Window Treatments', 'Supplier 3', 39),
('55', 'Curtains', 'Roman Shades Blinds', 'Supplier 20', 59),
('56', 'Curtains', 'Plush Pillow Top Mattress', 'Supplier 4', 599),
('57', 'Beds and Mattresses', 'Adjustable Bed Frame', 'Supplier 2', 299),
('58', 'Beds and Mattresses', 'Memory Foam Mattress Topper', 'Supplier 5', 129),
('59', 'Beds and Mattresses', 'High-End Home Gym Equipment', 'Supplier 7', 1999),
('60', 'Beds and Mattresses', 'Professional Tennis Racket', 'Supplier 15', 149);


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

INSERT INTO stores (store_id, location_store, size_store, employee_number)
VALUES
  (1, 'Berlin', 2800, 20),
  (2, 'Hamburg', 1800, 15),
  (3, 'München', 1900, 25),
  (4, 'Köln', 1880, 10),
  (5, 'Frankfurt', 1700, 18),
  (6, 'Stuttgart', 1900, 12),
  (7, 'Düsseldorf', 2200, 22),
  (8, 'Dortmund', 1500, 8),
  (9, 'Essen', 1750, 14),
  (10, 'Bremen', 1550, 16);

SELECT * FROM sales;
SELECT * FROM product;
SELECT * FROM customer;
select * from stores;



