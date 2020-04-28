select * from salesperson

-- To update an value in a table, we just neet to use UPDATE "table", SET "column name" = "new value", WHERE "Condition that indicates which"
-- row will be changed

UPDATE salesperson
SET store = 'Miami'
WHERE staff_id = 5;

select * from customers

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customer_id = 10001;

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customer_id = 20001;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customer_id = 30001;