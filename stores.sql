create TABLE stores (
	store_id integer primary key not NULL,
	location_store varchar (25),
	size_store INTEGER not NULL,
	employee_number integer not null
);
	
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
 
select * from stores;
