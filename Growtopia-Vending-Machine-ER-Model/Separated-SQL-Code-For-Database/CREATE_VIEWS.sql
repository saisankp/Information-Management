#Define Views for Database
CREATE VIEW ALLCUSTOMERS (
    ID,
    AccountCountryOfOrigin,
    LevelOfCustomer)
    AS SELECT Customer_GrowID, Country, Customer_Level
    FROM CUSTOMER;

CREATE VIEW ALLOWNERS (
    ID,
    AccountCountryOfOrigin,
    LevelOfOwner,
    AccountCreationInDays)
    AS SELECT GrowID, Country, Owner_Level, Account_Creation_Days
    FROM OWNER;
    
CREATE VIEW ALLSALES (
    VENDINGMACHINE_ID,
    CustomerID)
    AS SELECT Vend_ID, Customer_GrowID
    FROM VEND_SALES;
    
CREATE VIEW ALLVENDINGMACHINES (
    VENDINGMACHINE_ID,
    Price,
    Quantity,
    Item_Name)
    AS SELECT Vend_ID, Price,Quantity,Item_Name
    FROM DIGIVEND_MACHINE;

CREATE VIEW ALLWORLDS (
    Name,
    Category,
    ID)
    AS SELECT World_Name, Category, Owner_GrowID
    FROM WORLD;