-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for vorpv2
CREATE DATABASE IF NOT EXISTS `vorpv2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `vorpv2`;

-- Dumping structure for table vorpv2.underground
CREATE TABLE IF NOT EXISTS `underground` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `charidentifier` int(11) DEFAULT NULL,
  `coords` longtext DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `upgrades` longtext DEFAULT '[]',
  `owned` int(11) DEFAULT 0,
  `ledger` double DEFAULT 0,
  `items` longtext DEFAULT '[]',
  `invslots` int(11) DEFAULT 0,
  `invlevel` int(11) DEFAULT 0,
  `bookie` int(11) DEFAULT 0,
  `justraided` int(11) DEFAULT 0,
  `raidcooldown` int(11) DEFAULT 0,
  `raidday` int(11) DEFAULT 0,
  `lasttimer` int(11) DEFAULT 0,
  `lasttimer2` int(11) DEFAULT 0,
  `mashinfo` longtext DEFAULT '[]',
  `stillinfo` longtext DEFAULT '[]',
  `still` longtext DEFAULT '[]',
  `coowners` longtext DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table vorpv2.underground: ~0 rows (approximately)
/*!40000 ALTER TABLE `underground` DISABLE KEYS */;
/*!40000 ALTER TABLE `underground` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
