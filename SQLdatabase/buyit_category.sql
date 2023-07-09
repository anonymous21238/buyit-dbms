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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id_UNIQUE` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Vinegar - White Wine'),(2,'Garam Masala Powder'),(3,'Salami - Genova'),(4,'Veal - Leg'),(5,'Onions - Red'),(6,'Club Soda - Schweppes, 355 Ml'),(7,'Pasta - Agnolotti - Butternut'),(8,'Beef - Tenderloin Tails'),(9,'Icecream - Dibs'),(10,'Slt - Individual Portions'),(11,'Wine - White, French Cross'),(12,'Tea - Grapefruit Green Tea'),(13,'Straws - Cocktale'),(14,'Red Snapper - Fillet, Skin On'),(15,'Wine - Cotes Du Rhone Parallele'),(16,'Sauce - Fish 25 Ozf Bottle'),(17,'Oil - Olive Bertolli'),(18,'Soup - Campbells, Beef Barley'),(19,'Pastry - Apple Large'),(20,'Chips Potato Swt Chilli Sour'),(21,'Ecolab - Orange Frc, Cleaner'),(22,'Smoked Paprika'),(23,'Jam - Blackberry, 20 Ml Jar'),(24,'Quail - Whole, Boneless'),(25,'Emulsifier'),(26,'Tea - Lemon Scented'),(27,'Flour - Corn, Fine'),(28,'Wine - Soave Folonari'),(29,'Beef - Striploin'),(30,'Chocolate - Chips Compound'),(31,'Vinegar - White'),(32,'Longos - Chicken Wings'),(33,'Soup - Beef, Base Mix'),(34,'Sambuca - Opal Nera'),(35,'Lettuce - Lolla Rosa'),(36,'Tia Maria'),(37,'Turnip - White, Organic'),(38,'Mayonnaise - Individual Pkg'),(39,'Cheese - Brick With Pepper'),(40,'Cream - 18%'),(41,'Pasta - Cheese / Spinach Bauletti'),(42,'Stock - Veal, White'),(43,'Yogurt - Peach, 175 Gr'),(44,'Bar Bran Honey Nut'),(45,'Veal - Striploin'),(46,'Pork - Tenderloin, Fresh'),(47,'Artichoke - Fresh'),(48,'Sambuca - Ramazzotti'),(49,'Salt - Kosher'),(50,'Beef - Eye Of Round'),(51,'Wine - Pinot Noir Stoneleigh'),(52,'Wine - Soave Folonari'),(53,'Haggis'),(54,'Wine - Ej Gallo Sierra Valley'),(55,'Muffin Mix - Oatmeal'),(56,'Pork - Back, Short Cut, Boneless'),(57,'Broom - Corn'),(58,'Banana - Green'),(59,'Lid Coffeecup 12oz D9542b'),(60,'Jam - Raspberry'),(61,'Wine - Mondavi Coastal Private'),(62,'Duck - Fat'),(63,'Jello - Assorted'),(64,'Praline Paste'),(65,'Plate Pie Foil'),(66,'Wine - Vidal Icewine Magnotta'),(67,'Wine - Chenin Blanc K.w.v.'),(68,'Pepper - Gypsy Pepper'),(69,'Wine - Kwv Chenin Blanc South'),(70,'Ranchero - Primerba, Paste'),(71,'Juice - V8, Tomato'),(72,'Ice Cream Bar - Rolo Cone'),(73,'Tomatoes - Heirloom'),(74,'Pasta - Linguini, Dry'),(75,'Fib N9 - Prague Powder'),(76,'Nut - Pistachio, Shelled'),(77,'Nut - Hazelnut, Whole'),(78,'Arrowroot'),(79,'Duck - Legs'),(80,'Red Cod Fillets - 225g'),(81,'Scallops - U - 10'),(82,'Wine - Maipo Valle Cabernet'),(83,'Kiwi'),(84,'Irish Cream - Baileys'),(85,'Ecolab - Medallion'),(86,'Spice - Peppercorn Melange'),(87,'Coffee - Colombian, Portioned'),(88,'Energy Drink'),(89,'Ham - Cooked Bayonne Tinned'),(90,'Cheese - Gouda'),(91,'Bread - White, Sliced'),(92,'Beans - Kidney, Canned'),(93,'Chambord Royal'),(94,'Crackers - Trio'),(95,'Baking Soda'),(96,'Bread - French Baquette'),(97,'Lobster - Tail 6 Oz'),(98,'Cheese - St. Andre'),(99,'Olives - Black, Pitted'),(100,'Pastry - Cherry Danish - Mini');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 23:26:12
