--
--
--

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100),
	billing_info VARCHAR(100)
	);
	
CREATE TABLE concession(
	concession_id SERIAL PRIMARY KEY, 
	employee NUMERIC(2),
	item_name VARCHAR(100),
	item_avalible VARCHAR(10), 
	item_count NUMERIC(100) 
);

CREATE TABLE movies(
	movie SERIAL PRIMARY KEY, 
	movie_name VARCHAR(150),
	director VARCHAR(100),
	the_cast VARCHAR(100),
	start_time NUMERIC(12),
	duration INTEGER NOT NULL 
);

CREATE TABLE ticket(
	ticket SERIAL PRIMARY KEY,
	ticket_owner VARCHAR(100),
	date_set VARCHAR(100),
	seat VARCHAR(100),
	auditorium VARCHAR(10)
);