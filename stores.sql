create TABLE stores (
	store_id integer primary key not NULL,
	location_store varchar (25),
	size_store INTEGER not NULL,
	employee_number integer not null
);
	
INSERT INTO stores (store_id, location_store, size_store, employee_number)
VALUES
  (1, 'Berlin', 1000, 20),
  (2, 'Hamburg', 800, 15),
  (3, 'Munich', 1200, 25),
  (4, 'Cologne', 600, 10),
  (5, 'Frankfurt', 900, 18),
  (6, 'Stuttgart', 700, 12),
  (7, 'Dusseldorf', 1100, 22),
  (8, 'Dortmund', 500, 8),
  (9, 'Essen', 750, 14),
  (10, 'Bremen', 850, 16);

select * from stores;
