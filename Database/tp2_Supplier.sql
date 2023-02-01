-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: tp2
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.21.04.1

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
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier` (
  `IdSupplier` int NOT NULL,
  `NamaSupplier` varchar(225) DEFAULT NULL,
  `AlamatSupplier` text,
  `Phone` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`IdSupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES (5751001,'Makmur Jaya','Bekasi','085804697263'),(5751002,'Makmur Mulya','Jakarta','085804697264'),(5751003,'Cendana','Depok','085804697265'),(5751004,'Ciraca','Tanggerang','085804697266'),(5751005,'Suka Jaya','Banten','085804697267'),(5751006,'Sabar Jaya','Lampung','085804697268'),(5751007,'Suka Mulya','Bandung','085804697269'),(5751008,'Mulya Setia','Bogor','085804697270'),(5751009,'Berkah Jaya','Ciamis','085804697271'),(5751010,'Jaya Raya','Cilacap','085804697272'),(5751011,'Makmur Setia','Tegal','085804697273'),(5751012,'Sehat Sentosa','Cirebon','085804697274'),(5751013,'Ridho','Sukabumi','085804697275'),(5751014,'Arga Jaya','Tasik','085804697276'),(5751015,'Ari Makmur','Malang','085804697277'),(5751016,'Aristo Mandiri','Bogor','085804697278'),(5751017,'Ari Mandiri','Ciamis','085804697279'),(5751018,'Ridho Jaya','Cilacap','085804697280'),(5751019,'Mulya Mandiri','Tegal','085804697281'),(5751020,'Agung Santoso','Lampung','085804697282');
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-01 17:17:36
