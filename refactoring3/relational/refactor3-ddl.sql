-- Total altered:
-- 1 foreign key constraint on staff table
-- 1 foreign key constraint on staff_address table

-- Alter staff table to only allow valid shop location assignments
ALTER TABLE staff
ADD FOREIGN KEY (location)
REFERENCES shop_location (sales_outlet_id);

-- Alter staff address table to only allow valid staff ids
ALTER TABLE staff_address
ADD FOREIGN KEY (staff_id)
REFERENCES staff (staff_id);