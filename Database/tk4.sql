-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: tk4
-- ------------------------------------------------------
-- Server version	5.7.41

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
-- Table structure for table `Barang`
--

DROP TABLE IF EXISTS `Barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Barang` (
  `idBarang` int(11) NOT NULL AUTO_INCREMENT,
  `NamaBarang` varchar(100) NOT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `Stock` int(11) DEFAULT '0',
  `idPengguna` int(11) DEFAULT NULL,
  `Paket` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBarang`),
  KEY `Barang_FK` (`idPengguna`),
  CONSTRAINT `Barang_FK` FOREIGN KEY (`idPengguna`) REFERENCES `Pengguna` (`idPengguna`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Barang`
--

LOCK TABLES `Barang` WRITE;
/*!40000 ALTER TABLE `Barang` DISABLE KEYS */;
INSERT INTO `Barang` VALUES (1,'Keyboard',NULL,5,2,1),(2,'Mouse',NULL,1,2,1),(3,'Monitor',NULL,5,2,1),(4,'Laptop',NULL,10,2,2),(5,'VGA',NULL,3,2,2),(6,'RAM',NULL,5,2,3),(7,'PSU',NULL,2,1,4),(8,'HDD',NULL,1,1,3),(9,'SSD',NULL,0,1,4),(10,'PC',NULL,1,3,3);
/*!40000 ALTER TABLE `Barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HakAksess`
--

DROP TABLE IF EXISTS `HakAksess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HakAksess` (
  `idHakAksess` int(11) NOT NULL,
  `NamaAksess` enum('READ','WRITE') NOT NULL,
  `Keterangan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idHakAksess`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HakAksess`
--

LOCK TABLES `HakAksess` WRITE;
/*!40000 ALTER TABLE `HakAksess` DISABLE KEYS */;
INSERT INTO `HakAksess` VALUES (1,'READ','cuman bisa lihat'),(2,'WRITE','bisa lihat dan edit');
/*!40000 ALTER TABLE `HakAksess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pelanggan`
--

DROP TABLE IF EXISTS `Pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pelanggan` (
  `IdPelanggan` int(11) NOT NULL,
  `NamaPelanggan` varchar(225) DEFAULT NULL,
  `AlamatPelanggan` text,
  `Phone` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`IdPelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pelanggan`
--

LOCK TABLES `Pelanggan` WRITE;
/*!40000 ALTER TABLE `Pelanggan` DISABLE KEYS */;
INSERT INTO `Pelanggan` VALUES (63686001,'Andi','Lampung','081804697263'),(63686002,'Jono','Bandung','081804697264'),(63686003,'Budi','Bogor','081804697265'),(63686004,'Ridwan','Ciamis','081804697266'),(63686005,'Agung','Cilacap','081804697267'),(63686006,'Santoso','Tegal','081804697268'),(63686007,'Bandi','Cirebon','081804697269'),(63686008,'Bari','Sukabumi','081804697270'),(63686009,'Rudi','Tasik','081804697271'),(63686010,'Doni','Malang','081804697272'),(63686011,'Galih','Bekasi','081804697273'),(63686012,'Ibnu','Jakarta','081804697274'),(63686013,'Rizki','Depok','081804697275'),(63686014,'Sari','Tanggerang','081804697276'),(63686015,'Ruswanto','Banten','081804697277'),(63686016,'Tasya','Ciamis','081804697278'),(63686017,'Nahli','Cilacap','081804697279'),(63686018,'Tegar','Tegal','081804697280'),(63686019,'Dheo','Cirebon','081804697282'),(63686020,'Riyan','Sukabumi','081804697283');
/*!40000 ALTER TABLE `Pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pembelian`
--

DROP TABLE IF EXISTS `Pembelian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pembelian` (
  `idPembelian` int(11) NOT NULL AUTO_INCREMENT,
  `JumlahPembelian` int(11) NOT NULL,
  `HargaBeli` int(11) NOT NULL,
  `idPengguna` int(11) DEFAULT NULL,
  `idBarang` int(11) NOT NULL,
  `idSupiler` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPembelian`),
  KEY `Pembelian_FK` (`idBarang`),
  KEY `Pembelian_FK_1` (`idSupiler`),
  CONSTRAINT `Pembelian_FK` FOREIGN KEY (`idBarang`) REFERENCES `Barang` (`idBarang`),
  CONSTRAINT `Pembelian_FK_1` FOREIGN KEY (`idSupiler`) REFERENCES `Supplier` (`IdSupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pembelian`
--

LOCK TABLES `Pembelian` WRITE;
/*!40000 ALTER TABLE `Pembelian` DISABLE KEYS */;
INSERT INTO `Pembelian` VALUES (1,5,100,2,1,5751001),(2,1,100,2,2,5751001),(3,5,400,2,3,5751001),(4,10,600,2,4,5751001),(5,3,1000,2,5,5751001),(6,5,200,2,6,5751001),(7,2,200,1,7,5751004),(8,1,150,1,8,5751004),(9,0,200,1,9,5751004),(10,1,700,3,10,5751011),(11,5,100,2,1,5751001),(12,1,100,3,2,5751011),(13,5,400,1,3,5751004),(14,10,600,1,4,5751004),(15,3,1000,2,5,5751001),(16,5,200,4,6,5751013),(17,2,200,5,7,5751016),(18,1,150,2,8,5751001),(19,0,200,1,9,5751004),(20,1,700,3,10,5751011);
/*!40000 ALTER TABLE `Pembelian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pengguna`
--

DROP TABLE IF EXISTS `Pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pengguna` (
  `idPengguna` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPengguna` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `NamaDepan` varchar(100) DEFAULT NULL,
  `NamaBelakang` varchar(100) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `idAksess` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPengguna`),
  KEY `Pengguna_FK` (`idAksess`),
  CONSTRAINT `Pengguna_FK` FOREIGN KEY (`idAksess`) REFERENCES `HakAksess` (`idHakAksess`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pengguna`
--

LOCK TABLES `Pengguna` WRITE;
/*!40000 ALTER TABLE `Pengguna` DISABLE KEYS */;
INSERT INTO `Pengguna` VALUES (1,'Ujang','asdasd','Ujang',NULL,'Cikalongwetan Bandung Barat',1),(2,'Asep','zxczxc','Asep',NULL,'Padalarang Bandung Barat',1),(3,'Usep Saepudin','qweqwe','Usep','Saepudin','Bandung',2);
/*!40000 ALTER TABLE `Pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Penjualan`
--

DROP TABLE IF EXISTS `Penjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Penjualan` (
  `idPenjualan` int(11) NOT NULL AUTO_INCREMENT,
  `JumlahPenjualan` int(11) NOT NULL,
  `HargaJual` int(11) NOT NULL,
  `idBarang` int(11) NOT NULL,
  `idPengguna` int(11) DEFAULT NULL,
  `idPelanggan` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPenjualan`),
  KEY `Penjualan_FK` (`idBarang`),
  KEY `Penjualan_FK_1` (`idPelanggan`),
  CONSTRAINT `Penjualan_FK` FOREIGN KEY (`idBarang`) REFERENCES `Barang` (`idBarang`),
  CONSTRAINT `Penjualan_FK_1` FOREIGN KEY (`idPelanggan`) REFERENCES `Pelanggan` (`IdPelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Penjualan`
--

LOCK TABLES `Penjualan` WRITE;
/*!40000 ALTER TABLE `Penjualan` DISABLE KEYS */;
INSERT INTO `Penjualan` VALUES (1,1,70,4,2,63686001),(2,1,70,4,2,63686002),(3,1,70,4,2,63686004),(4,1,70,4,2,63686006),(5,1,70,4,2,63686009),(6,1,70,4,2,63686012),(7,1,70,4,1,63686002),(8,1,70,4,1,63686013),(9,1,70,4,1,63686016),(10,1,70,4,3,63686018),(11,1,30,1,2,63686018),(12,1,30,1,3,63686018),(13,1,30,1,1,63686006),(14,1,30,1,1,63686020),(15,1,30,1,2,63686018),(16,1,100,3,4,63686019),(17,1,100,3,5,63686002),(18,1,100,3,2,63686012),(19,1,100,3,1,63686015),(20,1,100,3,3,63686018);
/*!40000 ALTER TABLE `Penjualan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier` (
  `IdSupplier` int(11) NOT NULL,
  `NamaSupplier` varchar(225) DEFAULT NULL,
  `AlamatSupplier` text,
  `Phone` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`IdSupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

-- Dump completed on 2023-02-03 11:28:38
