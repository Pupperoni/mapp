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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircrafts`
--

LOCK TABLES `aircrafts` WRITE;
/*!40000 ALTER TABLE `aircrafts` DISABLE KEYS */;
INSERT INTO `aircrafts` VALUES (1,'RP-C916','Cessna 150 C','2017-11-13 05:06:21','2017-11-13 05:06:21'),(2,'RP-C1118','Robinson R22','2017-11-13 05:06:21','2017-11-13 05:06:21'),(3,'RP-C1038','Beechcraft BE-A24R','2017-11-13 05:06:21','2017-11-13 05:06:21'),(4,'RP-C3541','Alpha Robin R2120U','2017-11-13 05:06:21','2017-11-13 05:06:21'),(5,'RP-C8204','Cessna 152','2017-11-13 05:06:21','2017-11-13 05:06:21'),(6,'RP-C8080','Piper Seneca (PA-34-200T)','2017-11-13 05:06:21','2017-11-13 05:06:21'),(7,'RP-C6890','Cessna Seneca','2017-11-13 05:06:21','2017-11-13 05:06:21'),(8,'RP-C3033','Q400','2017-11-13 05:06:21','2017-11-13 05:06:21'),(9,'RP-C2711','Beechcraft Baron 58','2017-11-13 05:06:21','2017-11-13 05:06:21'),(10,'RP-178','Cessna U206','2017-11-13 05:06:21','2017-11-13 05:06:21'),(11,'RP-R5858','Grumman Agcat 164A','2017-11-13 05:06:21','2017-11-13 05:06:21'),(12,'RP-C7250','ATR-72-500','2017-11-13 05:06:21','2017-11-13 05:06:21'),(13,'RP-C2622','SA 318C Aloutte 11','2017-11-13 05:06:21','2017-11-13 05:06:21'),(14,'RP-C1402','Beechcraft Baron 55','2017-11-13 05:06:21','2017-11-13 05:06:21'),(15,'RP-C4328','DO-328-100','2017-11-13 05:06:21','2017-11-13 05:06:21'),(16,'RP-C2584','Cessna 152','2017-11-13 05:06:21','2017-11-13 05:06:21'),(17,'RP-C3249','Airbus A320','2017-11-13 05:06:21','2017-11-13 05:06:21'),(18,'RP-C484','Hawker Beechcraft','2017-11-13 05:06:21','2017-11-13 05:06:21'),(19,'RP-C596','BE-D50C','2017-11-13 05:06:21','2017-11-13 05:06:21'),(20,'RP-C1742','PA 34-200','2017-11-13 05:06:21','2017-11-13 05:06:21'),(21,'RP-C3546','Cessna 172S','2017-11-13 05:06:22','2017-11-13 05:06:22'),(22,'RP-C347','Cessna 152','2017-11-13 05:06:22','2017-11-13 05:06:22'),(23,'RP-C317','BE-55, Baron','2017-11-13 05:06:22','2017-11-13 05:06:22'),(24,'RP-C9988','Cessna 152','2017-11-13 05:06:22','2017-11-13 05:06:22'),(25,'RP-C2282','Dornier 228-202K','2017-11-13 05:06:22','2017-11-13 05:06:22'),(26,'RP-C8690','PA-34-200 Piper Seneca','2017-11-13 05:06:22','2017-11-13 05:06:22'),(27,'RP-C1939','Cessna 172M','2017-11-13 05:06:22','2017-11-13 05:06:22'),(28,'RP-C1086','Eurocopter GMBH (EC145)','2017-11-13 05:06:22','2017-11-13 05:06:22'),(29,'RP-C8840','Cessna 152 II','2017-11-13 05:06:22','2017-11-13 05:06:22'),(30,'RP-C4427','Cessna 152','2017-11-13 05:06:22','2017-11-13 05:06:22'),(31,'RP-C5522 / RP-C666','AS350 / Cessna 180','2017-11-13 05:06:22','2017-11-13 05:06:22'),(32,'RP-R2374','S2R-G10)','2017-11-13 05:06:22','2017-11-13 05:06:22'),(33,'RP-C1322','Cessna 172','2017-11-13 05:06:22','2017-11-13 05:06:22'),(34,'RP-C2928','LET 410','2017-11-13 05:06:22','2017-11-13 05:06:22'),(35,'RP-C1743','Cessna 150 II','2017-11-13 05:06:22','2017-11-13 05:06:22'),(36,'RP-C989','PA-18-150','2017-11-13 05:06:22','2017-11-13 05:06:22'),(37,'RP-R3618','Agtruck-188B','2017-11-13 05:06:22','2017-11-13 05:06:22'),(38,'RP-C9328','Dornier Do-328','2017-11-13 05:06:22','2017-11-13 05:06:22'),(39,'RP-C2252','YS-11A-500','2017-11-13 05:06:22','2017-11-13 05:06:22'),(40,'RP-C8864','Cessna 152','2017-11-13 05:06:22','2017-11-13 05:06:22'),(41,'RP-R1777','S2RG10','2017-11-13 05:06:22','2017-11-13 05:06:22'),(42,'RP-R3024','Grumman Agcat 164A','2017-11-13 05:06:22','2017-11-13 05:06:22'),(43,'PH-JDK','M212-200','2017-11-13 05:06:22','2017-11-13 05:06:22'),(44,'RP-C4421','Cessna 152 II','2017-11-13 05:06:22','2017-11-13 05:06:22'),(45,'RP-C1970','Beechcraft Baron BE-D55','2017-11-13 05:06:22','2017-11-13 05:06:22'),(46,'RP-C3801','Cessna 152','2017-11-13 05:06:22','2017-11-13 05:06:22'),(47,'RP-C5758','Cessna 150L','2017-11-13 05:06:22','2017-11-13 05:06:22'),(48,'RP-R1750','Ayres S2R Thrush Commander','2017-11-13 05:06:22','2017-11-13 05:06:22'),(49,'RP-C860','Cessna 152','2017-11-13 05:06:22','2017-11-13 05:06:22'),(50,'RP-C9980','BE-E55','2017-11-13 05:06:22','2017-11-13 05:06:22'),(51,'RP-C984','Beechcraft BE-H18s','2017-11-13 05:06:22','2017-11-13 05:06:22'),(52,'RP-C143','Cessna 421B','2017-11-13 05:06:22','2017-11-13 05:06:22'),(53,'RP-C3264','Airbus 320','2017-11-13 05:06:22','2017-11-13 05:06:22'),(54,'RP-R2998','Ayres Turbo Thrush S2R-T34','2017-11-13 05:06:22','2017-11-13 05:06:22'),(55,'RP-C8832','Cessna 152 II','2017-11-13 05:06:22','2017-11-13 05:06:22'),(56,'RP-C3545','Cessna 172S','2017-11-13 05:06:22','2017-11-13 05:06:22'),(57,'RP-C5319','A320-232','2017-11-13 05:06:22','2017-11-13 05:06:22'),(58,'RP-C3271','Airbus A320','2017-11-13 05:06:22','2017-11-13 05:06:22'),(59,'RP-C7527','ATR 72-212A','2017-11-13 05:06:22','2017-11-13 05:06:22'),(60,'N888VS','Gulfstream Aerospace Corporation GV-SP (G550)','2017-11-13 05:06:22','2017-11-13 05:06:22'),(61,'RP-C8078','Cessna 172L','2017-11-13 05:06:22','2017-11-13 05:06:22'),(62,'RP-C8993','Airbus 320','2017-11-13 05:06:22','2017-11-13 05:06:22'),(63,'HZ-AIX','Boeing 747- 468','2017-11-13 05:06:22','2017-11-13 05:06:22'),(64,'RP-C3195','Airbus A319-111','2017-11-13 05:06:22','2017-11-13 05:06:22'),(65,'RP-C3278','Airbus A320-214','2017-11-13 05:06:22','2017-11-13 05:06:22'),(66,'RP-C9002','Cessna 150M','2017-11-13 05:06:22','2017-11-13 05:06:22'),(67,'RP-C4429','Cessna 152','2017-11-13 05:06:22','2017-11-13 05:06:22'),(68,'RP-C2844','Cessna 152','2017-11-13 05:06:22','2017-11-13 05:06:22'),(69,'RP-C1123','PA 34-200','2017-11-13 05:06:22','2017-11-13 05:06:22'),(70,'RP-R5838','AG-CAT G164A','2017-11-13 05:06:22','2017-11-13 05:06:22'),(71,'RP-C5090','R44 II','2017-11-13 05:06:22','2017-11-13 05:06:22'),(72,'RP-C8862','Cessna 152','2017-11-13 05:06:22','2017-11-13 05:06:22'),(73,'RP-R8759','Turbo Thrush S2RT','2017-11-13 05:06:22','2017-11-13 05:06:22'),(74,'RP-C9914','Airbus A321-231','2017-11-13 05:06:22','2017-11-13 05:06:22'),(75,'RP-C3020','Bombardier DHC-8-314/583','2017-11-13 05:06:22','2017-11-13 05:06:22'),(76,'RP-C2791','Bonanza A36','2017-11-13 05:06:22','2017-11-13 05:06:22'),(77,'RP-R2546','Bell Helicopter 206B','2017-11-13 05:06:22','2017-11-13 05:06:22');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-11-13 05:06:21','2017-11-13 05:06:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,NULL,NULL,'Camotes Airstrip, Camotes Island, Cebu','2017-11-13 05:06:21','2017-11-13 05:06:21'),(2,NULL,NULL,'Imus, Cavite','2017-11-13 05:06:21','2017-11-13 05:06:21'),(3,NULL,NULL,'Vigan, Ilocos Sur','2017-11-13 05:06:21','2017-11-13 05:06:21'),(4,NULL,NULL,'Omni Airstrip, Clark, Pampanga','2017-11-13 05:06:21','2017-11-13 05:06:21'),(5,NULL,NULL,'Lingayen, Pangasinan','2017-11-13 05:06:21','2017-11-13 05:06:21'),(6,NULL,NULL,'San Jose Airport, Mindoro','2017-11-13 05:06:21','2017-11-13 05:06:21'),(7,NULL,NULL,'Barangay Agnaya, Plaridel, Plaridel, Bulacan','2017-11-13 05:06:21','2017-11-13 05:06:21'),(8,NULL,NULL,'Catarman Runway','2017-11-13 05:06:21','2017-11-13 05:06:21'),(9,NULL,NULL,'PASAR, Isabel, Leyte','2017-11-13 05:06:21','2017-11-13 05:06:21'),(10,NULL,NULL,'Kalibo Airport','2017-11-13 05:06:21','2017-11-13 05:06:21'),(11,NULL,NULL,'South Luna Kapalong Kinaman, Davao City','2017-11-13 05:06:21','2017-11-13 05:06:21'),(12,NULL,NULL,'NAIA, Pasay City M.M','2017-11-13 05:06:21','2017-11-13 05:06:21'),(13,NULL,NULL,'Barangay Talaba, San Fernando Taclobo, Sibuyan Island','2017-11-13 05:06:21','2017-11-13 05:06:21'),(14,NULL,NULL,'Manila Domestic Airport Runway 13','2017-11-13 05:06:21','2017-11-13 05:06:21'),(15,NULL,NULL,'Clark Field, Pampanga','2017-11-13 05:06:21','2017-11-13 05:06:21'),(16,NULL,NULL,'Tuguegarao Airport','2017-11-13 05:06:21','2017-11-13 05:06:21'),(17,NULL,NULL,'Manila Domestic Airport Taxiway 13H4','2017-11-13 05:06:21','2017-11-13 05:06:21'),(18,NULL,NULL,'Lubang Airport, Occidental Mindoro','2017-11-13 05:06:21','2017-11-13 05:06:21'),(19,NULL,NULL,'San Vicente, Pagdanan, Palawan','2017-11-13 05:06:21','2017-11-13 05:06:21'),(20,NULL,NULL,'Runway 20 Omni Airfield','2017-11-13 05:06:22','2017-11-13 05:06:22'),(21,NULL,NULL,'San Fernando Airport, La Union','2017-11-13 05:06:22','2017-11-13 05:06:22'),(22,NULL,NULL,'Plaridel Airport, Bulacan','2017-11-13 05:06:22','2017-11-13 05:06:22'),(23,NULL,NULL,'Roxas, Palawan','2017-11-13 05:06:22','2017-11-13 05:06:22'),(24,NULL,NULL,'Runway 21, Bacolod Silay Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(25,NULL,NULL,'Pamalican II Aerodrome','2017-11-13 05:06:22','2017-11-13 05:06:22'),(26,NULL,NULL,'Tuguegarao, Cagayan','2017-11-13 05:06:22','2017-11-13 05:06:22'),(27,NULL,NULL,'Subic Bay International Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(28,NULL,NULL,'Gen. Aviation Area, Domestic Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(29,NULL,NULL,'Ormoc Airport Leyte','2017-11-13 05:06:22','2017-11-13 05:06:22'),(30,NULL,NULL,'Vicinity of Covelandia Bacoor, Cavite','2017-11-13 05:06:22','2017-11-13 05:06:22'),(31,NULL,NULL,'Magcum Aerodrome, New Corella Davao del Norte','2017-11-13 05:06:22','2017-11-13 05:06:22'),(32,NULL,NULL,'Runway 13 Extension','2017-11-13 05:06:22','2017-11-13 05:06:22'),(33,NULL,NULL,'Caticlan Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(34,NULL,NULL,'Iba, Zambales','2017-11-13 05:06:22','2017-11-13 05:06:22'),(35,NULL,NULL,'OMNI Airfield, Clark Pampanga','2017-11-13 05:06:22','2017-11-13 05:06:22'),(36,NULL,NULL,'New Corella Airstrip, Davao Del Norte','2017-11-13 05:06:22','2017-11-13 05:06:22'),(37,NULL,NULL,'Manila Domestic Airport Runway 31','2017-11-13 05:06:22','2017-11-13 05:06:22'),(38,NULL,NULL,'Baguio Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(39,NULL,NULL,'Lunga-og Airstrip Brgy. Kimano, Sto Tomas, Davao Del Norte','2017-11-13 05:06:22','2017-11-13 05:06:22'),(40,NULL,NULL,'Sittio Kapatagan Laac Compostella Valley','2017-11-13 05:06:22','2017-11-13 05:06:22'),(41,NULL,NULL,'San Jose Mindoro','2017-11-13 05:06:22','2017-11-13 05:06:22'),(42,NULL,NULL,'Camotes Island, Brgy. Canoche','2017-11-13 05:06:22','2017-11-13 05:06:22'),(43,NULL,NULL,'Pagdanan Airstrip, Palawan','2017-11-13 05:06:22','2017-11-13 05:06:22'),(44,NULL,NULL,'Plaridel Airport, Plaridel Bulacan','2017-11-13 05:06:22','2017-11-13 05:06:22'),(45,NULL,NULL,'Mamburao National Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(46,NULL,NULL,'Tacor, Sto. Tomas, Davao Del Norte','2017-11-13 05:06:22','2017-11-13 05:06:22'),(47,NULL,NULL,'Dumaguete Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(48,NULL,NULL,'Runway 13, Manila Domestic Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(49,NULL,NULL,'Manila Domestic Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(50,NULL,NULL,'Busuanga Airport, Palawan','2017-11-13 05:06:22','2017-11-13 05:06:22'),(51,NULL,NULL,'Parking ramp, Puerto Princesa Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(52,NULL,NULL,'Osmena Airstrip, Comval, Davao Del Norte','2017-11-13 05:06:22','2017-11-13 05:06:22'),(53,NULL,NULL,'Riverbed, Brgy Sta. Fe, San Marcelino, Zambales','2017-11-13 05:06:22','2017-11-13 05:06:22'),(54,NULL,NULL,'Dornier Hangar, Clark Freeport Zone, Pampanga','2017-11-13 05:06:22','2017-11-13 05:06:22'),(55,NULL,NULL,'Kalibo International Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(56,NULL,NULL,'Ninoy Aquino International Airport (NAIA), Manila, Philippines','2017-11-13 05:06:22','2017-11-13 05:06:22'),(57,NULL,NULL,'Francisco Bangoy International Airport, Davao City','2017-11-13 05:06:22','2017-11-13 05:06:22'),(58,NULL,NULL,'South General Aviation Taxiway, General Aviation Area, Pasay City','2017-11-13 05:06:22','2017-11-13 05:06:22'),(59,NULL,NULL,'Subic Bay International Airport, Subic Bay, Olongapo City','2017-11-13 05:06:22','2017-11-13 05:06:22'),(60,NULL,NULL,'190 Nautical Miles to Manila','2017-11-13 05:06:22','2017-11-13 05:06:22'),(61,NULL,NULL,'Ninoy Aquino International Airport (RPLL) Manila Philippines','2017-11-13 05:06:22','2017-11-13 05:06:22'),(62,NULL,NULL,'Butuan National Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(63,NULL,NULL,'Davao International Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(64,NULL,NULL,'Runway 36, Ormoc Airport, Ormoc City','2017-11-13 05:06:22','2017-11-13 05:06:22'),(65,NULL,NULL,'Omni Clark, Clark Field Pampanga','2017-11-13 05:06:22','2017-11-13 05:06:22'),(66,NULL,NULL,'Subic International Airport, Subic Bay Freeport Zone, Zambales','2017-11-13 05:06:22','2017-11-13 05:06:22'),(67,NULL,NULL,'Brgy. Poblacion, Lambayong Sultan Kudarat, Maguindanao','2017-11-13 05:06:22','2017-11-13 05:06:22'),(68,NULL,NULL,'Shoreline of Sambiray, Caticlan, Aklan, Philippines','2017-11-13 05:06:22','2017-11-13 05:06:22'),(69,NULL,NULL,'Lingayen Airport, Lingayen, Pangasinan','2017-11-13 05:06:22','2017-11-13 05:06:22'),(70,NULL,NULL,'Hijo Plantation Airstrip, Brgy. Madaum, Tagum City, Davao del Norte','2017-11-13 05:06:22','2017-11-13 05:06:22'),(71,NULL,NULL,'Catarman Airport, Catarman, Northern Samar, Philippines','2017-11-13 05:06:22','2017-11-13 05:06:22'),(72,NULL,NULL,'Ilo-Ilo International Airport','2017-11-13 05:06:22','2017-11-13 05:06:22'),(73,NULL,NULL,'Lapanday Food Corp., Airstrip, Tampakan, South Cotabato','2017-11-13 05:06:22','2017-11-13 05:06:22');
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

-- Dump completed on 2017-11-13 13:07:05
