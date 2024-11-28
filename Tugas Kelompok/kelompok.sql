-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_penjualan
CREATE DATABASE IF NOT EXISTS `db_penjualan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_penjualan`;

-- Dumping structure for table db_penjualan.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(50) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_penjualan.barang: ~5 rows (approximately)
INSERT INTO `barang` (`id`, `nama_barang`, `harga`, `stok`, `kategori`) VALUES
	(6, 'kaos oblong', 50000, 70, 'busana'),
	(7, 'Mouse Wireless', 50000, 50, 'elektronik'),
	(10, 'dompet', 60000, 60, 'busana'),
	(11, 'kompor', 2000000, 200, 'alat masak'),
	(12, 'sepeda listrik', 7000000, 1, 'transportasi');

-- Dumping structure for table db_penjualan.penjualan
CREATE TABLE IF NOT EXISTS `penjualan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tgl_penjualan` date DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `jumlah_terjual` int DEFAULT NULL,
  `total_penjualan` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_penjualan.penjualan: ~2 rows (approximately)
INSERT INTO `penjualan` (`id`, `tgl_penjualan`, `nama_barang`, `harga`, `jumlah_terjual`, `total_penjualan`) VALUES
	(2, '2024-11-20', 'kaos kaki', 10000, 15, 150000),
	(4, '2024-11-23', 'pulpen', 5000, 20, 100000);

-- Dumping structure for table db_penjualan.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db_penjualan.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`) VALUES
	(1, '1234', '$2y$10$fL7M3VxNi41wkPcaWTbThuLbjDllPcY/wx9hoM8I9qp/7bEiayWsy'),
	(2, 'Aril', '$2y$10$MmGPyOzaDdFeNZBJP5Mfz.r9ep82xNsblYVWn4fzBqL5rTSEjlVYW'),
	(3, 'Ivan', '$2y$10$fKwcEx9TRC59hhyENh1QTOiAyomBUlXglr/J.xVA6A4HosfwVcpk2');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
