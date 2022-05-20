-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `idARTISTA` int NOT NULL,
  `Nombre_artístico` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Estilo` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `País` varchar(45) DEFAULT NULL,
  `BANDA_idBANDA` int DEFAULT NULL,
  PRIMARY KEY (`idARTISTA`),
  KEY `fk_ARTISTA_BANDA1_idx` (`BANDA_idBANDA`),
  CONSTRAINT `fk_ARTISTA_BANDA1` FOREIGN KEY (`BANDA_idBANDA`) REFERENCES `banda` (`idBANDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Public Enemy','Izabel','MacCoughen','Old School','Louisville','Ecuador',6),(2,'Gza','Ricki','Prium','Crunk','Washington','Indonesia',4),(3,'Run DMC','Isidoro','Rossant','Hardcore','Lansing','Syria',6),(4,'GLOBE','Evyn','Dawtrey','Crunk','Asheville','Ivory Coast',5),(5,'O.C.','Hebert','Kittoe','Old School','Omaha','Colombia',2),(6,'Slum Village','Gerik','De Mico','Trap','Rochester','Indonesia',5),(7,'Stop The Violence Movement','Alistair','Quest','Crunk','Houston','Portugal',7),(8,'Salt-N-Pepa','Tonnie','Kagan','Trap','Dearborn','Russia',4),(9,'2Pac','Barrie','Burchess','Trap','Maple Plain','France',8),(10,'JAY-Z','Augusto','Braybrook','Hardcore','Port Saint Lucie','Colombia',4),(11,'Sugarhill Gang','Margareta','Gennerich','Trap','Washington','Japan',7),(12,'Eric B & Rakim','Marylou','Janovsky','Gangsta Rap','Salinas','Indonesia',9),(13,'Grandmaster Flash','Gaylor','Mickan','Pop Rap','Dayton','China',8),(14,'The Notorious B.I.G.','Natalee','Glassford','Pop Rap','Milwaukee','China',2),(15,'Dr Dre','Marcy','Scarf','Crunk','Charlotte','China',8),(16,'50 Cent','Merv','Majury','Hardcore','Portland','Portugal',6),(17,'Kendrick Lamar','Cory','Davage','G-Funk','Sacramento','China',10),(18,'Eminem','Yettie','Veale','Gangsta Rap','Miami','Indonesia',4),(19,'Cypress Hill','Kelly','Birdall','G-funk','Hartford','Brazil',5),(20,'The Fugees','Sunny','Peffer','G-funk','Tacoma','China',6),(21,'DMX','Avery','Petronis','Trap','Washington','China',6),(22,'Kanye West','Elwin','Juza','Old school','Lincoln','China',NULL),(23,'Mos Def','Barbee','Moyne','Crunk','Stamford','Indonesia',6),(24,'Drake','Sonnnie','Relf','Crunk','Van Nuys','United Kingdom',7),(25,'Clipse','Antony','Gaffon','Old school','Philadelphia','Portugal',4),(26,'The LOX','Kirby','Cornthwaite','Crunk','Knoxville','Cuba',4),(27,'Wizkid','Jacquette','Fitzer','Pop rap','Springfield','Finland',4),(28,'Future','Alida','Waghorn','Crunk','Erie','Czech Republic',3),(29,'Mobb Deep','Maribeth','Presdie','Crunk','Jackson','China',5),(30,'OutKast','Clevey','Caffery','Crunk','Oklahoma City','China',10),(31,'Missy Elliott','Amata','Lowcock','Crunk','Saint Paul','Indonesia',2),(32,'Diplomats','Yorgos','Dent','Old school','Milwaukee','Indonesia',3),(33,'NWA','Clarette','Portman','Trap','Tacoma','China',NULL),(34,'Grandmaster Flash & The Furious Five','Rivalee','Quibell','Old school','Fort Smith','China',NULL),(35,'Project Pat','Sara-ann','Dunton','Crunk','Los Angeles','China',2),(36,'Lil Boosie','Bud','Balcers','Pop rap','Chesapeake','China',4),(37,'Eazy-E','Zaria','Da Costa','Gangsta rap','Knoxville','Thailand',8),(38,'Lil Wayne','Jayne','Panniers','G-funk','Portland','Portugal',4),(39,'Ice Cube','Raphael','Blumire','Hardcore','Denver','China',8),(40,'Wu-Tang Clan','Francine','Brunone','Trap','Detroit','Bhutan',NULL),(41,'The Pharcyde','Agnes','Sidwell','Gangsta rap','Clearwater','China',9),(42,'Snoop Doggy Dogg','Jaime','Lever','Hardcore','Saint Joseph','Poland',6),(43,'J Cole','Susanetta','Dominick','Pop rap','Fort Wayne','China',2),(44,'A Tribe Called Quest','Joanne','Griffitts','Hardcore','Evansville','Japan',6),(45,'Geto Boys','Gustie','Brownfield','Hardcore','Denton','Sweden',7),(46,'Ghostface Killah','Rolfe','de Clercq','G-funk','New Orleans','Cuba',8),(47,'Lupe Fiasco','Mariann','Cana','Old school','Little Rock','China',5),(48,'Canibus','Dawna','Gallemore','Gangsta rap','Saint Paul','United States',8),(49,'EPMD','Charis','Pagelsen','Old school','Erie','China',7),(50,'Double Trouble','Zonnya','Dunsford','Crunk','Baton Rouge','Indonesia',6),(51,'De La Soul','Devlen','Minelli','Old school','Peoria','China',4),(52,'Talib Kweli','Alwin','Espinoza','Trap','Santa Barbara','Russia',5),(53,'Talent','Alayne','Bassill','G-funk','San Jose','Italy',4),(54,'Slick Rick','Kiley','Mc Grath','Trap','Zephyrhills','China',1),(55,'Wiz Khalifa','Nedda','Brodhead','Hardcore','Wilmington','Ecuador',1),(56,'Ty Dolla Sign','Darby','Bowcher','Trap','Santa Barbara','Indonesia',1),(57,'Juicy J','Valenka','Astall','Pop Rap','Fresno','Syria',1),(58,'Sosamann','Joseito','Burkhill','Old School','Saint Petersburg','Ivory Coast',1),(59,'DJ Bonics','Cristabel','Klainer','Gangsta Rap','Charlotte','Colombia',1),(60,'Chevy Woods','Shepperd','Brimner','Crunk','New York City','Indonesia',1),(61,'Berner','Bryon','Alf','G-Funk','Inglewood','Portugal',1),(62,'Sk8','Lacie','Geer','Gangsta Rap','Young America','Russia',1),(63,'Fedd the God','Clarissa','Crack','Gangsta Rap','Sparks','France',1),(64,'Young Deji','Heida','Tripney','Hardcore','Salt Lake City','Colombia',1),(65,'Kris Hollis','Mattie','Jiracek','Hardcore','Huntington','Japan',1),(66,'Sledgren','Lauraine','MacGilpatrick','Pop Rap','Honolulu','Indonesia',1),(67,'TM88','Uriah','Pickerell','Hardcore','Midland','Indonesia',1),(68,'RMB Justize','Moyna','Hallock','Crunk','El Paso','Indonesia',1);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `artista_mismo_nombre` BEFORE INSERT ON `artista` FOR EACH ROW begin
	declare nombre_artista varchar(50);
	
	select a.Nombre_artístico into nombre_artista 
	from artista a 
	where a.Nombre_artístico = new.Nombre_artístico ;

	if(nombre_artista like new.Nombre_artístico) then
        	SIGNAL SQLSTATE '45000'
        	SET MESSAGE_TEXT='Ese nombre lo tiene ya otro artista',
       			MYSQL_ERRNO = 1643 ;
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `banda`
--

DROP TABLE IF EXISTS `banda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banda` (
  `idBANDA` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idBANDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banda`
--

LOCK TABLES `banda` WRITE;
/*!40000 ALTER TABLE `banda` DISABLE KEYS */;
INSERT INTO `banda` VALUES (1,'Taylor Gang'),(2,'OVO'),(3,'Wu Tang-Clan'),(4,'Migos'),(5,'Violadores del Verso'),(6,'Outkast'),(7,'Mobb Deep'),(8,'NWA'),(9,'Black Eyed Peas'),(10,'Kris Kross');
/*!40000 ALTER TABLE `banda` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `banda_con_mas_de_10_artistas` BEFORE DELETE ON `banda` FOR EACH ROW begin
	declare num_artistas  int;
	set num_artistas = calcular_artistas_bandas (old.idBANDA);

	if (num_artistas>10) then 
		SIGNAL SQLSTATE '45000'
        	SET MESSAGE_TEXT='Esta banda tiene más de 10 artistas incluidos',
       			MYSQL_ERRNO = 1643 ;
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `canción`
--

DROP TABLE IF EXISTS `canción`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canción` (
  `idCANCIÓN` int NOT NULL,
  `versión_de` int DEFAULT NULL,
  `ÁLBUM_idÁLBUM` int DEFAULT NULL,
  `título` varchar(45) NOT NULL,
  `duración` varchar(45) DEFAULT NULL,
  `nº_reproducciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCANCIÓN`),
  KEY `fk_CANCIÓN_CANCIÓN1_idx` (`versión_de`),
  KEY `fk_CANCIÓN_ÁLBUM1_idx` (`ÁLBUM_idÁLBUM`),
  CONSTRAINT `fk_CANCIÓN_CANCIÓN1` FOREIGN KEY (`versión_de`) REFERENCES `canción` (`idCANCIÓN`),
  CONSTRAINT `fk_CANCIÓN_ÁLBUM1` FOREIGN KEY (`ÁLBUM_idÁLBUM`) REFERENCES `álbum` (`idÁLBUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canción`
--

LOCK TABLES `canción` WRITE;
/*!40000 ALTER TABLE `canción` DISABLE KEYS */;
INSERT INTO `canción` VALUES (1,NULL,1,'Countdown to Armaggedon','02:43','448158969'),(2,NULL,1,'Bring the Noise','02:14','407679875'),(3,NULL,1,'Don�t Believe The Hype','01:50','870674313'),(4,NULL,1,'Cold Lampin� With Flavor','02:41','645256113'),(5,NULL,1,'Terminator X To The Edge Of Panic','01:32','149611771'),(6,NULL,2,'Hope','03:34','260657975'),(7,NULL,2,'We Dem Boyz','01:07','536984169'),(8,NULL,2,'Promises','04:49','947544676'),(9,NULL,2,'KK','01:52','116297923'),(10,NULL,2,'House in the Hills','04:13','494675785'),(11,NULL,3,'Excursions','04:23','838664920'),(12,NULL,3,'Buggin� Out','02:16','222685130'),(13,NULL,3,'Rap Prometer','03:38','53552140'),(14,NULL,3,'Butter','02:07','185169493'),(15,NULL,3,'Verses from the Abstract','04:29','802754206'),(16,NULL,4,'Intro','03:11','867994088'),(17,NULL,4,'Fuck With Dre Day','02:26','578840054'),(18,NULL,4,'Let Me Ride','04:00','796029304'),(19,NULL,4,'The Day The Niggaz Take Over','05:00','55674320'),(20,NULL,4,'Nuthin� But A �G� Thang','04:20','317488648'),(21,NULL,5,'Bathtub','04:41','768457603'),(22,NULL,5,'Intro','03:29','857973664'),(23,NULL,5,'Gin N Juice','01:26','894979406'),(24,NULL,5,'Tha Shiznit','02:39','782994931'),(25,NULL,5,'Lodi Dodi','02:00','629977536'),(26,NULL,NULL,'Phone Numbers','03:34','490920662'),(27,26,NULL,'Phone Numbers (Remix)','03:56','663212875'),(28,NULL,NULL,'Cell Ready','03:24','546546465');
/*!40000 ALTER TABLE `canción` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discográfica`
--

DROP TABLE IF EXISTS `discográfica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discográfica` (
  `idDISCOGRÁFICA` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `País` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDISCOGRÁFICA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discográfica`
--

LOCK TABLES `discográfica` WRITE;
/*!40000 ALTER TABLE `discográfica` DISABLE KEYS */;
INSERT INTO `discográfica` VALUES (1,'Aftermath Entertainment','Guangping','China'),(2,'Aftermath Records','Kalidung','Indonesia'),(3,'Aggro Berlin','Pavlysh','Ukraine'),(4,'Sergio Aguilar Pereira','Nishi-Tokyo-shi','Japan'),(5,'Amaru Entertainment','Strellc i Epërm','Kosovo'),(6,'Anticon Records','Iksan','South Korea'),(7,'Asylum Records','Krajan C Wonorejo','Indonesia'),(8,'Avoid Records','Chengbei','China'),(9,'Bad Boy Records','Benevides','Brazil'),(10,'Black Wall Street Records','Santa Cruz','Mexico'),(11,'Boa Música','Miaoxi','China'),(12,'Boss Up Entertainment','Canmang','China'),(13,'Buddha\'s Family','Monching','Philippines'),(14,'Cash Money Records','Haquira','Peru'),(15,'Chamillitary Entertainment','Biljača','Serbia'),(16,'Chopper City Records','Saint-Quentin-en-Yvelines','France'),(17,'D.P.G. Recordz','London','United States'),(18,'Death Row Records','Thívai','Greece'),(19,'Def Jam Recordings','Baiguo','China'),(20,'Definitive Jux','Sukaratu','Indonesia'),(21,'Desert Storm Records','Bitanjuan','Philippines'),(22,'Diplomat Records','Aktau','Kazakhstan'),(23,'Discografía de Zona Bruta','Boussé','Burkina Faso'),(24,'Disturbing Tha Peace Records','Longzui','China'),(25,'Duck Down Records','Lalapanzi','Zimbabwe'),(26,'Epidemic Records','Bardīyah','Libya'),(27,'Fiebre Records','Dayr as Sūdān','Palestinian Territory'),(28,'Flipmode Records','Fajsławice','Poland'),(29,'G-Unit Records','Sztum','Poland'),(30,'Get Low Records','Lailunggi','Indonesia'),(31,'GOOD Music','Lomme','France'),(32,'Ice Age Entertainment','Huze','China'),(33,'Ill Will Records','Zhixia','China'),(34,'Imperial Records','Lappeenranta','Finland'),(35,'Interscope Records','Soure','Brazil'),(36,'Jive Records','Évreux','France'),(37,'Kama Sutra Records','Shuangxikou','China'),(38,'Koch Entertainment','Kista','Sweden'),(39,'Loud Records','Isfahan','Iran'),(40,'Mad Decent','Pedroso','Portugal'),(41,'Mo\' Wax','Limoeiro do Norte','Brazil'),(42,'No Limit Records','Psary','Poland'),(43,'OWSLA','Stettler','Canada'),(44,'Polo Grounds Music','Huaqiao','China'),(45,'Priority Records','Saaban','Philippines'),(46,'Purple Ribbon Records','Kampungmasjid','Indonesia'),(47,'Rap-A-Lot Records','Fontenay-sous-Bois','France'),(48,'Real Money Records','Vilarinho das Cambas','Portugal'),(49,'Roc-A-Fella Records','Lutun','China'),(50,'Ruthless Records','Al Ḩarf','Yemen'),(51,'SFDK Records','Wanquan','China'),(52,'Shady Records','Johor Bahru','Malaysia'),(53,'Sigla Music','San Rafael','Argentina'),(54,'Slip-n-Slide Records','Zhoupu','China'),(55,'So So Def','Nelson','Canada'),(56,'Soul Clap','Shengao','China'),(57,'Star Trak Entertainment','Mt Peto','Jamaica'),(58,'Stones Throw Records','Jing’an','China'),(59,'Sudametrica','Paipu','China'),(60,'Sugar Hill Records','Wushan','China'),(61,'Superego','Haoxinying','China'),(62,'Swishahouse','Karajeun','Indonesia'),(63,'The Black Label','Radamata','Indonesia'),(64,'The Inc. Records','Kaduna','Nigeria'),(65,'Tommy Boy Records','Jinshan','China'),(66,'Top Dawg Entertainment','Purwodadi','Indonesia'),(67,'Uglyworkz Entertainment','Kalimeneng','Indonesia'),(68,'Universal Records','Zuogaiduoma','China'),(69,'Uptown Records','Mizdah','Libya'),(70,'Web Entertainment','Cliza','Bolivia'),(71,'Yo Gano','Burlatskoye','Russia'),(72,'Young Money Entertainment','Strogino','Russia');
/*!40000 ALTER TABLE `discográfica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discográfica_has_artista`
--

DROP TABLE IF EXISTS `discográfica_has_artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discográfica_has_artista` (
  `DISCOGRÁFICA_idDISCOGRÁFICA` int NOT NULL,
  `ARTISTA_idARTISTA` int NOT NULL,
  `fecha_alta` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `factura` double DEFAULT NULL,
  PRIMARY KEY (`DISCOGRÁFICA_idDISCOGRÁFICA`,`ARTISTA_idARTISTA`),
  KEY `fk_DISCOGRÁFICA_has_ARTISTA_ARTISTA1_idx` (`ARTISTA_idARTISTA`),
  KEY `fk_DISCOGRÁFICA_has_ARTISTA_DISCOGRÁFICA_idx` (`DISCOGRÁFICA_idDISCOGRÁFICA`),
  CONSTRAINT `fk_DISCOGRÁFICA_has_ARTISTA_ARTISTA1` FOREIGN KEY (`ARTISTA_idARTISTA`) REFERENCES `artista` (`idARTISTA`),
  CONSTRAINT `fk_DISCOGRÁFICA_has_ARTISTA_DISCOGRÁFICA` FOREIGN KEY (`DISCOGRÁFICA_idDISCOGRÁFICA`) REFERENCES `discográfica` (`idDISCOGRÁFICA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discográfica_has_artista`
--

LOCK TABLES `discográfica_has_artista` WRITE;
/*!40000 ALTER TABLE `discográfica_has_artista` DISABLE KEYS */;
INSERT INTO `discográfica_has_artista` VALUES (1,34,'1997-09-11','2021-06-16',970040),(1,49,'2001-12-19',NULL,641220.31),(2,39,'1999-10-24','2013-10-03',927112.34),(4,46,'1997-05-14',NULL,105001.22),(5,3,'1995-10-15','2017-06-12',635843.52),(6,4,'1998-11-02','2014-11-02',838555.62),(9,33,'1996-09-22','2016-06-19',968113.09),(10,50,'1998-06-28','2003-05-06',186573.28),(10,63,'2001-11-29',NULL,751359.62),(11,20,'1999-02-27','2020-01-03',94111.02),(12,7,'1991-06-27','2006-04-17',309533.3),(13,62,'2001-01-18',NULL,194267.05),(13,67,'1996-03-10','2018-05-16',104284.34),(14,5,'1996-10-17','2005-02-26',322270.62),(15,23,'1991-09-10',NULL,15218.46),(15,47,'1996-08-06','2004-09-15',798127.72),(16,1,'1994-03-31','2020-07-29',89577.27),(16,10,'1992-11-01','2010-07-03',156645.49),(16,16,'1991-08-04',NULL,523535.66),(16,22,'1996-04-17','2003-11-25',822077.07),(16,42,'1993-01-15','2007-11-13',107991.95),(18,45,'1999-08-26','2017-12-25',12637.94),(18,48,'1991-03-15','2019-08-21',67254.75),(18,52,'1997-06-10',NULL,105930.35),(18,66,'1999-08-23','2021-08-06',526755.85),(20,21,'1994-01-11','2013-04-21',612261.54),(20,30,'2000-03-02',NULL,501236.61),(20,65,'1998-05-18','2013-02-24',648728.45),(21,6,'1993-12-25','2007-05-03',163436.88),(22,57,'1996-12-30','2012-05-21',892185.54),(22,61,'2000-11-19',NULL,799160.2),(23,58,'1997-03-12','2021-08-23',75241.62),(23,59,'2000-07-17','2018-11-02',45669.07),(26,35,'1990-04-07',NULL,324221.15),(27,41,'2000-12-25','2004-07-09',959242.38),(28,27,'2001-08-03','2010-05-31',690864.68),(28,60,'2002-01-07',NULL,825804.3),(29,13,'1990-07-16','2009-02-24',687075.58),(29,24,'1992-06-05','2011-09-17',141139.25),(29,44,'1995-11-03','2014-04-10',185313.13),(29,68,'1998-11-08','2021-05-20',514788),(30,29,'2000-06-18',NULL,770669.59),(30,64,'1997-03-02','2010-01-29',461555.98),(31,10,'1999-02-04','2019-12-31',694729.04),(31,18,'1993-12-05','2016-03-21',103665.49),(31,26,'1999-02-03',NULL,315347.92),(33,25,'2000-05-30','2004-04-30',424192.63),(34,26,'1997-06-13','2010-07-13',83365.04),(34,38,'2000-12-25',NULL,598668.73),(36,2,'2000-05-24','2008-06-19',48601.44),(38,17,'1992-02-09',NULL,446587.17),(38,38,'1994-10-09','2009-03-24',204011.93),(38,41,'1993-09-21','2020-12-02',799477),(39,12,'1992-06-10','2005-12-25',850581.76),(40,54,'1990-06-19','2014-09-30',71571.49),(42,23,'1993-03-11','2011-04-29',135583.97),(42,24,'2001-05-07','2004-01-31',788044.78),(42,60,'1991-05-28','2015-10-24',168221.41),(43,18,'2001-10-29',NULL,98612.61),(43,58,'1992-02-23','2002-07-11',230933.1),(45,7,'1991-05-11','2008-03-09',338826.82),(46,55,'1995-11-02','2016-09-09',448794.84),(47,43,'1999-09-21','2010-05-10',217223.13),(48,54,'2001-09-16','2006-11-24',780275.89),(49,31,'1996-05-05',NULL,293925.09),(50,51,'1996-12-21','2004-01-19',943974.06),(51,9,'1998-07-14','2018-12-10',607887.52),(51,15,'1993-09-27','2012-12-04',515431.59),(51,46,'1990-09-24','2010-07-11',146574.05),(52,35,'1994-08-07','2020-02-25',970274.39),(52,52,'1997-02-27',NULL,812151.63),(54,51,'1992-12-10','2008-05-20',352247.55),(56,24,'1990-03-26','2019-04-27',228233.74),(56,37,'1993-02-14','2003-12-19',376957.35),(56,38,'2000-12-29','2019-08-23',871351.01),(57,15,'1992-01-14','2011-04-11',321913.04),(57,55,'1995-07-07',NULL,754124.99),(58,38,'2001-01-27','2014-10-20',63314.35),(58,43,'1992-05-20','2003-04-03',689704.45),(59,29,'1990-01-01','2021-01-09',564893.34),(61,13,'1998-02-15','2008-01-18',407343.12),(63,21,'1990-12-03','2017-02-04',672519.9),(63,32,'1995-10-01',NULL,924749),(63,51,'1991-06-20','2021-11-04',167954.28),(65,5,'1993-07-03','2013-10-13',959285.7),(66,18,'1999-08-23',NULL,525098.28),(66,26,'1998-04-27','2020-10-08',754860.24),(67,39,'2001-09-24','2005-09-14',400049.37),(67,44,'1996-01-24','2004-08-15',944750.29),(68,1,'1996-08-23','2009-04-01',588394.8),(68,38,'1997-01-20','2006-01-14',879193.03),(68,55,'1992-12-26',NULL,699554.23),(70,12,'1993-11-26','2011-05-23',691081.2),(70,13,'1992-08-26',NULL,932740.82),(70,57,'1994-03-01','2013-10-01',579117.41),(71,6,'1992-03-17',NULL,371957.24),(71,21,'1999-03-23','2019-09-29',42292.64),(71,30,'1993-03-09','2011-05-01',769117.15),(71,58,'1992-09-18',NULL,408746.08),(72,57,'1994-07-20','2016-11-14',724993.23);
/*!40000 ALTER TABLE `discográfica_has_artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productor`
--

DROP TABLE IF EXISTS `productor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productor` (
  `idPRODUCTOR` int NOT NULL,
  `ARTISTA_idARTISTA` int NOT NULL,
  PRIMARY KEY (`idPRODUCTOR`),
  KEY `fk_PRODUCTOR_ARTISTA1_idx` (`ARTISTA_idARTISTA`),
  CONSTRAINT `fk_PRODUCTOR_ARTISTA1` FOREIGN KEY (`ARTISTA_idARTISTA`) REFERENCES `artista` (`idARTISTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productor`
--

LOCK TABLES `productor` WRITE;
/*!40000 ALTER TABLE `productor` DISABLE KEYS */;
INSERT INTO `productor` VALUES (1,51),(2,52),(3,53),(4,54),(5,59),(6,66),(7,67),(8,68);
/*!40000 ALTER TABLE `productor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productor_has_canción`
--

DROP TABLE IF EXISTS `productor_has_canción`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productor_has_canción` (
  `PRODUCTOR_idPRODUCTOR` int NOT NULL,
  `CANCIÓN_idCANCIÓN` int NOT NULL,
  `¿principal?` tinytext,
  PRIMARY KEY (`PRODUCTOR_idPRODUCTOR`,`CANCIÓN_idCANCIÓN`),
  KEY `fk_PRODUCTOR_has_CANCIÓN_CANCIÓN1_idx` (`CANCIÓN_idCANCIÓN`),
  KEY `fk_PRODUCTOR_has_CANCIÓN_PRODUCTOR1_idx` (`PRODUCTOR_idPRODUCTOR`),
  CONSTRAINT `fk_PRODUCTOR_has_CANCIÓN_CANCIÓN1` FOREIGN KEY (`CANCIÓN_idCANCIÓN`) REFERENCES `canción` (`idCANCIÓN`),
  CONSTRAINT `fk_PRODUCTOR_has_CANCIÓN_PRODUCTOR1` FOREIGN KEY (`PRODUCTOR_idPRODUCTOR`) REFERENCES `productor` (`idPRODUCTOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productor_has_canción`
--

LOCK TABLES `productor_has_canción` WRITE;
/*!40000 ALTER TABLE `productor_has_canción` DISABLE KEYS */;
INSERT INTO `productor_has_canción` VALUES (7,28,'true');
/*!40000 ALTER TABLE `productor_has_canción` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rapero`
--

DROP TABLE IF EXISTS `rapero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rapero` (
  `idRAPERO` int NOT NULL,
  `ARTISTA_idARTISTA` int NOT NULL,
  PRIMARY KEY (`idRAPERO`),
  KEY `fk_RAPERO_ARTISTA1_idx` (`ARTISTA_idARTISTA`),
  CONSTRAINT `fk_RAPERO_ARTISTA1` FOREIGN KEY (`ARTISTA_idARTISTA`) REFERENCES `artista` (`idARTISTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rapero`
--

LOCK TABLES `rapero` WRITE;
/*!40000 ALTER TABLE `rapero` DISABLE KEYS */;
INSERT INTO `rapero` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,55),(52,56),(53,57),(54,58),(55,60),(56,61),(57,62),(58,63),(59,64),(60,65);
/*!40000 ALTER TABLE `rapero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rapero_has_canción`
--

DROP TABLE IF EXISTS `rapero_has_canción`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rapero_has_canción` (
  `RAPERO_idRAPERO` int NOT NULL,
  `CANCIÓN_idCANCIÓN` int NOT NULL,
  `¿principal?` tinytext,
  PRIMARY KEY (`RAPERO_idRAPERO`,`CANCIÓN_idCANCIÓN`),
  KEY `fk_RAPERO_has_CANCIÓN_CANCIÓN1_idx` (`CANCIÓN_idCANCIÓN`),
  KEY `fk_RAPERO_has_CANCIÓN_RAPERO1_idx` (`RAPERO_idRAPERO`),
  CONSTRAINT `fk_RAPERO_has_CANCIÓN_CANCIÓN1` FOREIGN KEY (`CANCIÓN_idCANCIÓN`) REFERENCES `canción` (`idCANCIÓN`),
  CONSTRAINT `fk_RAPERO_has_CANCIÓN_RAPERO1` FOREIGN KEY (`RAPERO_idRAPERO`) REFERENCES `rapero` (`idRAPERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rapero_has_canción`
--

LOCK TABLES `rapero_has_canción` WRITE;
/*!40000 ALTER TABLE `rapero_has_canción` DISABLE KEYS */;
INSERT INTO `rapero_has_canción` VALUES (1,1,'true'),(1,2,'true'),(1,3,'true'),(1,4,'true'),(1,5,'true'),(15,16,'true'),(15,17,'true'),(15,18,'true'),(15,19,'true'),(15,20,'true'),(35,9,'false'),(42,19,'false'),(42,20,'false'),(42,21,'true'),(42,22,'true'),(42,23,'true'),(42,24,'true'),(42,25,'true'),(44,11,'true'),(44,12,'true'),(44,13,'true'),(44,14,'true'),(44,15,'true'),(51,6,'true'),(51,7,'true'),(51,8,'true'),(51,9,'true'),(51,10,'true'),(51,26,'true'),(51,27,'true'),(51,28,'false'),(52,6,'false'),(53,9,'false'),(53,28,'false'),(55,6,'false');
/*!40000 ALTER TABLE `rapero_has_canción` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista1`
--

DROP TABLE IF EXISTS `vista1`;
/*!50001 DROP VIEW IF EXISTS `vista1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista1` AS SELECT 
 1 AS `Nombre_artístico`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista2`
--

DROP TABLE IF EXISTS `vista2`;
/*!50001 DROP VIEW IF EXISTS `vista2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista2` AS SELECT 
 1 AS `idARTISTA`,
 1 AS `Nombre_artístico`,
 1 AS `Nombre`,
 1 AS `Apellidos`,
 1 AS `Estilo`,
 1 AS `Ciudad`,
 1 AS `País`,
 1 AS `BANDA_idBANDA`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `álbum`
--

DROP TABLE IF EXISTS `álbum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `álbum` (
  `idÁLBUM` int NOT NULL,
  `título` varchar(45) NOT NULL,
  `año_publicación` varchar(45) NOT NULL,
  `imagen_portada` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idÁLBUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `álbum`
--

LOCK TABLES `álbum` WRITE;
/*!40000 ALTER TABLE `álbum` DISABLE KEYS */;
INSERT INTO `álbum` VALUES (1,'It Takes A Nation Of Millions To Hold Us Back','2001',NULL),(2,'Blacc Hollywood','2009',NULL),(3,'The Low End Theory','2001',NULL),(4,'The Chronic','1993',NULL),(5,'Doggystyle','2009',NULL),(6,'Rolling Papers','2011',NULL),(7,'17','2017',NULL),(8,'Shoot For The Stars Aim For The Moon','2020',NULL);
/*!40000 ALTER TABLE `álbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP FUNCTION IF EXISTS `calcular_artistas_bandas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_artistas_bandas`(banda int) RETURNS int
    DETERMINISTIC
begin
	declare num_artistas int;

	select count(a.BANDA_idBANDA) into num_artistas  
	from banda b inner join artista a on b.idBANDA = a.BANDA_idBANDA 
	where b.idBANDA = banda 
	group by b.idBANDA  ;

	return num_artistas  ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `calcular_canciones_artistas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_canciones_artistas`(IDARTISTA int) RETURNS int
    DETERMINISTIC
begin
	declare canciones_raperos int;
	declare canciones_productores int;
	declare total_canciones int;
	
	select count(rhc.CANCIÓN_idCANCIÓN) into canciones_raperos 
	from artista a inner join rapero r on a.idARTISTA = r.ARTISTA_idARTISTA 
	inner join rapero_has_canción rhc on rhc.RAPERO_idRAPERO = r.idRAPERO 
	where a.idARTISTA = IDARTISTA 
	group by rhc.RAPERO_idRAPERO ;
	
	select count(phc.CANCIÓN_idCANCIÓN) into canciones_productores 
	from artista a inner join productor p on a.idARTISTA = p.ARTISTA_idARTISTA 
 	inner join productor_has_canción phc on phc.PRODUCTOR_idPRODUCTOR = p.idPRODUCTOR 
   	where a.idARTISTA = IDARTISTA 
   	group by phc.PRODUCTOR_idPRODUCTOR ;
	
	if (canciones_raperos is null) then
			set canciones_raperos = 0;
	end if;
   
	if (canciones_productores is null) then 
		set canciones_productores = 0;
	end if;
	
	set total_canciones = canciones_raperos + canciones_productores ;

	return total_canciones ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `aplicar_factura_artista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `aplicar_factura_artista`(IDARTISTA int)
begin
	declare num_canciones int;
	set num_canciones = calcular_canciones_artistas (IDARTISTA);

	if (num_canciones>5) then
		update discográfica_has_artista dha
		set dha.factura = dha.factura + 100
		where dha.ARTISTA_idARTISTA = IDARTISTA ;
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cursor_datos_concatenados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_datos_concatenados`()
begin
	DECLARE done INT DEFAULT FALSE;
	declare datos varchar (1000);

	DECLARE cur CURSOR FOR select concat('ID: ',a.idARTISTA ,' Nombre artistico: ',a.Nombre_artístico,' Nombre: ',a.Nombre, ' Apellido: ',a.Apellidos,' Estilo: ',a.Estilo,' Ciudad: ',a.Ciudad,' Pais: ',a.País) from artista a;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE; 

	open cur ;

	while done = false do  
		FETCH cur INTO datos;
		select datos;
	end while;

	close cur;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lista_artistas_factura_maxima` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `lista_artistas_factura_maxima`(disco int , n int )
begin
	select d.idDISCOGRÁFICA , a.idARTISTA , a.Nombre_artístico , dha.factura 
	from artista a inner join discográfica_has_artista dha on a.idARTISTA = dha.ARTISTA_idARTISTA 
	inner join discográfica d on dha.DISCOGRÁFICA_idDISCOGRÁFICA = d.idDISCOGRÁFICA 
	where d.idDISCOGRÁFICA = disco
	order by dha.factura desc limit n;	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista1`
--

/*!50001 DROP VIEW IF EXISTS `vista1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista1` AS select `a`.`Nombre_artístico` AS `Nombre_artístico` from (`discográfica_has_artista` `dha` join `artista` `a` on((`dha`.`ARTISTA_idARTISTA` = `a`.`idARTISTA`))) where ((`dha`.`fecha_baja` is not null) and (((to_days(`dha`.`fecha_baja`) - to_days(`dha`.`fecha_alta`)) / 365) >= 5)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista2`
--

/*!50001 DROP VIEW IF EXISTS `vista2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista2` AS select `a`.`idARTISTA` AS `idARTISTA`,`a`.`Nombre_artístico` AS `Nombre_artístico`,`a`.`Nombre` AS `Nombre`,`a`.`Apellidos` AS `Apellidos`,`a`.`Estilo` AS `Estilo`,`a`.`Ciudad` AS `Ciudad`,`a`.`País` AS `País`,`a`.`BANDA_idBANDA` AS `BANDA_idBANDA` from (((`artista` `a` join `rapero` `r` on((`a`.`idARTISTA` = `r`.`ARTISTA_idARTISTA`))) join `rapero_has_canción` `rhc` on((`r`.`idRAPERO` = `rhc`.`RAPERO_idRAPERO`))) join `canción` `c` on((`rhc`.`CANCIÓN_idCANCIÓN` = `c`.`idCANCIÓN`))) where ((`c`.`título` = 'KK') and (`rhc`.`¿principal?` = 'false')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-26 12:22:00
