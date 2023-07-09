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
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `name` varchar(45) NOT NULL,
  `delivery_status` varchar(45) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `phone_no_UNIQUE` (`phone_no`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES ('Kirby','true','4128016787',2),('Barbara','true','7974354210',5),('Giffy','false','7733788520',10),('Janeen','true','8131001924',11),('Lola','false','2381388484',12),('Beverlie','true','8698757473',13),('Bob','true','1495395591',15),('Happy','false','9066451775',21),('Crosby','false','7323552614',23),('Corabel','false','2202413403',26),('Creigh','true','4693329521',30),('Trumaine','true','3501145074',31),('Daffie','false','8451080682',32),('Sherye','false','1582417065',34),('Dennison','true','6919031227',36),('Emmerich','false','7721785607',37),('Francesco','true','8843296046',38),('Jonie','true','5988118164',40),('Caryn','false','3688192325',49),('Sean','true','7582695774',50),('Clarey','true','4941703004',51),('Carolina','false','3703021141',52),('Milli','true','6386483502',54),('Colet','true','1449898520',55),('Rhianna','false','9787781074',56),('Buckie','false','8358952979',57),('Doralynn','true','9369107469',58),('Gloria','true','9054303878',60),('Bartlet','true','2668163728',61),('Marnia','true','3754826273',64),('Bail','false','4234366717',67),('Fremont','false','4619501879',70),('Jyoti','false','8218047366',74),('Bondon','true','8471797014',75),('Rina','false','5798567325',77),('Katheryn','false','4687230214',80),('Rhoda','false','6413092406',85),('Heida','true','6177379239',86),('Trumaine','true','5976992694',88),('Wanids','true','2061677329',91),('Alanna','false','9245512553',94),('Suzy','true','1941457557',99);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
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
