CREATE DATABASE  IF NOT EXISTS `growtopiavendingstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `growtopiavendingstore`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: growtopiavendingstore
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `allcustomers`
--

DROP TABLE IF EXISTS `allcustomers`;
/*!50001 DROP VIEW IF EXISTS `allcustomers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allcustomers` AS SELECT 
 1 AS `ID`,
 1 AS `AccountCountryOfOrigin`,
 1 AS `LevelOfCustomer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allowners`
--

DROP TABLE IF EXISTS `allowners`;
/*!50001 DROP VIEW IF EXISTS `allowners`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allowners` AS SELECT 
 1 AS `ID`,
 1 AS `AccountCountryOfOrigin`,
 1 AS `LevelOfOwner`,
 1 AS `AccountCreationInDays`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allsales`
--

DROP TABLE IF EXISTS `allsales`;
/*!50001 DROP VIEW IF EXISTS `allsales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allsales` AS SELECT 
 1 AS `VENDINGMACHINE_ID`,
 1 AS `CustomerID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allvendingmachines`
--

DROP TABLE IF EXISTS `allvendingmachines`;
/*!50001 DROP VIEW IF EXISTS `allvendingmachines`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allvendingmachines` AS SELECT 
 1 AS `VENDINGMACHINE_ID`,
 1 AS `Price`,
 1 AS `Quantity`,
 1 AS `Item_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `allworlds`
--

DROP TABLE IF EXISTS `allworlds`;
/*!50001 DROP VIEW IF EXISTS `allworlds`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allworlds` AS SELECT 
 1 AS `Name`,
 1 AS `Category`,
 1 AS `ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_GrowID` varchar(18) NOT NULL,
  `Country` varchar(56) NOT NULL,
  `Customer_Level` int NOT NULL,
  PRIMARY KEY (`Customer_GrowID`),
  UNIQUE KEY `Customer_GrowID` (`Customer_GrowID`),
  CONSTRAINT `CHK_CUSTOMER_GROWID_LENGTH` CHECK ((length(`Customer_GrowID`) > 3)),
  CONSTRAINT `CHK_CUSTOMER_LEVEL_RANGE` CHECK ((`Customer_Level` <= 125))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('Amos9','Zimbabwe',78),('FrequentBuyer1','Ireland',98),('GeorgeThompson','Croatia',50),('KingKong','Bangladesh',45),('ThomasEdison420','United Kingdom',24);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digivend_machine`
--

DROP TABLE IF EXISTS `digivend_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digivend_machine` (
  `Vend_ID` int NOT NULL,
  `Price` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Item_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Vend_ID`),
  UNIQUE KEY `Vend_ID` (`Vend_ID`),
  KEY `Item_Name` (`Item_Name`),
  CONSTRAINT `digivend_machine_ibfk_1` FOREIGN KEY (`Item_Name`) REFERENCES `item` (`Item_Name`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_QUANTITY` CHECK ((`Quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digivend_machine`
--

LOCK TABLES `digivend_machine` WRITE;
/*!40000 ALTER TABLE `digivend_machine` DISABLE KEYS */;
INSERT INTO `digivend_machine` VALUES (1,5,0,'Firework'),(2,1,50,'Dirt Seed'),(3,65,30,'Angel Wing'),(4,5,15,'Fertilizer'),(5,1,40,'Stone');
/*!40000 ALTER TABLE `digivend_machine` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `UpdateDigiVend` BEFORE INSERT ON `digivend_machine` FOR EACH ROW BEGIN
	IF NEW.QUANTITY = 0 THEN
		SET NEW.PRICE = null;
        SET NEW.Item_Name = null;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `Item_Name` varchar(50) NOT NULL,
  `Rarity` int NOT NULL,
  `Owner_GrowID` varchar(18) NOT NULL,
  PRIMARY KEY (`Item_Name`),
  KEY `Owner_GrowID` (`Owner_GrowID`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`Owner_GrowID`) REFERENCES `owner` (`GrowID`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_RARITYRANGE` CHECK (((`Rarity` >= 1) and (`Rarity` <= 363)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('Angel Wing',69,'EligijusSkersonas'),('Dirt Seed',1,'JohnsJomon'),('Fertilizer',15,'CriticalAnalyzer2'),('Firework',29,'iZashGT'),('Stone',3,'NoTrollGaming');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locale`
--

DROP TABLE IF EXISTS `locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locale` (
  `World_Name` varchar(24) NOT NULL,
  `Vend_ID` int NOT NULL,
  PRIMARY KEY (`World_Name`,`Vend_ID`),
  UNIQUE KEY `Vend_ID` (`Vend_ID`),
  CONSTRAINT `locale_ibfk_1` FOREIGN KEY (`World_Name`) REFERENCES `world` (`World_Name`) ON UPDATE CASCADE,
  CONSTRAINT `locale_ibfk_2` FOREIGN KEY (`Vend_ID`) REFERENCES `digivend_machine` (`Vend_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locale`
--

LOCK TABLES `locale` WRITE;
/*!40000 ALTER TABLE `locale` DISABLE KEYS */;
INSERT INTO `locale` VALUES ('ZashVend',1),('JomonsStory',2),('EligijusParkour',3),('CriticalTrade',4),('NoTrollDating',5);
/*!40000 ALTER TABLE `locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `GrowID` varchar(18) NOT NULL,
  `Country` varchar(56) NOT NULL,
  `Owner_Level` int NOT NULL,
  `Account_Creation_Days` int NOT NULL,
  PRIMARY KEY (`GrowID`),
  UNIQUE KEY `GrowID` (`GrowID`),
  CONSTRAINT `CHK_GROWID_LENGTH` CHECK ((length(`GrowID`) > 3)),
  CONSTRAINT `CHK_LEVEL_RANGE` CHECK (((`Owner_Level` > 1) and (`Owner_Level` <= 125)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES ('CriticalAnalyzer2','Turkey',99,5300),('EligijusSkersonas','India',30,2000),('iZashGT','Ireland',56,2841),('JohnsJomon','Pakistan',20,1002),('NoTrollGaming','Dubai',76,3040);
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `Supplier_GrowID` varchar(18) NOT NULL,
  `Country` varchar(56) NOT NULL,
  `Supplier_Level` int NOT NULL,
  PRIMARY KEY (`Supplier_GrowID`),
  UNIQUE KEY `Supplier_GrowID` (`Supplier_GrowID`),
  CONSTRAINT `CHK_SUPPLIER_GROWID_LENGTH` CHECK ((length(`Supplier_GrowID`) > 3)),
  CONSTRAINT `CHK_SUPPLIER_LEVEL_RANGE` CHECK ((`Supplier_Level` <= 125))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('AngelKing','India',50),('FarmerJoe','Dubai',20),('RadSeller','United Kingdom',80),('StonehengeKeeper','Ireland',50),('SupplyChain25','United States',10);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade`
--

DROP TABLE IF EXISTS `trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trade` (
  `Item_Name` varchar(50) NOT NULL,
  `Supplier_GrowID` varchar(18) NOT NULL,
  PRIMARY KEY (`Item_Name`,`Supplier_GrowID`),
  UNIQUE KEY `Supplier_GrowID` (`Supplier_GrowID`),
  CONSTRAINT `trade_ibfk_1` FOREIGN KEY (`Item_Name`) REFERENCES `item` (`Item_Name`) ON UPDATE CASCADE,
  CONSTRAINT `trade_ibfk_2` FOREIGN KEY (`Supplier_GrowID`) REFERENCES `supplier` (`Supplier_GrowID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade`
--

LOCK TABLES `trade` WRITE;
/*!40000 ALTER TABLE `trade` DISABLE KEYS */;
INSERT INTO `trade` VALUES ('Angel Wing','AngelKing'),('Fertilizer','FarmerJoe'),('Firework','RadSeller'),('Stone','StonehengeKeeper'),('Dirt Seed','SupplyChain25');
/*!40000 ALTER TABLE `trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vend_revenue`
--

DROP TABLE IF EXISTS `vend_revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vend_revenue` (
  `Vend_ID` int NOT NULL,
  `Lock_ID` int NOT NULL,
  PRIMARY KEY (`Vend_ID`,`Lock_ID`),
  UNIQUE KEY `Vend_ID` (`Vend_ID`),
  UNIQUE KEY `Lock_ID` (`Lock_ID`),
  CONSTRAINT `vend_revenue_ibfk_1` FOREIGN KEY (`Vend_ID`) REFERENCES `digivend_machine` (`Vend_ID`) ON UPDATE CASCADE,
  CONSTRAINT `vend_revenue_ibfk_2` FOREIGN KEY (`Lock_ID`) REFERENCES `world_lock` (`Lock_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vend_revenue`
--

LOCK TABLES `vend_revenue` WRITE;
/*!40000 ALTER TABLE `vend_revenue` DISABLE KEYS */;
INSERT INTO `vend_revenue` VALUES (1,5),(2,4),(3,3),(4,2),(5,1);
/*!40000 ALTER TABLE `vend_revenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vend_sales`
--

DROP TABLE IF EXISTS `vend_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vend_sales` (
  `Vend_ID` int NOT NULL,
  `Customer_GrowID` varchar(18) NOT NULL,
  PRIMARY KEY (`Vend_ID`,`Customer_GrowID`),
  UNIQUE KEY `Vend_ID` (`Vend_ID`),
  UNIQUE KEY `Customer_GrowID` (`Customer_GrowID`),
  CONSTRAINT `vend_sales_ibfk_1` FOREIGN KEY (`Vend_ID`) REFERENCES `digivend_machine` (`Vend_ID`) ON UPDATE CASCADE,
  CONSTRAINT `vend_sales_ibfk_2` FOREIGN KEY (`Customer_GrowID`) REFERENCES `customer` (`Customer_GrowID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vend_sales`
--

LOCK TABLES `vend_sales` WRITE;
/*!40000 ALTER TABLE `vend_sales` DISABLE KEYS */;
INSERT INTO `vend_sales` VALUES (1,'Amos9'),(2,'FrequentBuyer1'),(3,'KingKong'),(4,'ThomasEdison420'),(5,'GeorgeThompson');
/*!40000 ALTER TABLE `vend_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world`
--

DROP TABLE IF EXISTS `world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world` (
  `World_Name` varchar(24) NOT NULL,
  `Category` varchar(24) DEFAULT NULL,
  `Owner_GrowID` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`World_Name`),
  KEY `Owner_GrowID` (`Owner_GrowID`),
  CONSTRAINT `world_ibfk_1` FOREIGN KEY (`Owner_GrowID`) REFERENCES `owner` (`GrowID`) ON UPDATE CASCADE,
  CONSTRAINT `CHK_WORLD_NAME_LENGTH` CHECK ((length(`World_Name`) > 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world`
--

LOCK TABLES `world` WRITE;
/*!40000 ALTER TABLE `world` DISABLE KEYS */;
INSERT INTO `world` VALUES ('CriticalTrade','Trade','CriticalAnalyzer2'),('EligijusParkour','Parkour','EligijusSkersonas'),('JomonsStory','Story','JohnsJomon'),('NoTrollDating','Love','NoTrollGaming'),('ZashVend','Shop','iZashGT');
/*!40000 ALTER TABLE `world` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_lock`
--

DROP TABLE IF EXISTS `world_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_lock` (
  `Lock_ID` int NOT NULL,
  `Lock_Type` varchar(24) NOT NULL,
  PRIMARY KEY (`Lock_ID`),
  UNIQUE KEY `Lock_ID` (`Lock_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_lock`
--

LOCK TABLES `world_lock` WRITE;
/*!40000 ALTER TABLE `world_lock` DISABLE KEYS */;
INSERT INTO `world_lock` VALUES (1,'Normal'),(2,'Diamond'),(3,'Emerald'),(4,'Robotic'),(5,'Royal');
/*!40000 ALTER TABLE `world_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'growtopiavendingstore'
--

--
-- Dumping routines for database 'growtopiavendingstore'
--

--
-- Final view structure for view `allcustomers`
--

/*!50001 DROP VIEW IF EXISTS `allcustomers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allcustomers` (`ID`,`AccountCountryOfOrigin`,`LevelOfCustomer`) AS select `customer`.`Customer_GrowID` AS `Customer_GrowID`,`customer`.`Country` AS `Country`,`customer`.`Customer_Level` AS `Customer_Level` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allowners`
--

/*!50001 DROP VIEW IF EXISTS `allowners`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allowners` (`ID`,`AccountCountryOfOrigin`,`LevelOfOwner`,`AccountCreationInDays`) AS select `owner`.`GrowID` AS `GrowID`,`owner`.`Country` AS `Country`,`owner`.`Owner_Level` AS `Owner_Level`,`owner`.`Account_Creation_Days` AS `Account_Creation_Days` from `owner` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allsales`
--

/*!50001 DROP VIEW IF EXISTS `allsales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allsales` (`VENDINGMACHINE_ID`,`CustomerID`) AS select `vend_sales`.`Vend_ID` AS `Vend_ID`,`vend_sales`.`Customer_GrowID` AS `Customer_GrowID` from `vend_sales` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allvendingmachines`
--

/*!50001 DROP VIEW IF EXISTS `allvendingmachines`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allvendingmachines` (`VENDINGMACHINE_ID`,`Price`,`Quantity`,`Item_Name`) AS select `digivend_machine`.`Vend_ID` AS `Vend_ID`,`digivend_machine`.`Price` AS `Price`,`digivend_machine`.`Quantity` AS `Quantity`,`digivend_machine`.`Item_Name` AS `Item_Name` from `digivend_machine` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `allworlds`
--

/*!50001 DROP VIEW IF EXISTS `allworlds`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allworlds` (`Name`,`Category`,`ID`) AS select `world`.`World_Name` AS `World_Name`,`world`.`Category` AS `Category`,`world`.`Owner_GrowID` AS `Owner_GrowID` from `world` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-25  6:35:06
