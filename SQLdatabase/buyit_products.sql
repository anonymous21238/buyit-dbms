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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(1000) NOT NULL,
  `product_price` float NOT NULL,
  `product_desc` varchar(1000) NOT NULL,
  `product_qty` int NOT NULL,
  `product_rating` int DEFAULT NULL,
  `product_reviews` varchar(1000) DEFAULT NULL,
  `vendor_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`),
  KEY `vendor_id_idx` (`vendor_id`),
  KEY `category_id_idx` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Chickensplit Half',7430.8,'TIK',9,5,'IVR',95,39),(2,'Saskatoon Berries - Frozen',7541.6,'MYI',3,4,'TDB',37,73),(3,'Beans - Kidney, Red Dry',209.4,'MDB',66,5,'YGR',8,86),(4,'Quail - Whole, Boneless',7839.8,'KHT',4,5,'FSP',46,13),(5,'Beer - Muskoka Cream Ale',8151.4,'KTN',69,1,'TDN',76,27),(6,'Beef - Roasted, Cooked',2127,'ABZ',78,1,'CGY',50,54),(7,'Aromat Spice / Seasoning',5173.9,'HUK',31,3,'VRA',51,79),(8,'Lamb Leg - Bone - In Nz',3036.6,'JCT',79,2,'VIA',69,91),(9,'Silicone Parch. 16.3x24.3',1279.6,'NDK',77,5,'LKC',17,45),(10,'Coffee - Dark Roast',6194.3,'BRT',54,1,'TIL',64,73),(11,'Juice - Orange',4686.2,'UTC',50,1,'KTN',83,10),(12,'Shrimp - 16 - 20 Cooked, Peeled',5400.3,'ZQL',47,2,'SHD',25,43),(13,'Bread - Crusty Italian Poly',1900.6,'OSP',2,3,'APW',72,51),(14,'Garam Masala Powder',5297.9,'ILO',79,1,'SBN',23,90),(15,'Melon - Watermelon Yellow',1035.5,'UUK',39,1,'SAG',81,93),(16,'Lid - 3oz Med Rec',2832.2,'SLA',59,4,'PAS',80,20),(17,'Cookie Double Choco',4269.8,'HUH',65,4,'KST',73,60),(18,'Steam Pan - Half Size Deep',1095.4,'OWB',43,1,'WJA',92,55),(19,'Chocolate - Pistoles, Lactee, Milk',7366.5,'WBW',67,3,'KNT',70,37),(20,'Wine - Ej Gallo Sierra Valley',8766.3,'PYO',45,5,'XSC',94,69),(21,'Lamb Leg - Bone - In Nz',2574.8,'CQP',55,2,'KCZ',74,10),(22,'Bag Clear 10 Lb',1577.5,'SCQ',81,2,'SIL',88,94),(23,'Napkin - Beverage 1 Ply',5034.1,'SHN',8,3,'WRI',36,53),(24,'Vodka - Smirnoff',7582.9,'CLJ',32,3,'SLP',13,74),(25,'Water - Tonic',3618.2,'MBE',44,1,'NGS',91,69),(26,'Ice Cream - Fudge Bars',8535.8,'AHU',82,4,'CDY',6,75),(27,'Ham - Procutinni',6017.1,'GBU',88,3,'XKY',71,29),(28,'Seedlings - Buckwheat, Organic',7194.4,'UTT',30,3,'MOA',10,12),(29,'Wine - Lou Black Shiraz',3920.7,'OWD',22,3,'BCB',81,14),(30,'Wine - Cousino Macul Antiguas',4879.4,'VPS',92,1,'MFX',19,9),(31,'Cocoa Powder - Dutched',7342.4,'FWA',95,2,'GDH',44,24),(32,'Icecream Cone - Areo Chocolate',5040.6,'BTM',6,5,'QDC',47,72),(33,'Apple - Royal Gala',5846.8,'PWN',6,4,'EDK',67,21),(34,'Sage Derby',221.8,'SHD',45,2,'RFP',70,22),(35,'Jameson Irish Whiskey',2877.9,'DRW',62,4,'UKS',57,58),(36,'Onions - Red Pearl',4114,'YMA',98,2,'JFK',100,61),(37,'Nori Sea Weed',5872.1,'KPM',4,5,'LEE',52,30),(38,'Calaloo',5235.5,'OAN',13,5,'LDI',8,76),(39,'Garbage Bags - Black',3562.6,'GSA',55,2,'LSM',43,64),(40,'Cake - Mini Potato Pancake',9339.9,'YKX',89,2,'BXK',68,21),(41,'Soup Knorr Chili With Beans',5354.3,'CVU',90,5,'INV',71,81),(42,'Vinegar - Champagne',4823.2,'UTI',85,4,'BUN',11,86),(43,'Swordfish Loin Portions',2421.1,'MRB',42,1,'GUD',30,68),(44,'Juice - Clamato, 341 Ml',9654.5,'CYO',3,1,'PIH',94,92),(45,'Cattail Hearts',2922,'BTE',50,5,'FDU',54,100),(46,'Tea - Apple Green Tea',2098.4,'WTR',16,3,'MFU',29,73),(47,'Wine - Barossa Valley Estate',2878.3,'KYI',81,3,'DGR',88,5),(48,'Broom - Push',3700.2,'EGL',42,5,'TTO',96,75),(49,'Rum - White, Gg White',356.5,'ODL',30,3,'SHK',3,21),(50,'Fiddlehead - Frozen',217.3,'EDA',65,4,'SPA',91,39),(51,'Nut - Chestnuts, Whole',4934.3,'CWB',22,1,'YXU',99,55),(52,'Tea - Earl Grey',8024.6,'NZY',10,2,'KLU',15,42),(53,'Magnotta - Bel Paese White',7349.7,'ZBF',53,4,'QLP',80,39),(54,'Beef - Tongue, Cooked',8373.4,'DDM',56,1,'UNU',84,50),(55,'Flower - Dish Garden',9783.4,'DUN',72,5,'BFK',3,24),(56,'Lettuce Romaine Chopped',3118,'JNB',30,5,'UAE',86,48),(57,'Skirt - 24 Foot',2501.5,'HNY',38,4,'YLY',35,25),(58,'Flour Pastry Super Fine',3506.8,'TTT',100,1,'MFK',17,97),(59,'Doilies - 8, Paper',6094.2,'TXL',42,2,'OAN',47,31),(60,'Blueberries',8191.2,'XBO',36,5,'MOM',28,24),(61,'Beef - Bresaola',373.6,'KMH',57,4,'BHF',4,19),(62,'Ham - Cooked Italian',5250.2,'ADL',40,5,'IFF',58,1),(63,'Couscous',2408.1,'JPA',4,1,'SPI',95,16),(64,'Pepper - Black, Ground',3171.9,'NTA',47,2,'SLR',87,59),(65,'Quail - Jumbo Boneless',3263.8,'SVU',71,5,'SWB',97,42),(66,'Island Oasis - Raspberry',5867.4,'NBB',27,2,'SWV',38,52),(67,'Ecolab - Ster Bac',7593.2,'PLL',80,1,'AAC',97,87),(68,'Creamers - 10%',2739.8,'MQZ',74,1,'LDW',74,54),(69,'Bread - Hot Dog Buns',4261,'AES',17,5,'GOT',1,82),(70,'Salmon - Sockeye Raw',4472.8,'PYJ',34,3,'DEL',30,8),(71,'Lemonade - Pineapple Passion',6989.4,'0',86,4,'SAF',88,41),(72,'Coffee - Almond Amaretto',2560.3,'VBG',30,2,'FLV',44,8),(73,'Honey - Liquid',4603.2,'GSH',51,3,'HYD',32,27),(74,'Wine - Savigny - Les - Beaune',1020.8,'SSB',95,5,'OIM',57,99),(75,'Artichoke - Bottom, Canned',9866.7,'PZK',14,3,'AAD',11,14),(76,'Appetizer - Sausage Rolls',5683.4,'PYJ',73,1,'SKU',74,16),(77,'Pasta - Fusili Tri - Coloured',7047.4,'RBU',36,4,'TCC',62,33),(78,'Water - Tonic',8465.7,'CMF',25,5,'AYC',70,16),(79,'Tea - Camomele',6003.5,'TBQ',67,1,'LDX',20,89),(80,'Beef - Ox Tongue',8332.9,'AUO',78,3,'AKK',50,87),(81,'Sobe - Orange Carrot',2046.2,'RIS',56,1,'ARZ',7,4),(82,'Wine - Gato Negro Cabernet',1393,'MKN',13,3,'OHI',22,23),(83,'Bar Special K',8181.9,'KCE',34,2,'TDP',7,61),(84,'Tea - Grapefruit Green Tea',3050.6,'MZA',18,2,'TUI',10,50),(85,'Chicken - Tenderloin',7032.3,'KYZ',46,3,'ADT',85,27),(86,'Cookie - Dough Variety',7704.4,'MBO',60,1,'TUF',10,29),(87,'Sobe - Orange Carrot',3261.3,'NHV',86,3,'JJN',41,55),(88,'Beer - True North Lager',4759.8,'MFF',32,3,'QJD',46,49),(89,'Kellogs Raisan Bran Bars',3470.2,'GMU',37,5,'ASC',99,67),(90,'Sauce - Alfredo',5829,'GXF',67,2,'LDJ',13,8),(91,'Soup - Campbells Mac N Cheese',7992.1,'MCP',37,1,'BSN',7,16),(92,'Pasta - Penne, Rigate, Dry',8258.3,'BNV',20,2,'RJH',23,62),(93,'Garlic',9390.4,'YMM',28,5,'JUH',76,14),(94,'Tea - Earl Grey',4385.8,'ARO',76,5,'LEX',1,93),(95,'Napkin - Cocktail,beige 2 - Ply',5997,'HGH',62,3,'RAB',46,34),(96,'Calypso - Black Cherry Lemonade',9431.9,'WRN',89,5,'QND',58,35),(97,'Scallop - St. Jaques',4158.9,'OXO',59,2,'DMN',10,35),(98,'Mackerel Whole Fresh',1747.8,'IRM',91,5,'OLQ',73,30),(99,'Container - Hngd Cll Blk 7x7x3',4434,'HYA',89,1,'LCV',68,3),(100,'Wine - Fat Bastard Merlot',3497.4,'TLD',81,4,'YGB',34,30),(101,'apple',400,'good',44,0,'good',99,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 23:26:11
