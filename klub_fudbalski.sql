-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for klub_fudbalski
CREATE DATABASE IF NOT EXISTS `klub_fudbalski` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `klub_fudbalski`;

-- Dumping structure for table klub_fudbalski.igrachi
CREATE TABLE IF NOT EXISTS `igrachi` (
  `dres_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(15) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `pozicija` varchar(30) NOT NULL,
  `godini` year(4) NOT NULL,
  `plata_denari` decimal(20,6) unsigned NOT NULL,
  `income_id` tinyint(2) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`dres_id`),
  KEY `FK_income_igrachi` (`income_id`),
  CONSTRAINT `FK_income_igrachi` FOREIGN KEY (`income_id`) REFERENCES `income` (`income_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.igrachi: ~42 rows (approximately)
INSERT INTO `igrachi` (`dres_id`, `ime`, `prezime`, `pozicija`, `godini`, `plata_denari`, `income_id`) VALUES
	(1, 'Mice', 'Dimov', 'Goalkeeper', '1997', 100000.000000, NULL),
	(2, 'Blagojche', 'Popovski', 'Centre Back', '1995', 64000.000000, NULL),
	(3, 'Andrej', 'Nedelkovski', 'Left Back', '1990', 55000.000000, NULL),
	(4, 'Darko', 'Joshevski', 'Right Back', '1991', 55000.000000, NULL),
	(5, 'Hristian', 'Risteski', 'Centre Back', '1999', 189500.000000, NULL),
	(6, 'Vladimir', 'Krsteski', 'Defensive Midfielder', '2000', 150000.000000, NULL),
	(7, 'Kire', 'Lazarov', 'Center Midfielder', '1997', 90000.000000, NULL),
	(8, 'Darko', 'Risteski', 'Attacking Midfilder', '1990', 65000.000000, NULL),
	(9, 'Borche', 'Manevski', 'Center Forward', '1988', 65000.000000, NULL),
	(10, 'Darko', 'Krstevski', 'Left Forward', '2006', 32000.000000, NULL),
	(11, 'Andrej', 'Markovski', 'Right Forward', '2000', 120000.000000, NULL),
	(12, 'Aleksandar', 'Markoski', 'Goalkeeper', '2001', 20000.000000, NULL),
	(13, 'Nikola', 'Piskacev', 'Left Back', '1980', 35000.000000, NULL),
	(14, 'Jove', 'Nikolov', 'Centre Back', '2008', 14000.000000, NULL),
	(15, 'Jove', 'Nikolovski', 'Right Back', '1997', 29000.000000, NULL),
	(16, 'Mile', 'Poposki', 'Defensive Midfielder', '1982', 10000.000000, NULL),
	(17, 'Jorgo', 'Popovski', 'Center Midfielder', '1985', 19000.000000, NULL),
	(18, 'Jordan', 'Mitev', 'Attacking Midfielder', '1985', 15000.000000, NULL),
	(19, 'Antimon', 'Krsteski', 'Goalkeeper', '1967', 18000.000000, NULL),
	(20, 'Cristiano', 'Ronaldo', 'Center Forward', '1997', 565000.000000, NULL),
	(21, 'Vlade', 'Krstevski', 'Left Forward', '1997', 39000.000000, NULL),
	(22, 'Deni', 'Popovski', 'Centre Back', '2007', 25000.000000, NULL),
	(23, 'Hristijan', 'Dragarski', 'Right Forward', '1991', 20000.000000, NULL),
	(24, 'Darko', 'Joshev', 'Physiotherapist', '1998', 45000.000000, NULL),
	(25, 'Hristi', 'Risteski', 'Condition Coach', '1990', 24000.000000, NULL),
	(26, 'Viktor', 'Koteski', 'Deputy Coach', '1979', 50000.000000, NULL),
	(27, 'Stefan', 'Ristevski', 'Coach', '1977', 90000.000000, NULL),
	(28, 'Darko', 'Risteski', 'Sports Director', '1980', 120000.000000, NULL),
	(30, 'Trajan', 'Rizovski', 'Left Back', '1995', 34000.000000, 02),
	(31, 'Najdo', 'Sikijovski', 'Right Winger', '2006', 34200.000000, 04),
	(33, 'Borche', 'Stojanovski', 'Left Winger', '2007', 42678.000000, 05),
	(34, 'Boro', 'Stojanov', 'Center Midfielder', '1998', 22385.000000, 06),
	(69, 'Vladimir', 'Krstevski', 'Director', '1967', 655000.000000, NULL),
	(77, 'Mice', 'Gacov', 'Right Back', '1998', 15000.000000, 03),
	(78, 'Darko', 'Krstevski', 'Left back', '2000', 14500.000000, 72),
	(79, 'Hristijan', 'Ristevski', 'Center back', '1998', 40000.000000, NULL),
	(80, 'robe', 'ristevski', 'Left back', '0000', 111111.000000, NULL),
	(81, 'robe', 'ristevski', 'Left back', '0000', 111111.000000, NULL),
	(82, 'Vlad', 'Piki', 'Center Back', '0000', 11111111.000000, NULL),
	(83, 'Stojan', 'Dimov', 'Center Forward', '1990', 20000.000000, 01),
	(89, 'Jorgo', 'Jorgov', 'Center Forward', '1999', 20000.000000, NULL),
	(93, 'Vlado', 'Pavlov', 'Coach', '1990', 20000.000000, 74);

-- Dumping structure for table klub_fudbalski.income
CREATE TABLE IF NOT EXISTS `income` (
  `income_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(15) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `pozicija` varchar(30) NOT NULL,
  `godini` year(4) NOT NULL,
  `klub` varchar(50) DEFAULT 'nema klub',
  `iznos_denari` decimal(20,6) NOT NULL,
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.income: ~8 rows (approximately)
INSERT INTO `income` (`income_id`, `ime`, `prezime`, `pozicija`, `godini`, `klub`, `iznos_denari`) VALUES
	(1, 'Stojan', 'Dimov', 'Center Forward', '1990', 'Fc Poesevo', 67000.000000),
	(2, 'Trajan', 'Rizovski', 'Left Back', '1995', 'Fc Budimerci United', 100000.000000),
	(3, 'Mice', 'Gacov', 'Right Back', '1998', 'Fc Budimerci United', 150000.000000),
	(4, 'Najdo', 'Sikijovski', 'Right Winger', '2006', 'Fc Gradeshnica United', 550000.000000),
	(5, 'Borche', 'Stojanoski', 'Left Winger', '2007', 'Fc Pelister Bitola', 230000.000000),
	(6, 'Boro', 'Stojanov', 'Center Midfielder', '1998', 'Fc Pelister Bitola', 1300000.000000),
	(71, 'Vladimir', 'Krstevski', 'Goalkeeper', '1997', 'Fc Pelister', 10000.000000),
	(72, 'Darko', 'Krstevski', 'Left back', '2000', 'Fc Manchester United', 120000.000000),
	(73, 'andrej', 'krstev', 'goalkeeper', '1998', 'Fc Manchester United', 500000.000000),
	(74, 'Vlado', 'Pavlov', 'Coach', '1990', 'free agent', 300000.000000);

-- Dumping structure for table klub_fudbalski.natprevaruvanje
CREATE TABLE IF NOT EXISTS `natprevaruvanje` (
  `kolo_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `datum` datetime NOT NULL,
  `protivnik` varchar(30) NOT NULL,
  `rezultat` varchar(30) NOT NULL,
  `mesto` varchar(50) NOT NULL,
  `sostav_id` tinyint(2) unsigned DEFAULT NULL,
  `stadion_id` tinyint(2) unsigned DEFAULT NULL,
  `datum_id` date DEFAULT NULL,
  PRIMARY KEY (`kolo_id`),
  UNIQUE KEY `datum` (`datum`,`protivnik`),
  KEY `FK_natprevaruvanje` (`sostav_id`),
  KEY `FK_stadion` (`stadion_id`),
  KEY `FK_publika` (`datum_id`),
  CONSTRAINT `FK_natprevaruvanje` FOREIGN KEY (`sostav_id`) REFERENCES `sostav` (`sostav_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_publika` FOREIGN KEY (`datum_id`) REFERENCES `publika` (`datum_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_stadion` FOREIGN KEY (`stadion_id`) REFERENCES `stadion` (`stadion_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.natprevaruvanje: ~27 rows (approximately)
INSERT INTO `natprevaruvanje` (`kolo_id`, `datum`, `protivnik`, `rezultat`, `mesto`, `sostav_id`, `stadion_id`, `datum_id`) VALUES
	(1, '2021-09-05 17:00:00', 'Fc Mladost', 'W-3:1', 'Tumbe Kafe', 1, 1, '2021-09-05'),
	(2, '2021-09-12 17:00:00', 'Fc Pelagonija', 'W-0:1', 's.Dobromiri', 2, 0, NULL),
	(3, '2021-09-19 16:00:00', 'Fc KSK', 'D-0:0', 'Tumbe Kafe', 3, 1, '2021-09-19'),
	(4, '2021-09-26 16:00:00', 'Fc Pelister TM', 'W-0:6', 's.Trnovo Magarevo', 4, 0, NULL),
	(5, '2021-10-03 15:00:00', 'Fc Crna Reka', 'W-3:0', 'Petar Miloshevski', 5, 2, '2021-10-03'),
	(6, '2021-10-10 15:00:00', 'Fc Old Boys', 'D-0:0', 's.Poesevo', 6, 0, NULL),
	(7, '2021-10-17 14:00:00', 'Fc Chagor', 'W-4:0', 'Pavel Shatev', 7, 3, '2021-10-17'),
	(8, '2021-10-24 13:30:00', 'Fc Pelagonija', 'W-0:5', 's.Trap', 8, 0, NULL),
	(9, '2021-10-31 13:30:00', 'Fc Svetlost', 'W-1:0', 'Tumbe Kafe', 9, 1, '2021-10-31'),
	(10, '2022-02-27 13:00:00', 'Fc Mladost', 'L-3:2', 's.Dedebalci', 10, 0, NULL),
	(11, '2022-03-06 14:00:00', 'Fc Pelagonija', 'L-2:4', 'Pomoshno 2', 11, 6, '2022-03-06'),
	(12, '2022-03-13 14:30:00', 'Fc KSK', 'D-1:1', 's.Krklino', 12, 0, NULL),
	(13, '2022-03-20 15:00:00', 'Fc Pelister TM', 'D-1:1', 'Pomoshno 1', 13, 5, '2022-03-20'),
	(14, '2022-03-27 15:00:00', 'Fc Crna Reka', 'L-3:1', 's.Charlija', 14, 0, NULL),
	(15, '2022-04-03 15:30:00', 'Fc Old boys', 'N-1:1', 'Kjumurno', 15, 4, '2022-04-03'),
	(16, '2022-04-10 16:00:00', 'Fc Chagor', 'W-1:3', 's.Lopatica', 16, 0, NULL),
	(17, '2022-04-17 16:00:00', 'Fc Pelagonija', 'W-6:2', 'Petar Miloshevski', 17, 2, '2022-04-17'),
	(18, '2022-04-24 16:00:00', 'Fc Svetlost', 'W-0:2', 's.Kukurecani', 18, 0, NULL),
	(19, '2022-05-01 17:00:00', 'Fc Pobeda Ivanjevci ', 'W-(D-1:1Penatly 5:4)', 'Tumbe Kafe', 19, 1, '2022-05-01'),
	(20, '2022-05-15 17:00:00', 'Fc Kravari', 'L-(D-1:1Penatly 6:5)', 'Tumbe Kafe', 20, 1, '2022-05-15'),
	(21, '2023-02-01 13:00:00', 'Fc Partizan', 'W-3:1', 'Tumbe kafe', 21, 1, '2023-02-01'),
	(22, '2022-08-31 17:00:00', 'OFK Bitola', 'W-3:1', 'Tumbe Kafe', 22, 1, '2022-08-30'),
	(23, '2022-08-16 15:00:00', 'OFK Bitola', 'W-3:1', 'Tumbe Kafe', 23, 1, '2022-08-16'),
	(24, '2022-09-02 17:30:00', 'Karaorman', 'L-0:2', 'Tumbe Kafe', 24, 1, '2022-09-02'),
	(25, '2022-08-22 17:30:00', 'Gorno Orizari', 'W-3:1', 'Tumbe Kafe', 25, 1, '2022-08-21'),
	(26, '2022-08-25 12:22:00', 'Fk Mogila', 'L-3:0', 'Tumbe Kafe', 17, 5, '2022-08-16'),
	(27, '2022-08-26 17:08:00', 'Real', 'L-0:2', 's.Mogila', 14, 1, '2022-08-21');

-- Dumping structure for table klub_fudbalski.outcome
CREATE TABLE IF NOT EXISTS `outcome` (
  `outcome_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `klub` varchar(50) NOT NULL,
  `iznos_denari` decimal(20,6) unsigned NOT NULL,
  `dres_id` tinyint(2) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`outcome_id`),
  KEY `FK_outcome` (`dres_id`),
  CONSTRAINT `FK_outcome` FOREIGN KEY (`dres_id`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.outcome: ~9 rows (approximately)
INSERT INTO `outcome` (`outcome_id`, `klub`, `iznos_denari`, `dres_id`) VALUES
	(1, 'Fc Pelister Bitola', 100000.000000, 16),
	(2, 'Fc Pelister Bitola', 167000.000000, 20),
	(3, 'Fc Old Boys', 565000.000000, 22),
	(4, 'Fc Rabotnik Bitola', 123000.000000, 17),
	(5, 'Fc Valladolid', 823000.000000, 18),
	(72, 'Fc Manchester United', 500000.000000, 01),
	(73, 'city', 1111111.000000, 19),
	(74, 'free agent', 1000000.000000, 89),
	(75, 'free agent', 1000000.000000, 69);

-- Dumping structure for table klub_fudbalski.publika
CREATE TABLE IF NOT EXISTS `publika` (
  `datum_id` date NOT NULL,
  `domashna` smallint(5) unsigned NOT NULL,
  `gostinska` smallint(5) unsigned DEFAULT NULL,
  `karti_rasprodadeni` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.publika: ~19 rows (approximately)
INSERT INTO `publika` (`datum_id`, `domashna`, `gostinska`, `karti_rasprodadeni`) VALUES
	('2021-09-05', 5900, 124, 5078),
	('2021-09-19', 1430, 0, 1400),
	('2021-10-03', 870, 211, 800),
	('2021-10-17', 650, 40, 600),
	('2021-10-31', 2000, 200, 2000),
	('2022-03-06', 200, 0, 200),
	('2022-03-20', 540, 0, 500),
	('2022-04-03', 790, 50, 700),
	('2022-04-17', 1590, 450, 1500),
	('2022-05-01', 1250, 34, 1177),
	('2022-05-04', 10, 10, 10),
	('2022-05-15', 2497, 674, 1567),
	('2022-08-16', 400, 0, 250),
	('2022-08-21', 500, 0, 500),
	('2022-08-30', 5000, 300, 4900),
	('2022-09-02', 3000, 290, 2900),
	('2022-12-31', 1000, 1000, 1000),
	('2023-02-01', 3900, 334, 3078),
	('2025-05-05', 20, 20, 20);

-- Dumping structure for table klub_fudbalski.sostav
CREATE TABLE IF NOT EXISTS `sostav` (
  `sostav_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `datum_sostav` datetime DEFAULT NULL,
  `coach` tinyint(2) unsigned DEFAULT NULL,
  `goalkeeper` tinyint(2) unsigned DEFAULT NULL,
  `centre_back1` tinyint(2) unsigned DEFAULT NULL,
  `centre_back2` tinyint(2) unsigned DEFAULT NULL,
  `right_back` tinyint(2) unsigned DEFAULT NULL,
  `left_back` tinyint(2) unsigned DEFAULT NULL,
  `defensive_midfielder` tinyint(2) unsigned DEFAULT NULL,
  `center_midfielder` tinyint(2) unsigned DEFAULT NULL,
  `attacking_midfielder` tinyint(2) unsigned DEFAULT NULL,
  `right_forward` tinyint(2) unsigned DEFAULT NULL,
  `left_forward` tinyint(2) unsigned DEFAULT NULL,
  `center_forward` tinyint(2) unsigned DEFAULT NULL,
  `reserve1` tinyint(2) unsigned DEFAULT NULL,
  `reserve2` tinyint(2) unsigned DEFAULT NULL,
  `reserve3` tinyint(2) unsigned DEFAULT NULL,
  `reserve4` tinyint(2) unsigned DEFAULT NULL,
  `reserve5` tinyint(2) unsigned DEFAULT NULL,
  `reserve6` tinyint(2) unsigned DEFAULT NULL,
  `reserve7` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`sostav_id`),
  KEY `FK_sostav_kolo_id` (`sostav_id`),
  KEY `Goalkeeper` (`goalkeeper`) USING BTREE,
  KEY `Centre back1` (`centre_back1`) USING BTREE,
  KEY `Centre back2` (`centre_back2`) USING BTREE,
  KEY `Right back` (`right_back`) USING BTREE,
  KEY `Left back` (`left_back`) USING BTREE,
  KEY `Defensive midfielder` (`defensive_midfielder`) USING BTREE,
  KEY `Attacking midfielder` (`attacking_midfielder`) USING BTREE,
  KEY `Right Forward` (`right_forward`) USING BTREE,
  KEY `Left Forward` (`left_forward`) USING BTREE,
  KEY `Center Forward` (`center_forward`) USING BTREE,
  KEY `Reserve 1` (`reserve1`) USING BTREE,
  KEY `Reserve 2` (`reserve2`) USING BTREE,
  KEY `Reserve 3` (`reserve3`) USING BTREE,
  KEY `Reserve 4` (`reserve4`) USING BTREE,
  KEY `Reserve 5` (`reserve5`) USING BTREE,
  KEY `Reserve 6` (`reserve6`) USING BTREE,
  KEY `Reserve 7` (`reserve7`) USING BTREE,
  KEY `Center Midfield` (`center_midfielder`) USING BTREE,
  KEY `Coach` (`coach`),
  KEY `FK_sostav_datum` (`datum_sostav`) USING BTREE,
  CONSTRAINT `Attackingm-Midfielder` FOREIGN KEY (`attacking_midfielder`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Center-Forward` FOREIGN KEY (`center_forward`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Center-Midfield` FOREIGN KEY (`center_midfielder`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Centre-Back1` FOREIGN KEY (`centre_back1`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Centre-Back2` FOREIGN KEY (`centre_back2`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Coach` FOREIGN KEY (`coach`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Defensive-Midfielder` FOREIGN KEY (`defensive_midfielder`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_sostav_datum` FOREIGN KEY (`datum_sostav`) REFERENCES `natprevaruvanje` (`datum`) ON UPDATE CASCADE,
  CONSTRAINT `FK_sostav_kolo_id` FOREIGN KEY (`sostav_id`) REFERENCES `natprevaruvanje` (`kolo_id`) ON UPDATE CASCADE,
  CONSTRAINT `Goalkeeper` FOREIGN KEY (`goalkeeper`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Left-Back` FOREIGN KEY (`left_back`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Left-Forward` FOREIGN KEY (`left_forward`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve1` FOREIGN KEY (`reserve1`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve2` FOREIGN KEY (`reserve2`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve3` FOREIGN KEY (`reserve3`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve4` FOREIGN KEY (`reserve4`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve5` FOREIGN KEY (`reserve5`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve6` FOREIGN KEY (`reserve6`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Right-Back` FOREIGN KEY (`right_back`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Right-Forward` FOREIGN KEY (`right_forward`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.sostav: ~24 rows (approximately)
INSERT INTO `sostav` (`sostav_id`, `datum_sostav`, `coach`, `goalkeeper`, `centre_back1`, `centre_back2`, `right_back`, `left_back`, `defensive_midfielder`, `center_midfielder`, `attacking_midfielder`, `right_forward`, `left_forward`, `center_forward`, `reserve1`, `reserve2`, `reserve3`, `reserve4`, `reserve5`, `reserve6`, `reserve7`) VALUES
	(1, '2021-09-05 17:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(2, '2021-09-12 17:00:00', 27, 1, 2, 5, 15, 3, 6, 7, 8, 11, 10, 9, 19, 14, 4, 17, 20, 21, 23),
	(3, '2021-09-19 16:00:00', 27, 12, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(4, '2021-09-26 16:00:00', 27, 12, 22, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(5, '2021-10-03 15:00:00', 27, 1, 2, 5, 4, 13, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(6, '2021-10-10 15:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 21, 9, 19, 14, 15, 17, 20, 10, 23),
	(7, '2021-10-17 14:00:00', 27, 1, 2, 14, 4, 3, 6, 7, 8, 11, 10, 9, 19, 5, 15, 17, 20, 21, 23),
	(8, '2021-10-24 13:30:00', 27, 1, 22, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(9, '2021-10-31 13:30:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(10, '2022-02-27 13:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(11, '2022-03-06 14:00:00', 27, 12, 2, 14, 4, 13, 6, 7, 8, 11, 21, 9, 19, 5, 15, 17, 20, 10, 23),
	(12, '2022-03-13 14:30:00', 27, 12, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(13, '2022-03-20 15:00:00', 27, 1, 2, 5, 15, 3, 6, 7, 8, 11, 10, 9, 19, 14, 4, 17, 20, 21, 23),
	(14, '2022-03-27 15:00:00', 27, 1, 2, 14, 4, 3, 6, 7, 8, 11, 10, 9, 19, 5, 15, 17, 20, 21, 23),
	(15, '2022-04-03 15:30:00', 27, 1, 22, 5, 4, 3, 6, 7, 8, 11, 21, 9, 19, 14, 15, 17, 20, 10, 23),
	(16, '2022-04-10 16:00:00', 27, 1, 22, 14, 4, 13, 6, 7, 8, 11, 10, 9, 19, 5, 15, 17, 20, 21, 23),
	(17, '2022-04-17 16:00:00', 27, 19, 2, 5, 4, 3, 6, 7, 8, 11, 21, 9, 1, 14, 15, 17, 20, 10, 23),
	(18, '2022-04-24 16:00:00', 27, 12, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(19, '2022-05-01 17:00:00', 69, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(20, '2022-05-15 17:00:00', 69, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(21, '2023-02-01 13:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(22, '2022-08-31 17:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23),
	(23, '2022-08-16 15:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 17, 18, 20, 21, 23, 15),
	(24, '2022-09-02 17:30:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 17, 14, 15, 20, 21, 23),
	(25, '2022-08-22 17:30:00', 27, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
	(27, '2022-08-26 17:08:00', 2, 2, 17, 13, 17, 15, 18, 15, 15, 13, 11, 13, 16, 16, 17, 16, 16, 19, 17);

-- Dumping structure for table klub_fudbalski.stadion
CREATE TABLE IF NOT EXISTS `stadion` (
  `stadion_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(30) NOT NULL,
  `adresa` varchar(50) NOT NULL,
  `kapacitet` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`stadion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.stadion: ~7 rows (approximately)
INSERT INTO `stadion` (`stadion_id`, `ime`, `adresa`, `kapacitet`) VALUES
	(1, 'Tumbe Kafe', 'Ulica Tumbe kafe bb', 7000),
	(2, 'Petar Miloshevski', 'Ulica 16ta bb', 5000),
	(3, 'Pavel Shatev', 'Setaliste bb', 2980),
	(4, 'Kjumurno', 'Setaliste bb', 1564),
	(5, 'Pomoshno 1', 'Ulica Tumbe kafe bb', 635),
	(6, 'FFM', 'Kiril i Metodij bb', 295),
	(74, 'Kajnak Arena', 's.Gorno Orizari', 500);

-- Dumping structure for table klub_fudbalski.uprava
CREATE TABLE IF NOT EXISTS `uprava` (
  `dres_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `zalaganje` enum('nedovolno','dovolno','istaknato') DEFAULT NULL,
  `rabotna_ocenka` enum('1','2','3','4','5') DEFAULT NULL,
  PRIMARY KEY (`dres_id`),
  KEY `FK_uprava` (`dres_id`),
  CONSTRAINT `FK_uprava` FOREIGN KEY (`dres_id`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.uprava: ~5 rows (approximately)
INSERT INTO `uprava` (`dres_id`, `zalaganje`, `rabotna_ocenka`) VALUES
	(24, 'dovolno', '3'),
	(25, 'istaknato', '5'),
	(26, 'istaknato', '4'),
	(27, 'nedovolno', '1'),
	(28, 'dovolno', '3'),
	(69, 'nedovolno', '1'),
	(79, 'dovolno', '3');

-- Dumping structure for procedure klub_fudbalski._delete_igrachi
DELIMITER //
CREATE PROCEDURE `_delete_igrachi`(
	IN `dres_id_param` TINYINT
)
BEGIN
DELETE FROM igrachi 
WHERE dres_id=dres_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._delete_income
DELIMITER //
CREATE PROCEDURE `_delete_income`(
	IN `income_id_param` TINYINT
)
BEGIN
DELETE FROM income
WHERE income_id=income_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._delete_natprevaruvanje
DELIMITER //
CREATE PROCEDURE `_delete_natprevaruvanje`(
	IN `kolo_id_param` TINYINT
)
BEGIN
DELETE FROM natprevaruvanje
WHERE kolo_id=kolo_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._delete_outcome
DELIMITER //
CREATE PROCEDURE `_delete_outcome`(
	IN `outcome_id_param` TINYINT
)
BEGIN
DELETE FROM outcome
WHERE outcome_id=outcome_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._delete_publika
DELIMITER //
CREATE PROCEDURE `_delete_publika`(
	IN `datum_id_param` DATE
)
BEGIN
DELETE FROM publika
WHERE datum_id=datum_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._delete_sostav
DELIMITER //
CREATE PROCEDURE `_delete_sostav`(
	IN `sostav_id_param` TINYINT
)
BEGIN
DELETE FROM sostav
WHERE sostav_id=sostav_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._delete_stadion
DELIMITER //
CREATE PROCEDURE `_delete_stadion`(
	IN `stadion_id_param` TINYINT
)
BEGIN
DELETE FROM stadion
WHERE stadion_id=stadion_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._delete_uprava
DELIMITER //
CREATE PROCEDURE `_delete_uprava`(
	IN `dres_id_param` TINYINT
)
BEGIN
DELETE FROM uprava
WHERE dres_id=dres_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_igrachi
DELIMITER //
CREATE PROCEDURE `_insert_igrachi`(
	IN `dres_id_param` TINYINT(2),
	IN `ime_pram` VARCHAR(15),
	IN `prezime_param` VARCHAR(30),
	IN `pozicija_param` VARCHAR(15),
	IN `godini_param` YEAR,
	IN `plata_denari_param` DECIMAL(20,6)
)
BEGIN
INSERT INTO igrachi(dres_id,ime,prezime,pozicija,godini,plata_denari)
VALUES(dres_id_param,ime_pram,prezime_param,pozicija_param,godini_param,plata_denari_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_income
DELIMITER //
CREATE PROCEDURE `_insert_income`(
	IN `income_id_param` TINYINT(2),
	IN `ime_param` VARCHAR(15),
	IN `prezime_param` VARCHAR(30),
	IN `pozicija_param` VARCHAR(15),
	IN `godini_param` YEAR,
	IN `klub_param` VARCHAR(50),
	IN `iznos_denari_param` DECIMAL(20,6)
)
BEGIN
INSERT INTO income(income_id,ime,prezime,pozicija,godini,klub,iznos_denari)
VALUES(income_id_param,ime_param,prezime_param,pozicija_param,godini_param,klub_param,iznos_denari_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_natprevaruvanje
DELIMITER //
CREATE PROCEDURE `_insert_natprevaruvanje`(
	IN `kolo_id_param` TINYINT(2),
	IN `datum_param` DATETIME,
	IN `protivnik_param` VARCHAR(30),
	IN `rezultat_param` VARCHAR(30),
	IN `mesto_param` VARCHAR(50)
)
BEGIN
INSERT INTO natprevaruvanje(kolo_id,datum,protivnik,rezultat,mesto)
VALUES(kolo_id_param,datum_param,protivnik_param,rezultat_param,mesto_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_outcome
DELIMITER //
CREATE PROCEDURE `_insert_outcome`(
	IN `outcome_id_param` TINYINT(2),
	IN `klub_param` VARCHAR(50),
	IN `iznos_denari_param` DECIMAL(20,6)
)
BEGIN
INSERT INTO outcome(outcome_id,klub,iznos_denari)
VALUES (outcome_id_param,klub_param,iznos_denari_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_publika
DELIMITER //
CREATE PROCEDURE `_insert_publika`(
	IN `datum_id_param` DATE,
	IN `domashna_param` SMALLINT,
	IN `gostinska_param` SMALLINT,
	IN `karti_rasprodadeni_param` SMALLINT
)
BEGIN
INSERT INTO publika(datum_id,domashna,gostinska,karti_rasprodadeni)
VALUES (datum_id_param,domashna_param,gostinska_param,karti_rasprodadeni_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_sostav
DELIMITER //
CREATE PROCEDURE `_insert_sostav`(
	IN `sostav_id_param` TINYINT,
	IN `datum_sostav_param` DATETIME,
	IN `coach_param` TINYINT,
	IN `goalkeeper_param` INT,
	IN `centre_back1_param` INT,
	IN `centre_back2_param` INT,
	IN `right_back_param` INT,
	IN `left_back_param` INT,
	IN `defensive_midfielder_param` INT,
	IN `center_midfielder_param` INT,
	IN `attacking_midfielder_param` INT,
	IN `right_forward_param` INT,
	IN `left_forward_param` INT,
	IN `center_forward_param` INT,
	IN `reserve1_param` INT,
	IN `reserve2_param` INT,
	IN `reserve3_param` INT,
	IN `reserve4_param` INT,
	IN `reserve5_param` INT,
	IN `reserve6_param` INT,
	IN `reserve7_param` INT
)
BEGIN
INSERT INTO sostav (sostav_id,datum_sostav,coach,goalkeeper,centre_back1,centre_back2,right_back,left_back,defensive_midfielder,center_midfielder,attacking_midfielder,right_forward,left_forward,center_forward,reserve1,reserve2,reserve3,reserve4,reserve5,reserve6,reserve7)
VALUES(sostav_id_param,datum_sostav_param,coach_param,goalkeeper_param,centre_back1_param,centre_back2_param,right_back_param,left_back_param,defensive_midfielder_param,center_midfielder_param,attacking_midfielder_param,right_forward_param,left_forward_param,center_forward_param,reserve1_param,reserve2_param,reserve3_param,reserve4_param,reserve5_param,reserve6_param,reserve7_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_stadion
DELIMITER //
CREATE PROCEDURE `_insert_stadion`(
	IN `stadion_id_param` TINYINT(2),
	IN `ime_param` VARCHAR(30),
	IN `adresa_param` VARCHAR(50),
	IN `kapacitet_param` SMALLINT
)
BEGIN
INSERT INTO stadion(stadion_id,ime,adresa,kapacitet)
VALUES(stadion_id_param,ime_param,adresa_param,kapacitet_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_uprava
DELIMITER //
CREATE PROCEDURE `_insert_uprava`(
	IN `dres_id_param` TINYINT(2),
	IN `zalaganje_param` ENUM('nedovolno','dovolno','istaknato'),
	IN `rabotna_ocenka_param` ENUM('1','2','3','4','i5')
)
BEGIN
INSERT INTO uprava (dres_id,zalaganje,rabotna_ocenka)
VALUES(dres_id_param,zalaganje_param,rabotna_ocenka_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_igrachi
DELIMITER //
CREATE PROCEDURE `_select_igrachi`()
BEGIN
SELECT*
FROM igrachi;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_igrachi_bygodini
DELIMITER //
CREATE PROCEDURE `_select_igrachi_bygodini`()
BEGIN
SELECT AVG(godini)AS prosek_godini
FROM igrachi;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_igrachi_byprezime
DELIMITER //
CREATE PROCEDURE `_select_igrachi_byprezime`(
	IN `prezime_param` VARCHAR(30)
)
BEGIN
SELECT* FROM igrachi
WHERE prezime LIKE CONCAT ('%',prezime_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_igrachi_finansova_kartica
DELIMITER //
CREATE PROCEDURE `_select_igrachi_finansova_kartica`()
BEGIN
SELECT SUM(income.iznos_denari)AS transfer_income_denari,
SUM(outcome.iznos_denari)AS transfer_outcome_denari,
(SUM(outcome.iznos_denari)-SUM(income.iznos_denari))AS sostojba_smetka
FROM igrachi
left JOIN income
ON igrachi.income_id=income.income_id
left JOIN outcome
ON igrachi.dres_id=outcome.dres_id;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_igrachi_nad_godini
DELIMITER //
CREATE PROCEDURE `_select_igrachi_nad_godini`(
	IN `godini_param` YEAR
)
BEGIN
SELECT*
FROM igrachi 
WHERE godini>=godini_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_igrachi_plata_denari_evra
DELIMITER //
CREATE PROCEDURE `_select_igrachi_plata_denari_evra`(
	IN `meseci_param` INT,
	IN `valuta_param` INT
)
BEGIN
SELECT SUM(plata_denari *meseci_param)AS vrednost_tim_denari,SUM((plata_denari *meseci_param)/valuta_param)AS vrednost_tim_evra
FROM igrachi;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_igrachi_prosek_plata
DELIMITER //
CREATE PROCEDURE `_select_igrachi_prosek_plata`()
BEGIN
SELECT AVG(plata_denari)AS prosek_plata
FROM igrachi;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_igrachi_vkupenbroj_pozicii
DELIMITER //
CREATE PROCEDURE `_select_igrachi_vkupenbroj_pozicii`()
BEGIN
SELECT pozicija,COUNT(*)AS 'broj na igrachi'
FROM igrachi
GROUP BY pozicija
ORDER BY COUNT(*) DESC;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_income
DELIMITER //
CREATE PROCEDURE `_select_income`()
BEGIN
SELECT* FROM income;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_income_prosecnasuma
DELIMITER //
CREATE PROCEDURE `_select_income_prosecnasuma`()
BEGIN
SELECT AVG(iznos_denari)AS prosecna_suma
FROM income;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_natprevaruvanje
DELIMITER //
CREATE PROCEDURE `_select_natprevaruvanje`()
BEGIN
SELECT* FROM natprevaruvanje;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_natprevaruvanje_15h
DELIMITER //
CREATE PROCEDURE `_select_natprevaruvanje_15h`()
BEGIN
SELECT * FROM natprevaruvanje
WHERE datum LIKE '%-%-% 15:00:00';
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_natprevaruvanje_datum_vreme_tocen
DELIMITER //
CREATE PROCEDURE `_select_natprevaruvanje_datum_vreme_tocen`(
	IN `datum_param` DATETIME
)
BEGIN
SELECT* FROM natprevaruvanje
WHERE datum LIKE datum_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_natprevaruvanje_domashni_natprevari
DELIMITER //
CREATE PROCEDURE `_select_natprevaruvanje_domashni_natprevari`(
	IN `protivnik_param` VARCHAR(50)
)
BEGIN
SELECT *
FROM natprevaruvanje
inner JOIN stadion
ON natprevaruvanje.stadion_id=stadion.stadion_id
WHERE protivnik LIKE protivnik_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_natprevaruvanje_mesto
DELIMITER //
CREATE PROCEDURE `_select_natprevaruvanje_mesto`(
	IN `mesto_param` VARCHAR(50)
)
BEGIN
SELECT* FROM natprevaruvanje
WHERE mesto LIKE mesto_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_natprevaruvanje_posledni_natprevari_ekipa
DELIMITER //
CREATE PROCEDURE `_select_natprevaruvanje_posledni_natprevari_ekipa`(
	IN `protivnik_param` VARCHAR(50)
)
BEGIN
SELECT * FROM natprevaruvanje
WHERE protivnik LIKE protivnik_param
ORDER by datum DESC;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_natprevaruvanje_posledni_utakmici_limit
DELIMITER //
CREATE PROCEDURE `_select_natprevaruvanje_posledni_utakmici_limit`(
	IN `limit_param` TINYINT
)
BEGIN
SELECT* FROM natprevaruvanje
ORDER BY kolo_id desc
LIMIT limit_param ;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_natprevaruvanje_sezona2021
DELIMITER //
CREATE PROCEDURE `_select_natprevaruvanje_sezona2021`()
BEGIN
SELECT* FROM natprevaruvanje
WHERE datum LIKE '2021-%-%';
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_natprevaruvanje_sostav_datum
DELIMITER //
CREATE PROCEDURE `_select_natprevaruvanje_sostav_datum`(
	IN `datum_param` DATETIME
)
BEGIN
SELECT *
FROM natprevaruvanje
inner JOIN sostav
ON natprevaruvanje.sostav_id=sostav.sostav_id
WHERE natprevaruvanje.datum LIKE datum_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_outcome
DELIMITER //
CREATE PROCEDURE `_select_outcome`()
BEGIN
SELECT * FROM outcome;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_outcome_igrachi_site
DELIMITER //
CREATE PROCEDURE `_select_outcome_igrachi_site`()
BEGIN
SELECT *
FROM outcome
inner JOIN igrachi
ON outcome.dres_id=igrachi.dres_id;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_outcome_prosecna_cena_inaigrach
DELIMITER //
CREATE PROCEDURE `_select_outcome_prosecna_cena_inaigrach`()
BEGIN
SELECT AVG(iznos_denari)AS prosecna_cena_naigrach
FROM outcome;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_publika
DELIMITER //
CREATE PROCEDURE `_select_publika`()
BEGIN
SELECT * FROM publika;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_publika_karti_rasprodadeni
DELIMITER //
CREATE PROCEDURE `_select_publika_karti_rasprodadeni`(
	IN `datum_id_param` DATE
)
BEGIN
SELECT publika.datum_id,publika.karti_rasprodadeni,natprevaruvanje.protivnik,natprevaruvanje.rezultat,
natprevaruvanje.mesto
FROM publika
INNER JOIN natprevaruvanje
ON publika.datum_id=natprevaruvanje.datum_id
WHERE publika.datum_id LIKE datum_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_publika_prosek_procenti
DELIMITER //
CREATE PROCEDURE `_select_publika_prosek_procenti`()
BEGIN
SELECT SUM(domashna)AS vkupna_domashna,
SUM(gostinska)AS vkupna_gostinska,
SUM(domashna+gostinska)AS vkupna_publika,
AVG(domashna+gostinska)AS prosecna_publika,
AVG(domashna)/AVG(domashna+gostinska)*100 AS procenti_domashna,
AVG(gostinska)/AVG(domashna+gostinska)*100 AS procenti_gostinska,
ROUND(AVG(domashna)/AVG(domashna+gostinska)*100)AS procenti_domashna,
ROUND(AVG(gostinska)/AVG(domashna+gostinska)*100)AS procenti_domashna
FROM publika;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_publika_vkupna_domashna_limit
DELIMITER //
CREATE PROCEDURE `_select_publika_vkupna_domashna_limit`(
	IN `limit_param` TINYINT
)
BEGIN
SELECT datum_id,SUM(domashna)AS 'vkupna domashna publika'
FROM publika
GROUP BY datum_id
ORDER BY datum_id DESC
LIMIT limit_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_sostav
DELIMITER //
CREATE PROCEDURE `_select_sostav`()
BEGIN
SELECT * FROM sostav;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_sostav_golmani_desc
DELIMITER //
CREATE PROCEDURE `_select_sostav_golmani_desc`()
BEGIN
SELECT sostav.datum_sostav,sostav.Goalkeeper,igrachi.ime,igrachi.prezime
FROM sostav
inner JOIN igrachi
ON sostav.Goalkeeper=igrachi.dres_id
ORDER BY sostav.datum_sostav DESC;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_sostav_igrachi_left_forward_ime_prezime
DELIMITER //
CREATE PROCEDURE `_select_sostav_igrachi_left_forward_ime_prezime`(
	IN `ime_param` VARCHAR(50),
	IN `prezime_param` VARCHAR(50)
)
BEGIN
SELECT sostav.datum_sostav,dres_id,igrachi.ime,igrachi.prezime
FROM sostav
inner JOIN igrachi
ON sostav.`left-Forward`=igrachi.dres_id
WHERE igrachi.ime LIKE ime_param AND igrachi.prezime LIKE prezime_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_sostav_natprevaruvanje_ekipa_datum_tocni
DELIMITER //
CREATE PROCEDURE `_select_sostav_natprevaruvanje_ekipa_datum_tocni`(
	IN `protivnik_param` VARCHAR(50),
	IN `datum_sostav_param` DATETIME
)
    DETERMINISTIC
BEGIN
SELECT *
FROM sostav
right JOIN natprevaruvanje
ON sostav.sostav_id=natprevaruvanje.kolo_id
WHERE  natprevaruvanje.protivnik LIKE protivnik_param 
AND sostav.datum_sostav LIKE datum_sostav_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_stadion
DELIMITER //
CREATE PROCEDURE `_select_stadion`()
BEGIN
SELECT * FROM stadion;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_stadion_kapacitet_nad
DELIMITER //
CREATE PROCEDURE `_select_stadion_kapacitet_nad`(
	IN `kapacitet_param` SMALLINT
)
BEGIN
SELECT *
FROM stadion
WHERE kapacitet >=kapacitet_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_stadion_slobodni_mesta
DELIMITER //
CREATE PROCEDURE `_select_stadion_slobodni_mesta`()
BEGIN
SELECT natprevaruvanje.kolo_id,natprevaruvanje.datum,natprevaruvanje.protivnik,natprevaruvanje.rezultat,
stadion.ime,
SUM(domashna+gostinska)AS vkupen_broj_gledachi,stadion.kapacitet,
(stadion.kapacitet)-SUM(domashna+gostinska)AS slobodni_mesta
FROM natprevaruvanje
INNER JOIN stadion
ON natprevaruvanje.stadion_id=stadion.stadion_id
INNER JOIN publika
ON natprevaruvanje.datum_id=publika.datum_id
GROUP BY natprevaruvanje.kolo_id;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_uprava
DELIMITER //
CREATE PROCEDURE `_select_uprava`()
BEGIN
SELECT* FROM uprava;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_uprava_ocenki_desc
DELIMITER //
CREATE PROCEDURE `_select_uprava_ocenki_desc`()
BEGIN
SELECT*
FROM uprava
INNER JOIN igrachi
ON uprava.dres_id=igrachi.dres_id
GROUP BY uprava.dres_id,uprava.zalaganje,uprava.rabotna_ocenka
ORDER BY uprava.rabotna_ocenka DESC;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_uprava_rabotna_ocenka
DELIMITER //
CREATE PROCEDURE `_select_uprava_rabotna_ocenka`(
	IN `rabotna_ocenka_param` ENUM('1','2','3','4','5')
)
BEGIN
SELECT*
FROM uprava
INNER JOIN igrachi
ON uprava.dres_id=igrachi.dres_id
WHERE rabotna_ocenka LIKE rabotna_ocenka_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._stadion_kapacitet_rastecki
DELIMITER //
CREATE PROCEDURE `_stadion_kapacitet_rastecki`()
BEGIN
SELECT *
FROM stadion
GROUP BY kapacitet asc;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._update_defensive_midfielder
DELIMITER //
CREATE PROCEDURE `_update_defensive_midfielder`(
	IN `sostav_id_param` TINYINT,
	IN `defensive_midfielder_param` TINYINT
)
BEGIN
UPDATE sostav
SET defensive_midfielder=defensive_midfielder_param
WHERE sostav_id=sostav_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._update_igrachi
DELIMITER //
CREATE PROCEDURE `_update_igrachi`(
	IN `dres_id_param` TINYINT,
	IN `ime_param` VARCHAR(50),
	IN `prezime_param` VARCHAR(50),
	IN `pozicija_param` VARCHAR(50),
	IN `godini_param` YEAR,
	IN `plata_denari_param` DECIMAL(20,6)
)
BEGIN
UPDATE igrachi
SET ime=ime_param,prezime=prezime_param,pozicija=pozicija_param,godini=godini_param,plata_denari=plata_denari_param
WHERE dres_id=dres_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._update_income
DELIMITER //
CREATE PROCEDURE `_update_income`(
	IN `income_id_param` TINYINT,
	IN `ime_param` VARCHAR(50),
	IN `prezime_param` VARCHAR(50),
	IN `pozicija_param` VARCHAR(50),
	IN `godini_param` YEAR,
	IN `klub_param` VARCHAR(50),
	IN `iznos_denari_param` DECIMAL(20,6)
)
BEGIN
UPDATE income
SET ime=ime_param,prezime=prezime_param,pozicija=pozicija_param,godini=godini_param,klub=klub_param,iznos_denari=iznos_denari_param
WHERE income_id=income_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._update_natprevaruvanje
DELIMITER //
CREATE PROCEDURE `_update_natprevaruvanje`(
	IN `kolo_id_param` TINYINT,
	IN `datum_param` DATETIME,
	IN `protivnik_param` VARCHAR(50),
	IN `rezultat_param` VARCHAR(50),
	IN `mesto_param` VARCHAR(50)
)
BEGIN
UPDATE natprevaruvanje
SET datum=datum_param,protivnik=protivnik_param,rezultat=rezultat_param,mesto=mesto_param
WHERE kolo_id=kolo_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._update_outcome
DELIMITER //
CREATE PROCEDURE `_update_outcome`(
	IN `outcome_id_param` TINYINT,
	IN `klub_param` VARCHAR(50),
	IN `iznos_denari_param` DECIMAL(20,6)
)
BEGIN
UPDATE outcome
SET klub=klub_param,iznos_denari=iznos_denari_param
WHERE outcome_id=outcome_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._update_publika
DELIMITER //
CREATE PROCEDURE `_update_publika`(
	IN `datum_id_param` DATE,
	IN `domashna_param` SMALLINT,
	IN `gostinska_param` SMALLINT,
	IN `karti_rasprodadeni_param` SMALLINT
)
BEGIN
UPDATE publika
SET domashna=domashna_param,gostinska=gostinska_param,karti_rasprodadeni=karti_rasprodadeni_param
WHERE datum_id=datum_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._update_stadion
DELIMITER //
CREATE PROCEDURE `_update_stadion`(
	IN `stadion_id_param` TINYINT,
	IN `ime_param` VARCHAR(50),
	IN `adresa_param` VARCHAR(50),
	IN `kapacitet_param` SMALLINT
)
BEGIN
UPDATE stadion
SET ime=ime_param,adresa=adresa_param,kapacitet=kapacitet_param
WHERE stadion_id=stadion_id_param;
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._update_uprava
DELIMITER //
CREATE PROCEDURE `_update_uprava`(
	IN `dres_id_param` TINYINT,
	IN `zalaganje_param` ENUM('nedovolno','dovolno','istaknato'),
	IN `rabotna_ocenka_param` ENUM('1','2','3','4','5')
)
BEGIN
UPDATE uprava
SET zalaganje=zalaganje_param,rabotna_ocenka=rabotna_ocenka_param 
wHERE dres_id=dres_id_param;
END//
DELIMITER ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
