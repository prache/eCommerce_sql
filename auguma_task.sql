/*POINT ONE: Write an SQL Script to create the example tables, incl. inserting the example dataset.*/
--- schema definition

CREATE TABLE product (
    product_id INTEGER primary key NOT null,
    category VARCHAR(100),
    product_name VARCHAR(100),
    supplier VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE customer (
    customer_id integer primary key not null, --INT PRIMARY KEY DEFAULT nextval('customer_id_seq'),
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

CREATE TABLE sales (
    transaction_id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INTEGER NOT null,
    store_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    total_price DECIMAL(10, 2) NOT null,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

---data insertion

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


INSERT INTO customer (customer_id, customer_name, contact, membership)
VALUES ('1', 'John Karlo', 'john.karlo@gmx.de', 'Standard'),
('2', 'Jane Johnson', 'jane.johnson@gmx.de', 'Premium'),
('3', 'Michael Williams', 'michael.williams@gmx.de', 'Standard'),
('4', 'Emily Brown', 'emily.brown@gmx.de', 'Premium'),
('5', 'David Jones', 'david.jones@gmx.de', 'Standard'),
('6', 'Sophia Miller', 'sophia.miller@gmx.de', 'Premium'),
('7', 'William Davis', 'william.davis@gmx.de', 'Standard'),
('8', 'Olivia Garcia', 'olivia.garcia@gmx.de', 'Premium'),
('9', 'James Höffner', 'james.hoffner@gmx.de', 'Standard'),
('10', 'Maren Bankmann', 'maren.bankmann@gmx.de', 'Premium'),
('11', 'Louisa Schmitz', 'louisa.schmitz@gmx.de', 'Standard'),
('12', 'Karin Müller', 'karin.muller@gmx.de', 'Premium'),
('13', 'Cindy Schneider', 'cindy.schneider@gmx.de', 'Standard'),
('14', 'Christian Weiland', 'christian.weiland@gmx.de', 'Premium'),
('15', 'Christian Smith', 'christian.smith@gmx.de', 'Standard'),
('16', 'Olivia Johnson', 'olivia.johnson@gmx.de', 'Premium'),
('17', 'Liam Williams', 'liam.williams@gmx.de', 'Standard'),
('18', 'Emma Jones', 'emma.jones@gmx.de', 'Premium'),
('19', 'Noah Brown', 'noah.brown@gmx.de', 'Standard'),
('20', 'Ava Davis', 'ava.davis@gmx.de', 'Premium'),
('21', 'Sophia Miller', 'sophia.miller@gmx.de', 'Standard'),
('22', 'Isabella Wilson', 'isabella.wilson@gmx.de', 'Premium'),
('23', 'Mia Moore', 'mia.moore@gmx.de', 'Standard'),
('24', 'Charlotte Taylor', 'charlotte.taylor@gmx.de', 'Premium'),
('25', 'Amelia Anderson', 'amelia.anderson@gmx.de', 'Standard'),
('26', 'Harper Thomas', 'harper.thomas@gmx.de', 'Premium'),
('27', 'Evelyn Jackson', 'evelyn.jackson@gmx.de', 'Standard'),
('28', 'Abigail White', 'abigail.white@gmx.de', 'Premium'),
('29', 'Emily Harris', 'emily.harris@gmx.de', 'Standard'),
('30', 'Elizabeth Martin', 'elizabeth.martin@gmx.de', 'Premium'),
('31', 'Mila Thompson', 'mila.thompson@gmx.de', 'Standard'),
('32', 'Ella Garcia', 'ella.garcia@gmx.de', 'Premium'),
('33', 'Scarlett Martinez', 'scarlett.martinez@gmx.de', 'Standard'),
('34', 'Luna Robinson', 'luna.robinson@gmx.de', 'Premium'),
('35', 'Sofia Clark', 'sofia.clark@gmx.de', 'Standard'),
('36', 'Avery Rodriguez', 'avery.rodriguez@gmx.de', 'Premium'),
('37', 'Grace Lewis', 'grace.lewis@gmx.de', 'Standard'),
('38', 'Chloe Lee', 'chloe.lee@gmx.de', 'Premium'),
('39', 'Victoria Walker', 'victoria.walker@gmx.de', 'Standard'),
('40', 'Madison Hall', 'madison.hall@gmx.de', 'Premium'),
('41', 'Eleanor Allen', 'eleanor.allen@gmx.de', 'Standard'),
('42', 'Hannah Young', 'hannah.young@gmx.de', 'Premium'),
('43', 'Nora Hernandez', 'nora.hernandez@gmx.de', 'Standard'),
('44', 'Riley King', 'riley.king@gmx.de', 'Premium'),
('45', 'Zoe Wright', 'zoe.wright@gmx.de', 'Standard'),
('46', 'Lily Lopez', 'lily.lopez@gmx.de', 'Premium'),
('47', 'Layla Hill', 'layla.hill@gmx.de', 'Standard'),
('48', 'Lillian Scott', 'lillian.scott@gmx.de', 'Standard'),
('49', 'Ethan Adams', 'ethan.adams@gmx.de', 'Premium'),
('50', 'Avery Rivera', 'avery.rivera@gmx.de', 'Standard'),
('51', 'Benjamin Torres', 'benjamin.torres@gmx.de', 'Premium'),
('52', 'Elijah Mitchell', 'elijah.mitchell@gmx.de', 'Standard'),
('53', 'Logan Perez', 'logan.perez@gmx.de', 'Premium'),
('54', 'Lucas Roberts', 'lucas.roberts@gmx.de', 'Standard'),
('55', 'Mason Turner', 'mason.turner@gmx.de', 'Premium'),
('56', 'Alexander Phillips', 'alexander.phillips@gmx.de', 'Standard'),
('57', 'Henry Campbell', 'henry.campbell@gmx.de', 'Premium'),
('58', 'Sebastian Edwards', 'sebastian.edwards@gmx.de', 'Standard'),
('59', 'Jack Foster', 'jack.foster@gmx.de', 'Premium'),
('60', 'Owen Collins', 'owen.collins@gmx.de', 'Standard'),
('61', 'Samuel Stewart', 'samuel.stewart@gmx.de', 'Premium'),
('62', 'Matthew Sanchez', 'matthew.sanchez@gmx.de', 'Standard'),
('63', 'Joseph Morris', 'joseph.morris@gmx.de', 'Premium'),
('64', 'Levi Rogers', 'levi.rogers@gmx.de', 'Standard'),
('65', 'Wyatt Reed', 'wyatt.reed@gmx.de', 'Premium'),
('66', 'Christian Cook', 'christian.cook@gmx.de', 'Standard'),
('67', 'Andrew Morgan', 'andrew.morgan@gmx.de', 'Premium'),
('68', 'Gabriel Bell', 'gabriel.bell@gmx.de', 'Standard'),
('69', 'Daniel Coleman', 'daniel.coleman@gmx.de', 'Premium'),
('70', 'Isaac Richardson', 'isaac.richardson@gmx.de', 'Standard'),
('71', 'Alexander Peterson', 'alexander.peterson@gmx.de', 'Premium'),
('72', 'Carter Murphy', 'carter.murphy@gmx.de', 'Standard'),
('73', 'Jayden Griffin', 'jayden.griffin@gmx.de', 'Premium'),
('74', 'Nathan West', 'nathan.west@gmx.de', 'Standard'),
('75', 'Dylan Cox', 'dylan.cox@gmx.de', 'Premium'),
('76', 'Elijah Howard', 'elijah.howard@gmx.de', 'Standard'),
('77', 'Nicholas Ward', 'nicholas.ward@gmx.de', 'Premium'),
('78', 'Samuel Bailey', 'samuel.bailey@gmx.de', 'Standard'),
('79', 'Christopher Foster', 'christopher.foster@gmx.de', 'Premium'),
('80', 'Henry Simmons', 'henry.simmons@gmx.de', 'Standard'),
('81', 'Benjamin Murphy', 'benjamin.murphy@gmx.de', 'Premium'),
('82', 'Andrew Simmons', 'andrew.simmons@gmx.de', 'Standard'),
('83', 'Joseph Powell', 'joseph.powell@gmx.de', 'Premium'),
('84', 'David Foster', 'david.foster@gmx.de', 'Standard'),
('85', 'Alexander Wright', 'alexander.wright@gmx.de', 'Premium'),
('86', 'William Barnes', 'william.barnes@gmx.de', 'Standard'),
('87', 'Benjamin Bennett', 'benjamin.bennett@gmx.de', 'Premium'),
('88', 'Samuel Bauer', 'samuel.bauer@gmx.de', 'Premium'),
('89', 'Joseph Sanchez', 'joseph.sanchez@gmx.de', 'Standard'),
('90', 'Daniel Henderson', 'daniel.henderson@gmx.de', 'Standard'),
('91', 'Henry Perry', 'henry.perry@gmx.de', 'Premium'),
('92', 'Nathan Cox', 'nathan.cox@gmx.de', 'Standard'),
('93', 'David Bailey', 'david.bailey@gmx.de', 'Premium'),
('94', 'Andrew Schmidt', 'andrew.schmidt@gmx.de', 'Premium'),
('95', 'Christopher Powell', 'christopher.powell@gmx.de', 'Premium'),
('96', 'Henry Foster', 'henry.foster@gmx.de', 'Standard'),
('97', 'Ethan Adams', 'ethan.adams@gmx.de', 'Premium'),
('98', 'Mason Thompson', 'mason.thompson@gmx.de', 'Standard'),
('99', 'Vivek Sharma', 'vivek.sharma@gmx.de', 'Premium'),
('100', 'Gouri Laxman', 'gouri.laxman@gmx.de', 'Premium');

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
 
INSERT INTO sales (date, customer_id, store_id, product_id, quantity, total_price)
SELECT
    current_date - (random() * 365)::INTEGER AS date,
    (random() * 14 + 1):: INTEGER as customer_id,
    (random() * 9 + 1)::INTEGER AS store_id,
    (random() * 59 + 1)::INTEGER AS product_id,
    (random() * 9 + 1)::INTEGER AS quantity,
    (random() * 1000)::NUMERIC(10, 2) AS total_price
from generate_series(1, 1000);

SELECT * FROM product;
SELECT * FROM customer;
select * from stores;
SELECT * FROM sales;

/*POINT TWO: Write SQL Queries to answer the tasks below. 
 * Sales Performance Analysis:*/
/*1. Write SQL queries to calculate the total sales for each store last month.*/

SELECT s.store_id, st.location_store, SUM(s.total_price) AS total_sales
FROM sales s
JOIN stores st ON s.store_id = st.store_id
where EXTRACT(MONTH FROM s.date) = 12 and EXTRACT(YEAR FROM s.date) = 2023
GROUP BY s.store_id, st.location_store
ORDER BY total_sales DESC;

/*2. Identify the top 5 performing products in terms of quantity sold.*/

SELECT p.product_name, p.category, s.product_id, SUM(s.quantity) AS total_quantity
FROM sales s
JOIN product p ON s.product_id = p.product_id 
GROUP BY s.product_id, p.product_name, p.category 
ORDER BY total_quantity DESC
LIMIT 5;

/*3. Analyze the sales trend for a particular product category over the past year.*/

SELECT p.category, DATE_TRUNC('month', s.date) AS month, SUM(s.total_price) AS total_sales
FROM sales s
JOIN product p ON p.product_id = s.product_id
GROUP BY p.category, DATE_TRUNC('month', s.date)
order by category;

/* Customer Insights:
4. Determine the average purchase value per customer.*/

select 
	count(s.transaction_id) as total_number_of_purchases, 
	sum(total_price) as total_sales_revenue,
	sum(total_price)/count(s.transaction_id) as average_purchase_value_per_customer
from sales s;

select s.customer_id, c.customer_name, 
	sum(total_price) as total_purchase, 
	avg(s.total_price) as average_purchase
from sales s 
join customer c  on c.customer_id = s.customer_id
group by s.customer_id, c.customer_name
order by average_purchase desc;

/*5. Identify the top 10 customers based on their total spending.*/

select s.customer_id, c.customer_name, sum(total_price) as total_spending
from sales s 
join customer c  on c.customer_id = s.customer_id
group by s.customer_id, c.customer_name
order by total_spending desc
limit 10;

/*6. Find patterns (look at avg. spendings) in purchase behavior based on membership
status.*/

select c.membership, avg(s.total_price) as average_spending 
from sales s
join customer c  on c.customer_id = s.customer_id
group by c.membership 
order by average_spending desc;

/* Advanced Analysis:
7. Use window functions to rank stores based on their growth in sales quarter over
quarter.*/

SELECT store_id, location_store, quarter, avg_sales_growth, store_rank
FROM (
  SELECT store_id, location_store, quarter, avg_sales_growth,
         RANK() OVER (PARTITION BY quarter ORDER BY avg_sales_growth DESC) AS store_rank
  FROM (
    SELECT s.store_id, st.location_store, 
           DATE_TRUNC('quarter', s.date) AS quarter,
           AVG(s.total_price) - LAG(AVG(s.total_price)) OVER (PARTITION BY s.store_id ORDER BY DATE_TRUNC('quarter', s.date)) AS avg_sales_growth
    FROM sales s
    JOIN stores st ON s.store_id = st.store_id
    GROUP BY s.store_id, st.location_store, DATE_TRUNC('quarter', s.date)
  ) AS subquery
) AS ranked_stores where avg_sales_growth is not null;









