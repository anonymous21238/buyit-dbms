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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(45) NOT NULL,
  `customer_email` varchar(45) NOT NULL,
  `customer_pass` varchar(45) NOT NULL,
  `customer_address` varchar(45) NOT NULL,
  `customer_no` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_no_UNIQUE` (`customer_no`),
  UNIQUE KEY `customer_email_UNIQUE` (`customer_email`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Corri','cfrude0@bbc.co.uk','psCnAR','Apt 1374','3255138183'),(2,'Hillard','hthornbarrow1@independent.co.uk','JJhdaZQcd3W','8th Floor','2618399576'),(3,'Jamill','jmoorrud2@thetimes.co.uk','4ZHl98','PO Box 28428','8583825749'),(4,'Sapphire','sjacmard3@vkontakte.ru','fVock76iS7U','10th Floor','1529854110'),(5,'Ansell','aphilbrook4@vinaora.com','JDKEp8FILff','Room 403','7712897205'),(6,'Jacinta','jolone5@ebay.com','cdnnTqGPRTF','10th Floor','7166584978'),(7,'Vicky','vloney6@boston.com','2rGmCDcVg','PO Box 71171','1431686288'),(8,'Sibylle','swhiskin7@ibm.com','hFDULNh','Suite 75','4348393649'),(9,'Kerrie','kulyatt8@simplemachines.org','guPzpb','PO Box 25072','5468226753'),(10,'Lyell','lbourthoumieux9@jugem.jp','9kljigKv4S','Room 1858','7388226867'),(11,'Rivy','rprujeana@nbcnews.com','hCJyRA7RdC','Apt 1837','2499844372'),(12,'Vitia','vcantorb@aol.com','ctGjE80','9th Floor','6196201096'),(13,'Kristofer','kitzakovitzc@hao123.com','X2Xrhk','Apt 833','4129945899'),(14,'Raeann','rcorradinod@whitehouse.gov','jBBQRikZ','PO Box 52079','1458453832'),(15,'Tori','tbrighteye@sogou.com','j8dBwNQ','Apt 1401','5905864833'),(16,'Rory','rjollifff@apple.com','Lvm2ux2','PO Box 53790','6922969040'),(17,'Ludvig','lfooksg@yahoo.com','wWI3qP7Nu','Room 15','6549002511'),(18,'Armin','amattheish@discuz.net','E394MuDrE1','PO Box 19461','4593719822'),(19,'Jock','jandreiai@yahoo.co.jp','tvgWFRNXDfa','Suite 52','3039430721'),(20,'Lindy','lsnadenj@alibaba.com','pWnLzaDY5','4th Floor','1262131955'),(21,'Erinna','ebaltzark@constantcontact.com','KgH7agSw6ox','Apt 12','8711980509'),(22,'Keen','kmallochl@toplist.cz','GL3bo0mlT4Q','PO Box 75791','5008871393'),(23,'Modesta','mhamlinm@google.it','x7DqNnup','Suite 90','1898423991'),(24,'Clyve','ctradewelln@tamu.edu','XXaiZjRMk','Apt 290','2093278495'),(25,'Isiahi','ikerwoodo@bbc.co.uk','WpXaARsY4MQL','Apt 1086','9874038699'),(26,'Phillip','pcohalanp@netvibes.com','p3L2SzEUf','Suite 70','2643765765'),(27,'Tracie','tmorcombeq@4shared.com','M6fEm2DSe','Suite 82','6936455109'),(28,'Alida','awetheyr@techcrunch.com','GWNqLC0M8p','Apt 1152','3918668300'),(29,'Schuyler','scawtes@shop-pro.jp','fCygn3','Room 75','7045263556'),(30,'Harry','hissacofft@studiopress.com','TDe4gKd','8th Floor','2742519347'),(31,'Birdie','bwindmillu@guardian.co.uk','FKBad57KJkq2','PO Box 67620','8734141425'),(32,'Kali','kriquetv@livejournal.com','sUwKR0u9b','15th Floor','8777360936'),(33,'Megen','mspirew@privacy.gov.au','aq2L14','PO Box 56591','4949077314'),(34,'Morty','mmacfadinx@imgur.com','wEp8FM5cnqjd','PO Box 7672','2704625103'),(35,'Colette','ckennifecky@hugedomains.com','WURc6T','PO Box 94360','9413155959'),(36,'Evered','esantelloz@reuters.com','oljAZ7FFw','16th Floor','5967614516'),(37,'Sela','ssmedley10@marriott.com','ORfIm2Tt8J','Room 704','2418583435'),(38,'Jen','jpleavin11@trellian.com','ufRr3wG','PO Box 78452','9761017301'),(39,'Hilde','hmctrustey12@free.fr','OzUJg7lCY','Suite 62','7107352593'),(40,'Philip','psymes13@army.mil','EwGSFV','13th Floor','9777405198'),(41,'Katina','kdowd14@nba.com','xDFW7YJ','Room 1930','8343958636'),(42,'Timmy','trenahan15@theatlantic.com','4H67vjMTIO','20th Floor','8336057906'),(43,'Roze','rmapledoore16@mapquest.com','651cym','Room 1147','2045328198'),(44,'Marcelo','mroseman17@networkadvertising.org','pJ9aXLgb','Suite 95','7219671310'),(45,'Modestia','mnewlands18@abc.net.au','KS2kHVn8IFqE','20th Floor','4296343647'),(46,'Ellene','ecollymore19@aol.com','9hYPcDQ','Room 142','1301585046'),(47,'Ailis','abrickstock1a@addtoany.com','7H629XjNs','Room 1350','2545445667'),(48,'Katleen','kbrudenell1b@biglobe.ne.jp','q7msndxI','Suite 69','7032300682'),(49,'Celka','capplewhite1c@tumblr.com','Ahi1D1m','1st Floor','7178629308'),(50,'Nedda','nwelchman1d@reference.com','PFXfPQhj','Apt 1484','3813590059'),(51,'Hobart','hbister1e@squidoo.com','Agsisp','Suite 34','9433053470'),(52,'Michele','mflorence1f@plala.or.jp','ekEVF1ssOlSt','Apt 401','2461284298'),(53,'Joli','jvaun1g@google.nl','0jn6qjHB','Suite 63','4011563011'),(54,'Cicely','clegassick1h@hatena.ne.jp','IIYgvJfX','Room 1659','4699635738'),(55,'Prinz','pneilands1i@addtoany.com','7J4NZeBI7xBT','Room 962','1686445583'),(56,'Gerhard','gghelerdini1j@howstuffworks.com','eC0sPb36NT','Room 4','4363967276'),(57,'Silvia','sneilands1k@blogtalkradio.com','pb6JIgsgkB','Suite 85','9601137423'),(58,'Silvie','sdewey1l@cafepress.com','Qxc1h1ipYeyF','20th Floor','4358908974'),(59,'Antonia','amcgenn1m@blogs.com','5g19X8GMMBnJ','Room 452','5317687482'),(60,'Sonnie','sgarfit1n@icq.com','Yk0bvK96hn7p','Room 1751','3998885494'),(61,'Maia','mfairweather1o@a8.net','8GVKklQFpAP','PO Box 98300','2869370429'),(62,'Rhett','rfurlow1p@ezinearticles.com','I7ePRgc18wqc','Suite 9','5086921306'),(63,'Marshall','mlusher1q@slashdot.org','23EHUSHoW','Apt 578','5339797729'),(64,'Nero','nlohden1r@dailymail.co.uk','otzQdfoG','7th Floor','8083760782'),(65,'Mei','mbrackpool1s@weather.com','4Hp0PGeN8zh','8th Floor','8648317980'),(66,'Yuma','yliven1t@sciencedaily.com','xiu2hV7hBG','Apt 423','3867559739'),(67,'Liliane','lslyde1u@typepad.com','hoSsWp','Room 681','1942577024'),(68,'Blair','bwoosnam1v@telegraph.co.uk','qvHSiqrU2R','Suite 60','3403295494'),(69,'Starlene','skinrade1w@e-recht24.de','g1qWyY','Room 855','6217726217'),(70,'Tammy','tgreber1x@weather.com','s4aIX5','Apt 687','7054014290'),(71,'Sutherland','sbettenay1y@webs.com','ujMe3Dv','Suite 90','3875834847'),(72,'Shelley','sgregory1z@globo.com','iLNxKNpGB','PO Box 83101','1921790873'),(73,'Inge','ipaulou20@surveymonkey.com','4B6YFM','Room 653','9706674905'),(74,'Artemus','aboldecke21@kickstarter.com','sdZxjeNa','Apt 196','4372140206'),(75,'Cati','cmathiassen22@squidoo.com','me3Ai6uj','Suite 20','1396028544'),(76,'Pen','pvayne23@globo.com','ARMGGCKQMy','Apt 18','5252396844'),(77,'Madge','mlugton24@elpais.com','Fvt7TWQK','5th Floor','7843483730'),(78,'Maribelle','mmeineck25@europa.eu','cBvDPpMOb','Suite 30','6973052820'),(79,'Tod','tgilliatt26@cbsnews.com','lQAjNoj','Suite 76','9901636659'),(80,'Dagny','dpeacey27@unesco.org','z5BT3h','PO Box 77997','7763025769'),(81,'Pate','pmcgaugan28@sfgate.com','VLDO5WP','PO Box 88383','4325881479'),(82,'Judy','jluby29@java.com','s9XAvPyjQp','Room 1019','8694402290'),(83,'Bernadina','bmoreinu2a@blinklist.com','ZYigFEGAson','Apt 261','3286947761'),(84,'Becky','bbosher2b@yellowpages.com','pZpcLb','PO Box 19087','3782705715'),(85,'Guinevere','gjacobowitz2c@geocities.jp','AXsaSx6dJBo','Room 1129','6672746390'),(86,'Jacky','jdayment2d@exblog.jp','oXVtCocIDnl6','PO Box 37734','8762321899'),(87,'Orelee','otewkesberrie2e@t-online.de','aXLQpAQ','Room 786','2138941780'),(88,'Nichol','nswansborough2f@dell.com','zKTxE8X','PO Box 81654','1163660149'),(89,'Sarette','shartwell2g@cpanel.net','j3hJonNIj','Apt 821','4358939993'),(90,'Zachariah','zledgerton2h@meetup.com','FYE4OJ','PO Box 95606','9493227835'),(91,'Lani','ljeffcock2i@uol.com.br','gqYGkTR','Room 650','8692640660'),(92,'Letitia','logilvy2j@squidoo.com','aKL9iw','Room 245','5865550941'),(93,'Melina','mscutcheon2k@cdbaby.com','QWuFyfxuDy','Apt 465','3333589762'),(94,'Abbe','amingauld2l@abc.net.au','6Sbs39Rz','20th Floor','9534165748'),(95,'Willow','wkennerley2m@nationalgeographic.com','JsPH84hjFRdj','Suite 81','9012543236'),(96,'Gare','gmcavinchey2n@un.org','MdtHbtOah','PO Box 97079','5176011076'),(97,'Patten','pspurdens2o@hc360.com','2FYBl6XzMYow','Suite 43','1454061450'),(98,'Daren','dely2p@themeforest.net','E3EYOqk','Room 1810','5926289786'),(99,'Pall','psketchley2q@tiny.cc','BRQN6qgYiW','Suite 23','2125053252'),(100,'Lew','lsavary2r@liveinternet.ru','qwerty123','fwefgee','7741146587'),(101,'aryan','aryan.com','123','af','23'),(102,'aryesh','hello.com','123','wfwef','234'),(103,'qwerty','dweffe@fef','123456','grwgw','9876543210');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 23:26:14
