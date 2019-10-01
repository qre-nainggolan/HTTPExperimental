-- MySQL dump 10.17  Distrib 10.3.16-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: goASN
-- ------------------------------------------------------
-- Server version	10.3.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `question_test`
--

DROP TABLE IF EXISTS `question_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `question` varchar(1024) DEFAULT NULL,
  `optionA` varchar(512) DEFAULT NULL,
  `optionB` varchar(512) DEFAULT NULL,
  `optionC` varchar(512) DEFAULT NULL,
  `optionD` varchar(512) DEFAULT NULL,
  `optionE` varchar(512) DEFAULT NULL,
  `optionF` varchar(512) DEFAULT NULL,
  `answerLetter` varchar(8) DEFAULT NULL,
  `answerText` varchar(512) DEFAULT NULL,
  `explanation` varchar(2048) DEFAULT NULL,
  `orderPosition` varchar(32) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `dateCreate` datetime DEFAULT NULL,
  `dateUpdate` datetime DEFAULT NULL,
  `userCreate` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_test`
--

LOCK TABLES `question_test` WRITE;
/*!40000 ALTER TABLE `question_test` DISABLE KEYS */;
INSERT INTO `question_test` VALUES (1,'TIU10000','Dilema Dua Arah','Jika kabut asap semakin tebal maka penglihatan berkurang. Jika bantuan pemerintah meningkat maka api cepat padam. Kabut asap semakin tebal atau api tidak cepat padam.','Penglihatan berkurang atau bantuan pemerintah tidak meningkat','Penglihatan tidak berkurang atau bantuan pemerintah tidak meningkat','Pengelihatan berkurang dan bantuan pemerintah meningkat','Jika bantuan pemerintah tidak meningkat maka api tidak cepat padam','Jika kabut asap semakin tebal maka api tidak cepat padam',NULL,'A','Penglihatan berkurang atau bantuan pemerintah tidak meningkat','Dilema Dua Arah','B5000',NULL,'2019-09-26 15:44:26','2019-09-26 15:44:26','erik'),(2,'TKD10000','Test','Setiap Hari di RW 111 tugas ronda dilaksanakan oleh 5 RT, RT 01 tidak dapat bertugas pada hari Selasa, Rabu dan Jumat. RT 02 tidak bertugas hanya selasa dan Jumat. RT 03 tidak dapat bertugas dari hari Jumat dan Senin. RT 04 yang sebagian lansia dan pelajar hanya bertugas pada hari Sabtu. RT 05 hanya piket pada hari Jumat dan minggu. RT yang bertugas pada hari Sabtu adalah','RT 01, RT 02 dan RT 04','Asal','Asal C','Asal D','Asal E',NULL,'C','Test','Test lagi','B5050',NULL,'2019-09-29 19:19:35','2019-09-29 19:19:35','erik');
/*!40000 ALTER TABLE `question_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_test_category`
--

DROP TABLE IF EXISTS `question_test_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_test_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `dateCreate` datetime DEFAULT NULL,
  `dateUpdate` datetime DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `userCreate` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_test_category`
--

LOCK TABLES `question_test_category` WRITE;
/*!40000 ALTER TABLE `question_test_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_test_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student`
--

DROP TABLE IF EXISTS `tb_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_student` (
  `nim` int(20) NOT NULL,
  `name` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student`
--

LOCK TABLES `tb_student` WRITE;
/*!40000 ALTER TABLE `tb_student` DISABLE KEYS */;
INSERT INTO `tb_student` VALUES (531414020,'Suprianto D','Jl. jalan kemana saja','Pria');
/*!40000 ALTER TABLE `tb_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-01  8:24:12
