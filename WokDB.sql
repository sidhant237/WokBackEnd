-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
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
-- Table structure for table `CStock-Hazra`
--

DROP TABLE IF EXISTS `CStock-Hazra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CStock-Hazra` (
  `CSH_ID` int NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  PRIMARY KEY (`CSH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CStock-Hazra`
--

LOCK TABLES `CStock-Hazra` WRITE;
/*!40000 ALTER TABLE `CStock-Hazra` DISABLE KEYS */;
/*!40000 ALTER TABLE `CStock-Hazra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CStock-Tolly`
--

DROP TABLE IF EXISTS `CStock-Tolly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CStock-Tolly` (
  `CS_ID` int NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  PRIMARY KEY (`CS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CStock-Tolly`
--

LOCK TABLES `CStock-Tolly` WRITE;
/*!40000 ALTER TABLE `CStock-Tolly` DISABLE KEYS */;
/*!40000 ALTER TABLE `CStock-Tolly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payments`
--

DROP TABLE IF EXISTS `Payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payments` (
  `Pmt_ID` int NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Supplier_ID` int DEFAULT NULL,
  `Amt` float DEFAULT NULL,
  `PayMethod_ID` int DEFAULT NULL,
  PRIMARY KEY (`Pmt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payments`
--

LOCK TABLES `Payments` WRITE;
/*!40000 ALTER TABLE `Payments` DISABLE KEYS */;
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
-- Table structure for table `Purchase-Hazra`
--

DROP TABLE IF EXISTS `Purchase-Hazra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Purchase-Hazra` (
  `Pur_ID` int NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Supplier_ID` int DEFAULT NULL,
  `Bill_No` int DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  `Rate` float DEFAULT NULL,
  `PayTerms_ID` int DEFAULT NULL,
  PRIMARY KEY (`Pur_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Purchase-Hazra`
--

LOCK TABLES `Purchase-Hazra` WRITE;
/*!40000 ALTER TABLE `Purchase-Hazra` DISABLE KEYS */;
/*!40000 ALTER TABLE `Purchase-Hazra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Purchase-Tolly`
--

DROP TABLE IF EXISTS `Purchase-Tolly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Purchase-Tolly` (
  `Pur_ID` int NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Supplier_ID` int DEFAULT NULL,
  `Bill_No` int DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  `Rate` float DEFAULT NULL,
  `PayTerms_ID` int DEFAULT NULL,
  PRIMARY KEY (`Pur_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Purchase-Tolly`
--

LOCK TABLES `Purchase-Tolly` WRITE;
/*!40000 ALTER TABLE `Purchase-Tolly` DISABLE KEYS */;
/*!40000 ALTER TABLE `Purchase-Tolly` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `Suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transfer-Hazra`
--

DROP TABLE IF EXISTS `Transfer-Hazra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transfer-Hazra` (
  `TRH_ID` int NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Transfer_No` int DEFAULT NULL,
  `Pitem_ID` int DEFAULT NULL,
  `Qnty` float DEFAULT NULL,
  PRIMARY KEY (`TRH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transfer-Hazra`
--

LOCK TABLES `Transfer-Hazra` WRITE;
/*!40000 ALTER TABLE `Transfer-Hazra` DISABLE KEYS */;
/*!40000 ALTER TABLE `Transfer-Hazra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-01  0:23:45
