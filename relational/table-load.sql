-- Total loaded data size:
-- 2 tables
-- 15 columns (9 on shop, 6 on staff)

-- Insert data to Shop location table
LOAD DATA INFILE 'shop_location.csv'
INTO TABLE shop_location
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Insert data to Staff table
LOAD DATA INFILE 'staff.csv'
INTO TABLE staff
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;