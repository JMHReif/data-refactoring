-- Total data structure:
-- 2 tables
-- 15 columns (9 on Shop, 6 on Staff)

-- Shop locations table
CREATE TABLE shop_location (
    sales_outlet_id number(10) NOT NULL,
    sales_outlet_type varchar(50),
    store_square_feet number(10),
    store_address varchar(100),
    store_city varchar(50),
    store_state_province varchar(10),
    store_telephone varchar(20),
    store_postal_code number(10),
    manager number(10)
);

-- Staff table
CREATE TABLE staff (
    staff_id number(10) NOT NULL,
    first_name varchar(50),
    last_name varchar(50),
    position varchar(50),
    start_date date,
    location number(10)
);