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


-- Dumping database structure for id21832224_karyawansi
-- CREATE DATABASE IF NOT EXISTS `id21832224_karyawansi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
-- USE `id21832224_karyawansi`;

-- Dumping structure for table id21832224_karyawansi.tb_absen
CREATE TABLE IF NOT EXISTS `tb_absen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `waktu` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table id21832224_karyawansi.tb_absen: ~6 rows (approximately)
INSERT INTO `tb_absen` (`id`, `id_karyawan`, `nama`, `waktu`) VALUES
	(16, '1920392912', 'Budi Sanjaya', 'Thursday, 10-09-2020 07:52:25 am'),
	(17, '192', 'Sarah Mutia', 'Thursday, 10-09-2020 07:54:45 am'),
	(18, '9', 'Abdul Muhlisin Sudirman', 'Sunday, 20-09-2020 01:31:05 pm'),
	(20, '123', 'ihsan', 'Monday, 05-02-2024 01:59:40 pm'),
	(21, '123', 'ihsan', 'Monday, 12-02-2024 01:52:04 pm'),
	(22, '12345', 'ihsan', 'Sunday, 03-03-2024 09:35:59 pm');

-- Dumping structure for table id21832224_karyawansi.tb_absen_karyawan
CREATE TABLE IF NOT EXISTS `tb_absen_karyawan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_karyawan` int DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `waktu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `absen_masuk` longtext,
  `absen_keluar` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table id21832224_karyawansi.tb_absen_karyawan: ~1 rows (approximately)
INSERT INTO `tb_absen_karyawan` (`id`, `id_karyawan`, `nama`, `waktu`, `absen_masuk`, `absen_keluar`) VALUES
	(7, 12345, 'ihsan', '2024-03-08', '2024-03-08 07:45:37', '2024-03-08 07:45:46'),
	(8, 12345, 'ihsan', '2024-03-09', '2024-03-09 07:46:15', '2024-03-09 07:46:31'),
	(9, 12345, 'ihsan', '2024-03-11', '2024-03-11 09:09:41', '2024-03-11 09:09:50'),
	(10, 12345, 'ihsan', '2024-03-12', '2024-03-12 09:10:27', NULL),
	(11, 12345, 'ihsan', '2024-03-13', '2024-03-13 09:12:37', '2024-03-13 09:12:41');

-- Dumping structure for table id21832224_karyawansi.tb_absen_pulang
CREATE TABLE IF NOT EXISTS `tb_absen_pulang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `waktu` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table id21832224_karyawansi.tb_absen_pulang: ~5 rows (approximately)
INSERT INTO `tb_absen_pulang` (`id`, `id_karyawan`, `nama`, `waktu`) VALUES
	(1, '123', 'ihsan', 'Monday, 29-01-2024 10:15:03 am'),
	(2, '123', 'ihsan', 'Monday, 29-01-2024 10:15:30 am'),
	(3, '123', 'ihsan', 'Monday, 29-01-2024 10:15:40 am'),
	(4, '123', 'ihsan', 'Monday, 05-02-2024 01:59:50 pm'),
	(5, '123', 'ihsan', 'Monday, 12-02-2024 01:52:47 pm');

-- Dumping structure for table id21832224_karyawansi.tb_daftar
CREATE TABLE IF NOT EXISTS `tb_daftar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table id21832224_karyawansi.tb_daftar: ~3 rows (approximately)
INSERT INTO `tb_daftar` (`id`, `username`, `password`) VALUES
	(5, 'admin2', 'admin2'),
	(6, 'admin', 'admin'),
	(133, 'test', 'test');

-- Dumping structure for table id21832224_karyawansi.tb_jabatan
CREATE TABLE IF NOT EXISTS `tb_jabatan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `jabatan` (`jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table id21832224_karyawansi.tb_jabatan: ~0 rows (approximately)
INSERT INTO `tb_jabatan` (`id`, `jabatan`) VALUES
	(5, 'CFO'),
	(7, 'CMO'),
	(8, 'COO'),
	(4, 'CTO'),
	(13, 'kkk'),
	(10, 'manager'),
	(9, 'Office Boy'),
	(6, 'WP Pemasaran');

-- Dumping structure for table id21832224_karyawansi.tb_karyawan
CREATE TABLE IF NOT EXISTS `tb_karyawan` (
  `id_karyawan` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tmp_tgl_lahir` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jenkel` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_general_ci NOT NULL,
  `no_tel` varchar(18) COLLATE utf8mb4_general_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table id21832224_karyawansi.tb_karyawan: ~4 rows (approximately)
INSERT INTO `tb_karyawan` (`id_karyawan`, `username`, `password`, `nama`, `tmp_tgl_lahir`, `jenkel`, `agama`, `alamat`, `no_tel`, `jabatan`, `foto`, `created_at`) VALUES
	(34, 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', 'aaa', 'bandung', 'Laki-laki', 'Islam', 'rongga', '09788567', 'CFO', '04032024011955download.jpg', '2024-03-04 01:19:55'),
	(123, 'ihsan', '202cb962ac59075b964b07152d234b70', 'ihsan', 'bandung', 'Laki-laki', 'Islam', 'rongga', '087876589', 'CEO', '29012024041407images.jpg', '2024-03-03 13:36:25'),
	(555, 'bbb', '08f8e0260c64418510cefb2b06eee5cd', 'bbb', 'bandung', 'Laki-laki', 'Islam', 'gununghalu', '091234', 'manager', '04032024012121apple.PNG', '2024-03-04 01:21:21'),
	(12345, 'ihsan', '827ccb0eea8a706c4c34a16891f84e7b', 'ihsan', 'rongga', 'Laki-laki', 'Islam', 'rongga', '08976458', 'CEO', '31012024070414download (4).jpg', '2024-03-03 13:36:25');

-- Dumping structure for table id21832224_karyawansi.tb_keterangan
CREATE TABLE IF NOT EXISTS `tb_keterangan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alasan` text COLLATE utf8mb4_general_ci NOT NULL,
  `waktu` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `bukti` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table id21832224_karyawansi.tb_keterangan: ~0 rows (approximately)
INSERT INTO `tb_keterangan` (`id`, `id_karyawan`, `nama`, `keterangan`, `alasan`, `waktu`, `bukti`) VALUES
	(54, '12345', 'ihsan', 'Izin pulang lebih awal', 'pulang awal', 'Tuesday, 12-03-2024 09:11:40 am', '12032024021217PNG_transparency_demonstration_1.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
