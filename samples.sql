-- MySQL dump 10.13  Distrib 5.6.45, for Win64 (x86_64)
--
-- Host: localhost    Database: samples
-- ------------------------------------------------------
-- Server version	5.6.45-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `csvsource`
--

DROP TABLE IF EXISTS `csvsource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csvsource` (
  `OrderDate` varchar(10) DEFAULT NULL,
  `Region` varchar(7) DEFAULT NULL,
  `Rep` varchar(8) DEFAULT NULL,
  `Item` varchar(7) DEFAULT NULL,
  `Units` int(2) DEFAULT NULL,
  `Unit_Cost` varchar(8) DEFAULT NULL,
  `Total` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csvsource`
--

LOCK TABLES `csvsource` WRITE;
/*!40000 ALTER TABLE `csvsource` DISABLE KEYS */;
INSERT INTO `csvsource` VALUES ('06/01/2018','East','Jones','Pencil',95,' 1.99 ',' 189.05 '),('23/01/2018','Central','Kivell','Binder',50,' 19.99 ',' 999.50 '),('09/08/2018','Central','Jardine','Pencil',36,' 4.99 ',' 179.64 '),('26/02/2018','Central','Gill','Pen',27,' 19.99 ',' 539.73 '),('15/03/2018','West','Sorvino','Pencil',56,' 2.99 ',' 167.44 '),('01/04/2018','East','Jones','Binder',60,' 4.99 ',' 299.40 '),('18/04/2018','Central','Andrews','Pencil',75,' 1.99 ',' 149.25 '),('05/05/2018','Central','Jardine','Pencil',90,' 4.99 ',' 449.10 '),('22/05/2018','West','Thompson','Pencil',32,' 1.99 ',' 63.68 '),('08/06/2018','East','Jones','Binder',60,' 8.99 ',' 539.40 '),('25/06/2018','Central','Morgan','Pencil',90,' 4.99 ',' 449.10 '),('12/07/2018','East','Howard','Binder',29,' 1.99 ',' 57.71 '),('29/07/2018','East','Parent','Binder',81,' 19.99 ','1619.19'),('15/08/2018','East','Jones','Pencil',35,' 4.99 ',' 174.65 '),('01/09/2018','Central','Smith','Desk',2,' 125.00 ',' 250.00 '),('18/09/2018','East','Jones','Pen Set',16,' 15.99 ',' 255.84 '),('05/10/2018','Central','Morgan','Binder',28,' 8.99 ',' 251.72 '),('22/10/2018','East','Jones','Pen',64,' 8.99 ',' 575.36 '),('08/11/2018','East','Parent','Pen',15,' 19.99 ',' 299.85 '),('25/11/2018','Central','Kivell','Pen Set',96,' 4.99 ',' 479.04 '),('12/12/2018','Central','Smith','Pencil',67,' 1.29 ',' 86.43 '),('29/12/2018','East','Parent','Pen Set',74,' 15.99 ','1183.26'),('15/01/2019','Central','Gill','Binder',46,' 8.99 ',' 413.54 '),('01/02/2019','Central','Smith','Binder',87,' 15.00 ','1305.00'),('18/02/2019','East','Jones','Binder',4,' 4.99 ',' 19.96 '),('07/03/2019','West','Sorvino','Binder',7,' 19.99 ',' 139.93 '),('24/03/2019','Central','Jardine','Pen Set',50,' 4.99 ',' 249.50 '),('10/04/2019','Central','Andrews','Pencil',66,' 1.99 ',' 131.34 '),('27/04/2019','East','Howard','Pen',96,' 4.99 ',' 479.04 '),('14/05/2019','Central','Gill','Pencil',53,' 1.29 ',' 68.37 '),('31/05/2019','Central','Gill','Binder',80,' 8.99 ',' 719.20 '),('17/06/2019','Central','Kivell','Desk',5,' 125.00 ',' 625.00 '),('04/07/2019','East','Jones','Pen Set',62,' 4.99 ',' 309.38 '),('21/07/2019','Central','Morgan','Pen Set',55,' 12.49 ',' 686.95 '),('07/08/2019','Central','Kivell','Pen Set',42,' 23.95 ','1005.90'),('24/08/2019','West','Sorvino','Desk',3,' 275.00 ',' 825.00 '),('10/09/2019','Central','Gill','Pencil',7,' 1.29 ',' 9.03 '),('27/09/2019','West','Sorvino','Pen',76,' 1.99 ',' 151.24 '),('14/10/2019','West','Thompson','Binder',57,' 19.99 ','1139.43'),('31/10/2019','Central','Andrews','Pencil',14,' 1.29 ',' 18.06 '),('17/10/2019','Central','Jardine','Binder',11,' 4.99 ',' 54.89 '),('04/12/2019','Central','Jardine','Binder',94,' 19.99 ','1879.06'),('21/12/2019','Central','Andrews','Binder',28,' 4.99 ',' 139.72 ');
/*!40000 ALTER TABLE `csvsource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimdate`
--

DROP TABLE IF EXISTS `dimdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimdate` (
  `dimDateID` int(11) NOT NULL AUTO_INCREMENT,
  `yearName` varchar(255) DEFAULT NULL,
  `monthName` varchar(255) DEFAULT NULL,
  `monthValue` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dimDateID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimdate`
--

LOCK TABLES `dimdate` WRITE;
/*!40000 ALTER TABLE `dimdate` DISABLE KEYS */;
INSERT INTO `dimdate` VALUES (1,'2018','January','01'),(2,'2018','February','02'),(3,'2018','March','03'),(4,'2018','April','04'),(5,'2018','May','05'),(6,'2018','June','06'),(7,'2018','July','07'),(8,'2018','August','08'),(9,'2018','September','09'),(10,'2018','October','10'),(11,'2018','November','11'),(12,'2018','December','12'),(13,'2019','January','01'),(14,'2019','February','02'),(15,'2019','March','03'),(16,'2019','April','04'),(17,'2019','May','05'),(18,'2019','June','06'),(19,'2019','July','07'),(20,'2019','August','08'),(21,'2019','September','09'),(22,'2019','October','10'),(23,'2019','November','11'),(24,'2019','December','12');
/*!40000 ALTER TABLE `dimdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimitem`
--

DROP TABLE IF EXISTS `dimitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimitem` (
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimitem`
--

LOCK TABLES `dimitem` WRITE;
/*!40000 ALTER TABLE `dimitem` DISABLE KEYS */;
INSERT INTO `dimitem` VALUES (1,'Pencil'),(2,'Binder'),(3,'Pen'),(4,'Desk'),(5,'Pen Set');
/*!40000 ALTER TABLE `dimitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimregion`
--

DROP TABLE IF EXISTS `dimregion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimregion` (
  `dimRegionID` int(11) NOT NULL AUTO_INCREMENT,
  `regionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dimRegionID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimregion`
--

LOCK TABLES `dimregion` WRITE;
/*!40000 ALTER TABLE `dimregion` DISABLE KEYS */;
INSERT INTO `dimregion` VALUES (1,'East'),(2,'Central'),(3,'West');
/*!40000 ALTER TABLE `dimregion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimrep`
--

DROP TABLE IF EXISTS `dimrep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimrep` (
  `repID` int(11) NOT NULL AUTO_INCREMENT,
  `repName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`repID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimrep`
--

LOCK TABLES `dimrep` WRITE;
/*!40000 ALTER TABLE `dimrep` DISABLE KEYS */;
INSERT INTO `dimrep` VALUES (1,'Jones'),(2,'Kivell'),(3,'Jardine'),(4,'Gill'),(5,'Sorvino'),(6,'Andrews'),(7,'Thompson'),(8,'Morgan'),(9,'Howard'),(10,'Parent'),(11,'Smith');
/*!40000 ALTER TABLE `dimrep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factsmain`
--

DROP TABLE IF EXISTS `factsmain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factsmain` (
  `factsID` int(11) NOT NULL AUTO_INCREMENT,
  `dimDateID` int(11) NOT NULL,
  `dimRepID` int(11) NOT NULL,
  `dimItemID` int(11) NOT NULL,
  `dimRegionID` int(11) NOT NULL,
  `meaUnit` int(11) NOT NULL,
  `meaUnitCost` int(11) NOT NULL,
  `meaTotal` int(11) NOT NULL,
  PRIMARY KEY (`factsID`),
  KEY `fk_1` (`dimDateID`),
  KEY `fk_2` (`dimRepID`),
  KEY `fk_3` (`dimItemID`),
  KEY `fk_4` (`dimRegionID`),
  CONSTRAINT `factsmain_ibfk_1` FOREIGN KEY (`dimDateID`) REFERENCES `dimdate` (`dimDateID`),
  CONSTRAINT `factsmain_ibfk_2` FOREIGN KEY (`dimRepID`) REFERENCES `dimrep` (`repID`),
  CONSTRAINT `factsmain_ibfk_3` FOREIGN KEY (`dimItemID`) REFERENCES `dimitem` (`ItemID`),
  CONSTRAINT `factsmain_ibfk_4` FOREIGN KEY (`dimRegionID`) REFERENCES `dimregion` (`dimRegionID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factsmain`
--

LOCK TABLES `factsmain` WRITE;
/*!40000 ALTER TABLE `factsmain` DISABLE KEYS */;
INSERT INTO `factsmain` VALUES (1,1,1,1,1,95,2,189),(2,1,2,2,2,50,20,1000),(3,8,3,1,2,36,5,180),(4,2,4,3,2,27,20,540),(5,3,5,1,3,56,3,167),(6,4,1,2,1,60,5,299),(7,4,6,1,2,75,2,149),(8,5,3,1,2,90,5,449),(9,5,7,1,3,32,2,64),(10,6,1,2,1,60,9,539),(11,6,8,1,2,90,5,449),(12,7,9,2,1,29,2,58),(13,7,10,2,1,81,20,1619),(14,8,1,1,1,35,5,175),(15,9,11,4,2,2,125,250),(16,9,1,5,1,16,16,256),(17,10,8,2,2,28,9,252),(18,10,1,3,1,64,9,575),(19,11,10,3,1,15,20,300),(20,11,2,5,2,96,5,479),(21,12,11,1,2,67,1,86),(22,12,10,5,1,74,16,1183),(23,13,4,2,2,46,9,414),(24,14,11,2,2,87,15,1305),(25,14,1,2,1,4,5,20),(26,15,5,2,3,7,20,140),(27,15,3,5,2,50,5,250),(28,16,6,1,2,66,2,131),(29,16,9,3,1,96,5,479),(30,17,4,1,2,53,1,68),(31,17,4,2,2,80,9,719),(32,18,2,4,2,5,125,625),(33,19,1,5,1,62,5,309),(34,19,8,5,2,55,12,687),(35,20,2,5,2,42,24,1006),(36,20,5,4,3,3,275,825),(37,21,4,1,2,7,1,9),(38,21,5,3,3,76,2,151),(39,22,7,2,3,57,20,1139),(40,22,6,1,2,14,1,18),(41,22,3,2,2,11,5,55),(42,24,3,2,2,94,20,1879),(43,24,6,2,2,28,5,140);
/*!40000 ALTER TABLE `factsmain` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-18 14:37:46
