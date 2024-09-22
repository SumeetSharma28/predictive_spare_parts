LOAD DATA LOCAL INFILE 'C:\\Users\\Sumeet\\Downloads\\inventory.csv' INTO TABLE sp_inv.inventory
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(part_id,part_name,stock_quantity);