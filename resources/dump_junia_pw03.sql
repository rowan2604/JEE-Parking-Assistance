CREATE DATABASE  IF NOT EXISTS `junia_lab03` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `junia_lab03`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: junia_lab03
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `businesstype`
--

DROP TABLE IF EXISTS `businesstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesstype` (
  `id` bigint(20) NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesstype`
--

LOCK TABLES `businesstype` WRITE;
/*!40000 ALTER TABLE `businesstype` DISABLE KEYS */;
INSERT INTO `businesstype` VALUES (6,'2019-09-16 10:00:38',NULL,'retail'),(7,'2019-09-16 10:00:38',NULL,'healthcare'),(8,'2019-09-16 10:00:38',NULL,'phone'),(9,'2019-09-16 10:00:38',NULL,'aeronautics'),(10,'2019-09-16 10:00:39',NULL,'food');
/*!40000 ALTER TABLE `businesstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placeSpeciales`
--

DROP TABLE IF EXISTS `placeSpeciales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `placeSpeciales` (
  `id` bigint(20) NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placeSpeciales`
--

LOCK TABLES `placeSpeciales` WRITE;
/*!40000 ALTER TABLE `placeSpeciales` DISABLE KEYS */;
INSERT INTO `placeSpeciales` VALUES (1,'2019-09-16 10:00:38',NULL,'Worldline'),(2,'2019-09-16 10:00:38',NULL,'Sopra Steria'),(3,'2019-09-16 10:00:38',NULL,'Atos'),(4,'2019-09-16 10:00:38',NULL,'Cap Gemini'),(5,'2019-09-16 10:00:38',NULL,'CGI');
/*!40000 ALTER TABLE `placeSpeciales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ville`
--

DROP TABLE IF EXISTS `ville`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ville` (
  `id` bigint(20) NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parking_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3exe18sbal0uyd01iuhed23uf` (`parking_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ville`
--

LOCK TABLES `ville` WRITE;
/*!40000 ALTER TABLE `ville` DISABLE KEYS */;
INSERT INTO `ville` VALUES (11,'2019-09-16 10:00:39',NULL,'Auchan',6),(12,'2019-09-16 10:00:39',NULL,'Carrefour',6),(13,'2019-09-16 10:00:39',NULL,'Walmart',6),(14,'2019-09-16 10:00:39',NULL,'Philips',7),(15,'2019-09-16 10:00:39',NULL,'GE',7),(16,'2019-09-16 10:00:39',NULL,'Orange',8),(17,'2019-09-16 10:00:39',NULL,'Airbus',9),(18,'2019-09-16 10:00:39',NULL,'Boeing',9),(19,'2019-09-16 10:00:39',NULL,'Kraft',10),(20,'2019-09-16 10:00:39',NULL,'Nestle',10);
/*!40000 ALTER TABLE `ville` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (35),(35),(35),(35);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localisation`
--

DROP TABLE IF EXISTS `localisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localisation` (
  `id` bigint(20) NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `placeSpeciales_id` bigint(20) DEFAULT NULL,
  `ville_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpub41wp2ytydeu4wkkp71xfq2` (`placeSpeciales_id`),
  KEY `FKsbm64qmwf17w5fdaueknmxbji` (`ville_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localisation`
--

LOCK TABLES `localisation` WRITE;
/*!40000 ALTER TABLE `localisation` DISABLE KEYS */;
INSERT INTO `localisation` VALUES (21,'2019-09-16 10:00:39',NULL,'Webmail refactoring',1,16),(22,'2019-09-16 10:00:39',NULL,'Legacy localisation',3,18),(23,'2019-09-16 10:00:39',NULL,'Digital transformation',4,19),(24,'2019-09-16 10:00:39',NULL,'5G deployment',2,16),(25,'2019-09-16 10:00:39',NULL,'Cloud storage',2,16),(26,'2019-09-16 10:00:39',NULL,'RFID update',2,16),(27,'2019-09-16 10:00:39',NULL,'Mobile App',5,20),(28,'2019-09-16 10:00:39',NULL,'Mobile App',4,20),(29,'2019-09-16 10:00:39',NULL,'5G deployment',1,16),(30,'2019-09-16 10:00:39',NULL,'Project Management',3,17),(31,'2019-09-16 10:00:39',NULL,'Payment system',1,11),(32,'2019-09-16 10:00:39',NULL,'Webstore',1,13);
/*!40000 ALTER TABLE `localisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'junia_lab03'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-21 23:38:14
