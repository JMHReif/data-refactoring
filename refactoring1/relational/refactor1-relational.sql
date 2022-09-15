-- Total altered:
-- 1 table
-- Added 1 column to shop_location table

-- Remove existing data from table
TRUNCATE TABLE shop_Location;

-- Insert data to Shop location table
LOAD DATA INFILE 'shop_location_ref1.csv'
INTO TABLE shop_location
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;