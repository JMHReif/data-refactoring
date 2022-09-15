//Total Altered:
//3 Shop nodes
//Added 1 property to each Shop node

//Update shop location with new property
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/JMHReif/data-refactoring/main/shop_location_ref1.csv" AS row
WITH row
MATCH (l:Shop {shopId: row.sales_outlet_id})
ON MATCH SET openDate = date(apoc.date.convertFormat(row.store_open_date, 'M/d/yyyy', 'iso_date'))
RETURN count(l);