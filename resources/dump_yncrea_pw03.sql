CREATE DATABASE  IF NOT EXISTS `yncrea_pw03` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yncrea_pw03`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: yncrea_pw03
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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `validated` bit(1) NOT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd70j1kui7t5i8o538d92ljqpe` (`student_id`),
  CONSTRAINT `FKd70j1kui7t5i8o538d92ljqpe` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (2,'business intelligence','',1),(9,'chemistry','\0',1),(15,'spanish','',1),(20,'philosophy','',1),(26,'mathematics','',1),(34,'mathematics','\0',33),(39,'philosophy','\0',38),(46,'web','',38),(52,'business intelligence','\0',51),(58,'statistics','',57),(63,'spanish','\0',57);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (68),(68),(68);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Germaine','Michu'),(33,'Ghislain','Michu'),(38,'Marcel','Dupont'),(51,'Jacky','Lefebvre'),(57,'Janine','Duval');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work` (
  `id` bigint(20) NOT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK378tpygggtw76t7scj08ragxl` (`course_id`),
  CONSTRAINT `FK378tpygggtw76t7scj08ragxl` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (3,5,'homework',2),(4,9,'practice',2),(5,7,'practice',2),(6,18,'lab',2),(7,15,'homework',2),(8,5,'lab',2),(10,13,'lab',9),(11,18,'homework',9),(12,10,'lab',9),(13,19,'homework',9),(14,13,'practice',9),(16,6,'lab',15),(17,9,'lab',15),(18,19,'exam',15),(19,5,'homework',15),(21,6,'practice',20),(22,8,'homework',20),(23,11,'exam',20),(24,9,'exam',20),(25,8,'homework',20),(27,11,'practice',26),(28,6,'lab',26),(29,15,'homework',26),(30,15,'homework',26),(31,16,'practice',26),(32,15,'homework',26),(35,12,'practice',34),(36,9,'lab',34),(37,7,'homework',34),(40,18,'practice',39),(41,10,'practice',39),(42,6,'practice',39),(43,5,'homework',39),(44,12,'lab',39),(45,6,'exam',39),(47,18,'exam',46),(48,11,'lab',46),(49,19,'practice',46),(50,5,'homework',46),(53,16,'lab',52),(54,7,'exam',52),(55,14,'lab',52),(56,14,'lab',52),(59,18,'exam',58),(60,12,'lab',58),(61,8,'homework',58),(62,11,'homework',58),(64,12,'homework',63),(65,15,'lab',63);
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'yncrea_pw03'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-06 10:15:45
