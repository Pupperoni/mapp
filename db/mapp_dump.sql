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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-11-12 12:44:13','2017-11-12 12:44:13');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,NULL,NULL,'Camotes Airstrip, Camotes Island, Cebu','2017-11-12 12:54:24','2017-11-12 12:54:24'),(2,NULL,NULL,'Imus, Cavite','2017-11-12 12:54:24','2017-11-12 12:54:24'),(3,NULL,NULL,'Vigan, Ilocos Sur','2017-11-12 12:54:24','2017-11-12 12:54:24'),(4,NULL,NULL,'Omni Airstrip, Clark, Pampanga','2017-11-12 12:54:24','2017-11-12 12:54:24'),(5,NULL,NULL,'Lingayen, Pangasinan','2017-11-12 12:54:24','2017-11-12 12:54:24'),(6,NULL,NULL,'San Jose Airport, Mindoro','2017-11-12 12:54:24','2017-11-12 12:54:24'),(7,NULL,NULL,'Barangay Agnaya, Plaridel, Plaridel, Bulacan','2017-11-12 12:54:24','2017-11-12 12:54:24'),(8,NULL,NULL,'Catarman Runway','2017-11-12 12:54:24','2017-11-12 12:54:24'),(9,NULL,NULL,'PASAR, Isabel, Leyte','2017-11-12 12:54:24','2017-11-12 12:54:24'),(10,NULL,NULL,'Kalibo Airport','2017-11-12 12:54:24','2017-11-12 12:54:24'),(11,NULL,NULL,'South Luna Kapalong Kinaman, Davao City','2017-11-12 12:54:24','2017-11-12 12:54:24'),(12,NULL,NULL,'Camotes Airstrip, Camotes Island, Cebu','2017-11-12 12:54:32','2017-11-12 12:54:32'),(13,NULL,NULL,'Imus, Cavite','2017-11-12 12:54:32','2017-11-12 12:54:32'),(14,NULL,NULL,'Vigan, Ilocos Sur','2017-11-12 12:54:32','2017-11-12 12:54:32'),(15,NULL,NULL,'Omni Airstrip, Clark, Pampanga','2017-11-12 12:54:32','2017-11-12 12:54:32'),(16,NULL,NULL,'Lingayen, Pangasinan','2017-11-12 12:54:32','2017-11-12 12:54:32'),(17,NULL,NULL,'San Jose Airport, Mindoro','2017-11-12 12:54:32','2017-11-12 12:54:32'),(18,NULL,NULL,'Barangay Agnaya, Plaridel, Plaridel, Bulacan','2017-11-12 12:54:32','2017-11-12 12:54:32'),(19,NULL,NULL,'Catarman Runway','2017-11-12 12:54:32','2017-11-12 12:54:32'),(20,NULL,NULL,'PASAR, Isabel, Leyte','2017-11-12 12:54:32','2017-11-12 12:54:32'),(21,NULL,NULL,'Kalibo Airport','2017-11-12 12:54:32','2017-11-12 12:54:32'),(22,NULL,NULL,'South Luna Kapalong Kinaman, Davao City','2017-11-12 12:54:32','2017-11-12 12:54:32');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20171112053058');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-12 20:54:53
