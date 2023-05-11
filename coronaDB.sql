-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: corona
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `corona`
--

DROP TABLE IF EXISTS `corona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corona` (
  `coronaID` int NOT NULL AUTO_INCREMENT,
  `dateOfRecovery` varchar(255) DEFAULT NULL,
  `workerID` int DEFAULT NULL,
  `dateOfIllness` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`coronaID`),
  KEY `workerID_idx` (`workerID`),
  CONSTRAINT `workerID` FOREIGN KEY (`workerID`) REFERENCES `workers` (`workerID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corona`
--

LOCK TABLES `corona` WRITE;
/*!40000 ALTER TABLE `corona` DISABLE KEYS */;
INSERT INTO `corona` VALUES (1,'16/07/2023',6,'15/06/2023'),(2,'16/07/2023',2,'15/06/2023'),(3,'16/07/2023',18,'15/06/2023'),(4,'16/07/2023',20,'15/06/2023'),(5,'12/03/2020',22,'12/02/2020'),(6,'22/05/2023',28,'12/05/2023'),(7,'16/07/2023',31,'15/06/2023'),(8,'12/03/2020',32,'12/02/2020'),(9,'12/03/2020',30,'12/02/2020'),(10,'12/03/2020',2,'12/02/202055'),(11,'12/03/2022',2,'12/02/2022'),(12,'12/03/2022',22,'12/02/202255'),(13,'12/02/2020',33,'12/01/2020'),(14,'12/02/202022',33,'12/01/2020'),(15,'12/02/202022',33,'12/01/2020'),(16,'12/02/202022',33,'12/01/2020'),(17,'12/02/202022',33,'12/01/2020');
/*!40000 ALTER TABLE `corona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccination`
--

DROP TABLE IF EXISTS `vaccination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccination` (
  `dateOfTaking` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `workerID` int DEFAULT NULL,
  `vaccinationID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`vaccinationID`),
  KEY `workerID_idx` (`workerID`),
  CONSTRAINT `workerIDVac` FOREIGN KEY (`workerID`) REFERENCES `workers` (`workerID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccination`
--

LOCK TABLES `vaccination` WRITE;
/*!40000 ALTER TABLE `vaccination` DISABLE KEYS */;
INSERT INTO `vaccination` VALUES ('12/02/2020','pfizer',2,1),('12/03/2020','pfizer',2,2),('12/02/2020','pfizer',2,3),('12/02/2020','pfizer',2,4),('12/03/2020','pfizer',3,5),('12/02/2020','pfizer',10,6),('12/02/2020','pfizer',18,7),('12/02/2020','pfizer',18,8),('12/02/2020','pfizer',18,9),('12/02/2020','pfizer',6,10),('12/03/2020','pfizer',18,11),('12/05/2020','PFIZER',22,12),('12/08/2020','moderna',22,13),('12/02/2020','pfizer',20,14),('12/08/2020','moderna',28,15),('14/07/2020','moderna',28,16),('12/12/2020','moderna',28,17),('12/02/2020','pfizer',30,18),('12/12/2020','moderna',30,19),('12/03/2020','pfizer',30,20),('12/04/2020','moderna',30,21),('10/05/2023','moderna',31,22),('12/02/2021','moderna',32,23),('12/02/2020','moderna',33,24),('12/02/2020','moderna',32,28);
/*!40000 ALTER TABLE `vaccination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workers` (
  `workerID` int NOT NULL,
  `workerFullName` varchar(255) DEFAULT NULL,
  `workerAdress` varchar(255) DEFAULT NULL,
  `workerPhone` varchar(255) DEFAULT NULL,
  `workerMobilePhone` varchar(255) DEFAULT NULL,
  `workerBirth` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`workerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'תמר גרוסמן','רוזובסקי 10 בני ברק','03-6166581','058-3254978','15/06/2003'),(2,'רות כהן','מוהליבר 15 בני ברק','03-6166589','058-2458798','15/04/2020'),(3,'הדסה לוי','דניאל 4 בני ברק','03-6665871','058-2456875','20/06/1999'),(4,'שמעון לוין','ראדזמין 1 בני ברק','03-6665872','058-2456866','16/07/2001'),(6,'יצחק ישראל','דנולו 10 בני ברק','03-6665873','058-2456877','12/12/2000'),(10,'חוה דעת','יצחק אלחנן 5 תל אביב','03-6665878','058-2456888','14/01/1998'),(18,'יונה מילמן','חזון איש 14 בני ברק','03-6665874','058-2456899','15/02/2000'),(20,'מרדכי יצחקי','המגינים 3 פתח תקווה','03-6665875','058-2451234','07/08/1997'),(22,'נעמה גילין','מלאכי 3 בני ברק','03-6665876','058-2453214','11/08/1977'),(28,'מיכל שוובי','סוקולוב 36 בני ברק','03-6665877','058-8547965','03/05/1998'),(29,'יעל נעימי','בית יוסף 19 בני ברק','03-6166581','058-5489632','30/05/1999'),(30,'ברכה לוי','תרזה קוגלמן 3 פתח תקווה','03-6455121','058-7845212','02/10/2001'),(31,'זאב עטיה','אהרונסון 9 בני ברק','03-666555','058-7899855','01/01/1987'),(32,'חוי גרוסמן','רוזובסקי 10 בני ברק','03-6188745','052-7154789','11/07/1977'),(33,'יפה חמני','הלחי 3 בני בררק','03-9098745','052-7159865','12/02/1985');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-11 15:41:16
