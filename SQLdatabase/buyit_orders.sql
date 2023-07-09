-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: buyit
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `payment_status` varchar(45) NOT NULL,
  `net_amount` float NOT NULL DEFAULT '0',
  `discount` int DEFAULT '0',
  `customer_id` int NOT NULL,
  `delivery_status` varchar(45) NOT NULL,
  `cart_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'true',1294,11,1,'false',1),(2,'false',6976,47,2,'false',2),(3,'true',7241,107,3,'true',3),(4,'false',9428,78,4,'true',4),(5,'true',3602,62,5,'true',5),(6,'true',6395,68,6,'true',6),(7,'true',123,48,7,'true',7),(8,'true',4834,60,8,'true',8),(9,'true',7072,97,9,'false',9),(10,'false',657,44,10,'false',10),(11,'false',1053,62,11,'false',11),(12,'false',336,51,12,'false',12),(13,'false',2066,57,13,'false',13),(14,'false',5900,18,14,'true',14),(15,'false',4469,35,15,'true',15),(16,'false',6617,85,16,'false',16),(17,'false',2233,79,17,'false',17),(18,'false',6919,67,18,'false',18),(19,'true',3634,80,19,'true',19),(20,'true',366,67,20,'true',20),(21,'false',8997,121,21,'false',21),(22,'false',9040,83,22,'false',22),(23,'true',4544,28,23,'true',23),(24,'true',8330,112,24,'true',24),(25,'false',2523,10,25,'false',25),(26,'false',8677,108,26,'true',26),(27,'false',8898,131,27,'true',27),(28,'false',8021,127,28,'true',28),(29,'false',8258,122,29,'true',29),(30,'false',5068,83,30,'true',30),(31,'true',9491,131,31,'false',31),(32,'true',486,58,32,'true',32),(33,'false',2007,7,33,'true',33),(34,'false',8006,113,34,'false',34),(35,'true',1362,77,35,'false',35),(36,'true',2882,17,36,'false',36),(37,'false',8989,84,37,'false',37),(38,'true',6790,34,38,'false',38),(39,'true',871,47,39,'false',39),(40,'true',5532,47,40,'true',40),(41,'true',278,23,41,'true',41),(42,'false',7776,125,42,'true',42),(43,'false',8441,105,43,'true',43),(44,'false',6894,91,44,'true',44),(45,'true',9367,136,45,'true',45),(46,'false',5471,202,46,'true',46),(47,'false',2621,100,47,'false',47),(48,'true',3345,59,48,'true',48),(49,'false',3665,78,49,'true',49),(50,'true',5652,83,50,'true',50),(51,'true',1063,219,51,'true',51),(52,'true',9533,90,52,'false',52),(53,'false',2978,64,53,'true',53),(54,'true',7925,139,54,'false',54),(55,'false',5043,62,55,'true',55),(56,'false',4892,22,56,'true',56),(57,'true',5064,21,57,'true',57),(58,'true',1478,24,58,'false',58),(59,'true',8181,54,59,'false',59),(60,'false',1305,23,60,'false',60),(61,'false',498,54,61,'true',61),(62,'false',4221,49,62,'false',62),(63,'true',6086,17,63,'true',63),(64,'false',4820,84,64,'true',64),(65,'false',3139,17,65,'false',65),(66,'false',6185,50,66,'true',66),(67,'true',9624,141,67,'true',67),(68,'false',1284,97,68,'true',68),(69,'false',4865,20,69,'true',69),(70,'false',7631,98,70,'true',70),(71,'false',8489,78,71,'false',71),(72,'false',7886,55,72,'false',72),(73,'true',1354,95,73,'true',73),(74,'false',3499,34,74,'true',74),(75,'false',4182,55,75,'true',75),(76,'false',4151,11,76,'true',76),(77,'false',537,25,77,'true',77),(78,'true',9407,137,78,'true',78),(79,'false',2113,81,79,'true',79),(80,'false',8800,88,80,'false',80),(81,'false',6773,200,81,'false',81),(82,'false',2837,298,82,'false',82),(83,'true',526,73,83,'true',83),(84,'true',8077,51,84,'false',84),(85,'false',5091,83,85,'true',85),(86,'true',216,58,86,'true',86),(87,'true',8682,55,87,'true',87),(88,'false',2915,29,88,'true',88),(89,'false',830,69,89,'false',89),(90,'false',4143,25,90,'false',90),(91,'false',5764,69,91,'true',91),(92,'true',8144,99,92,'true',92),(93,'true',234,11,93,'false',93),(94,'false',597,12,94,'false',94),(95,'false',1640,57,95,'false',95),(96,'false',5750,73,96,'true',96),(97,'false',1219,84,97,'true',97),(98,'false',9509,659,98,'true',98),(99,'true',4600,56,99,'true',99),(100,'1',800,0,100,'1',101),(101,'1',200,0,100,'1',101),(102,'1',5034.1,0,100,'1',102);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 23:26:15
