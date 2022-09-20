-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tiendas
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `DNI` int unsigned NOT NULL,
  `tipo_documento` varchar(8) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1002753607,'P.E.P'),(1007597088,'T.I.'),(1009184462,'C.E.'),(1013344980,'C.C.'),(1013528520,'P.E.P'),(1047517938,'T.I.'),(1057507014,'C.C.'),(1059015863,'C.E.'),(1068459341,'C.C.'),(1084974245,'C.E.'),(1101386284,'C.E.'),(1107956308,'C.E.'),(1117558722,'C.E.'),(1117818215,'C.E.'),(1122927783,'C.C.'),(1158166622,'C.C.'),(1194642637,'C.C.'),(1199151677,'C.E.'),(1203411148,'C.C.'),(1217305181,'C.C.'),(1240958211,'P.E.P'),(1257254265,'P.E.P'),(1262857190,'P.E.P'),(1268589813,'T.I.'),(1280323652,'C.C.'),(1287145266,'P.E.P'),(1320656484,'T.I.'),(1322823639,'T.I.'),(1325164350,'T.I.'),(1334182615,'C.E.'),(1339920115,'T.I.'),(1344695627,'T.I.'),(1353438031,'C.E.'),(1367077817,'P.E.P'),(1371909125,'T.I.'),(1400528938,'C.C.'),(1413928054,'P.E.P'),(1419860298,'T.I.'),(1430032427,'C.C.'),(1432220104,'C.C.'),(1433152170,'P.E.P'),(1437181192,'C.E.'),(1439693533,'C.E.'),(1439738775,'C.C.'),(1465210106,'T.I.'),(1466340257,'P.E.P'),(1473279459,'C.E.'),(1487120485,'P.E.P'),(1500997057,'C.C.'),(1507048061,'T.I.'),(1507327607,'C.E.'),(1527425474,'C.E.'),(1562978986,'P.E.P'),(1565249931,'T.I.'),(1576354258,'T.I.'),(1600873136,'C.E.'),(1621700894,'C.C.'),(1638415452,'T.I.'),(1644858172,'P.E.P'),(1657075025,'P.E.P'),(1658213301,'T.I.'),(1659636911,'T.I.'),(1662258728,'C.C.'),(1665617166,'C.C.'),(1683234250,'T.I.'),(1684387027,'T.I.'),(1690803188,'P.E.P'),(1700715583,'P.E.P'),(1703617928,'C.C.'),(1722431709,'C.C.'),(1746193851,'T.I.'),(1750632162,'P.E.P'),(1757003472,'P.E.P'),(1763286578,'T.I.'),(1774951095,'P.E.P'),(1787285217,'T.I.'),(1793915426,'P.E.P'),(1795094868,'T.I.'),(1796042023,'P.E.P'),(1800672637,'P.E.P'),(1801002692,'C.E.'),(1811380105,'T.I.'),(1834181576,'T.I.'),(1841813788,'P.E.P'),(1842724157,'T.I.'),(1847734905,'C.E.'),(1866504530,'T.I.'),(1886920173,'T.I.'),(1906283751,'T.I.'),(1920993766,'C.C.'),(1923048046,'P.E.P'),(1923365223,'C.E.'),(1927334679,'C.E.'),(1940328476,'C.C.'),(1958752379,'T.I.'),(1971111799,'C.C.'),(1979916468,'P.E.P'),(1985960832,'T.I.'),(1993164903,'P.E.P'),(1995454285,'C.C.');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallesproducto`
--

DROP TABLE IF EXISTS `detallesproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallesproducto` (
  `productoReferencia` int unsigned NOT NULL,
  `referenciaRecibo` int unsigned NOT NULL,
  `cantidad` int unsigned NOT NULL,
  KEY `DetallesProducto_FKIndex1` (`referenciaRecibo`),
  KEY `DetallesProducto_FKIndex2` (`productoReferencia`),
  CONSTRAINT `detallesproducto_ibfk_1` FOREIGN KEY (`referenciaRecibo`) REFERENCES `recibos` (`idRecibo`),
  CONSTRAINT `detallesproducto_ibfk_2` FOREIGN KEY (`productoReferencia`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesproducto`
--

LOCK TABLES `detallesproducto` WRITE;
/*!40000 ALTER TABLE `detallesproducto` DISABLE KEYS */;
INSERT INTO `detallesproducto` VALUES (45,16,9),(24,88,3),(18,71,5),(40,87,8),(48,43,6),(22,17,4),(60,81,4),(29,1,1),(33,95,3),(28,83,10),(5,32,3),(48,90,4),(1,80,8),(44,59,10),(43,90,1),(49,96,1),(57,45,4),(55,57,3),(56,70,2),(52,24,7),(3,51,5),(7,15,5),(22,52,8),(41,55,10),(45,11,3),(5,27,3),(56,15,10),(43,1,3),(43,50,10),(38,30,5),(50,82,8),(26,18,10),(5,91,4),(21,84,2),(39,51,6),(16,61,7),(56,30,6),(7,33,5),(19,49,7),(15,10,6),(32,29,9),(4,42,8),(8,7,4),(43,51,9),(25,46,7),(4,72,8),(28,42,8),(20,2,4),(25,14,9),(23,57,5),(4,18,1),(18,94,2),(31,43,8),(50,4,9),(49,39,6),(59,84,2),(2,11,8),(58,82,7),(27,89,8),(42,53,9),(35,35,10),(52,53,4),(35,60,8),(21,55,1),(12,9,7),(10,90,6),(31,43,5),(1,89,8),(18,84,7),(59,65,6),(39,75,3),(55,51,1),(49,5,4),(25,60,7),(23,16,10),(35,39,4),(24,51,2),(19,34,9),(25,79,2),(42,71,2),(45,25,3),(59,62,6),(45,49,1),(55,37,4),(33,70,3),(38,76,10),(33,28,8),(36,38,2),(34,69,4),(59,16,3),(55,39,5),(7,82,3),(44,7,2),(33,63,5),(49,58,7),(25,22,4),(26,17,9),(18,28,4),(1,5,7),(14,71,1);
/*!40000 ALTER TABLE `detallesproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int unsigned NOT NULL,
  `Proveedores_idProveedor` int unsigned NOT NULL,
  `Tiendas_id_Tienda` int unsigned NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `precio_Compra` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `enStock` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `Productos_FKIndex1` (`Tiendas_id_Tienda`),
  KEY `Productos_FKIndex2` (`Proveedores_idProveedor`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Tiendas_id_Tienda`) REFERENCES `tiendas` (`id_Tienda`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`Proveedores_idProveedor`) REFERENCES `proveedores` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,63,89,'povidine iodine',NULL,878,29364,65427,126),(2,13,91,'TAPAZOLE',NULL,108,34855,10781,97),(3,89,26,'CEFACLOR',NULL,987,45697,46565,75),(4,89,78,'ESIKA',NULL,237,54731,49478,49),(5,28,56,'GABAPENTIN',NULL,762,49692,30162,42),(6,60,39,'Instant Hand Sanitizer',NULL,321,36731,83239,156),(7,91,51,'Nicotine',NULL,50,10629,41336,78),(8,51,70,'Injury Rescue',NULL,408,58342,41450,46),(9,90,84,'PharmaRight Extra Strength Antacid PEPPERMINT',NULL,152,36333,68055,31),(10,46,5,'SHISEIDO PERFECT REFINING FOUNDATION',NULL,915,82600,20663,198),(11,2,82,'AVANDIA',NULL,627,95755,73998,34),(12,13,93,'Humco Epson Salt',NULL,692,69161,98419,79),(13,67,57,'Walgreens Anticavity and Antigingivits Whitening Fluoride Toothpaste',NULL,920,95310,51074,112),(14,49,14,'GOLDSHIELD 24',NULL,405,65656,34374,137),(15,32,36,'Complete Beauty',NULL,455,14934,96632,100),(16,8,31,'Arrythmiaforce',NULL,859,98504,26153,24),(17,7,45,'House Dust',NULL,414,84406,86043,40),(18,95,88,'Verapamil Hydrochloride',NULL,591,39107,15867,160),(19,90,52,'Sure Invisible Solid Powder Scent',NULL,903,81778,36291,63),(20,4,36,'Burrobrush',NULL,56,53018,85884,167),(21,72,97,'Rice Pilaf, Dry,package',NULL,868,22532,65861,118),(22,49,21,'Chocolate Bar - Coffee Crisp',NULL,644,58438,11405,192),(23,22,5,'Bar Mix - Lime',NULL,965,84125,28678,103),(24,84,14,'Ecolab - Hobart Upr Prewash Arm',NULL,354,30953,24424,25),(25,40,17,'Nut - Almond, Blanched, Sliced',NULL,654,10351,79348,34),(26,31,11,'Curry Paste - Green Masala',NULL,850,71391,60218,117),(27,76,45,'Chicken - Bones',NULL,288,44728,35754,53),(28,78,20,'Wine - Cotes Du Rhone Parallele',NULL,22,51984,87000,187),(29,30,85,'Calypso - Pineapple Passion',NULL,122,50250,97290,170),(30,71,55,'Lid - Translucent, 3.5 And 6 Oz',NULL,692,70023,29606,48),(31,80,50,'Ecolab - Hand Soap Form Antibac',NULL,920,11781,65267,95),(32,23,48,'Red Snapper - Fresh, Whole',NULL,981,52954,15756,143),(33,60,78,'Croissants Thaw And Serve',NULL,233,20936,12443,177),(34,71,57,'Salt - Seasoned',NULL,148,97815,32346,130),(35,21,18,'Cheese - Goat With Herbs',NULL,738,15709,72435,15),(36,1,80,'Tomato Puree',NULL,21,77476,89058,200),(37,48,9,'Bread - Bagels, Plain',NULL,589,41408,61982,83),(38,56,40,'Mushrooms - Honey',NULL,965,22474,73221,93),(39,65,84,'Sobe - Berry Energy',NULL,337,60428,27095,67),(40,33,33,'Beans - Kidney, Red Dry',NULL,732,63654,63131,188),(41,57,48,'Wine - Shiraz Wolf Blass Premium',NULL,482,31706,51435,37),(42,9,38,'Orange - Canned, Mandarin',NULL,147,95669,94955,19),(43,4,84,'Mushroom - Chanterelle Frozen',NULL,497,32409,59009,174),(44,89,61,'Horseradish - Prepared',NULL,776,21074,63053,148),(45,39,21,'Sauce - Salsa',NULL,991,51117,86862,30),(46,16,44,'Longos - Grilled Veg Sandwiches',NULL,116,69117,26976,11),(47,42,81,'Beans - Fava Fresh',NULL,324,57753,20206,134),(48,76,81,'Cod - Salted, Boneless',NULL,753,54439,53816,13),(49,21,36,'Flour - Strong',NULL,701,43397,70447,191),(50,45,33,'Beef - Kobe Striploin',NULL,173,73471,89067,138),(51,90,74,'Hagen Daza - Dk Choocolate',NULL,13,51255,86647,19),(52,6,77,'Juice - Cranberry 284ml',NULL,617,40934,29275,109),(53,96,84,'Lettuce - Curly Endive',NULL,401,77939,39530,173),(54,27,23,'Chip - Potato Dill Pickle',NULL,438,14704,44026,13),(55,14,89,'Lettuce - Curly Endive',NULL,330,64270,40408,18),(56,31,63,'Nut - Almond, Blanched, Ground',NULL,928,75600,98071,199),(57,91,80,'Raisin - Golden',NULL,30,91753,35141,86),(58,36,6,'Wine - Peller Estates Late',NULL,816,81579,73633,1),(59,1,15,'Trout - Rainbow, Fresh',NULL,542,58596,21341,132),(60,11,2,'Rice - Sushi',NULL,946,43518,71738,200);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` int unsigned NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(150) NOT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Winnie','Dallicoat','868-227-9389','wdallicoat0@360.cn'),(2,'Heida','Charlot','566-927-9140','hcharlot1@columbia.edu'),(3,'Garreth','Prestner','212-601-9835','gprestner2@cafepress.com'),(4,'Sammy','Schohier','112-455-2700','sschohier3@taobao.com'),(5,'Mead','McAllaster','933-450-5835','mmcallaster4@cbslocal.com'),(6,'Bernadene','Duester','457-846-3632','bduester5@sina.com.cn'),(7,'Gwenora','Batrim','197-437-0144','gbatrim6@skype.com'),(8,'Caritta','St. Louis','381-953-3712','cstlouis7@nature.com'),(9,'Morgana','Habin','641-646-3365','mhabin8@reference.com'),(10,'Andy','Townend','945-464-4883','atownend9@arizona.edu'),(11,'Jeramey','Ewbanck','277-104-7505','jewbancka@opensource.org'),(12,'Breena','Gibberd','632-657-7232','bgibberdb@smh.com.au'),(13,'Linda','Bartol','127-886-0297','lbartolc@altervista.org'),(14,'Annora','Ascrofte','956-464-4502','aascrofted@nature.com'),(15,'Myrvyn','Bleything','605-980-6002','mbleythinge@shutterfly.com'),(16,'Daniel','Doust','186-128-2686','ddoustf@gizmodo.com'),(17,'Bealle','Wilderspoon','576-896-4084','bwilderspoong@hatena.ne.jp'),(18,'Emmie','Torrent','954-791-6731','etorrenth@jimdo.com'),(19,'Marney','McCormick','431-195-1388','mmccormicki@yellowbook.com'),(20,'Pam','Frenzl','381-342-5711','pfrenzlj@house.gov'),(21,'Herminia','Willatts','578-373-9211','hwillattsk@reuters.com'),(22,'Niles','Wilfling','970-930-8408','nwilflingl@cisco.com'),(23,'Marya','Damato','966-822-9514','mdamatom@bravesites.com'),(24,'Cthrine','Bergeau','242-902-9634','cbergeaun@bbc.co.uk'),(25,'Raynor','Ortes','803-635-3757','rorteso@barnesandnoble.com'),(26,'Wilhelmine','Glassborow','129-109-0973','wglassborowp@harvard.edu'),(27,'Myrtle','Hanmore','279-289-7383','mhanmoreq@telegraph.co.uk'),(28,'Charline','Petticrow','554-784-9957','cpetticrowr@cbsnews.com'),(29,'Cristin','Tavner','946-417-7398','ctavners@feedburner.com'),(30,'Ceciley','Brickham','976-330-9519','cbrickhamt@google.com.hk'),(31,'Bendicty','Dearnly','719-762-5001','bdearnlyu@slashdot.org'),(32,'Trevor','Shakesby','627-985-9824','tshakesbyv@chronoengine.com'),(33,'Dani','Gagg','492-402-7644','dgaggw@addthis.com'),(34,'Kissee','Goane','170-401-9313','kgoanex@hugedomains.com'),(35,'Chelsy','Radcliffe','202-973-8218','cradcliffey@si.edu'),(36,'Kandy','Matchitt','422-551-6818','kmatchittz@privacy.gov.au'),(37,'Maurits','Willows','673-256-1553','mwillows10@narod.ru'),(38,'Corrie','Restall','345-831-8368','crestall11@state.gov'),(39,'Kaylil','Simonassi','649-686-9881','ksimonassi12@cafepress.com'),(40,'Hieronymus','Buy','719-971-6725','hbuy13@mozilla.org'),(41,'Ivonne','Eyckelbeck','894-770-6259','ieyckelbeck14@ox.ac.uk'),(42,'Mireielle','Knappett','325-661-4019','mknappett15@github.io'),(43,'Eziechiele','Greensite','845-710-8698','egreensite16@arstechnica.com'),(44,'Kearney','Simpkin','757-676-0652','ksimpkin17@github.com'),(45,'Sigismund','Murrells','438-900-5014','smurrells18@4shared.com'),(46,'Geno','Catford','619-202-3840','gcatford19@bigcartel.com'),(47,'Bogey','Harbar','350-665-5194','bharbar1a@fastcompany.com'),(48,'Dylan','Endean','935-746-0137','dendean1b@vk.com'),(49,'Packston','Alejandro','618-598-3636','palejandro1c@booking.com'),(50,'Felizio','Zarb','523-335-8647','fzarb1d@npr.org'),(51,'Emiline','Hymor','166-206-2286','ehymor1e@dailymotion.com'),(52,'Jessamyn','Blanpein','247-772-3237','jblanpein1f@xing.com'),(53,'Skyler','Chamberlaine','959-225-3400','schamberlaine1g@nsw.gov.au'),(54,'Alexandra','Gohn','359-308-2531','agohn1h@miibeian.gov.cn'),(55,'Ardisj','Haglinton','149-170-8555','ahaglinton1i@diigo.com'),(56,'Dudley','Lerhinan','743-774-1095','dlerhinan1j@google.co.uk'),(57,'Byron','Nowland','339-826-5202','bnowland1k@nba.com'),(58,'Moria','Younge','430-664-5567','myounge1l@dion.ne.jp'),(59,'Bail','Guise','850-991-3861','bguise1m@skyrock.com'),(60,'Ollie','Mapp','366-521-5617','omapp1n@youku.com'),(61,'Nicko','Cammocke','563-687-8450','ncammocke1o@hp.com'),(62,'Doreen','Dupree','280-516-3298','ddupree1p@forbes.com'),(63,'Nikki','Westgate','774-410-8306','nwestgate1q@harvard.edu'),(64,'Powell','Dimitrijevic','494-887-3947','pdimitrijevic1r@discovery.com'),(65,'Petronia','Witton','301-805-4242','pwitton1s@usa.gov'),(66,'Elbert','Mistry','178-756-6433','emistry1t@vimeo.com'),(67,'Michail','Odd','469-627-4576','modd1u@salon.com'),(68,'Anastassia','Luker','445-114-4989','aluker1v@berkeley.edu'),(69,'Gilemette','Berge','694-624-2876','gberge1w@posterous.com'),(70,'Quinlan','Zipsell','560-438-9217','qzipsell1x@devhub.com'),(71,'Sophie','Strafen','650-742-0407','sstrafen1y@parallels.com'),(72,'Agna','Screeton','144-456-0098','ascreeton1z@tmall.com'),(73,'Salomon','Walshe','925-436-5614','swalshe20@tinyurl.com'),(74,'Jennica','Mileham','937-341-3992','jmileham21@webmd.com'),(75,'Quintana','Kinnar','964-456-5707','qkinnar22@exblog.jp'),(76,'Reidar','Jozefczak','554-848-8328','rjozefczak23@home.pl'),(77,'Lanni','Dadge','679-483-0084','ldadge24@businessinsider.com'),(78,'Carissa','Gallandre','610-711-2281','cgallandre25@cloudflare.com'),(79,'Addy','Middlebrook','480-133-8144','amiddlebrook26@etsy.com'),(80,'Gaby','Mountjoy','984-815-8770','gmountjoy27@skyrock.com'),(81,'Sayer','Sorrell','697-545-2979','ssorrell28@example.com'),(82,'Vincenz','Macura','818-888-1116','vmacura29@people.com.cn'),(83,'Tanitansy','O\'Scully','246-710-2021','toscully2a@w3.org'),(84,'Silvan','Fishbourn','941-331-8481','sfishbourn2b@mapy.cz'),(85,'Fritz','Gillebride','779-612-6834','fgillebride2c@myspace.com'),(86,'Harmonie','Otto','176-130-7407','hotto2d@typepad.com'),(87,'Obadias','Jessett','612-123-0928','ojessett2e@elpais.com'),(88,'Gill','Ugolotti','761-203-6330','gugolotti2f@bigcartel.com'),(89,'Conney','Mattek','136-150-3846','cmattek2g@forbes.com'),(90,'Hally','Caherny','808-654-2627','hcaherny2h@plala.or.jp'),(91,'Bendite','Riddington','781-160-5465','briddington2i@newsvine.com'),(92,'Valdemar','Hapgood','764-608-1750','vhapgood2j@economist.com'),(93,'Nata','Ashforth','907-776-8265','nashforth2k@quantcast.com'),(94,'Rubie','Granger','222-322-9633','rgranger2l@walmart.com'),(95,'Monte','Clemmens','649-414-5335','mclemmens2m@g.co'),(96,'Travis','de Savery','227-914-1896','tdesavery2n@samsung.com'),(97,'Chauncey','Spada','583-247-3396','cspada2o@bandcamp.com'),(98,'Magdalene','Januszkiewicz','480-857-8473','mjanuszkiewicz2p@deliciousdays.com'),(99,'Karrah','Mantrup','614-536-0939','kmantrup2q@list-manage.com'),(100,'Gerome','Wileman','580-399-1768','gwileman2r@skype.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibos`
--

DROP TABLE IF EXISTS `recibos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recibos` (
  `idRecibo` int unsigned NOT NULL,
  `DNI_Cliente` int unsigned NOT NULL,
  PRIMARY KEY (`idRecibo`),
  KEY `Recibos_FKIndex1` (`DNI_Cliente`),
  CONSTRAINT `recibos_ibfk_1` FOREIGN KEY (`DNI_Cliente`) REFERENCES `clientes` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibos`
--

LOCK TABLES `recibos` WRITE;
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
INSERT INTO `recibos` VALUES (92,1007597088),(48,1009184462),(79,1013528520),(49,1059015863),(94,1084974245),(20,1107956308),(44,1117818215),(96,1117818215),(53,1122927783),(11,1158166622),(15,1158166622),(89,1158166622),(29,1194642637),(42,1199151677),(17,1203411148),(47,1203411148),(52,1217305181),(59,1217305181),(77,1257254265),(23,1268589813),(81,1280323652),(36,1287145266),(69,1287145266),(72,1287145266),(6,1320656484),(16,1320656484),(37,1320656484),(66,1322823639),(24,1325164350),(19,1334182615),(62,1334182615),(99,1334182615),(76,1367077817),(74,1371909125),(45,1400528938),(68,1400528938),(12,1413928054),(13,1430032427),(31,1430032427),(71,1430032427),(75,1433152170),(26,1437181192),(8,1439693533),(83,1439693533),(64,1439738775),(90,1439738775),(93,1439738775),(85,1465210106),(54,1473279459),(95,1487120485),(56,1500997057),(14,1507048061),(30,1507048061),(63,1507048061),(65,1507327607),(60,1527425474),(27,1562978986),(5,1600873136),(98,1600873136),(21,1621700894),(67,1638415452),(43,1657075025),(73,1657075025),(87,1657075025),(88,1657075025),(2,1659636911),(10,1683234250),(84,1684387027),(82,1690803188),(58,1700715583),(91,1722431709),(55,1750632162),(28,1757003472),(97,1757003472),(9,1763286578),(22,1774951095),(35,1774951095),(38,1774951095),(80,1793915426),(34,1795094868),(40,1795094868),(3,1796042023),(4,1796042023),(18,1796042023),(39,1796042023),(7,1800672637),(100,1834181576),(86,1841813788),(32,1920993766),(33,1920993766),(46,1920993766),(25,1923048046),(57,1923048046),(61,1927334679),(78,1927334679),(41,1940328476),(1,1971111799),(50,1995454285),(51,1995454285),(70,1995454285);
/*!40000 ALTER TABLE `recibos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiendas`
--

DROP TABLE IF EXISTS `tiendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiendas` (
  `id_Tienda` int unsigned NOT NULL,
  `idOwner` int unsigned NOT NULL,
  `Nombre_Tienda` varchar(255) DEFAULT NULL,
  `Ciudad` varchar(255) DEFAULT NULL,
  `Direccion` text,
  `Categoria` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_Tienda`),
  KEY `Tiendas_FKIndex1` (`idOwner`),
  CONSTRAINT `tiendas_ibfk_1` FOREIGN KEY (`idOwner`) REFERENCES `vendedores` (`idVendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiendas`
--

LOCK TABLES `tiendas` WRITE;
/*!40000 ALTER TABLE `tiendas` DISABLE KEYS */;
INSERT INTO `tiendas` VALUES (1,44,'Rolfson, Reinger and Kemmer','Aras-asan','16 Arapahoe Way','Sports'),(2,98,'Wiza-Ankunding','Likupang','13 Springs Avenue','Garden'),(3,83,'Crona-Jaskolski','Gibbons','5719 Alpine Center','Electronics'),(4,38,'Rippin Group','Gaoyan','06 Rutledge Court','Garden'),(5,99,'Schmitt-Gleason','Wang Nam Khiao','75 Sunbrook Avenue','Tools'),(6,41,'Batz Group','Menggala','6 Hayes Hill','Books'),(7,98,'O\'Connell and Sons','Nýřany','78 Hallows Hill','Home'),(8,64,'Conroy-Smith','Torino','79 Elmside Hill','Home'),(9,60,'Konopelski and Sons','Quế Sơn','045 Ronald Regan Plaza','Grocery'),(10,55,'Willms-Schultz','Āsmār','94909 Northview Street','Computers'),(11,4,'O\'Keefe, Mante and Boyer','Cherga','2428 Kim Crossing','Tools'),(12,82,'Wiegand LLC','Yefremov','105 Debs Drive','Kids'),(13,40,'Beer Group','Santa Cruz De Tenerife','4 Golf Crossing','Health'),(14,100,'Considine Inc','Zhubei','5 Swallow Road','Music'),(15,83,'Ritchie-Hickle','Pashkovskiy','26 Manley Drive','Computers'),(16,3,'Stiedemann, Kuphal and Orn','Cachadinha','88500 Stang Drive','Shoes'),(17,48,'Veum, Mills and Dach','Zhongshan','56586 Mcguire Court','Toys'),(18,53,'Roob-Pouros','Hohhot','831 Prairieview Avenue','Toys'),(19,85,'Schulist Group','Sukaraja','704 Upham Crossing','Tools'),(20,75,'Hamill, Padberg and Blanda','Dowlatyār','5484 Meadow Vale Lane','Clothing'),(21,73,'Watsica, Lowe and Veum','Kemil','157 Esker Trail','Music'),(22,3,'Fay Inc','Banjar Susut Kaja','55 Rigney Terrace','Music'),(23,75,'Haag-Romaguera','Cipinang','8349 Donald Trail','Industrial'),(24,38,'Koepp-Rau','Barretos','77072 Express Lane','Tools'),(25,43,'Farrell-Halvorson','Nishio','5 Birchwood Court','Shoes'),(26,84,'Walter-Nolan','Pagak Kulon','097 4th Hill','Kids'),(27,71,'Moen Group','Sunagawa','97 Merchant Way','Sports'),(28,51,'Pfeffer, Larkin and Langosh','Chenggang','45098 Truax Alley','Industrial'),(29,97,'Pagac-Kuhlman','Miaotang','34 Anhalt Point','Outdoors'),(30,93,'Purdy and Sons','Calaya','928 Blue Bill Park Plaza','Outdoors'),(31,89,'Gusikowski, Mante and Schiller','Cuijiaqiao','0 Fulton Point','Tools'),(32,21,'Davis and Sons','Binangun','05 Stang Trail','Outdoors'),(33,58,'Rohan, Kling and Weimann','Sundbyberg','6513 Roxbury Terrace','Computers'),(34,12,'Keeling-Leffler','Riyadh','7665 Cambridge Pass','Tools'),(35,94,'Nader, Reichel and Beer','Caen','7 John Wall Circle','Tools'),(36,68,'Bogisich-Weimann','Komes','78181 Chive Lane','Tools'),(37,16,'Blanda, Reichert and Feil','Kokotów','16 Canary Terrace','Kids'),(38,60,'Harber, Dach and Bergnaum','Anse Boileau','7 Hintze Plaza','Outdoors'),(39,70,'Klein-Gaylord','Kamenica','2562 Eagle Crest Alley','Beauty'),(40,8,'Rice, Ortiz and O\'Kon','Miguel Hidalgo','104 Mockingbird Junction','Jewelry'),(41,45,'Gorczany-Schultz','Daxindian','26311 Arapahoe Parkway','Kids'),(42,11,'Ullrich LLC','Chengyue','193 Debra Trail','Games'),(43,26,'Brakus Inc','Lindesberg','614 Kensington Hill','Music'),(44,51,'Quigley Group','Songhe','6408 Eastlawn Plaza','Music'),(45,69,'Feest-Lubowitz','Kvasy','12 Petterle Avenue','Books'),(46,27,'Casper and Sons','Cawayan','1 2nd Parkway','Clothing'),(47,21,'Lubowitz-Reynolds','Kubang','5 Dahle Lane','Automotive'),(48,68,'Breitenberg Inc','Naviraí','5 Northridge Point','Beauty'),(49,70,'Hilll Group','Ust’-Kachka','2 Autumn Leaf Court','Outdoors'),(50,44,'Kozey-Waelchi','Marathókampos','15352 Roth Parkway','Shoes'),(51,59,'Schneider-Weimann','Tsimasham','12017 Northwestern Parkway','Movies'),(52,53,'Rowe-Hoeger','Lavradio','4 Farwell Road','Games'),(53,50,'Goyette-Goldner','El Espino','1 Lakeland Junction','Garden'),(54,98,'Greenfelder, Abshire and Schiller','Naurskaya','767 Shasta Road','Industrial'),(55,56,'Tillman, Rogahn and Christiansen','Nueva Guadalupe','11 Lunder Center','Home'),(56,65,'Littel, Gerhold and Russel','Perštejn','578 Mayfield Circle','Shoes'),(57,5,'Feil Inc','Dongdong','7 Waxwing Alley','Kids'),(58,80,'Schneider, Erdman and Runolfsson','Keda','0 Golf Course Junction','Grocery'),(59,22,'Barrows Group','Guanay','28084 Dapin Point','Health'),(60,44,'Brakus-Tromp','Victoria','236 Veith Junction','Books'),(61,16,'Osinski and Sons','Mokwa','06366 Forest Road','Computers'),(62,67,'Reichel-Blick','Simo','8963 Northfield Pass','Garden'),(63,25,'Auer-Wyman','Fatumuti','4 Eggendart Trail','Home'),(64,67,'Bergnaum-Armstrong','Žďár nad Sázavou Druhy','91 Daystar Parkway','Baby'),(65,10,'Reilly-Swaniawski','Cisiec','276 Cherokee Junction','Sports'),(66,90,'Adams, Fahey and Murazik','Cimuncang','828 Gulseth Point','Grocery'),(67,42,'Shields Group','Santo Isidro','5 Luster Avenue','Electronics'),(68,20,'Feil, MacGyver and Johnson','Taimaman','4545 Mesta Hill','Clothing'),(69,44,'Kunze, Klein and Renner','Budziszewice','21596 Melby Point','Electronics'),(70,99,'Orn-Watsica','Haizhouwobao','407 Talisman Place','Movies'),(71,19,'Hirthe Inc','Catamayo','5822 Mendota Street','Industrial'),(72,13,'Funk, Kuhn and Hills','Séléa','753 Pawling Junction','Grocery'),(73,22,'Kunze-Olson','Ailuk','23 Holmberg Court','Health'),(74,17,'Brakus, Harvey and Kreiger','Zhangjiang','4164 Hagan Junction','Games'),(75,42,'Kohler, Carroll and Legros','Hougong','7 Shoshone Center','Clothing'),(76,99,'Dicki, Bednar and Fritsch','Sāqayn','5058 Lukken Park','Sports'),(77,66,'Lockman, Kihn and Hamill','Santo Tomas','7 Farwell Junction','Electronics'),(78,66,'Breitenberg-Lesch','Had Kourt','933 Mccormick Plaza','Shoes'),(79,6,'Conn, Kunze and Heidenreich','Datangzhuang','41 Granby Terrace','Outdoors'),(80,89,'Zemlak-O\'Connell','Pueblo Viejo','542 Merchant Junction','Shoes'),(81,49,'Heathcote, Fritsch and Murray','Corozal','2 Spohn Place','Baby'),(82,54,'Little-Feeney','Makato','6496 Oneill Alley','Computers'),(83,30,'Fay-Renner','Antíparos','52125 Sunbrook Lane','Music'),(84,80,'D\'Amore, Jaskolski and Goldner','Foso','0366 Clarendon Street','Toys'),(85,29,'Gulgowski-Wisozk','Gandara','6 Forster Pass','Kids'),(86,4,'Krajcik-Lind','Hedao','6 Northridge Parkway','Garden'),(87,70,'Stanton and Sons','Toronto','00546 Little Fleur Crossing','Toys'),(88,88,'Swift, Crooks and Altenwerth','Bangluo','784 Sycamore Drive','Computers'),(89,94,'Feest Inc','Lubień Kujawski','45300 Lindbergh Park','Kids'),(90,8,'Kunze, Purdy and Cruickshank','Студеничани','9 Reinke Street','Shoes'),(91,1,'Walter, Stokes and Pfannerstill','Ungsang','23 Graceland Center','Beauty'),(92,8,'Kling, Beer and Wyman','Higuerote','09779 Loftsgordon Junction','Games'),(93,90,'Vandervort, Steuber and Miller','Hikari','84 Clyde Gallagher Avenue','Baby'),(94,7,'Ferry-Wunsch','San Andres','52156 Farragut Place','Music'),(95,80,'Macejkovic-Durgan','Ḩāfiz̧ Moghul','00915 Duke Court','Games'),(96,40,'Bernhard, Waters and Abshire','Xixiang','748 Claremont Pass','Baby'),(97,24,'Grant Group','Ipameri','54 Brown Point','Outdoors'),(98,30,'Doyle-Moore','Felgueiras','385 Mallory Junction','Jewelry'),(99,90,'Beer-Renner','Mazār-e Sharīf','545 Village Green Road','Toys'),(100,62,'Baumbach-Quigley','Jardín América','66027 Fulton Court','Clothing');
/*!40000 ALTER TABLE `tiendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `idVendedor` int unsigned NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`idVendedor`),
  UNIQUE KEY `idVendedor_UNIQUE` (`idVendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'Elene','Pavyer','1597152540'),(2,'Hurleigh','Creffeild','6125082636'),(3,'Margalo','Carlin','2113180917'),(4,'Neila','Polkinghorne','4314244217'),(5,'Annalise','Stillwell','2183602845'),(6,'Verene','O\' Timony','9191104094'),(7,'Sigismund','Bowry','5987918977'),(8,'Odelinda','Brunini','4829316669'),(9,'Jude','Adamson','3606070055'),(10,'Callean','Pilipets','3254459604'),(11,'Kristin','Nornasell','3946231453'),(12,'Tracy','Steel','1716928950'),(13,'Jacky','Dignam','1849054769'),(14,'Amble','Olivey','4059150820'),(15,'Dixie','Giacubbo','2164090541'),(16,'Bryana','Lindenblatt','5818154487'),(17,'Marisa','Weare','8427090335'),(18,'Sam','Faulconer','2617415394'),(19,'Cross','Fleet','2897671990'),(20,'Dodi','Dunstall','3151682176'),(21,'Monte','Woollons','5728006571'),(22,'Marquita','Pettegre','2416173809'),(23,'Verine','Dust','2898603001'),(24,'Marin','Galiford','8507479908'),(25,'Reece','Huguenet','4786881867'),(26,'Sauncho','Alentyev','7507827120'),(27,'Giavani','Brimblecombe','1542679202'),(28,'Shellie','Chalker','6105260794'),(29,'Gill','Druitt','3131567663'),(30,'Bernette','Monahan','8079904540'),(31,'Julianne','Bourrel','7942293194'),(32,'Sara-ann','Giral','4625489669'),(33,'Banky','Labadini','6984938614'),(34,'Gussi','Wardel','3498670585'),(35,'Kasper','Ruberry','4609265065'),(36,'Thorpe','Calverd','3553763633'),(37,'Kelli','Camus','3868336026'),(38,'Francklyn','Pietzner','1383536040'),(39,'Rhodie','Zavittieri','3354373984'),(40,'Keefe','Nowill','6335606131'),(41,'Donalt','Heinsen','1015102684'),(42,'Talbot','Attwood','6284705259'),(43,'Florencia','Gallahar','5351841819'),(44,'Pietra','Jeness','7341709499'),(45,'Mersey','Alonso','5587629085'),(46,'Nellie','Husby','8699835693'),(47,'Cassondra','Shilleto','5091445664'),(48,'Devin','Kisbey','3859639199'),(49,'Perrine','Edyson','5838390494'),(50,'Glynn','Sanderson','4322513025'),(51,'Dana','Wisniowski','2066898359'),(52,'Eddi','Mattingley','7422647689'),(53,'Liuka','Aire','9566994568'),(54,'Marilyn','Valencia','2328374605'),(55,'Adi','Collens','5819137080'),(56,'Scarlett','Brussels','9068526903'),(57,'Aliza','Ritzman','1813833868'),(58,'Ramsey','Hatcher','4532891220'),(59,'Maude','Barras','3579518535'),(60,'Charmane','Posen','2307687469'),(61,'Herculie','Toogood','9342184718'),(62,'Carita','Spencer','5233731510'),(63,'Malcolm','Costello','7878622430'),(64,'Patton','Chazier','7862409100'),(65,'Brooks','McGraw','9564078315'),(66,'Errol','Bedminster','9873975587'),(67,'Bernie','Jennings','7243993266'),(68,'Stanly','Buttrey','5312263433'),(69,'Emmye','Blyden','3212610359'),(70,'Annice','Bruhke','4002315731'),(71,'Daven','Bugby','8958499787'),(72,'Shelbi','Manvell','7314318683'),(73,'Friederike','Roden','2682718413'),(74,'Betteann','Bortoluzzi','7204789769'),(75,'Lovell','Ewell','3068095510'),(76,'Brigham','Massey','4764786975'),(77,'Carling','Gumme','5339262366'),(78,'Pattie','Glassopp','7931541612'),(79,'Dolly','Cawtheray','6482418828'),(80,'Hobey','Galliford','1548390959'),(81,'Skelly','Wigmore','1836430439'),(82,'Gian','Barttrum','4759572714'),(83,'Adolph','Sleney','1629171696'),(84,'Stern','Kremer','9459368365'),(85,'Roderick','Burdge','4271327893'),(86,'Brita','Bloor','2931161735'),(87,'Brittany','Northall','4786753010'),(88,'Eal','Hune','6232854761'),(89,'Rand','Enrique','3659394294'),(90,'Aurlie','Cupper','2653064427'),(91,'Cassandry','Attow','6348015745'),(92,'Erhart','Cantera','3922070917'),(93,'Raimondo','Connett','7257670557'),(94,'Alasdair','Garrigan','7888164844'),(95,'Joline','Gyorgy','3911853561'),(96,'Hayes','Bestman','6586896615'),(97,'Celia','Corbyn','1296820633'),(98,'Barbabas','Gooly','4368504914'),(99,'Dasie','Abbay','6168112180'),(100,'Chester','Gwynne','9134218323');
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-20  1:04:56
