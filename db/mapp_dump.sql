-- MySQL dump 10.13  Distrib 5.7.19, for osx10.12 (x86_64)
--
-- Host: localhost    Database: mapp_development
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `aircrafts`
--

DROP TABLE IF EXISTS `aircrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aircrafts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aircraft_registration` varchar(255) DEFAULT NULL,
  `craft_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircrafts`
--

LOCK TABLES `aircrafts` WRITE;
/*!40000 ALTER TABLE `aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aircrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `airport_type` varchar(255) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_airports_on_location_id` (`location_id`),
  CONSTRAINT `fk_rails_878c6d4e63` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES (1,NULL,1,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(2,NULL,2,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(3,NULL,3,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(4,NULL,4,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(5,NULL,5,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(6,NULL,6,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(7,NULL,7,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(8,NULL,8,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(9,NULL,9,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(10,NULL,10,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(11,NULL,11,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(12,NULL,12,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(13,NULL,13,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(14,NULL,14,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(15,NULL,15,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(16,NULL,16,'2017-11-13 06:07:04','2017-11-13 06:07:04'),(17,NULL,17,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(18,NULL,18,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(19,NULL,19,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(20,NULL,20,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(21,NULL,21,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(22,NULL,22,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(23,NULL,23,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(24,NULL,24,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(25,NULL,25,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(26,NULL,26,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(27,NULL,27,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(28,NULL,28,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(29,NULL,29,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(30,NULL,30,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(31,NULL,31,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(32,NULL,32,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(33,NULL,33,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(34,NULL,34,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(35,NULL,35,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(36,NULL,36,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(37,NULL,37,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(38,NULL,38,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(39,NULL,39,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(40,NULL,40,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(41,NULL,41,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(42,NULL,42,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(43,NULL,43,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(44,NULL,44,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(45,NULL,45,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(46,NULL,46,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(47,NULL,47,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(48,NULL,48,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(49,NULL,49,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(50,NULL,50,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(51,NULL,51,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(52,NULL,52,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(53,NULL,53,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(54,NULL,54,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(55,NULL,55,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(56,NULL,56,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(57,NULL,57,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(58,NULL,58,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(59,NULL,59,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(60,NULL,60,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(61,NULL,61,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(62,NULL,62,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(63,NULL,63,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(64,NULL,64,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(65,NULL,65,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(66,NULL,66,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(67,NULL,67,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(68,NULL,68,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(69,NULL,69,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(70,NULL,70,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(71,NULL,71,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(72,NULL,72,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(73,NULL,73,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(74,NULL,74,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(75,NULL,75,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(76,NULL,76,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(77,NULL,77,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(78,NULL,78,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(79,NULL,79,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(80,NULL,80,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(81,NULL,81,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(82,NULL,82,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(83,NULL,83,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(84,NULL,84,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(85,NULL,85,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(86,NULL,86,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(87,NULL,87,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(88,NULL,88,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(89,NULL,89,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(90,NULL,90,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(91,NULL,91,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(92,NULL,92,'2017-11-13 06:07:05','2017-11-13 06:07:05'),(93,NULL,93,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(94,NULL,94,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(95,NULL,95,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(96,NULL,96,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(97,NULL,97,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(98,NULL,98,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(99,NULL,99,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(100,NULL,100,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(101,NULL,101,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(102,NULL,102,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(103,NULL,103,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(104,NULL,104,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(105,NULL,105,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(106,NULL,106,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(107,NULL,107,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(108,NULL,108,'2017-11-13 06:07:06','2017-11-13 06:07:06'),(109,NULL,109,'2017-11-13 06:07:07','2017-11-13 06:07:07'),(110,NULL,110,'2017-11-13 06:07:07','2017-11-13 06:07:07'),(111,NULL,111,'2017-11-13 06:07:07','2017-11-13 06:07:07'),(112,NULL,112,'2017-11-13 06:07:07','2017-11-13 06:07:07'),(113,NULL,113,'2017-11-13 06:07:07','2017-11-13 06:07:07'),(114,NULL,114,'2017-11-13 06:07:07','2017-11-13 06:07:07'),(115,NULL,115,'2017-11-13 06:07:07','2017-11-13 06:07:07'),(116,NULL,116,'2017-11-13 06:07:08','2017-11-13 06:07:08'),(117,NULL,117,'2017-11-13 06:07:08','2017-11-13 06:07:08'),(118,NULL,118,'2017-11-13 06:07:08','2017-11-13 06:07:08'),(119,NULL,119,'2017-11-13 06:07:08','2017-11-13 06:07:08'),(120,NULL,120,'2017-11-13 06:07:09','2017-11-13 06:07:09'),(121,NULL,121,'2017-11-13 06:07:09','2017-11-13 06:07:09'),(122,NULL,122,'2017-11-13 06:07:09','2017-11-13 06:07:09'),(123,NULL,123,'2017-11-13 06:07:09','2017-11-13 06:07:09'),(124,NULL,124,'2017-11-13 06:07:09','2017-11-13 06:07:09'),(125,NULL,125,'2017-11-13 06:07:09','2017-11-13 06:07:09'),(126,NULL,126,'2017-11-13 06:07:10','2017-11-13 06:07:10'),(127,NULL,127,'2017-11-13 06:07:10','2017-11-13 06:07:10');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-11-13 06:07:04','2017-11-13 06:07:04');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atms`
--

DROP TABLE IF EXISTS `atms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `atm_type` varchar(255) DEFAULT NULL,
  `locations_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_atms_on_locations_id` (`locations_id`),
  CONSTRAINT `fk_rails_b810589ce3` FOREIGN KEY (`locations_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atms`
--

LOCK TABLES `atms` WRITE;
/*!40000 ALTER TABLE `atms` DISABLE KEYS */;
/*!40000 ALTER TABLE `atms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contractors`
--

DROP TABLE IF EXISTS `contractors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contractors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contractors`
--

LOCK TABLES `contractors` WRITE;
/*!40000 ALTER TABLE `contractors` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happened_ats`
--

DROP TABLE IF EXISTS `happened_ats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `happened_ats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `situation_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_happened_ats_on_location_id` (`location_id`),
  KEY `index_happened_ats_on_situation_id` (`situation_id`),
  CONSTRAINT `fk_rails_28a58e91ff` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  CONSTRAINT `fk_rails_a023df154a` FOREIGN KEY (`situation_id`) REFERENCES `situations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happened_ats`
--

LOCK TABLES `happened_ats` WRITE;
/*!40000 ALTER TABLE `happened_ats` DISABLE KEYS */;
/*!40000 ALTER TABLE `happened_ats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happened_ons`
--

DROP TABLE IF EXISTS `happened_ons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `happened_ons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accident_date` date DEFAULT NULL,
  `situation_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_happened_ons_on_situation_id` (`situation_id`),
  CONSTRAINT `fk_rails_e011895c05` FOREIGN KEY (`situation_id`) REFERENCES `situations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happened_ons`
--

LOCK TABLES `happened_ons` WRITE;
/*!40000 ALTER TABLE `happened_ons` DISABLE KEYS */;
/*!40000 ALTER TABLE `happened_ons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_accidents`
--

DROP TABLE IF EXISTS `has_accidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_accidents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aircraft_id` bigint(20) DEFAULT NULL,
  `situation_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_has_accidents_on_aircraft_id` (`aircraft_id`),
  KEY `index_has_accidents_on_situation_id` (`situation_id`),
  CONSTRAINT `fk_rails_0bc0ece5c6` FOREIGN KEY (`situation_id`) REFERENCES `situations` (`id`),
  CONSTRAINT `fk_rails_2fc52dfbe6` FOREIGN KEY (`aircraft_id`) REFERENCES `aircrafts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_accidents`
--

LOCK TABLES `has_accidents` WRITE;
/*!40000 ALTER TABLE `has_accidents` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_accidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_casualties`
--

DROP TABLE IF EXISTS `has_casualties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_casualties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no_of_casualties` int(11) DEFAULT NULL,
  `situation_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_has_casualties_on_situation_id` (`situation_id`),
  CONSTRAINT `fk_rails_7e1980419c` FOREIGN KEY (`situation_id`) REFERENCES `situations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_casualties`
--

LOCK TABLES `has_casualties` WRITE;
/*!40000 ALTER TABLE `has_casualties` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_casualties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implementing_offices`
--

DROP TABLE IF EXISTS `implementing_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `implementing_offices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `office_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implementing_offices`
--

LOCK TABLES `implementing_offices` WRITE;
/*!40000 ALTER TABLE `implementing_offices` DISABLE KEYS */;
/*!40000 ALTER TABLE `implementing_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `region` int(11) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,NULL,NULL,'Baguio','2017-11-13 06:07:04','2017-11-13 06:07:04'),(2,NULL,NULL,'Laoag (International)','2017-11-13 06:07:04','2017-11-13 06:07:04'),(3,NULL,NULL,'Laoag (Domestic)','2017-11-13 06:07:04','2017-11-13 06:07:04'),(4,NULL,NULL,'Lingayen','2017-11-13 06:07:04','2017-11-13 06:07:04'),(5,NULL,NULL,'Rosales','2017-11-13 06:07:04','2017-11-13 06:07:04'),(6,NULL,NULL,'San Fernando','2017-11-13 06:07:04','2017-11-13 06:07:04'),(7,NULL,NULL,'Vigan','2017-11-13 06:07:04','2017-11-13 06:07:04'),(8,NULL,NULL,'Bagabag','2017-11-13 06:07:04','2017-11-13 06:07:04'),(9,NULL,NULL,'Basco','2017-11-13 06:07:04','2017-11-13 06:07:04'),(10,NULL,NULL,'Cauayan','2017-11-13 06:07:04','2017-11-13 06:07:04'),(11,NULL,NULL,'Itbayat','2017-11-13 06:07:04','2017-11-13 06:07:04'),(12,NULL,NULL,'Palanan','2017-11-13 06:07:04','2017-11-13 06:07:04'),(13,NULL,NULL,'Tuguegarao (International)','2017-11-13 06:07:04','2017-11-13 06:07:04'),(14,NULL,NULL,'Iba','2017-11-13 06:07:04','2017-11-13 06:07:04'),(15,NULL,NULL,'Baler','2017-11-13 06:07:04','2017-11-13 06:07:04'),(16,NULL,NULL,'Plaridel','2017-11-13 06:07:04','2017-11-13 06:07:04'),(17,NULL,NULL,'NAIA','2017-11-13 06:07:05','2017-11-13 06:07:05'),(18,NULL,NULL,'Alabat','2017-11-13 06:07:05','2017-11-13 06:07:05'),(19,NULL,NULL,'Busuanga','2017-11-13 06:07:05','2017-11-13 06:07:05'),(20,NULL,NULL,'Calapan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(21,NULL,NULL,'Cuyo','2017-11-13 06:07:05','2017-11-13 06:07:05'),(22,NULL,NULL,'Jomalig','2017-11-13 06:07:05','2017-11-13 06:07:05'),(23,NULL,NULL,'Lucena','2017-11-13 06:07:05','2017-11-13 06:07:05'),(24,NULL,NULL,'Lubang','2017-11-13 06:07:05','2017-11-13 06:07:05'),(25,NULL,NULL,'Mamburao','2017-11-13 06:07:05','2017-11-13 06:07:05'),(26,NULL,NULL,'Marinduque','2017-11-13 06:07:05','2017-11-13 06:07:05'),(27,NULL,NULL,'Puerto Princesa ','2017-11-13 06:07:05','2017-11-13 06:07:05'),(28,NULL,NULL,'Romblon','2017-11-13 06:07:05','2017-11-13 06:07:05'),(29,NULL,NULL,'San Jose','2017-11-13 06:07:05','2017-11-13 06:07:05'),(30,NULL,NULL,'Wasig','2017-11-13 06:07:05','2017-11-13 06:07:05'),(31,NULL,NULL,'Bulan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(32,NULL,NULL,'Daet','2017-11-13 06:07:05','2017-11-13 06:07:05'),(33,NULL,NULL,'Legaspi','2017-11-13 06:07:05','2017-11-13 06:07:05'),(34,NULL,NULL,'Masbate','2017-11-13 06:07:05','2017-11-13 06:07:05'),(35,NULL,NULL,'Naga','2017-11-13 06:07:05','2017-11-13 06:07:05'),(36,NULL,NULL,'Sorsogon','2017-11-13 06:07:05','2017-11-13 06:07:05'),(37,NULL,NULL,'Virac','2017-11-13 06:07:05','2017-11-13 06:07:05'),(38,NULL,NULL,'Antique','2017-11-13 06:07:05','2017-11-13 06:07:05'),(39,NULL,NULL,'Bacolod','2017-11-13 06:07:05','2017-11-13 06:07:05'),(40,NULL,NULL,'Caticlan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(41,NULL,NULL,'Iloilo','2017-11-13 06:07:05','2017-11-13 06:07:05'),(42,NULL,NULL,'Kalibo','2017-11-13 06:07:05','2017-11-13 06:07:05'),(43,NULL,NULL,'Roxas','2017-11-13 06:07:05','2017-11-13 06:07:05'),(44,NULL,NULL,'Dumaguete','2017-11-13 06:07:05','2017-11-13 06:07:05'),(45,NULL,NULL,'Mactan (International)','2017-11-13 06:07:05','2017-11-13 06:07:05'),(46,NULL,NULL,'Mactan (Domestic)','2017-11-13 06:07:05','2017-11-13 06:07:05'),(47,NULL,NULL,'Siquijor','2017-11-13 06:07:05','2017-11-13 06:07:05'),(48,NULL,NULL,'Tagbilaran','2017-11-13 06:07:05','2017-11-13 06:07:05'),(49,NULL,NULL,'Ubay','2017-11-13 06:07:05','2017-11-13 06:07:05'),(50,NULL,NULL,'Biliran','2017-11-13 06:07:05','2017-11-13 06:07:05'),(51,NULL,NULL,'Borongan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(52,NULL,NULL,'Calbayog','2017-11-13 06:07:05','2017-11-13 06:07:05'),(53,NULL,NULL,'Catarman','2017-11-13 06:07:05','2017-11-13 06:07:05'),(54,NULL,NULL,'Catbalogan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(55,NULL,NULL,'Guiuan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(56,NULL,NULL,'Hilongos','2017-11-13 06:07:05','2017-11-13 06:07:05'),(57,NULL,NULL,'Maasin','2017-11-13 06:07:05','2017-11-13 06:07:05'),(58,NULL,NULL,'Ormoc','2017-11-13 06:07:05','2017-11-13 06:07:05'),(59,NULL,NULL,'Tacloban','2017-11-13 06:07:05','2017-11-13 06:07:05'),(60,NULL,NULL,'Cagayan de Sulu','2017-11-13 06:07:05','2017-11-13 06:07:05'),(61,NULL,NULL,'Dipolog','2017-11-13 06:07:05','2017-11-13 06:07:05'),(62,NULL,NULL,'Ipil','2017-11-13 06:07:05','2017-11-13 06:07:05'),(63,NULL,NULL,'Jolo','2017-11-13 06:07:05','2017-11-13 06:07:05'),(64,NULL,NULL,'Liloy','2017-11-13 06:07:05','2017-11-13 06:07:05'),(65,NULL,NULL,'Pagadian','2017-11-13 06:07:05','2017-11-13 06:07:05'),(66,NULL,NULL,'Sanga-Sanga','2017-11-13 06:07:05','2017-11-13 06:07:05'),(67,NULL,NULL,'Siocon','2017-11-13 06:07:05','2017-11-13 06:07:05'),(68,NULL,NULL,'Zamboanga','2017-11-13 06:07:05','2017-11-13 06:07:05'),(69,NULL,NULL,'Butuan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(70,NULL,NULL,'Cagayan de Oro','2017-11-13 06:07:05','2017-11-13 06:07:05'),(71,NULL,NULL,'Camiguin','2017-11-13 06:07:05','2017-11-13 06:07:05'),(72,NULL,NULL,'Malaybalay','2017-11-13 06:07:05','2017-11-13 06:07:05'),(73,NULL,NULL,'Ozamis','2017-11-13 06:07:05','2017-11-13 06:07:05'),(74,NULL,NULL,'Siargao','2017-11-13 06:07:05','2017-11-13 06:07:05'),(75,NULL,NULL,'Surigao','2017-11-13 06:07:05','2017-11-13 06:07:05'),(76,NULL,NULL,'Allah Valley','2017-11-13 06:07:05','2017-11-13 06:07:05'),(77,NULL,NULL,'Barobo','2017-11-13 06:07:05','2017-11-13 06:07:05'),(78,NULL,NULL,'Bislig','2017-11-13 06:07:05','2017-11-13 06:07:05'),(79,NULL,NULL,'General Santos Tambler','2017-11-13 06:07:05','2017-11-13 06:07:05'),(80,NULL,NULL,'General Santos Buauyan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(81,NULL,NULL,'Davao (International)','2017-11-13 06:07:05','2017-11-13 06:07:05'),(82,NULL,NULL,'Davao (Domestic)','2017-11-13 06:07:05','2017-11-13 06:07:05'),(83,NULL,NULL,'Mati','2017-11-13 06:07:05','2017-11-13 06:07:05'),(84,NULL,NULL,'Tandag','2017-11-13 06:07:05','2017-11-13 06:07:05'),(85,NULL,NULL,'Cotabato','2017-11-13 06:07:05','2017-11-13 06:07:05'),(86,NULL,NULL,'Iligan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(87,NULL,NULL,'Malabang','2017-11-13 06:07:05','2017-11-13 06:07:05'),(88,NULL,NULL,'Subic','2017-11-13 06:07:05','2017-11-13 06:07:05'),(89,NULL,NULL,'Pinamalayan','2017-11-13 06:07:05','2017-11-13 06:07:05'),(90,NULL,NULL,'General Santos','2017-11-13 06:07:05','2017-11-13 06:07:05'),(91,NULL,NULL,'Laoag (Int\'l)','2017-11-13 06:07:05','2017-11-13 06:07:05'),(92,NULL,NULL,'Laoag (Dom.)','2017-11-13 06:07:05','2017-11-13 06:07:05'),(93,NULL,NULL,'Tuguegarao (Int\'l.)','2017-11-13 06:07:06','2017-11-13 06:07:06'),(94,NULL,NULL,'Pto. Princesa ','2017-11-13 06:07:06','2017-11-13 06:07:06'),(95,NULL,NULL,'Mactan (Int\'l)','2017-11-13 06:07:06','2017-11-13 06:07:06'),(96,NULL,NULL,'Mactan (Dom.)','2017-11-13 06:07:06','2017-11-13 06:07:06'),(97,NULL,NULL,'Bantayan','2017-11-13 06:07:06','2017-11-13 06:07:06'),(98,NULL,NULL,'Cag. de Sulu','2017-11-13 06:07:06','2017-11-13 06:07:06'),(99,NULL,NULL,'Cag. de Oro','2017-11-13 06:07:06','2017-11-13 06:07:06'),(100,NULL,NULL,'Gen. San. Tambler','2017-11-13 06:07:06','2017-11-13 06:07:06'),(101,NULL,NULL,'Gen. San. Buauyan','2017-11-13 06:07:06','2017-11-13 06:07:06'),(102,NULL,NULL,'Davao (Int\'l.)','2017-11-13 06:07:06','2017-11-13 06:07:06'),(103,NULL,NULL,'Davao (Dom.)','2017-11-13 06:07:06','2017-11-13 06:07:06'),(104,NULL,NULL,'Diosdado Macapagal International Airport','2017-11-13 06:07:06','2017-11-13 06:07:06'),(105,NULL,NULL,'Puerto Princesa (Domestic)','2017-11-13 06:07:06','2017-11-13 06:07:06'),(106,NULL,NULL,'Puerto Princesa (International)','2017-11-13 06:07:06','2017-11-13 06:07:06'),(107,NULL,NULL,'Mactan','2017-11-13 06:07:06','2017-11-13 06:07:06'),(108,NULL,NULL,'Tuguegarao (International','2017-11-13 06:07:06','2017-11-13 06:07:06'),(109,NULL,NULL,'Puero Princesa (Domestic)','2017-11-13 06:07:07','2017-11-13 06:07:07'),(110,NULL,NULL,'Laoag  (International','2017-11-13 06:07:07','2017-11-13 06:07:07'),(111,NULL,NULL,'Laoag  (Domestic','2017-11-13 06:07:07','2017-11-13 06:07:07'),(112,NULL,NULL,'Tuguegarao','2017-11-13 06:07:07','2017-11-13 06:07:07'),(113,NULL,NULL,'General Santos Tambler (International)','2017-11-13 06:07:07','2017-11-13 06:07:07'),(114,NULL,NULL,'Davao (Domestic','2017-11-13 06:07:07','2017-11-13 06:07:07'),(115,NULL,NULL,'Tuguegarao (Domestic)','2017-11-13 06:07:07','2017-11-13 06:07:07'),(116,NULL,NULL,'Tuguegarao (Dom.)','2017-11-13 06:07:08','2017-11-13 06:07:08'),(117,NULL,NULL,'Genenal Santos Buauyan','2017-11-13 06:07:08','2017-11-13 06:07:08'),(118,NULL,NULL,'Kalibo (International)','2017-11-13 06:07:08','2017-11-13 06:07:08'),(119,NULL,NULL,'Kalibo (Domestic)','2017-11-13 06:07:08','2017-11-13 06:07:08'),(120,NULL,NULL,'Puerto Princesa (Domesic)t','2017-11-13 06:07:09','2017-11-13 06:07:09'),(121,NULL,NULL,'Iloilo (International)','2017-11-13 06:07:09','2017-11-13 06:07:09'),(122,NULL,NULL,'Laguindingan','2017-11-13 06:07:09','2017-11-13 06:07:09'),(123,NULL,NULL,NULL,'2017-11-13 06:07:09','2017-11-13 06:07:09'),(124,NULL,NULL,'Pto.Princesa International','2017-11-13 06:07:09','2017-11-13 06:07:09'),(125,NULL,NULL,'Iloilo International','2017-11-13 06:07:09','2017-11-13 06:07:09'),(126,NULL,NULL,'Gen. San.Tambler','2017-11-13 06:07:10','2017-11-13 06:07:10'),(127,NULL,NULL,'Gen. San.Buauyan','2017-11-13 06:07:10','2017-11-13 06:07:10');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pcost` float DEFAULT NULL,
  `pstatus` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20171112053058'),('20171112153253'),('20171112153532'),('20171112153823'),('20171112153934'),('20171112154040'),('20171112154100'),('20171112154128'),('20171112154155'),('20171112154223'),('20171112154236'),('20171112154247');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situations`
--

DROP TABLE IF EXISTS `situations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accident_type` varchar(255) DEFAULT NULL,
  `report_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `airport_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_situations_on_airport_id` (`airport_id`),
  CONSTRAINT `fk_rails_ab6c06ef73` FOREIGN KEY (`airport_id`) REFERENCES `airports` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situations`
--

LOCK TABLES `situations` WRITE;
/*!40000 ALTER TABLE `situations` DISABLE KEYS */;
/*!40000 ALTER TABLE `situations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-13 14:07:17
