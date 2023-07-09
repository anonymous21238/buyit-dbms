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
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendor_id` int NOT NULL,
  `vendor_name` varchar(45) NOT NULL,
  `vendor_pass` varchar(45) NOT NULL,
  `vendor_address` varchar(45) NOT NULL,
  `vendor_no` varchar(45) NOT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `vendor_id_UNIQUE` (`vendor_id`),
  UNIQUE KEY `vendor_no_UNIQUE` (`vendor_no`),
  KEY `admin_id_idx` (`admin_id`),
  CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Hal','VS0zNjnp','10th Floor','4015016100',1),(2,'Cindee','YE8JNuNR','4th Floor','9123422206',1),(3,'Nial','vWsInrGTDyML','Room 1384','4182801556',1),(4,'Edwin','lOxQ8v','Suite 44','8081086641',1),(5,'Carilyn','jFpSb07NZz','Room 1731','1311550223',1),(6,'Emilie','eEdP0lK0GnAp','Suite 45','4725655890',1),(7,'Kinnie','8qRaLolHD','Suite 11','6205525637',1),(8,'Brunhilde','EVhMfI','Apt 803','7671079008',1),(9,'Creighton','pD8X0N0CV9','15th Floor','2774835783',1),(10,'Catie','Mqcact4','19th Floor','1846752999',1),(11,'Leann','zvrvZL3ESoGm','16th Floor','5052766810',1),(12,'Lenette','mjirrN','Apt 614','7635035057',1),(13,'Inger','mLvHGnPW','PO Box 21285','8324004487',1),(14,'Eugen','yhVlav7s','Apt 668','9303555939',1),(15,'Roxy','y3f9gu6wNWtX','7th Floor','1048480339',1),(16,'Mollie','SZLvrFXW','PO Box 69912','6955010212',1),(17,'Nadean','2LYQNDIN','1st Floor','7697185497',1),(18,'Almire','K6qb6P','Apt 1392','7278225436',1),(19,'Elly','SK6NGoCcMY','Suite 74','9188214868',1),(20,'Donny','F5CYHh','Apt 1659','6503713596',1),(21,'Ree','nkcz1v','PO Box 19044','3616423670',2),(22,'Lauren','5cTV2YUN','PO Box 6291','4309335612',2),(23,'Gusty','WEddlgZYN','Room 1452','4672317801',2),(24,'Lora','o8bvGPhQ','Suite 75','9062584710',2),(25,'Leticia','TCT4XW','Room 82','5832691561',2),(26,'Cecilius','D8qCvs','Room 1194','5872608194',2),(27,'Phillipp','zhWjYC','Room 1647','6306631748',2),(28,'Welby','AaGHkK','Suite 50','2467357011',2),(29,'Margery','WP8azt','7th Floor','6546233716',2),(30,'Griffin','cbm60xuIsXs','PO Box 69865','2982733813',2),(31,'Kristine','WKlf5T','Room 752','9404364389',2),(32,'Isa','zzYvkFJ','Apt 169','5916827924',2),(33,'Bradley','VXXuiHRPmN2E','Room 515','8206023911',2),(34,'Ashlee','iKZmbzFiz8tW','14th Floor','1008127641',2),(35,'Helene','mpW7mTI','Apt 1563','3764852375',2),(36,'Reagen','PVTLdUau','Room 523','9368548106',2),(37,'Virgie','y5khrp1f','Apt 893','7505921514',2),(38,'Dori','A24fh0xie5','Apt 1763','7849149734',2),(39,'Faith','8PjxiQT','Suite 91','2294791950',2),(40,'Julia','vmhxYQH','Apt 128','8483071162',2),(41,'Waylin','TOLpUuyi','PO Box 39234','6494685002',3),(42,'Claire','LIksY9SWVX1','PO Box 75046','2167623351',3),(43,'Jessalin','w0VxoG','8th Floor','1189185950',3),(44,'Adah','oLREGULdEzmw','PO Box 87454','6808001385',3),(45,'Curr','ABDKcMf1','8th Floor','7006782429',3),(46,'Delly','wE4pqQAZv4V5','Suite 16','5396385469',3),(47,'Dana','kTb2IN','4th Floor','5705264660',3),(48,'Corrianne','jBOQraK7L9','PO Box 65007','7677915307',3),(49,'Delano','5VdNCd','Apt 1502','6343623863',3),(50,'Hale','qJaivVLT','Suite 30','5751857297',3),(51,'Carri','V0G7bO3NSa','15th Floor','4043291793',3),(52,'Jermayne','WbFh9oHU9','Apt 637','1092933390',3),(53,'Annecorinne','a4P0QyR2RH3','Room 47','3697680846',3),(54,'Hedvige','wLk6f5wlLAeu','Room 355','7673300917',3),(55,'Tessie','AF0jIyqu','17th Floor','9513175502',3),(56,'Umberto','OpsFC3gCB','PO Box 48693','1199997911',3),(57,'Donnajean','XGdx8LZT5L','PO Box 95897','9157215451',3),(58,'Merell','RMpC0flBCIo','Suite 25','6167905351',3),(59,'Gilemette','LUOXPg','Room 799','1267067138',3),(60,'Marcelle','aE5DhjmaAcYD','11th Floor','3446583046',3),(61,'Franky','584W4wBhr','PO Box 82478','4303322406',4),(62,'Nobie','J9r8ax','Room 1361','5775160693',4),(63,'Conny','MHvipRIg4','9th Floor','1861531579',4),(64,'Kamila','td2ahDds96','Room 1726','5623156296',4),(65,'Lion','MJAU0ukPgG','Apt 1825','7135423168',4),(66,'Suzette','D8aMRpqY9W','Apt 524','6978714291',4),(67,'Kessia','phbvmdcFUrk','Suite 51','5052859959',4),(68,'Raine','NnffiwvhkQ','Suite 6','1237083306',4),(69,'Rubie','jRO1hFD','Suite 65','4238916974',4),(70,'Luelle','HoCUDGzY','PO Box 49964','6811930108',4),(71,'Lilah','glbwLjsGScy','12th Floor','5093276243',4),(72,'Bamby','oZsiF2C','14th Floor','8509837836',4),(73,'Kimmy','ESTmTEado2','PO Box 66311','2634560528',4),(74,'Hy','TT9EZbpQl4','PO Box 27239','9434645839',4),(75,'Eziechiele','4LbohY','PO Box 56534','2283394480',4),(76,'Jeddy','RPbcVQ','PO Box 56900','8395623315',4),(77,'Milzie','QD5Rb8WgDv4p','Suite 49','2124953297',4),(78,'Tulley','ivamtvLBt','Apt 619','2138413322',4),(79,'Leshia','4AQ2qN8u8h5g','PO Box 76702','3366069971',4),(80,'Moreen','RDmIv4','Apt 1001','6411340803',4),(81,'Hayyim','ny7JHPPJ5','Apt 1984','5624700904',5),(82,'Marvin','GgIaYku','Apt 815','2552616130',5),(83,'Ethan','aAB90Z','20th Floor','7277638896',5),(84,'Ase','DNTjWh2V','PO Box 35422','6661144689',5),(85,'Britte','UqTexyBWe','PO Box 82480','5574150095',5),(86,'Gaby','UN149KMVeh5p','PO Box 87811','3066254193',5),(87,'Otis','z2hIcK50Vpa','PO Box 18920','8614948062',5),(88,'Wynn','NGgxjgZGX','Apt 598','4399715762',5),(89,'Quintin','fFeRRl','Suite 57','1672275951',5),(90,'Bevvy','Ecb5Y0j','Apt 1782','6053552038',5),(91,'Ninnette','G9DwkftFE','Apt 680','8064988270',5),(92,'Em','u6b6LCL','PO Box 52328','8238857092',5),(93,'Damon','BxXMZd2Y','Suite 72','8184784072',5),(94,'Kurt','1GJM1sIp022','PO Box 65407','1581429808',5),(95,'Cindelyn','6IxEgKr','16th Floor','8162276936',5),(96,'Yolande','NhDFYlAoiNAV','Apt 471','1129435807',5),(97,'Idelle','i9diU2J5','PO Box 37225','2512620130',5),(98,'Kaleb','QeaYvx7XbHB','Apt 337','1205625517',5),(99,'Stearne','NTPq6mxzi','2nd Floor','8911033013',5),(100,'Ambrosi','NYIG7XDU','PO Box 20930','2246213406',5),(102,'aheofff','1234','asdfsdwefr','8478333',4),(103,'aweheofff','12345','asdfsdwefr','8413',4);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 23:26:16
