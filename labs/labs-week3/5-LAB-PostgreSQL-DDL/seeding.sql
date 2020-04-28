select * from invoices

-- To add values to a table, we just use, to change a single row:
/*
INSERT INTO "table_name" (columns to receive values)
VALUES (values that will be inserted in the rows, inserted respectivly to the columns names)
Notes: if we dont insert some values, the rest of the row will be filled with "NaN"

*/
INSERT INTO cars (ID, vin, manufacturer, model, year, color)
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');
INSERT INTO cars (ID, vin, manufacturer, model, year, color)
VALUES (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');
INSERT INTO cars (ID, vin, manufacturer, model, year, color)
VALUES (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');
INSERT INTO cars (ID, vin, manufacturer, model, year, color)
VALUES (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');
INSERT INTO cars (ID, vin, manufacturer, model, year, color)
VALUES (4,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');


INSERT INTO customers (ID, customer_id, name, phone, email, address, city, "state/province", country, zip_code)
VALUES (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-','Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045);
INSERT INTO customers (ID, customer_id, name, phone, email, address, city, "state/province", country, zip_code)
VALUES (1, 20001, 'Abraham Lincoln', '+1 305 907 7086 ', '-', '120 SW 8th St', 'Miami' , 'Florida', 'United States', 33130);
INSERT INTO customers (ID, customer_id, name, phone, email, address, city, "state/province", country, zip_code)
VALUES (2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00','-', '40 Rue du Colisée', 'Paris' , 'Île-de-France', 'France', 75008);


INSERT INTO salesperson (ID,staff_id,name,store)
VALUES (0, 00001, 'Petey Cruiser', 'Madrid');
INSERT INTO salesperson (ID,staff_id,name,store)
VALUES (1, 00002, 'Anna Sthesia', 'Barcelona');
INSERT INTO salesperson (ID,staff_id,name,store)
VALUES (2, 00003, 'Paul Molive', 'Berlin');
INSERT INTO salesperson (ID,staff_id,name,store)
VALUES (3, 00004, 'Gail Forcewind', 'Paris');
INSERT INTO salesperson (ID,staff_id,name,store)
VALUES (4, 00005, 'Paige Turner', 'Mimia');
INSERT INTO salesperson (ID,staff_id,name,store)
VALUES (5, 00006, 'Bob Frapples', 'Mexico City');
INSERT INTO salesperson (ID,staff_id,name,store)
VALUES (6, 00007, 'Walter Melon', 'Amsterdam');
INSERT INTO salesperson (ID,staff_id,name,store)
VALUES (7, 00008, 'Shonda Leer', 'São Paulo');


INSERT INTO invoices (ID,invoice_number,date,vehicle_id,customer_id,staff_id)
VALUES (0, 852399038, '2018-08-22', '0', 1, 3);
INSERT INTO invoices (ID,invoice_number,date,vehicle_id,customer_id,staff_id)
VALUES (1, 731166526, '2019-12-31', '3', 0, 5);
INSERT INTO invoices (ID,invoice_number,date,vehicle_id,customer_id,staff_id)
VALUES (2, 271135104, '2019-01-22', '2', 2, 7);



