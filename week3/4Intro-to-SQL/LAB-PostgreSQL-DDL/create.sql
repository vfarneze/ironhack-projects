/*
To create a table, we just need:
CREATE TABLE "table_name" (
	"column names" "data_type",
	PRIMARY KEY (which column is the primary key)
	)


*/

CREATE TABLE cars (
	ID int,
	VIN varchar,
	manufacturer varchar,
	model varchar,
	year int,
	color varchar,
	PRIMARY KEY (VIN)
)

CREATE TABLE customers (
	ID int,
	customer_id int,
	name varchar,
	phone varchar,
	email varchar,
	address varchar,
	city varchar,
	"state/province" varchar,
	country varchar,
	zip_code varchar,
	PRIMARY KEY (customer_id)
)

CREATE TABLE salesperson (
	ID int,
	staff_id int,
	name varchar,
	store varchar,
	PRIMARY KEY (staff_id)
)

CREATE TABLE invoices (
	ID int,
	invoice_number int,
	date timestamp,
	vehicle_id int, 
	customer_id varchar,
	staff_id int,
	PRIMARY KEY (invoice_number)
)


 
