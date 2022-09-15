-- Total altered:
-- 1 table, 1 added column
-- 1 new table

-- Alter staff table
ALTER TABLE staff
ADD address_id number(10);

-- Create new staff_address table
CREATE TABLE staff_address (
    address_id number(10) NOT NULL,
    staff_id number(10) NOT NULL,
    staff_address varchar(100),
    staff_city varchar(50),
    staff_state_province varchar(10),
    staff_postal_code number(10),
    staff_telephone varchar(20)
);