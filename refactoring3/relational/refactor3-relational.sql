-- Total loaded data size:
-- 3 tables
-- 22 columns (9 on shop_location, 6 on staff, 7 on staff_address)

-- Remove existing data from shop_location table
TRUNCATE TABLE shop_location;

-- Insert updated data to shop_location table
LOAD DATA INFILE 'shop_location_ref3.csv'
INTO TABLE shop_location
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Remove existing data from staff table
TRUNCATE TABLE staff;

-- Insert updated data to staff table
LOAD DATA INFILE 'staff_ref3.csv'
INTO TABLE staff
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Remove existing data from staff_address table
TRUNCATE TABLE staff_address;

-- Insert updated data to staff_address table
LOAD DATA INFILE 'staff_address_ref3.csv'
INTO TABLE staff_address
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;