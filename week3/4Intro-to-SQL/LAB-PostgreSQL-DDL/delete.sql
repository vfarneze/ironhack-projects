select * from cars

-- We will have to insert a fake row, just to delte after
INSERT INTO cars (ID,vin)
VALUES(5,'delete me')

-- Its quite easy to delete, we just need to use "DELEFE FROM" "column name" "WHERE" "CONDITION WITH A COLUMN"
DELETE FROM cars WHERE ID=5;
