-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: WokDB
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `CashRegister`
--

DROP TABLE IF EXISTS `CashRegister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CashRegister` (
  `Cash_ID` int NOT NULL,
  `Amt` float DEFAULT NULL,
  PRIMARY KEY (`Cash_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CashRegister`
--

LOCK TABLES `CashRegister` WRITE;
/*!40000 ALTER TABLE `CashRegister` DISABLE KEYS */;
/*!40000 ALTER TABLE `CashRegister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CStockHazra`
--

DROP TABLE IF EXISTS `CStockHazra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CStockHazra` (
  `CSH_ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` int DEFAULT NULL,
  PRIMARY KEY (`CSH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CStockHazra`
--

LOCK TABLES `CStockHazra` WRITE;
/*!40000 ALTER TABLE `CStockHazra` DISABLE KEYS */;
INSERT INTO `CStockHazra` VALUES (1,'2020-09-06 00:00:00',1,1),(2,'2020-09-06 00:00:00',2,1),(3,'2020-09-06 00:00:00',3,1),(4,'2020-09-06 00:00:00',4,1),(5,'2020-09-06 00:00:00',5,1),(6,'2020-09-06 00:00:00',39,1),(7,'2020-09-05 00:00:00',1,1),(8,'2020-09-05 00:00:00',2,1),(9,'2020-09-06 00:00:00',1,12),(10,'2020-09-06 00:00:00',2,1);
/*!40000 ALTER TABLE `CStockHazra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CStockTolly`
--

DROP TABLE IF EXISTS `CStockTolly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CStockTolly` (
  `CS_ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  PRIMARY KEY (`CS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CStockTolly`
--

LOCK TABLES `CStockTolly` WRITE;
/*!40000 ALTER TABLE `CStockTolly` DISABLE KEYS */;
INSERT INTO `CStockTolly` VALUES (1,NULL,NULL,11),(2,'2020-08-10 00:00:00',1,4),(3,'2020-08-10 00:00:00',1,4),(4,'2020-08-10 00:00:00',1,4),(5,'2020-08-10 00:00:00',1,4),(6,'2020-08-10 00:00:00',1,4),(7,'2020-08-10 00:00:00',1,4),(8,'2020-08-10 00:00:00',1,4),(9,'2020-08-10 00:00:00',1,4),(10,'2020-08-10 00:00:00',1,4),(11,'2020-08-10 00:00:00',1,4),(12,'2020-08-10 00:00:00',1,4),(13,'2020-08-10 00:00:00',1,4),(14,'2020-08-10 00:00:00',1,4),(15,'2020-08-10 00:00:00',1,4),(16,'2020-08-10 00:00:00',1,4),(17,'2020-08-10 00:00:00',1,4),(18,'2020-08-10 00:00:00',1,4),(19,'2020-08-10 00:00:00',1,4),(20,'2020-09-04 00:00:00',4,1),(21,'2020-09-04 00:00:00',4,1),(22,'2020-09-04 00:00:00',4,1),(23,'2020-09-04 00:00:00',4,1),(24,'2020-09-04 00:00:00',2,1),(25,'2020-09-04 00:00:00',3,1),(26,'2020-09-04 00:00:00',4,1),(27,'2020-09-04 00:00:00',5,1),(28,'2020-09-04 00:00:00',39,1),(29,'2020-09-05 00:00:00',2,1),(30,'2020-09-05 00:00:00',3,1),(31,'2020-09-05 00:00:00',4,1),(32,'2020-09-05 00:00:00',5,1),(33,'2020-09-05 00:00:00',39,1),(34,'2020-09-06 00:00:00',1,1),(35,'2020-09-06 00:00:00',2,1),(36,'2020-09-06 00:00:00',3,1),(37,'2020-09-06 00:00:00',4,1),(38,'2020-09-06 00:00:00',5,1),(39,'2020-09-06 00:00:00',39,1),(40,'2020-09-05 00:00:00',1,11),(41,'2020-09-05 00:00:00',2,1),(42,'2020-09-01 00:00:00',7,1),(43,'2020-09-06 00:00:00',1,1),(44,'2020-09-06 00:00:00',2,1),(45,'2020-09-09 00:00:00',1,1),(46,'2020-09-09 00:00:00',2,1);
/*!40000 ALTER TABLE `CStockTolly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Discount`
--

DROP TABLE IF EXISTS `Discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Discount` (
  `DiscountID` int NOT NULL,
  `DiscountName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DiscountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Discount`
--

LOCK TABLES `Discount` WRITE;
/*!40000 ALTER TABLE `Discount` DISABLE KEYS */;
INSERT INTO `Discount` VALUES (1,'Zomato 10%'),(2,'Swiggy 15%'),(3,'DineIn 20%');
/*!40000 ALTER TABLE `Discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `EMPID` int NOT NULL,
  `EMPName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Emp1'),(2,'Emp2'),(3,'Emp3');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mitem`
--

DROP TABLE IF EXISTS `Mitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mitem` (
  `Mitem_ID` int NOT NULL,
  `MitemName` varchar(45) DEFAULT NULL,
  `MitemCatID` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`Mitem_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mitem`
--

LOCK TABLES `Mitem` WRITE;
/*!40000 ALTER TABLE `Mitem` DISABLE KEYS */;
INSERT INTO `Mitem` VALUES (1,'Manchow Soup Veg',1,120),(2,'Sweet Corn Soup Veg',1,120),(3,'Coriander Soup Veg',1,120),(4,'Clear Soup Veg',1,120),(5,'Manchow Soup NonVeg',1,160),(6,'Sweet Corn Soup NonVeg',1,160),(7,'Coriander Soup NonVeg',1,160),(8,'Clear Soup NonVeg',1,160),(9,'Mushroom pepper salt',2,175),(10,'Veg Spring roll',2,150),(11,'Crispy Chilli babycorn',2,175),(12,'Crispy Chilli paneer',2,175),(13,'Thai babycorn',2,165),(14,'Garlic Pepper Paneer',2,185),(15,'Wokaholic Chilli chicken (Dry)',3,210),(16,'Wok Fiery Chicken',3,210),(17,'Honey Sesame Chicken',3,210),(18,'Crispy konjee chicken',3,210),(19,'Pepper Crust chicken',3,190),(20,'Thai Stir Fried Chicken',3,190),(21,'Mangolian Chicken',3,190),(22,'Lat mei Kai Chicken',3,190),(23,'Chicken Spring roll',3,190),(24,'Shrimp Pepper Salt',3,220),(25,'Sesame Fried Fish',3,250),(26,'Panko Fish',3,250),(27,'Fish Pepper Salt ',3,250),(28,'Veg Manchurian',4,180),(29,'Chilli Paneer',4,185),(30,'Mixed Veg in hot garlic',4,185),(31,'Stir fried Exotic Vegetable',4,185),(32,'Hunan chicken',5,210),(33,'Wokaholic chilli chicken',5,210),(34,'Chicken in Hot Garlic Sauce',5,210),(35,'Singapore Chicken',5,210),(36,'Hong Kong chicken',5,210),(37,'Kung pao chicken',5,210),(38,'Stir Fried chicken with veggies',5,210),(39,'Schezwan Chicken',5,210),(40,'Sweet and Sour Chicken',5,210),(41,'Chilli Fish',5,270),(42,'Fish in Hot Garlic Sauce',5,270),(43,'Wokaholic Special Fish',5,280),(44,'Schezwan Fish',5,270),(45,'Fried Rice Veg',6,140),(46,'Chilli Garlic Fried Rice Veg',6,140),(47,'burnt ginger fried rice Veg',6,150),(48,'hakka noodles Veg',6,130),(49,'Chilli garlic hakka nooldes Veg',6,130),(50,'Singapore noodles Veg',6,145),(51,'Pan Fried Noodles Veg',6,155),(52,'American Chopsuey Veg',6,155),(53,'Thai flat noodles Veg',6,155),(54,'Fried Rice Chicken',6,175),(55,'Chilli Garlic Fried Rice Chicken',6,170),(56,'burnt ginger fried rice Chicken',6,175),(57,'hakka noodles Chicken',6,175),(58,'Chilli garlic hakka nooldes Chicken',6,175),(59,'Singapore noodles Chicken',6,175),(60,'Pan Fried Noodles Chicken',6,180),(61,'American Chopsuey Chicken',6,180),(62,'Thai flat noodles Chicken',6,180),(63,'Fried Rice Mixed',6,190),(64,'Chilli Garlic Fried Rice Mixed',6,190),(65,'burnt ginger fried rice Mixed',6,190),(66,'hakka noodles Mixed',6,180),(67,'Chilli garlic hakka nooldes Mixed',6,180),(68,'Singapore noodles Mixed',6,180),(69,'Pan Fried Noodles Mixed',6,195),(70,'American Chopsuey Mixed',6,195),(71,'Thai flat noodles Mixed',6,195),(72,'Wok Box Veg',7,210),(73,'Wok Box NonVeg',7,190),(74,'Veg Green Curry Rice Bowl',8,190),(75,'Veg Schezwan Rice Bowl',8,190),(76,'Veg Schezwan Noodle Bowl',8,190),(77,'Veg Chilli Soya Rice Bowl',8,190),(78,'Veg Chilli Soya Noodle Bowl',8,190),(79,'Healthy Vegetable Bowl',8,200),(80,'Veg Wok Box + Crispy Chilli Babycorn',9,199),(81,'NonVeg Wok Box + Crispy Chilli Chicken',9,249),(82,'Veg Wok Box + Veg Momo',9,199),(83,'NonVeg Wok Box + Non Veg Momo',9,249),(84,'MB// Fried Rice + Veg Manchurian',10,129),(85,'MB// Fried Rice + Hunan Chicken',10,149),(86,'MB// Fried Rice + Wokaholic Chilli Chicken',10,149),(88,'MB// Hakka Noodles + Singapore Chicken',10,149),(89,'MB// Hakka Noodles + Wokaholic Chilli Chicken',10,149),(90,'MB// Flat Noodles + wokaholic Chilli Chicken',10,149),(94,'MS// Wokaholic Chilli Chicken (4 pcs)',11,99),(95,'MS// Lat Me Kai Chicken',11,99),(96,'MS// Crispy Konjee Chicken',11,99),(97,'MS// Honey Sesame CHicken',11,99),(98,'MS// Chicken Momo',11,99),(99,'MS// Crispy CHilli Babycorn',11,99),(100,'MS// Veg Momo',11,99),(101,'Chicken Suimai ',12,150),(102,'Kafir lime scented chicken and shrimp dimsum',12,170),(103,'chicken pan fried momo',12,140),(104,'Spinach corn & Cheese dimsum',12,120),(105,'chicken classic Momo',12,120),(106,'Veg Momo',12,90),(107,'Tofu Add-On',13,30),(108,'Chicken Add-On',13,30),(109,'Shrimp Add-On',13,30),(110,'Egg Add-On',13,30),(111,'Zomato Discount',14,NULL),(112,'Swiggy Discount',14,NULL),(113,'GST',15,NULL);
/*!40000 ALTER TABLE `Mitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MItemCat`
--

DROP TABLE IF EXISTS `MItemCat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MItemCat` (
  `MItemCatID` int NOT NULL,
  `MCatName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MItemCatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MItemCat`
--

LOCK TABLES `MItemCat` WRITE;
/*!40000 ALTER TABLE `MItemCat` DISABLE KEYS */;
INSERT INTO `MItemCat` VALUES (1,'Soup'),(2,'Veg Starter'),(3,'NV Starter'),(4,'Veg Main'),(5,'NV Main'),(6,'Rice & Noodle'),(7,'Wok'),(8,'Bowl'),(9,'Combo'),(10,'Mini-Bowl'),(11,'Mini-Starter'),(12,'Dim Sum'),(13,'Add-On'),(14,'Discount'),(15,'GST');
/*!40000 ALTER TABLE `MItemCat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderHazra`
--

DROP TABLE IF EXISTS `OrderHazra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderHazra` (
  `HOrderID` int NOT NULL,
  `Date` datetime DEFAULT NULL,
  `OrderNo` varchar(11) DEFAULT NULL,
  `Mitem_ID` int DEFAULT NULL,
  `Qnty` int DEFAULT NULL,
  `Amt` float DEFAULT NULL,
  PRIMARY KEY (`HOrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderHazra`
--

LOCK TABLES `OrderHazra` WRITE;
/*!40000 ALTER TABLE `OrderHazra` DISABLE KEYS */;
INSERT INTO `OrderHazra` VALUES (1,'2020-01-01 00:00:00','H1',NULL,NULL,NULL),(2,'2020-01-01 00:00:00','H2',NULL,NULL,NULL);
/*!40000 ALTER TABLE `OrderHazra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderTolly`
--

DROP TABLE IF EXISTS `OrderTolly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderTolly` (
  `TOrderID` int NOT NULL,
  `Date` datetime DEFAULT NULL,
  `OrderNo` varchar(11) DEFAULT NULL,
  `MItem_ID` int DEFAULT NULL,
  `Qnty` int DEFAULT NULL,
  `Amt` float DEFAULT NULL,
  PRIMARY KEY (`TOrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderTolly`
--

LOCK TABLES `OrderTolly` WRITE;
/*!40000 ALTER TABLE `OrderTolly` DISABLE KEYS */;
INSERT INTO `OrderTolly` VALUES (1,'2020-01-01 00:00:00','T1',NULL,NULL,NULL),(2,'2020-01-01 00:00:00','T2',NULL,NULL,NULL);
/*!40000 ALTER TABLE `OrderTolly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Outlet`
--

DROP TABLE IF EXISTS `Outlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Outlet` (
  `OutletID` int NOT NULL,
  `OutletName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OutletID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Outlet`
--

LOCK TABLES `Outlet` WRITE;
/*!40000 ALTER TABLE `Outlet` DISABLE KEYS */;
INSERT INTO `Outlet` VALUES (1,'Tolly'),(2,'Hazra');
/*!40000 ALTER TABLE `Outlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payments`
--

DROP TABLE IF EXISTS `Payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payments` (
  `Pmt_ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Supplier_ID` int DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `PayMethod_ID` int DEFAULT NULL,
  PRIMARY KEY (`Pmt_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payments`
--

LOCK TABLES `Payments` WRITE;
/*!40000 ALTER TABLE `Payments` DISABLE KEYS */;
INSERT INTO `Payments` VALUES (2,'2020-08-01 00:00:00',1,11,1),(3,'2020-08-01 00:00:00',1,134,1),(4,'2020-08-01 00:00:00',1,134,1),(5,'2020-08-01 00:00:00',1,134,1),(6,'2020-08-01 00:00:00',8,1100,1),(7,'2020-08-01 00:00:00',8,1100,1);
/*!40000 ALTER TABLE `Payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PayMethod`
--

DROP TABLE IF EXISTS `PayMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PayMethod` (
  `PayMethod_ID` int NOT NULL,
  `PayMethod_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PayMethod_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PayMethod`
--

LOCK TABLES `PayMethod` WRITE;
/*!40000 ALTER TABLE `PayMethod` DISABLE KEYS */;
INSERT INTO `PayMethod` VALUES (1,'Cash'),(2,'Bank Transfer');
/*!40000 ALTER TABLE `PayMethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PayTerms`
--

DROP TABLE IF EXISTS `PayTerms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PayTerms` (
  `PayTerms_ID` int NOT NULL,
  `PayTerms_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PayTerms_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PayTerms`
--

LOCK TABLES `PayTerms` WRITE;
/*!40000 ALTER TABLE `PayTerms` DISABLE KEYS */;
INSERT INTO `PayTerms` VALUES (1,'Cash'),(2,'Credit');
/*!40000 ALTER TABLE `PayTerms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pitem`
--

DROP TABLE IF EXISTS `Pitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pitem` (
  `Pitem_ID` int NOT NULL,
  `Pitem_Name` varchar(45) DEFAULT NULL,
  `Pitem_UnitID` int DEFAULT NULL,
  `Pitem_CatID` int DEFAULT NULL,
  `Pitem_StockID` int DEFAULT NULL,
  PRIMARY KEY (`Pitem_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pitem`
--

LOCK TABLES `Pitem` WRITE;
/*!40000 ALTER TABLE `Pitem` DISABLE KEYS */;
INSERT INTO `Pitem` VALUES (1,'Chicken B/B',1,1,1),(2,'Eggs ',3,1,1),(3,'Shrimps ',6,1,1),(4,'Fish',1,1,1),(5,'Noodles ',1,2,1),(6,'Flat Noodles',1,2,1),(7,'Guest Rice',1,2,1),(8,'Brown Rice',1,2,1),(9,'Onion ',1,3,1),(10,'Mushroom',6,3,1),(11,'Garlic ',1,3,1),(12,'Babycorn ',1,3,1),(13,'Pakchoi',1,3,2),(14,'Capsicum ',1,3,1),(15,'Spring Onion ',1,3,1),(16,'Ginger ',1,3,2),(17,'Carrot ',1,3,2),(18,'Cauliflower ',3,3,2),(19,'Broccoli ',3,3,1),(20,'Cabbage ',3,3,2),(21,'Bell Pepper (Yellow)',3,3,2),(22,'Bell Pepper ( Red ',3,3,2),(23,'Lemon Grass (G) ',2,3,2),(24,'Zucchini (Green) ',1,3,2),(25,'Lemon ',3,3,2),(26,'Galanger',2,3,2),(27,'Green beans',2,3,2),(28,'Green Chilli',2,3,2),(29,'Lemon Leaf',2,3,2),(30,'Corriander',2,3,2),(31,'Basil Leaf',2,3,2),(32,'Mint Leaf',2,3,2),(33,'Potato ',1,3,2),(34,'Tomato',2,3,2),(35,'Cucumber',2,3,2),(36,'Celery Leaf',2,3,2),(37,'Fresh Red Chilli ',2,3,2),(38,'Corn',3,3,2),(39,'Paneer ',2,4,1),(40,'Tofu',3,4,2),(41,'Gas',3,5,1),(42,'Chilli Bean Sauce',4,4,2),(43,'Dark Soya ',4,4,2),(44,'Light Soya ',4,4,2),(45,'Hoisin Sauce ',4,4,2),(46,'W Sauce ',4,4,2),(47,'Chinese Wine ',4,4,2),(48,'Tomato Ketchup ',6,4,1),(49,'Vineger ',4,4,2),(50,'Oil ',5,4,1),(51,'Sesame Oi (650ml)',4,4,2),(52,'Salt ',1,4,2),(53,'Agina Moto ',1,4,1),(54,'Brown Sugar ',2,4,2),(55,'Sugar ',1,4,2),(56,'Butter ',2,4,2),(57,'Coconut milk powder ',2,4,2),(58,'Oyster 7 ( Panda) ',7,4,2),(59,'Panco (Bread Crumbs) ',1,4,2),(60,'Corn ',7,4,2),(61,'Cornflour ',1,4,1),(62,'Maida ',1,4,2),(63,'Besan ',1,4,2),(64,'Sesame Seed ',2,4,2),(65,'Dry Red Chilli ',2,4,2),(66,'Chilli Flakes ',2,4,2),(67,'Coriander Powder ',2,4,2),(68,'Red Chilli Powder ',2,4,2),(69,'Kashmiri Red Chilli ',2,4,2),(70,'Curry powder ',2,4,2),(71,'White Pepper Powder ',2,4,2),(72,'Kashmiri Powder ',2,4,2),(73,'Jeera Powder ',2,4,2),(74,'Haldi Powder ',2,4,2),(75,'Dhania Powder ',2,4,2),(76,'Garam Masala Powder',2,4,2),(77,'Black pepper powder',2,4,1),(78,'Wanton sheet ',3,4,2),(79,'Spring roll sheet ',3,4,2),(80,'tea',2,8,2),(81,'milk',5,8,2),(82,'Staff Rice',1,8,1),(83,'bread',6,8,2),(86,'500ml Bowls',3,6,1),(87,'650 ml Bowls',3,6,1),(88,'Carry Bag',6,6,2);
/*!40000 ALTER TABLE `Pitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pitem-Cat`
--

DROP TABLE IF EXISTS `Pitem-Cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pitem-Cat` (
  `Pitem_CatID` int NOT NULL,
  `Pitem_CatName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Pitem_CatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pitem-Cat`
--

LOCK TABLES `Pitem-Cat` WRITE;
/*!40000 ALTER TABLE `Pitem-Cat` DISABLE KEYS */;
INSERT INTO `Pitem-Cat` VALUES (1,'Meat'),(2,'Rice/Noodle'),(3,'Vegetables'),(4,'Dry Store'),(5,'Gas'),(6,'Packaging'),(7,'Transport'),(8,'Staff Items'),(9,'Outlet Maint');
/*!40000 ALTER TABLE `Pitem-Cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pitem-StockType`
--

DROP TABLE IF EXISTS `Pitem-StockType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pitem-StockType` (
  `Pitem_StockID` int NOT NULL,
  `Pitem_StockName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Pitem_StockID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pitem-StockType`
--

LOCK TABLES `Pitem-StockType` WRITE;
/*!40000 ALTER TABLE `Pitem-StockType` DISABLE KEYS */;
INSERT INTO `Pitem-StockType` VALUES (1,'Daily Stock'),(2,'Weekly Stock');
/*!40000 ALTER TABLE `Pitem-StockType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PitemUnit`
--

DROP TABLE IF EXISTS `PitemUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PitemUnit` (
  `Pitem_UnitID` int NOT NULL,
  `Pitem_UnitName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Pitem_UnitID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PitemUnit`
--

LOCK TABLES `PitemUnit` WRITE;
/*!40000 ALTER TABLE `PitemUnit` DISABLE KEYS */;
INSERT INTO `PitemUnit` VALUES (1,'Kg'),(2,'Grams'),(3,'Pcs'),(4,'Bottle'),(5,'Litre'),(6,'Packet'),(7,'Tin');
/*!40000 ALTER TABLE `PitemUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PurchaseHazra`
--

DROP TABLE IF EXISTS `PurchaseHazra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PurchaseHazra` (
  `Pur_ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Supplier_ID` int DEFAULT NULL,
  `Bill_No` int DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `PayTerms_ID` int DEFAULT NULL,
  `EMPID` int DEFAULT NULL,
  PRIMARY KEY (`Pur_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PurchaseHazra`
--

LOCK TABLES `PurchaseHazra` WRITE;
/*!40000 ALTER TABLE `PurchaseHazra` DISABLE KEYS */;
INSERT INTO `PurchaseHazra` VALUES (1,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(2,'2020-09-10 00:00:00',1,1,8,1,123,1,1),(3,'2020-09-10 00:00:00',2,1,17,1,11,2,1),(4,'2020-09-10 00:00:00',2,1,8,1,123,2,1),(5,'2020-09-06 00:00:00',8,12,30,11,1100,1,1),(6,'2020-09-06 00:00:00',1,131,8,11,1353,2,2);
/*!40000 ALTER TABLE `PurchaseHazra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PurchaseTolly`
--

DROP TABLE IF EXISTS `PurchaseTolly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PurchaseTolly` (
  `Pur_ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Supplier_ID` int DEFAULT NULL,
  `Bill_No` int DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `PayTerms_ID` int DEFAULT NULL,
  `EMPID` int DEFAULT NULL,
  PRIMARY KEY (`Pur_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PurchaseTolly`
--

LOCK TABLES `PurchaseTolly` WRITE;
/*!40000 ALTER TABLE `PurchaseTolly` DISABLE KEYS */;
INSERT INTO `PurchaseTolly` VALUES (1,'2020-09-04 00:00:00',1,1,17,1,11,1,1),(2,'2020-09-04 00:00:00',1,1,17,1,11,1,1),(3,'2020-09-04 00:00:00',1,1,17,1,11,1,1),(4,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(5,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(6,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(7,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(8,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(9,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(10,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(11,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(12,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(13,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(14,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(15,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(16,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(17,'2020-09-10 00:00:00',1,1,8,1,123,1,1),(18,'2020-09-10 00:00:00',1,1,17,1,11,1,1),(19,'2020-09-10 00:00:00',1,1,8,1,123,1,1),(20,'2020-09-06 00:00:00',8,12,30,1,100,2,1),(21,'2020-09-06 00:00:00',8,12,30,11,1100,1,1);
/*!40000 ALTER TABLE `PurchaseTolly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suppliers`
--

DROP TABLE IF EXISTS `Suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Suppliers` (
  `Supplier_ID` int NOT NULL,
  `Supplier_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suppliers`
--

LOCK TABLES `Suppliers` WRITE;
/*!40000 ALTER TABLE `Suppliers` DISABLE KEYS */;
INSERT INTO `Suppliers` VALUES (1,'S.S. Fresh'),(2,'Prosenjit Mondal'),(3,'Krishna Distributors'),(4,'Pintu Shah'),(5,'New Fancy Stores'),(6,'Shiv Shankar Stores'),(7,'Shah Rintu'),(8,'Swiggy Staples Plus'),(9,'Roy Enterprise'),(10,'Kenara Dukan'),(11,'Other');
/*!40000 ALTER TABLE `Suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `test` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('1'),('2'),('3'),('1'),('9');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test1`
--

DROP TABLE IF EXISTS `test1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test1` (
  `id` int NOT NULL,
  `test1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test1`
--

LOCK TABLES `test1` WRITE;
/*!40000 ALTER TABLE `test1` DISABLE KEYS */;
INSERT INTO `test1` VALUES (1,'H1'),(2,'H2'),(3,'H5');
/*!40000 ALTER TABLE `test1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransferHazra`
--

DROP TABLE IF EXISTS `TransferHazra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TransferHazra` (
  `TrnH_ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  `EMPID` int DEFAULT NULL,
  PRIMARY KEY (`TrnH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransferHazra`
--

LOCK TABLES `TransferHazra` WRITE;
/*!40000 ALTER TABLE `TransferHazra` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransferHazra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransferTolly`
--

DROP TABLE IF EXISTS `TransferTolly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TransferTolly` (
  `TrnT_ID` int NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  `EMPID` int DEFAULT NULL,
  PRIMARY KEY (`TrnT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransferTolly`
--

LOCK TABLES `TransferTolly` WRITE;
/*!40000 ALTER TABLE `TransferTolly` DISABLE KEYS */;
INSERT INTO `TransferTolly` VALUES (1,'2020-09-06 00:00:00',14,22,1);
/*!40000 ALTER TABLE `TransferTolly` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-10 17:30:03
