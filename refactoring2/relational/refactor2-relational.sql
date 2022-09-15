-- Total altered:
-- 2 tables
-- Added 1 column to staff table
-- Added 1 table for staff_address data

-- Remove existing data from table
TRUNCATE TABLE staff;

-- Insert updated data to Staff table
LOAD DATA INFILE 'staff_ref2.csv'
INTO TABLE staff
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Insert new data to staff_address table
LOAD DATA INFILE 'staff_address_ref2.csv'
INTO TABLE staff_address
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;