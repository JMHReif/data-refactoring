//Total loaded data size:
//13 nodes
//13 relationships

//Load shop locations
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/JMHReif/data-refactoring/main/shop_location.csv" AS row
WITH row
MERGE (l:Shop {shopId: row.sales_outlet_id})
ON CREATE SET l.type = row.sales_outlet_type,
    l.squareFeet = row.store_square_feet,
    l.streetAddress = row.store_address,
    l.city = row.store_city,
    l.stateProvince = row.store_state_province,
    l.phoneNumber = row.store_telephone,
    l.postalCode = row.store_postal_code
RETURN count(l);

//Load staff associates
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/JMHReif/data-refactoring/main/staff.csv" as row
WITH row
MERGE (s:Staff {staffId: row.staff_id})
ON CREATE SET s.firstName = row.first_name,
    s.lastName = row.last_name,
    s.position = row.position,
    s.startDate = date(apoc.date.convertFormat(row.start_date, 'M/d/yyyy', 'iso_date'))
RETURN count(s);

//Load assignments of staff to shop locations
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/JMHReif/data-refactoring/main/staff.csv" as row
WITH row
MATCH (s:Staff {staffId: row.staff_id})
MATCH (l:Shop {shopId: row.location})
MERGE (s)-[rel:ASSIGNED_TO]->(l)
RETURN count(rel);

//Load manager relationships for shop locations
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/JMHReif/data-refactoring/main/shop_location.csv" as row
WITH row
MATCH (l:Shop {shopId: row.sales_outlet_id})
MATCH (s:Staff {staffId: row.manager})
MERGE (l)-[rel:MANAGED_BY]->(s)
RETURN count(rel);