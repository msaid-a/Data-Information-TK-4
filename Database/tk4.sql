CREATE TABLE `HakAksess` (
  `idHakAksess` int NOT NULL,
  `NamaAksess` enum('READ','WRITE') NOT NULL,
  `Keterangan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idHakAksess`)
);
INSERT INTO `HakAksess` VALUES (1,'READ','cuman bisa lihat'),(2,'WRITE','bisa lihat dan edit');
select * from `HakAksess`;

CREATE TABLE `Pengguna` (
  `idPengguna` int NOT NULL AUTO_INCREMENT,
  `NamaPengguna` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `NamaDepan` varchar(100) DEFAULT NULL,
  `NamaBelakang` varchar(100) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `idAksess` int DEFAULT NULL,
  PRIMARY KEY (`idPengguna`),
  KEY `Pengguna_FK` (`idAksess`),
  CONSTRAINT `Pengguna_FK` FOREIGN KEY (`idAksess`) REFERENCES `HakAksess` (`idHakAksess`)
);

INSERT INTO `Pengguna` VALUES (1,'Ujang','asdasd','Ujang',NULL,'Cikalongwetan Bandung Barat',1),(2,'Asep','zxczxc','Asep',NULL,'Padalarang Bandung Barat',1),(3,'Usep Saepudin','qweqwe','Usep','Saepudin','Bandung',2);

CREATE TABLE `Barang` (
  `idBarang` int NOT NULL AUTO_INCREMENT,
  `NamaBarang` varchar(100) NOT NULL,
  `Keterangan` varchar(100) DEFAULT NULL,
  `Stock` int DEFAULT '0',
  `idPengguna` int DEFAULT NULL,
  PRIMARY KEY (`idBarang`),
  KEY `Barang_FK` (`idPengguna`),
  CONSTRAINT `Barang_FK` FOREIGN KEY (`idPengguna`) REFERENCES `Pengguna` (`idPengguna`)
);

INSERT INTO `Barang` VALUES (1,'Keyboard',NULL,5,2),(2,'Mouse',NULL,1,2),(3,'Monitor',NULL,5,2),(4,'Laptop',NULL,10,2),(5,'VGA',NULL,3,2),(6,'RAM',NULL,5,2),(7,'PSU',NULL,2,1),(8,'HDD',NULL,1,1),(9,'SSD',NULL,0,1),(10,'PC',NULL,1,3);

CREATE TABLE `Supplier` (
  `IdSupplier` int NOT NULL,
  `NamaSupplier` varchar(225) DEFAULT NULL,
  `AlamatSupplier` text,
  `Phone` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`IdSupplier`)
);
INSERT INTO `Supplier` VALUES (5751001,'Makmur Jaya','Bekasi','085804697263'),(5751002,'Makmur Mulya','Jakarta','085804697264'),(5751003,'Cendana','Depok','085804697265'),(5751004,'Ciraca','Tanggerang','085804697266'),(5751005,'Suka Jaya','Banten','085804697267'),(5751006,'Sabar Jaya','Lampung','085804697268'),(5751007,'Suka Mulya','Bandung','085804697269'),(5751008,'Mulya Setia','Bogor','085804697270'),(5751009,'Berkah Jaya','Ciamis','085804697271'),(5751010,'Jaya Raya','Cilacap','085804697272'),(5751011,'Makmur Setia','Tegal','085804697273'),(5751012,'Sehat Sentosa','Cirebon','085804697274'),(5751013,'Ridho','Sukabumi','085804697275'),(5751014,'Arga Jaya','Tasik','085804697276'),(5751015,'Ari Makmur','Malang','085804697277'),(5751016,'Aristo Mandiri','Bogor','085804697278'),(5751017,'Ari Mandiri','Ciamis','085804697279'),(5751018,'Ridho Jaya','Cilacap','085804697280'),(5751019,'Mulya Mandiri','Tegal','085804697281'),(5751020,'Agung Santoso','Lampung','085804697282');

CREATE TABLE `Pembelian` (
  `idPembelian` int NOT NULL AUTO_INCREMENT,
  `JumlahPembelian` int NOT NULL,
  `HargaBeli` int NOT NULL,
  `idPengguna` int DEFAULT NULL,
  `idBarang` int NOT NULL,
  `idSupiler` int DEFAULT NULL,
  PRIMARY KEY (`idPembelian`),
  KEY `Pembelian_FK` (`idBarang`),
  KEY `Pembelian_FK_1` (`idSupiler`),
  CONSTRAINT `Pembelian_FK` FOREIGN KEY (`idBarang`) REFERENCES `Barang` (`idBarang`),
  CONSTRAINT `Pembelian_FK_1` FOREIGN KEY (`idSupiler`) REFERENCES `Supplier` (`IdSupplier`)
);

CREATE TABLE `Penjualan` (
  `idPenjualan` int NOT NULL AUTO_INCREMENT,
  `JumlahPenjualan` int NOT NULL,
  `HargaJual` int NOT NULL,
  `idBarang` int NOT NULL,
  `idPengguna` int DEFAULT NULL,
  `idPelanggan` int DEFAULT NULL,
  PRIMARY KEY (`idPenjualan`),
  KEY `Penjualan_FK` (`idBarang`),
  KEY `Penjualan_FK_1` (`idPelanggan`),
  CONSTRAINT `Penjualan_FK` FOREIGN KEY (`idBarang`) REFERENCES `Barang` (`idBarang`),
  CONSTRAINT `Penjualan_FK_1` FOREIGN KEY (`idPelanggan`) REFERENCES `Pelanggan` (`IdPelanggan`)
);

CREATE TABLE `Pelanggan` (
  `IdPelanggan` int NOT NULL,
  `NamaPelanggan` varchar(225) DEFAULT NULL,
  `AlamatPelanggan` text,
  `Phone` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`IdPelanggan`)
);

INSERT INTO `Pelanggan` VALUES (63686001,'Andi','Lampung','081804697263'),(63686002,'Jono','Bandung','081804697264'),(63686003,'Budi','Bogor','081804697265'),(63686004,'Ridwan','Ciamis','081804697266'),(63686005,'Agung','Cilacap','081804697267'),(63686006,'Santoso','Tegal','081804697268'),(63686007,'Bandi','Cirebon','081804697269'),(63686008,'Bari','Sukabumi','081804697270'),(63686009,'Rudi','Tasik','081804697271'),(63686010,'Doni','Malang','081804697272'),(63686011,'Galih','Bekasi','081804697273'),(63686012,'Ibnu','Jakarta','081804697274'),(63686013,'Rizki','Depok','081804697275'),(63686014,'Sari','Tanggerang','081804697276'),(63686015,'Ruswanto','Banten','081804697277'),(63686016,'Tasya','Ciamis','081804697278'),(63686017,'Nahli','Cilacap','081804697279'),(63686018,'Tegar','Tegal','081804697280'),(63686019,'Dheo','Cirebon','081804697282'),(63686020,'Riyan','Sukabumi','081804697283');

INSERT INTO `Penjualan` VALUES (1,1,70,4,2,63686001),(2,1,70,4,2,63686002),(3,1,70,4,2,63686004),(4,1,70,4,2,63686006),(5,1,70,4,2,63686009),(6,1,70,4,2,63686012),(7,1,70,4,1,63686002),(8,1,70,4,1,63686013),(9,1,70,4,1,63686016),(10,1,70,4,3,63686018),(11,1,30,1,2,63686018),(12,1,30,1,3,63686018),(13,1,30,1,1,63686006),(14,1,30,1,1,63686020),(15,1,30,1,2,63686018),(16,1,100,3,4,63686019),(17,1,100,3,5,63686002),(18,1,100,3,2,63686012),(19,1,100,3,1,63686015),(20,1,100,3,3,63686018);
