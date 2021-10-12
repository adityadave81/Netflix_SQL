CREATE DATABASE  IF NOT EXISTS `netflix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `netflix`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: netflix
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `customer1`
--

DROP TABLE IF EXISTS `customer1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer1` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PhoneNo` varchar(50) DEFAULT NULL,
  `StreetADD` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer1`
--

LOCK TABLES `customer1` WRITE;
/*!40000 ALTER TABLE `customer1` DISABLE KEYS */;
INSERT INTO `customer1` VALUES (2,'Plato','Burch','vitae.purus.gravida@vulputaterisus.com','(474) 214-7721','207-9355 Posuere Street','Orekhovo-Zuyevo'),(3,'Jermaine','Calderon','dapibus.id@lobortis.org','(291) 271-3217','511-2093 Dictum Road','Boston'),(4,'Harper','Burris','aliquet@liberoduinec.ca','(472) 384-8416','4071 Dictum Rd.','Melipeuco'),(5,'Aquila','Weiss','ante@Suspendisse.org','(176) 351-0001','Ap #679-6429 Sed St.','Motta Sant\'Anastasia'),(6,'Regina','Stevens','mauris.aliquam.eu@tristiquesenectus.net','(925) 193-5266','456-546 Aenean Road','Boston'),(7,'Lucius','Burch','Vivamus@felisullamcorperviverra.org','(447) 230-2740','717-868 Leo. St.','Avelgem'),(8,'Flavia','Brewer','cursus.et.magna@sed.net','(838) 817-5849','Ap #124-5196 Enim, Road','Minneapolis'),(9,'Ferris','Shaw','Ut@rutrumFusce.net','(139) 146-8001','P.O. Box 595, 1267 Ultricies Road','El Carmen'),(10,'Addison','Delgado','Cras.dictum@netus.org','(318) 273-3294','8827 Molestie Road','Boston'),(11,'David','Patton','magna.Suspendisse.tristique@arcuSed.ca','(345) 917-4190','266 Ultricies Avenue','Rocca d\'Arce'),(12,'Scotty','Harmon','egestas.urna.justo@maurisInteger.co.uk','(495) 682-4479','898 Turpis Road','Timkur');
/*!40000 ALTER TABLE `customer1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `MovieID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `MovieLength` varchar(50) DEFAULT NULL,
  `ReleaseDate` date DEFAULT NULL,
  PRIMARY KEY (`MovieID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Lord Of the Rings','Fantasy','228','2001-12-19'),(2,'James Bond - Casino Royale','Action','120','2015-05-09'),(3,'Batman Begins','Action','148','2001-04-29'),(4,'Halloween','Thriller','200','1978-10-19'),(5,'Halloween 4','Regional','160','1988-10-12'),(6,'Superman','Fantasy','230','1978-12-15'),(7,'The Dark Knight Rises','Fantasy','148','2012-05-07'),(8,'The Avengers','Fantasy','149','2012-08-25');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streaming`
--

DROP TABLE IF EXISTS `streaming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streaming` (
  `StreamID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `MovieID` int NOT NULL,
  `StreamDate` date DEFAULT NULL,
  `StreamLength` varchar(50) DEFAULT NULL,
  `StreamSubs` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StreamID`),
  KEY `STR_FK` (`CustomerID`),
  KEY `STR_FK2` (`MovieID`),
  CONSTRAINT `STR_FK` FOREIGN KEY (`CustomerID`) REFERENCES `customer1` (`CustomerID`),
  CONSTRAINT `STR_FK2` FOREIGN KEY (`MovieID`) REFERENCES `movie` (`MovieID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streaming`
--

LOCK TABLES `streaming` WRITE;
/*!40000 ALTER TABLE `streaming` DISABLE KEYS */;
INSERT INTO `streaming` VALUES (8,2,4,'2020-05-19','120','ON'),(9,12,6,'2018-12-01','136','OFF'),(10,8,4,'2020-01-11','110','OFF'),(11,12,8,'2019-01-05','127','ON'),(12,5,5,'2020-02-10','121','ON'),(13,6,4,'2019-12-31','20','OFF'),(14,7,2,'2020-09-19','120','ON');
/*!40000 ALTER TABLE `streaming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription1`
--

DROP TABLE IF EXISTS `subscription1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription1` (
  `SubsID` int NOT NULL AUTO_INCREMENT,
  `SubsStartDate` date DEFAULT NULL,
  `SubsEndDate` date DEFAULT NULL,
  `SubsStatus` varchar(50) DEFAULT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`SubsID`),
  KEY `SUBS_FK` (`CustomerID`),
  CONSTRAINT `SUBS_FK` FOREIGN KEY (`CustomerID`) REFERENCES `customer1` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription1`
--

LOCK TABLES `subscription1` WRITE;
/*!40000 ALTER TABLE `subscription1` DISABLE KEYS */;
INSERT INTO `subscription1` VALUES (1,'2020-03-01','2020-06-01','ACTIVE',2),(2,'2019-07-05','2020-06-10','ACTIVE',3),(3,'2020-03-06','2020-03-20','TRIAL',4),(4,'2019-12-07','2020-12-24','ACTIVE',5),(5,'2018-01-07','2020-06-11','DEACTIVE',6),(6,'2020-08-20','2020-09-04','TRIAL',7),(7,'2020-03-01','2020-10-15','ACTIVE',8),(8,'2019-01-17','2020-02-01','DEACTIVE',9),(9,'2020-10-01','2020-10-14','TRIAL',10),(10,'2018-03-01','2019-11-01','ACTIVE',11);
/*!40000 ALTER TABLE `subscription1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-17 23:34:35
