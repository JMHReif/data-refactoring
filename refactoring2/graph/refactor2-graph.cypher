//Total Altered:
//10 new StaffAddress nodes
//10 relationships to Staff nodes

//Add staff addresses
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/JMHReif/data-refactoring/main/staff_address_ref2.csv" AS row
WITH row
MERGE (a:StaffAddress {addressId: row.address_id})
ON CREATE SET a.streetAddress = row.staff_address,
    a.city = row.staff_city,
    a.stateProvince = row.staff_state_province,
    a.postalCode = row.staff_postal_code,
    a.phoneNumber = row.staff_telephone
WITH row, a
MATCH (s:Staff {staffId: row.staff_id})
MERGE (s)-[r:HAS_ADDRESS]->(a)
RETURN count(a);