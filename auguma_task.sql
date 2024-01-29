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
    customer_id SERIAL primary key not null, --INT PRIMARY KEY DEFAULT nextval('customer_id_seq'),
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
        select 'Christian' UNION ALL
		select 'Olivia' UNION ALL
		select 'Liam' UNION ALL
		select 'Emma' UNION ALL
		select 'Noah' UNION ALL
		select 'Ava' UNION ALL
		select 'Sophia' UNION ALL
		select 'Isabella' UNION ALL
		select 'Mia' UNION ALL
		select 'Charlotte' UNION ALL
		select 'Amelia' UNION ALL
		select 'Harper' UNION ALL
		select 'Evelyn' UNION ALL
		select 'Abigail' UNION ALL
		select 'Emily' UNION ALL
		select 'Elizabeth' UNION ALL
		select 'Mila' UNION ALL
		select 'Ella' UNION ALL
		select 'Scarlett' UNION ALL
		select 'Luna' UNION ALL
		select 'Sofia' UNION ALL
		select 'Avery' UNION ALL
		select 'Grace' UNION ALL
		select 'Chloe' UNION ALL
		select 'Victoria' UNION ALL
		select 'Madison' UNION ALL
		select 'Eleanor' UNION ALL
		select 'Hannah' UNION ALL
		select 'Nora' UNION ALL
		select 'Riley' UNION ALL
		select 'Zoe' UNION ALL
		select 'Lily' UNION ALL
		select 'Layla' UNION ALL
		select 'Lillian' UNION ALL
		select 'Addison' UNION ALL
		select 'Aubrey' UNION ALL
		select 'Ellie' UNION ALL
		select 'Stella' UNION ALL
		select 'Natalie' UNION ALL
		select 'Zoey' UNION ALL
		select 'Leah' UNION ALL
		select 'Hazel' UNION ALL
		select 'Violet' UNION ALL
		select 'Aurora' UNION ALL
		select 'Savannah' UNION ALL
		select 'Audrey' UNION ALL
		select 'Brooklyn' UNION ALL
		select 'Bella' UNION ALL
		select 'Claire' UNION ALL
		select 'Skylar' UNION ALL
		select 'Lucy' UNION ALL
		select 'Paisley' UNION ALL
		select 'Everly' UNION ALL
		select 'Anna' UNION ALL
		select 'Caroline' UNION ALL
		select 'Nova' UNION ALL
		select 'Genesis' UNION ALL
		select 'Emilia' UNION ALL
		select 'Kennedy' UNION ALL
		select 'Samantha' UNION ALL
		select 'Maya' UNION ALL
		select 'Willow' UNION ALL
		select 'Kinsley' UNION ALL
		select 'Naomi' UNION ALL
		select 'Aaliyah' UNION ALL
		select 'Elena' UNION ALL
		select 'Sarah' UNION ALL
		select 'Ariana' UNION ALL
		select 'Allison' UNION ALL
		select 'Gabriella' UNION ALL
		select 'Alice' UNION ALL
		select 'Madelyn' UNION ALL
		select 'Cora' UNION ALL
		select 'Ruby' UNION ALL
		select 'Eva' UNION ALL
		select 'Serenity' UNION ALL
		select 'Autumn' UNION ALL
		select 'Adeline' UNION ALL
		select 'Hailey' UNION ALL
		select 'Gianna' UNION ALL
		select 'Valentina' UNION ALL
		select 'Isla' UNION ALL
		select 'Eliana' UNION ALL
		select 'Quinn' UNION ALL
		select 'Nevaeh' UNION ALL
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
        SELECT 'Bankmann' UNION all
        SELECT 'Schmitz' UNION all
        SELECT 'Müller' UNION all
        SELECT 'Schneider' UNION all
        SELECT 'Weiland' UNION all
		SELECT 'Smith' UNION ALL
		SELECT 'Johnson' UNION ALL
		SELECT 'Williams' UNION ALL
		SELECT 'Jones' UNION ALL
		SELECT 'Brown' UNION ALL
		SELECT 'Davis' UNION ALL
		SELECT 'Miller' UNION ALL
		SELECT 'Wilson' UNION ALL
		SELECT 'Moore' UNION ALL
		SELECT 'Taylor' UNION ALL
		SELECT 'Anderson' UNION ALL
		SELECT 'Thomas' UNION ALL
		SELECT 'Jackson' UNION ALL
		SELECT 'White' UNION ALL
		SELECT 'Harris' UNION ALL
		SELECT 'Martin' UNION ALL
		SELECT 'Thompson' UNION ALL
		SELECT 'Garcia' UNION ALL
		SELECT 'Martinez' UNION ALL
		SELECT 'Robinson' UNION ALL
		SELECT 'Clark' UNION ALL
		SELECT 'Rodriguez' UNION ALL
		SELECT 'Lewis' UNION ALL
		SELECT 'Lee' UNION ALL
		SELECT 'Walker' UNION ALL
		SELECT 'Hall' UNION ALL
		SELECT 'Allen' UNION ALL
		SELECT 'Young' UNION ALL
		SELECT 'Hernandez' UNION ALL
		SELECT 'King' UNION ALL
		SELECT 'Wright' UNION ALL
		SELECT 'Lopez' UNION ALL
		SELECT 'Hill' UNION ALL
		SELECT 'Scott' UNION ALL
		SELECT 'Green' UNION ALL
		SELECT 'Adams' UNION ALL
		SELECT 'Baker' UNION ALL
		SELECT 'Gonzalez' UNION ALL
		SELECT 'Nelson' UNION ALL
		SELECT 'Carter' UNION ALL
		SELECT 'Mitchell' UNION ALL
		SELECT 'Perez' UNION ALL
		SELECT 'Roberts' UNION ALL
		SELECT 'Turner' UNION ALL
		SELECT 'Phillips' UNION ALL
		SELECT 'Campbell' UNION ALL
		SELECT 'Parker' UNION ALL
		SELECT 'Evans' UNION ALL
		SELECT 'Edwards' UNION ALL
		SELECT 'Collins' UNION ALL
		SELECT 'Stewart' UNION ALL
		SELECT 'Sanchez' UNION ALL
		SELECT 'Morris' UNION ALL
		SELECT 'Rogers' UNION ALL
		SELECT 'Reed' UNION ALL
		SELECT 'Cook' UNION ALL
		SELECT 'Morgan' UNION ALL
		SELECT 'Bell' UNION ALL
		SELECT 'Murphy' UNION ALL
		SELECT 'Bailey' UNION ALL
		SELECT 'Rivera' UNION ALL
		SELECT 'Cooper' UNION ALL
		SELECT 'Richardson' UNION ALL
		SELECT 'Cox' UNION ALL
		SELECT 'Howard' UNION ALL
		SELECT 'Ward' UNION ALL
		SELECT 'Torres' UNION ALL
		SELECT 'Peterson' UNION ALL
		SELECT 'Gray' UNION ALL
		SELECT 'Ramirez' UNION ALL
		SELECT 'James' UNION ALL
		SELECT 'Watson' UNION ALL
		SELECT 'Brooks' UNION ALL
		SELECT 'Kelly' UNION ALL
		SELECT 'Sanders' UNION ALL
		SELECT 'Price' UNION ALL
		SELECT 'Bennett' UNION ALL
		SELECT 'Wood' UNION ALL
		SELECT 'Barnes' UNION ALL
		SELECT 'Powell' UNION ALL
		SELECT 'Ross' UNION ALL
		SELECT 'Henderson' UNION ALL
		SELECT 'Coleman' UNION ALL
		SELECT 'Jenkins' UNION ALL
		SELECT 'Perry' UNION ALL
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
) AS ranked_stores;

/*create table tableau as
SELECT store_id, location_store, quarter, sum_sales_growth, store_rank
FROM (
  SELECT store_id, location_store, quarter, sum_sales_growth,
         RANK() OVER (PARTITION BY quarter ORDER BY sum_sales_growth DESC) AS store_rank
  FROM (
    SELECT s.store_id, st.location_store, 
           DATE_TRUNC('quarter', s.date) AS quarter,
           SUM(s.total_price) - LAG(SUM(s.total_price)) OVER (PARTITION BY s.store_id ORDER BY DATE_TRUNC('quarter', s.date)) AS sum_sales_growth
    FROM sales s
    JOIN stores st ON s.store_id = st.store_id
    GROUP BY s.store_id, st.location_store, DATE_TRUNC('quarter', s.date)
  ) AS subquery
) AS ranked_stores;
;
select * from tableau ;*/








