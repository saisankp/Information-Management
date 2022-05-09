#Insert entries/populate tables
INSERT INTO OWNER (GrowID, Country, Owner_Level, Account_Creation_Days)
	VALUES
    ('iZashGT', 'Ireland', 56, 2841),
    ('NoTrollGaming', 'Dubai', 76, 3040),
    ('JohnsJomon', 'Pakistan', 20, 1002),
    ('EligijusSkersonas', 'India', 30, 2000),
    ('CriticalAnalyzer2', 'Turkey', 99, 5300);
    
INSERT INTO ITEM (Item_Name, Rarity, Owner_GrowID)
	VALUES
    ('Firework', 29, 'iZashGT'),
    ('Dirt Seed', 1, 'JohnsJomon'),
    ('Angel Wing', 69, 'EligijusSkersonas'),
    ('Fertilizer', 15, 'CriticalAnalyzer2'),
    ('Stone', 3, 'NoTrollGaming');
    
INSERT INTO WORLD (World_Name, Category, Owner_GrowID)
	VALUES
    ('ZashVend', 'Shop', 'iZashGT'),
    ('JomonsStory', 'Story', 'JohnsJomon'),
    ('EligijusParkour', 'Parkour', 'EligijusSkersonas'),
    ('CriticalTrade', 'Trade', 'CriticalAnalyzer2'),
    ('NoTrollDating', 'Love', 'NoTrollGaming');
    
INSERT INTO DIGIVEND_MACHINE (Vend_ID, Price, Quantity, Item_Name)
	VALUES
    (1, 5, 0, 'Firework'),
    (2, 1, 50, 'Dirt Seed'),
    (3, 65, 30, 'Angel Wing'),
    (4, 5, 15, 'Fertilizer'),
    (5, 1, 40, 'Stone');
    
INSERT INTO LOCALE (World_Name, Vend_ID)
	VALUES
    ('ZashVend', 1),
    ('JomonsStory', 2),
    ('EligijusParkour', 3),
    ('CriticalTrade', 4),
    ('NoTrollDating', 5);
    
    
INSERT INTO WORLD_LOCK (Lock_ID, Lock_Type)
	VALUES
    (1, 'Normal'),
    (2, 'Diamond'),
    (3, 'Emerald'),
    (4, 'Robotic'),
    (5, 'Royal');
    
INSERT INTO VEND_REVENUE (Vend_ID, Lock_ID)
	VALUES
    (1, 5),
    (2, 4),
    (3, 3),
    (4, 2),
    (5, 1);

INSERT INTO CUSTOMER (Customer_GrowID, Country, Customer_Level)
	VALUES
    ('GeorgeThompson', 'Croatia', 50),
    ('ThomasEdison420', 'United Kingdom', 24),
    ('KingKong', 'Bangladesh', 45),
    ('FrequentBuyer1', 'Ireland', 98),
    ('Amos9', 'Zimbabwe', 78);

INSERT INTO VEND_SALES (Vend_ID, Customer_GrowID)
	VALUES
    (5, 'GeorgeThompson'),
    (4, 'ThomasEdison420'),
    (3, 'KingKong'),
    (2, 'FrequentBuyer1'),
    (1, 'Amos9');

INSERT INTO SUPPLIER (Supplier_GrowID, Country, Supplier_Level)
	VALUES
    ('StonehengeKeeper', 'Ireland', 50),
    ('FarmerJoe', 'Dubai', 20),
	('AngelKing', 'India', 50),
    ('SupplyChain25', 'United States', 10),
    ('RadSeller', 'United Kingdom', 80);
    
INSERT INTO TRADE (Item_Name, Supplier_GrowID)
	VALUES
    ('Firework', 'RadSeller'),
    ('Dirt Seed', 'SupplyChain25'),
    ('Angel Wing', 'AngelKing'),
    ('Fertilizer', 'FarmerJoe'),
    ('Stone', 'StonehengeKeeper');

    
    