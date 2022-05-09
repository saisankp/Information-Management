#Retrieve all the customers who have bought something from the vending machine business along with which vending machine they bought from
SELECT VEND_SALES.Vend_ID, VEND_SALES.Customer_GrowID, CUSTOMER.Country, CUSTOMER.Customer_Level
FROM VEND_SALES
INNER JOIN CUSTOMER
ON VEND_SALES.Customer_GrowID = CUSTOMER.Customer_GrowID;

#Retrieve all the worlds owned by the vending machine business alongside which vending machine is in which world
SELECT LOCALE.World_Name, LOCALE.Vend_ID, WORLD.Category, WORLD.Owner_GrowID
FROM LOCALE
INNER JOIN WORLD
ON LOCALE.World_Name = WORLD.World_Name;

#Retrieve all the rarities of the items in stock inside each of the vending machines (distinguished by primary key - Vend_ID)
SELECT DIGIVEND_MACHINE.Vend_ID, ITEM.Rarity
FROM DIGIVEND_MACHINE
INNER JOIN ITEM
ON DIGIVEND_MACHINE.Item_Name = ITEM.Item_Name;
