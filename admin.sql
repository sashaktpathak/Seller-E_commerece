-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: sql_tutorial
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_code` char(3) NOT NULL DEFAULT '',
  `category` varchar(20) NOT NULL,
  UNIQUE KEY `category_code` (`category_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('ele','electronics'),('nok','nokia'),('Sam','Samsug'),('son','sony');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primaryfeature`
--

DROP TABLE IF EXISTS `primaryfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primaryfeature` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `feature` varchar(40) DEFAULT NULL,
  `unit` varchar(15) DEFAULT NULL,
  `subcategoryid` int(3) DEFAULT NULL,
  `value` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategoryid` (`subcategoryid`),
  CONSTRAINT `primaryfeature_ibfk_1` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primaryfeature`
--

LOCK TABLES `primaryfeature` WRITE;
/*!40000 ALTER TABLE `primaryfeature` DISABLE KEYS */;
INSERT INTO `primaryfeature` VALUES (1,'weight','kg',56,'1.3');
/*!40000 ALTER TABLE `primaryfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secondaryfeature`
--

DROP TABLE IF EXISTS `secondaryfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secondaryfeature` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `feature` varchar(50) DEFAULT NULL,
  `unit` varchar(15) DEFAULT NULL,
  `subsubcategoryid` int(12) DEFAULT NULL,
  `value` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subsubcategoryid` (`subsubcategoryid`),
  CONSTRAINT `secondaryfeature_ibfk_1` FOREIGN KEY (`subsubcategoryid`) REFERENCES `subsubcategory` (`ssub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondaryfeature`
--

LOCK TABLES `secondaryfeature` WRITE;
/*!40000 ALTER TABLE `secondaryfeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `secondaryfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `sub_id` int(12) NOT NULL AUTO_INCREMENT,
  `sub` char(20) NOT NULL DEFAULT '',
  `category_code` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`sub_id`),
  KEY `fk` (`category_code`),
  CONSTRAINT `fk` FOREIGN KEY (`category_code`) REFERENCES `category` (`category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (55,'mobile','Sam'),(56,'mobile','nok'),(57,'earphones','son'),(58,'mobiles','ele'),(59,'mobile','ele');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsubcategory`
--

DROP TABLE IF EXISTS `subsubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsubcategory` (
  `ssub_id` int(12) NOT NULL AUTO_INCREMENT,
  `sub_id` int(12) DEFAULT NULL,
  `ssub` char(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`ssub_id`),
  KEY `fk1` (`sub_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`sub_id`) REFERENCES `subcategory` (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsubcategory`
--

LOCK TABLES `subsubcategory` WRITE;
/*!40000 ALTER TABLE `subsubcategory` DISABLE KEYS */;
INSERT INTO `subsubcategory` VALUES (147,55,'GT-S7392'),(148,56,'s1'),(149,58,'samsung');
/*!40000 ALTER TABLE `subsubcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phn` varchar(10) NOT NULL,
  `type` int(11) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `phn` (`phn`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('akash','akash@gmail.com','7042918961',2,'akash',2),('a','aka@gmail.com','7412589635',2,'akash',21);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-22  0:59:26
