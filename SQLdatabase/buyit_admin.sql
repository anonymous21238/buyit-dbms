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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `admin_name` varchar(45) NOT NULL,
  `admin_pass` varchar(45) NOT NULL,
  `admin_email` varchar(45) NOT NULL,
  `admin_no` varchar(45) NOT NULL,
  `admin_address` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_id_UNIQUE` (`admin_id`),
  UNIQUE KEY `admin_email_UNIQUE` (`admin_email`),
  UNIQUE KEY `admin_no_UNIQUE` (`admin_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Koral','viY3BbDx0PP','khaldin0@mit.edu','7317455144','Apt 1924'),(2,'Davis','tCzFPa','dcarpe1@blogtalkradio.com','8829149144','14th Floor'),(3,'Trumann','y4e6GLt','tneilly2@dedecms.com','9191066128','PO Box 48778'),(4,'Renate','yk0EQS8dGlu1','rtottie3@marriott.com','5224117328','19th Floor'),(5,'Zsazsa','JpGqPDzG','zholliar4@desdev.cn','3308162479','3rd Floor'),(6,'Nerissa','JXiOc0Bp','nmacgeffen5@senate.gov','7841771424','Suite 79'),(7,'Estel','eTAtTDqxbWi','emoody6@google.com.au','7991705631','Apt 515'),(8,'Mei','tAjGI6iKUN','msailes7@reference.com','7718512120','Suite 49'),(9,'Ardyth','ZkCIVOroa','areis8@umich.edu','9147645240','Apt 51'),(10,'Stavro','WV1hRzGE','shusher9@noaa.gov','4228508945','Apt 1644'),(11,'Julita','OHkQAQr9f8T','jyurocjkina@lycos.com','1418594055','17th Floor'),(12,'Hartwell','9UJXPwzvxe','hroggerb@europa.eu','2624169116','PO Box 94422'),(13,'Esme','0EkGNOp','ehedleyc@ft.com','1048132865','Apt 841'),(14,'Darcie','bCBI7kytH9Cj','dresdaled@paypal.com','7482578035','Suite 82'),(15,'Hope','IOpEes','hliste@boston.com','3054271986','Suite 12'),(16,'Aurore','X3Otb8US','ainkinf@soundcloud.com','2543795630','Room 576'),(17,'Conny','5AkF6j8yeRgN','ccobleighg@canalblog.com','6225778778','Apt 1821'),(18,'Leland','YO0VNd58Xz','lsircombh@msn.com','7781575613','1st Floor'),(19,'Mac','dIW2Br4KtJ6T','mcostalli@skype.com','4984130377','Room 1365'),(20,'Stephie','tEqJDgfdtbA','szarbj@tinyurl.com','8681492066','Room 686'),(21,'Justus','If9fAFzqMIzi','jbellink@ow.ly','5892530337','Apt 1653'),(22,'Lucien','xGFd30','llukel@china.com.cn','7784989319','PO Box 96354'),(23,'Alard','TtLSk10RA2E','agoacherm@youku.com','4835430874','PO Box 44284'),(24,'Danielle','pSCU6Koo','dbaystonn@pcworld.com','2697692358','Room 1309'),(25,'Doralia','ZrRvEiu3J','dbathersbyo@cornell.edu','2866451811','16th Floor'),(26,'Larry','GormWh4TR','lgotterp@cdbaby.com','1297607588','Apt 1593'),(27,'Denver','HB1AMjBF6lF','dkardosstoweq@yahoo.com','4858790707','Suite 4'),(28,'Lyle','phs4zumXFdC1','lmullineuxr@mail.ru','3594306822','PO Box 15595'),(29,'Feliks','ALLld4PbmE','fwoodingss@smugmug.com','2425689329','Room 1107'),(30,'Borg','GDW8uWIzBvy','bblindet@quantcast.com','6592946824','Room 1135'),(31,'Maryl','05je9s1','mjozefowiczu@telegraph.co.uk','3279384361','Apt 600'),(32,'Doralyn','jH16y7b','dsnellev@goodreads.com','7083346061','17th Floor'),(33,'Lynette','ja2r4QHuTX','lprandiniw@amazonaws.com','2052330642','Room 1162'),(34,'Ezequiel','227dzEoQru39','egodballx@shinystat.com','8462069780','14th Floor'),(35,'Greggory','aurMBH','gdiapery@google.it','3306232739','Suite 67'),(36,'Fredia','EmoH9t','fneyz@weebly.com','9889259263','Room 149'),(37,'Adolphus','lG3ZA2Dmg','ajacobowicz10@nationalgeographic.com','9112071782','18th Floor'),(38,'Hedi','5S2uFM5VAgA','hrubra11@yolasite.com','7529710507','Suite 14'),(39,'Sari','bxgL3uRU','sspinozzi12@com.com','5864834857','Room 230'),(40,'Blisse','NMydnG7MogKg','blayton13@stanford.edu','9915785421','PO Box 79749'),(41,'Delaney','KUWf45','dvanezis14@java.com','5839007638','Room 1276'),(42,'Ignace','PqTzj6','idoudny15@samsung.com','7436298474','PO Box 2076'),(43,'Halsey','hfnEsLS3','halenichev16@edublogs.org','3155080431','Apt 1609'),(44,'Bertine','RbZMg7P','bplaskitt17@yale.edu','4806206943','PO Box 57987'),(45,'Benjamin','EH3TBa','bmoulden18@squidoo.com','1434804171','Room 1102'),(46,'Borg','nXBu36v5','bkingsnode19@google.com.br','7926377007','17th Floor'),(47,'Geoffry','tv8zhagLfEB2','gklousner1a@paginegialle.it','9833237011','Suite 23'),(48,'Britni','L8SYnW','bhowman1b@npr.org','4536384992','20th Floor'),(49,'Clyde','ARUBXuO5D2','ccheley1c@flickr.com','3171716477','PO Box 49616'),(50,'Gwynne','Xtl6qxQQ','gmcclure1d@shop-pro.jp','5566551101','Suite 65'),(51,'Davon','XVPAI4yd9q','dbrocking1e@boston.com','7842366276','8th Floor'),(52,'Haven','FMXaAkWN','hgrenville1f@ask.com','2653556093','Room 1299'),(53,'Brear','fEqq2nxX','blongland1g@bloglines.com','1803142062','PO Box 49969'),(54,'Celestyn','ZCNIgG0rmE8','cbuddle1h@redcross.org','4999122679','4th Floor'),(55,'Ester','EwFTNr','ehaste1i@netlog.com','5192668622','Room 1619'),(56,'Danya','2rXK9kX2LH','dsearle1j@forbes.com','3108014174','Room 362'),(57,'Selia','Y2qvuIQ','slacky1k@blogtalkradio.com','3506220223','Room 203'),(58,'Lynde','Ek0qGchr6','lhamshar1l@nymag.com','7236909262','PO Box 94935'),(59,'Putnem','K7p0bAhlcCw','poxbrough1m@usa.gov','9773774077','PO Box 85119'),(60,'Charis','0UBiZAN0Uc','cpimblotte1n@umn.edu','1156127862','Apt 1631'),(61,'Suzie','ImJd06VLZ','sbodimeade1o@chronoengine.com','7047921498','Apt 1590'),(62,'Cull','BujApVqS3Yz','chover1p@wufoo.com','4305650720','Room 1688'),(63,'Wyndham','4KQjrO2r','wmannix1q@europa.eu','6444960979','PO Box 99156'),(64,'Agna','Dy7zTFFiz','aphillcox1r@163.com','7049658344','PO Box 90339'),(65,'Adina','8cn6YJAYQ1P','astonebridge1s@hhs.gov','2859464653','Apt 1029'),(66,'Isis','oVCRid','iandreotti1t@prlog.org','2564341707','PO Box 72395'),(67,'Stephine','WTOxTcW9','sandrewartha1u@admin.ch','3569769001','Apt 1494'),(68,'Diarmid','LamO6NnT5Nb','dthumim1v@deliciousdays.com','8459702394','12th Floor'),(69,'Clarence','CdeSa9pkIKAQ','cpledge1w@ow.ly','9574548317','Apt 1437'),(70,'Ryan','56zbC4','rharly1x@kickstarter.com','1129880991','PO Box 92931'),(71,'Patrizio','oYamq2Xo','pfeathersby1y@dailymail.co.uk','9453088997','Suite 34'),(72,'Terence','H7Tt9HZCgKI3','thaggerstone1z@instagram.com','7987904354','9th Floor'),(73,'Sophi','M54Vm2','sduplan20@mit.edu','7654939795','19th Floor'),(74,'Verla','ksMsoCaV4yV','vcuddihy21@facebook.com','6585153932','Suite 2'),(75,'Penn','BfxjRmmRPf','pmann22@mysql.com','7406399158','Suite 97'),(76,'Ardene','Tk3oqA','abraybrook23@phpbb.com','3929092609','Suite 4'),(77,'Ofelia','ISdlHXb','opraton24@bloglines.com','7077824093','Apt 1154'),(78,'Kristan','sLdwAND1W','kdennistoun25@deliciousdays.com','4026431634','PO Box 58061'),(79,'Collette','Isji2T','clarose26@hibu.com','2938933345','PO Box 71117'),(80,'Dolli','Kvq7Q7I','docorhane27@businesswire.com','2354513052','Suite 83'),(81,'Harrie','xMoQkwGxvPLb','hbeardow28@shutterfly.com','9684985079','3rd Floor'),(82,'Nicolina','HZlZCUI','nmussington29@360.cn','4919304924','Apt 935'),(83,'Jaclin','Sm4NoWFJ','jkidgell2a@nbcnews.com','4381404218','PO Box 79982'),(84,'Huberto','iEPMPVJvQ7i9','hbottini2b@mit.edu','6864038271','Suite 64'),(85,'Sondra','9PaS4PUsqAY','sutton2c@disqus.com','2835818772','7th Floor'),(86,'Doyle','eN1Kzr','dayling2d@constantcontact.com','6831086183','Suite 38'),(87,'Kariotta','4xBXBiddam','kbuckmaster2e@diigo.com','4629409168','PO Box 4051'),(88,'Phylys','ak7TmGTGw','pkepp2f@wp.com','8117761961','Room 849'),(89,'Jenn','qlo94Ys','jfallawe2g@twitpic.com','9889296836','PO Box 10095'),(90,'Estella','9TlA29mgBg','eperot2h@weebly.com','9806835119','Suite 90'),(91,'Hubie','1xtVjVDof','hmathys2i@redcross.org','9229067800','Apt 1065'),(92,'Wini','hcCcDLJ9aOph','wbiss2j@wunderground.com','6748012482','Apt 233'),(93,'Dianna','Q84KGuq15','dhannaby2k@unblog.fr','5789416727','Suite 83'),(94,'Franni','lWG3ZHIVh','fbrookwood2l@networkadvertising.org','5019965757','PO Box 72041'),(95,'Isobel','OwwvJooIwn','iyude2m@vinaora.com','3269381773','Apt 648'),(96,'Halsey','ZqqnNKvX','hkoppen2n@wix.com','7343659956','15th Floor'),(97,'Junie','Ko5rw39oZTd','jheimes2o@rakuten.co.jp','1481918300','Apt 1572'),(98,'Phebe','F1w4obl','prosas2p@reuters.com','7005312308','Room 1784'),(99,'Barbaraanne','zEZDcLNDg','bsomes2q@freewebs.com','7429133281','Suite 53'),(100,'Tatiana','sk7yrBXS','tscrafton2r@creativecommons.org','2728447200','Suite 66');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
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
