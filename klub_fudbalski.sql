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
  `plata_denari` decimal(20,1) unsigned NOT NULL,
  `income_id` tinyint(2) unsigned NOT NULL,
  `igrachi_img_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dres_id`),
  KEY `FK_income_igrachi` (`income_id`),
  CONSTRAINT `FK_income_igrachi` FOREIGN KEY (`income_id`) REFERENCES `income` (`income_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.igrachi: ~37 rows (approximately)
INSERT INTO `igrachi` (`dres_id`, `ime`, `prezime`, `pozicija`, `godini`, `plata_denari`, `income_id`, `igrachi_img_path`) VALUES
	(1, 'Александар', 'Димовски', 'Голман', '1997', 100000.0, 0, 'golman.jpg'),
	(2, 'Благојче', 'Петревски', 'Одбрана', '1995', 64000.0, 0, 'dugal.jpg'),
	(3, 'Драган', 'Думевски', 'Одбрана', '1990', 55000.0, 0, 'dragan.jpg'),
	(4, 'Петар', 'Ристевски', 'Одбрана', '1991', 55000.0, 0, 'petar.jpg'),
	(5, 'Христијан', 'Ристевски', 'Одбрана', '1999', 189500.0, 0, 'teri.jpg'),
	(6, 'Владимир', 'Крстевски', 'Средина', '2000', 150000.0, 0, 'jas.jpg'),
	(7, 'Трајче', 'Георгиевски', 'Средина', '1997', 90000.0, 0, 'trajce.jpg'),
	(8, 'Никола', 'Пискачев', 'Средина', '1990', 65000.0, 0, 'piskac.jpg'),
	(9, 'Васко', 'Наумовски', 'Напад', '1988', 65000.0, 0, 'vasko.jpg'),
	(10, 'Хајдин', 'Мустафаи', 'Напад', '2006', 32000.0, 0, 'hajdin.jpg'),
	(11, 'Андреј', 'Митревски', 'Напад', '2000', 120000.0, 0, 'skole.jpg'),
	(12, 'Aleksandar', 'Radevski', 'Голман', '2001', 20000.0, 0, 'golman.jpg'),
	(13, 'Филип', 'Жиров', 'Одбрана', '1980', 35000.0, 0, 'zirov.jpg'),
	(14, 'Марјан', 'Златевски', 'Одбрана', '2008', 14000.0, 0, 'marijan.jpg'),
	(15, 'Пеце', 'Василевски', 'Одбрана', '1997', 29000.0, 0, 'dres1.jpg'),
	(16, 'Бобан', 'Богдановски', 'Одбрана', '1982', 10000.0, 0, 'dres1.jpg'),
	(17, 'Боби', 'Думевски', 'Средина', '1985', 19000.0, 0, 'dres1.jpg'),
	(18, 'Андреј', 'Лозановски', 'Напад', '1985', 15000.0, 0, 'andrejL.jpg'),
	(19, 'Антимон', 'Крстевски', 'Голман', '1967', 18000.0, 0, 'dres1.jpg'),
	(20, 'Михајло', 'Вангелов', 'Напад', '1997', 565000.0, 0, 'doktoro.jpg'),
	(21, 'Христијан', 'Лавуровски', 'Напад', '1997', 39000.0, 0, 'dres1.jpg'),
	(22, 'Дени', 'Поповски', 'Одбрана', '2007', 25000.0, 0, 'dres1.jpg'),
	(23, 'Миле', 'Ташковски', 'Напад', '1991', 20000.0, 0, 'mile.jpg'),
	(24, 'Дарко', 'Јошевски', 'Физиотерапевт', '1998', 45000.0, 0, 'dres1.jpg'),
	(25, 'Андреј', 'Неделковски', 'Кондиционен тренер', '1990', 24000.0, 0, 'dres1.jpg'),
	(26, 'Јошка', 'Симоновски', 'Заменик тренер', '1979', 50000.0, 0, 'dres1.jpg'),
	(27, 'Дунката', 'Дунка', 'Тренер', '1977', 90000.0, 0, 'dres1.jpg'),
	(28, 'Јошка', 'Симоновски', 'Спортски директор', '1980', 120000.0, 0, 'dres1.jpg'),
	(29, 'Дарко', 'Крстевски', 'Напад', '2000', 40000.0, 82, 'dres1.jpg'),
	(30, 'Трајан', 'Ризовски', 'Одбрана', '1995', 34000.0, 2, 'dres1.jpg'),
	(31, 'Најдо', 'Сикијовски', 'Напад', '2006', 34200.0, 4, 'dres1.jpg'),
	(32, 'Горан', 'Пандев', 'Напад', '1983', 45000.0, 75, 'dres1.jpg'),
	(33, 'Дејан', 'Ристевски', 'Напад', '2007', 42678.0, 5, 'dres1.jpg'),
	(34, 'Јове', 'Младенов', 'Средина', '1998', 22385.0, 6, 'dres1.jpg'),
	(69, 'Благој', 'Делев', 'Директор', '1967', 655000.0, 0, 'dres1.jpg'),
	(77, 'Игор', 'Рељин', 'Одбрана', '1998', 15000.0, 3, 'dres1.jpg'),
	(83, 'Димитар', 'Кожобашиовски', 'Напад', '1990', 20000.0, 1, 'dres1.jpg'),
	(93, 'Владо', 'Павлов', 'Тренер', '1990', 20000.0, 74, 'dres1.jpg');

-- Dumping structure for table klub_fudbalski.income
CREATE TABLE IF NOT EXISTS `income` (
  `income_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(15) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `pozicija` varchar(30) NOT NULL,
  `godini` year(4) NOT NULL,
  `klub` varchar(50) DEFAULT 'nema klub',
  `iznos_denari` decimal(20,1) NOT NULL,
  `income_img_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.income: ~10 rows (approximately)
INSERT INTO `income` (`income_id`, `ime`, `prezime`, `pozicija`, `godini`, `klub`, `iznos_denari`, `income_img_path`) VALUES
	(1, 'Димитар', 'Кожобашиобски', 'Напад', '1990', 'Фк Логоварди', 67000.0, 'dres3.jpg'),
	(2, 'Трајан', 'Ризовски', 'Left Back', '1995', 'Фк Будимерци Јунајтед', 100000.0, 'dres3.jpg'),
	(3, 'Мице', 'Гацов', 'Right Back', '1998', 'Фк Зовиќ Јунајтед', 150000.0, 'dres3.jpg'),
	(4, 'Најдо', 'Сикијовски', 'Напад', '2006', 'Фк Градешница', 550000.0, 'dres3.jpg'),
	(5, 'Дејан', 'Ристевски', 'Напад', '2007', 'Фк Пелистер Битола', 230000.0, 'dres3.jpg'),
	(6, 'Јове', 'Младенов', 'Средина', '1998', 'Фк Добрушево', 1300000.0, 'dres3.jpg'),
	(74, 'Владо', 'Павлов', 'Тренер', '1990', 'Слободен играч', 300000.0, 'dres3.jpg'),
	(75, 'Горан', 'Пандев', 'Напад', '1983', 'Џенова', 50000.0, 'dres3.jpg'),
	(82, 'Дарко', 'Крстевски', 'Напад', '2000', 'Фк 16ta', 40000.0, 'dres3.jpg'),
	(83, 'Величе', 'Шумуликовски', 'Заден везен', '1981', 'Нема клуб', 100000.0, 'dres3.jpg');

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
  KEY `FK_publika` (`datum_id`),
  KEY `FK_stadion` (`stadion_id`),
  CONSTRAINT `FK_natprevaruvanje` FOREIGN KEY (`sostav_id`) REFERENCES `sostav` (`sostav_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_publika` FOREIGN KEY (`datum_id`) REFERENCES `publika` (`datum_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_stadion` FOREIGN KEY (`stadion_id`) REFERENCES `stadion` (`stadion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.natprevaruvanje: ~23 rows (approximately)
INSERT INTO `natprevaruvanje` (`kolo_id`, `datum`, `protivnik`, `rezultat`, `mesto`, `sostav_id`, `stadion_id`, `datum_id`) VALUES
	(1, '2021-08-19 17:00:00', 'Фк Работнички', 'Пораз-3:1', 'Охрид', 1, 13, '2021-08-19'),
	(2, '2021-10-02 15:30:00', 'Фк Пелагонија Д', 'Победа-0:3', 'с.Добромири', 2, 2, '2021-10-02'),
	(3, '2021-10-09 15:00:00', 'Фк Младост', 'Победа-0:1', 'с.Дедебалци', 3, 3, '2021-10-09'),
	(4, '2021-10-16 15:00:00', 'Фк Црна Река', 'Победа-2:0', 'Горно Оризари', 4, 1, '2021-10-16'),
	(5, '2021-10-23 14:30:00', 'Фк Чагор', 'Нерешено-0:0', 'с.Лопатица', 5, 4, '2021-10-23'),
	(6, '2021-10-30 14:00:00', 'Фк Светлост', 'Победа-2:0', 'Горно Оризари', 6, 1, '2021-10-30'),
	(7, '2021-11-06 13:00:00', 'Фк Пелагонија Т', 'Победа-0:5', 'с.Трап', 7, 5, '2021-11-06'),
	(8, '2021-11-13 13:00:00', 'Фк Олд Бојс', 'Нерешено-0:0', 'Горно Оризари', 8, 1, '2021-11-13'),
	(9, '2021-11-21 13:00:00', 'Фк Пелистер ТМ', 'Победа-3:8', 'с.Трново', 9, 6, '2021-11-21'),
	(10, '2021-11-27 13:00:00', 'Фк КСК', 'Нерешено-1:1', 'Горно Оризари', 10, 1, '2021-11-27'),
	(11, '2022-04-03 10:00:00', 'Фк Пелагонија Д', 'Нерешено-2:2', 'Горно Оризари', 11, 1, '2022-04-03'),
	(12, '2022-04-10 10:00:00', 'Фк Младост', 'Нерешено-1:1', 'Горно Оризари', 12, 1, '2022-04-10'),
	(13, '2022-04-17 10:00:00', 'Фк Црна Река', 'Пораз-2:1', 'с.Чарлија', 13, 7, '2022-04-17'),
	(14, '2022-04-23 16:30:00', 'Фк Чагор', 'Победа-3:2', 'Горно Оризари', 14, 1, '2022-04-23'),
	(15, '2022-05-02 10:30:00', 'Фк Светлост', 'Победа-1:3', 'с.Кукуречани', 15, 8, '2022-05-02'),
	(16, '2022-05-08 10:30:00', 'Фк Пелагонија Т', 'Победа-3:1', 'Горно Оризари', 16, 1, '2022-05-08'),
	(17, '2022-05-15 10:00:00', 'Фк Олд Бојс', 'Нерешено-0:0', 'с.Поешево', 17, 9, '2022-05-15'),
	(18, '2022-05-22 16:30:00', 'Фк Пелистер ТМ', 'Победа-4:1', 'Горно Оризари', 18, 1, '2022-05-22'),
	(19, '2022-05-24 10:00:00', 'Фк КСК', 'Победа-1:0', 'с.Крклино', 19, 10, '2022-05-24'),
	(20, '2022-06-01 17:00:00', 'Фк Победа И', 'Победа-(Пенали5:4)1:1', 'Горно Оризари', 20, 1, '2022-06-01'),
	(21, '2022-06-08 17:00:00', 'Фк Кравари', 'Пораз-(Пенали6:5)1:1', 'с.Кравари', 21, 11, '2022-06-08'),
	(22, '2022-09-04 10:00:00', 'Фк Поешево', 'Нерешено-1:1', 'с.Кукуречани', 22, 12, '2022-09-04'),
	(23, '2022-09-11 10:00:00', 'Фк КСК', 'Победа-1:3', 'с.Кукуречани', 23, 12, '2022-09-11');

-- Dumping structure for table klub_fudbalski.outcome
CREATE TABLE IF NOT EXISTS `outcome` (
  `outcome_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `klub` varchar(50) NOT NULL,
  `iznos_denari` decimal(20,1) unsigned NOT NULL,
  `dres_id` tinyint(2) unsigned zerofill DEFAULT NULL,
  `outcome_img_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`outcome_id`),
  KEY `FK_outcome` (`dres_id`),
  CONSTRAINT `FK_outcome` FOREIGN KEY (`dres_id`) REFERENCES `igrachi` (`dres_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.outcome: ~6 rows (approximately)
INSERT INTO `outcome` (`outcome_id`, `klub`, `iznos_denari`, `dres_id`, `outcome_img_path`) VALUES
	(1, 'Фк Пелистер Битола', 100000.0, 16, 'dres2.jpg'),
	(2, 'Фк Пелистер Битола', 167000.0, 20, 'dres2.jpg'),
	(3, 'Фк Олд Бојс', 565000.0, 22, 'dres2.jpg'),
	(4, 'Фк Работник Битола', 123000.0, 17, 'dres2.jpg'),
	(72, 'Фк Манчестер Јунајтед', 500000.0, 01, 'dres2.jpg'),
	(80, 'Fc 16ta', 50000.0, 34, 'dres2.jpg');

-- Dumping structure for table klub_fudbalski.publika
CREATE TABLE IF NOT EXISTS `publika` (
  `datum_id` date NOT NULL,
  `domashna` smallint(5) unsigned DEFAULT NULL,
  `gostinska` smallint(5) unsigned DEFAULT NULL,
  `karti_rasprodadeni` smallint(5) unsigned DEFAULT NULL,
  `publika_img_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.publika: ~27 rows (approximately)
INSERT INTO `publika` (`datum_id`, `domashna`, `gostinska`, `karti_rasprodadeni`, `publika_img_path`) VALUES
	('2021-08-19', 5078, 124, 5078, 'dres4.jpg'),
	('2021-10-02', 1000, 20, 0, 'dres4.jpg'),
	('2021-10-09', 870, 211, 800, 'dres4.jpg'),
	('2021-10-16', 1430, 0, 1400, 'dres4.jpg'),
	('2021-10-23', 2230, 140, 0, 'dres4.jpg'),
	('2021-10-30', 3330, 120, 0, 'dres4.jpg'),
	('2021-11-06', 4000, 100, 0, 'dres4.jpg'),
	('2021-11-13', 2000, 200, 2000, 'dres4.jpg'),
	('2021-11-21', 2630, 149, 0, 'dres4.jpg'),
	('2021-11-27', 650, 40, 600, 'dres4.jpg'),
	('2022-03-06', 200, 0, 200, 'dres4.jpg'),
	('2022-03-13', 1630, 89, 0, 'dres4.jpg'),
	('2022-03-20', 540, 0, 500, 'dres4.jpg'),
	('2022-04-03', 1000, 80, 900, 'dres4.jpg'),
	('2022-04-10', 2000, 120, 0, 'dres4.jpg'),
	('2022-04-17', 1590, 450, 1500, 'dres4.jpg'),
	('2022-04-23', 2100, 220, 0, 'dres4.jpg'),
	('2022-05-02', 1250, 34, 1177, 'dres4.jpg'),
	('2022-05-08', 10, 10, 10, 'dres4.jpg'),
	('2022-05-15', 2497, 674, 1567, 'dres4.jpg'),
	('2022-05-22', 550, 100, 0, 'dres4.jpg'),
	('2022-05-24', 1880, 0, 0, 'dres4.jpg'),
	('2022-06-01', 790, 50, 700, 'dres4.jpg'),
	('2022-06-08', 1000, 50, 0, 'dres4.jpg'),
	('2022-09-04', 4000, 58, 4000, 'dres4.jpg'),
	('2022-09-11', 1000, 50, 0, 'dres4.jpg'),
	('2022-09-25', 4000, 300, 0, 'dres4.jpg');

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
  `sostav_img_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sostav_id`),
  UNIQUE KEY `datum_sostav` (`datum_sostav`),
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
  CONSTRAINT `Attackingm-Midfielder` FOREIGN KEY (`attacking_midfielder`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Center-Forward` FOREIGN KEY (`center_forward`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Center-Midfield` FOREIGN KEY (`center_midfielder`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Centre-Back1` FOREIGN KEY (`centre_back1`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Centre-Back2` FOREIGN KEY (`centre_back2`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Coach` FOREIGN KEY (`coach`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Defensive-Midfielder` FOREIGN KEY (`defensive_midfielder`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Goalkeeper` FOREIGN KEY (`goalkeeper`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Left-Back` FOREIGN KEY (`left_back`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Left-Forward` FOREIGN KEY (`left_forward`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve 7` FOREIGN KEY (`reserve7`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve1` FOREIGN KEY (`reserve1`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve2` FOREIGN KEY (`reserve2`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve3` FOREIGN KEY (`reserve3`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve4` FOREIGN KEY (`reserve4`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve5` FOREIGN KEY (`reserve5`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Reserve6` FOREIGN KEY (`reserve6`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Right-Back` FOREIGN KEY (`right_back`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE,
  CONSTRAINT `Right-Forward` FOREIGN KEY (`right_forward`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.sostav: ~23 rows (approximately)
INSERT INTO `sostav` (`sostav_id`, `datum_sostav`, `coach`, `goalkeeper`, `centre_back1`, `centre_back2`, `right_back`, `left_back`, `defensive_midfielder`, `center_midfielder`, `attacking_midfielder`, `right_forward`, `left_forward`, `center_forward`, `reserve1`, `reserve2`, `reserve3`, `reserve4`, `reserve5`, `reserve6`, `reserve7`, `sostav_img_path`) VALUES
	(1, '2021-08-19 17:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo1.jpg'),
	(2, '2021-10-02 15:30:00', 27, 1, 2, 5, 15, 3, 6, 7, 8, 11, 10, 9, 19, 14, 4, 17, 20, 21, 23, 'kolo2.jpg'),
	(3, '2021-10-09 15:00:00', 27, 12, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo3.jpg'),
	(4, '2021-10-16 15:00:00', 27, 12, 22, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo4.jpg'),
	(5, '2021-10-23 14:30:00', 27, 1, 2, 5, 4, 13, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo5.jpg'),
	(6, '2021-10-30 14:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 21, 9, 19, 14, 15, 17, 20, 10, 23, 'kolo6.jpg'),
	(7, '2021-11-06 13:00:00', 27, 1, 2, 14, 4, 3, 6, 7, 8, 11, 10, 9, 19, 5, 15, 17, 20, 21, 23, 'kolo7.jpg'),
	(8, '2021-11-13 13:00:00', 27, 1, 22, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo8.jpg'),
	(9, '2021-11-21 13:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo9.jpg'),
	(10, '2021-11-27 13:00:00', 27, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo10.jpg'),
	(11, '2022-04-03 10:00:00', 27, 12, 2, 14, 4, 13, 6, 7, 8, 11, 21, 9, 19, 5, 15, 17, 20, 10, 23, 'kolo11.jpg'),
	(12, '2022-04-10 10:00:00', 27, 12, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo12.jpg'),
	(13, '2022-04-17 10:00:00', 27, 1, 2, 5, 15, 3, 6, 7, 8, 11, 10, 9, 19, 14, 4, 17, 20, 21, 23, 'kolo13.jpg'),
	(14, '2022-04-23 16:30:00', 27, 1, 2, 14, 4, 3, 6, 7, 8, 11, 10, 9, 19, 5, 15, 17, 20, 21, 23, 'kolo14.jpg'),
	(15, '2022-05-02 10:30:00', 27, 1, 22, 5, 4, 3, 6, 7, 8, 11, 21, 9, 19, 14, 15, 17, 20, 10, 23, 'kolo15.jpg'),
	(16, '2022-05-08 10:30:00', 27, 1, 22, 14, 4, 13, 6, 7, 8, 11, 10, 9, 19, 5, 15, 17, 20, 21, 23, 'kolo16.jpg'),
	(17, '2022-05-15 10:00:00', 27, 19, 2, 5, 4, 3, 6, 7, 8, 11, 21, 9, 1, 14, 15, 17, 20, 10, 23, 'kolo17.jpg'),
	(18, '2022-05-22 16:30:00', 27, 12, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo18.jpg'),
	(19, '2022-05-24 10:00:00', 69, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo19.jpg'),
	(20, '2022-06-01 17:00:00', 69, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 19, 14, 15, 17, 20, 21, 23, 'kolo20.jpg'),
	(21, '2022-06-08 17:00:00', 93, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 12, 13, 14, 15, 16, 17, 18, 'kolo21.jpg'),
	(22, '2022-09-04 10:00:00', 8, 1, 2, 5, 4, 3, 6, 7, 8, 11, 10, 9, 12, 13, 14, 15, 16, 17, 18, 'kolo22.jpg'),
	(23, '2022-09-11 10:00:00', 8, 12, 5, 14, 15, 4, 6, 17, 8, 11, 18, 20, 2, 1, 3, 7, 9, 13, 16, 'kolo23.jpg');

-- Dumping structure for table klub_fudbalski.stadion
CREATE TABLE IF NOT EXISTS `stadion` (
  `stadion_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(30) NOT NULL,
  `adresa` varchar(50) NOT NULL,
  `kapacitet` smallint(5) unsigned NOT NULL,
  `stadion_img_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stadion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.stadion: ~14 rows (approximately)
INSERT INTO `stadion` (`stadion_id`, `ime`, `adresa`, `kapacitet`, `stadion_img_path`) VALUES
	(1, 'Кајнак Арена', 'Горно Оризари', 7000, 'slikaStadion100.jpg'),
	(2, 'Стадион Добромири', 'с.Добромири', 5000, 'slikaStadion2.jpg'),
	(3, 'Стадион Дедебалци', 'с.Дедебалци', 2980, 'slikaStadion1.jpg'),
	(4, 'Стадион Лопатица', 'с.Лопатица', 1564, 'slikaStadion3.jpg'),
	(5, 'Стадион Трап', 'с.Трап', 635, 'slikaStadion3.jpg'),
	(6, 'Стадион Трново', 'с.Трново', 295, 'slikaStadion3.jpg'),
	(7, 'Стадион Чарлија', 'с.Чарлија', 5000, 'slikaStadion3.jpg'),
	(8, 'Стадион Кукуречани', 'с.Кукуречани', 4000, 'slikaStadion3.jpg'),
	(9, 'Стадион Поешево', 'с.Поешево', 4400, 'slikaStadion3.jpg'),
	(10, 'Стадион Крклино', 'с.Крклино', 2500, 'slikaStadion3.jpg'),
	(11, 'Стадион Кравари', 'с.Кравари', 6900, 'slikaStadion3.jpg'),
	(12, 'Којот Арена', 'с.Кукуречани', 2200, 'slikaStadion3.jpg'),
	(13, 'Билјанини Извори', 'Кеј Македонија, Охрид', 2500, 'slikaStadion13.jpg'),
	(14, 'Стадион Логоварди', 'с.Логоварди', 5000, 'slikaStadion3.jpg');

-- Dumping structure for table klub_fudbalski.uprava
CREATE TABLE IF NOT EXISTS `uprava` (
  `dres_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `zalaganje` enum('недоволно','доволно','истакнато') DEFAULT NULL,
  `rabotna_ocenka` enum('1','2','3','4','5') DEFAULT NULL,
  `uprava_img_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dres_id`),
  KEY `FK_uprava` (`dres_id`),
  CONSTRAINT `FK_uprava` FOREIGN KEY (`dres_id`) REFERENCES `igrachi` (`dres_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- Dumping data for table klub_fudbalski.uprava: ~8 rows (approximately)
INSERT INTO `uprava` (`dres_id`, `zalaganje`, `rabotna_ocenka`, `uprava_img_path`) VALUES
	(8, 'истакнато', '5', 'dres5.jpg'),
	(24, 'доволно', '3', 'dres5.jpg'),
	(25, 'истакнато', '5', 'dres5.jpg'),
	(26, 'истакнато', '4', 'dres5.jpg'),
	(27, 'недоволно', '1', 'dres5.jpg'),
	(28, 'доволно', '3', 'dres5.jpg'),
	(69, 'недоволно', '1', 'dres5.jpg'),
	(93, 'истакнато', '4', 'dres5.jpg');

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
	IN `dres_id_param` TINYINT,
	IN `ime_pram` VARCHAR(15),
	IN `prezime_param` VARCHAR(30),
	IN `pozicija_param` VARCHAR(15),
	IN `godini_param` YEAR,
	IN `plata_denari_param` DECIMAL(20,6),
	IN `income_id_param` TINYINT,
	IN `igrachi_img_path_param` VARCHAR(255)
)
BEGIN
INSERT INTO igrachi(dres_id,ime,prezime,pozicija,godini,plata_denari,income_id,igrachi_img_path)
VALUES(dres_id_param,ime_pram,prezime_param,pozicija_param,godini_param,plata_denari_param,income_id_param,igrachi_img_path_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_income
DELIMITER //
CREATE PROCEDURE `_insert_income`(
	IN `ime_param` VARCHAR(15),
	IN `prezime_param` VARCHAR(30),
	IN `pozicija_param` VARCHAR(15),
	IN `godini_param` YEAR,
	IN `klub_param` VARCHAR(50),
	IN `iznos_denari_param` DECIMAL(20,6),
	IN `income_img_path_param` VARCHAR(255)
)
BEGIN
INSERT INTO income(ime,prezime,pozicija,godini,klub,iznos_denari,income_img_path)
VALUES(ime_param,prezime_param,pozicija_param,godini_param,klub_param,iznos_denari_param,income_img_path_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_natprevaruvanje
DELIMITER //
CREATE PROCEDURE `_insert_natprevaruvanje`(
	IN `kolo_id_param` TINYINT(2),
	IN `datum_param` DATETIME,
	IN `protivnik_param` VARCHAR(50),
	IN `rezultat_param` VARCHAR(50),
	IN `mesto_param` VARCHAR(50),
	IN `sostav_id_param` TINYINT(3),
	IN `stadion_id_param` TINYINT(3),
	IN `datum_id_param` DATE
)
BEGIN
INSERT INTO natprevaruvanje(kolo_id,datum,protivnik,rezultat,mesto,sostav_id,stadion_id,datum_id)
VALUES(kolo_id_param,datum_param,protivnik_param,rezultat_param,mesto_param,sostav_id_param,stadion_id_param,datum_id_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_outcome
DELIMITER //
CREATE PROCEDURE `_insert_outcome`(
	IN `klub_param` VARCHAR(50),
	IN `iznos_denari_param` DECIMAL(20,1),
	IN `dres_id_param` TINYINT,
	IN `outcome_img_path_param` VARCHAR(255)
)
BEGIN
INSERT INTO outcome(klub,iznos_denari,dres_id,outcome_img_path)
VALUES (klub_param,iznos_denari_param,dres_id_param,outcome_img_path_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_publika
DELIMITER //
CREATE PROCEDURE `_insert_publika`(
	IN `datum_id_param` DATE,
	IN `domashna_param` SMALLINT,
	IN `gostinska_param` SMALLINT,
	IN `karti_rasprodadeni_param` SMALLINT,
	IN `publika_img_path_param` VARCHAR(255)
)
BEGIN
INSERT INTO publika(datum_id,domashna,gostinska,karti_rasprodadeni,publika_img_path)
VALUES (datum_id_param,domashna_param,gostinska_param,karti_rasprodadeni_param,publika_img_path_param);
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
	IN `reserve7_param` INT,
	IN `sostav_img_path_param` VARCHAR(255)
)
BEGIN
INSERT INTO sostav (sostav_id,datum_sostav,coach,goalkeeper,centre_back1,centre_back2,right_back,left_back,defensive_midfielder,center_midfielder,attacking_midfielder,right_forward,left_forward,center_forward,reserve1,reserve2,reserve3,reserve4,reserve5,reserve6,reserve7,sostav_img_path)
VALUES(sostav_id_param,datum_sostav_param,coach_param,goalkeeper_param,centre_back1_param,centre_back2_param,right_back_param,left_back_param,defensive_midfielder_param,center_midfielder_param,attacking_midfielder_param,right_forward_param,left_forward_param,center_forward_param,reserve1_param,reserve2_param,reserve3_param,reserve4_param,reserve5_param,reserve6_param,reserve7_param,sostav_img_path_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_stadion
DELIMITER //
CREATE PROCEDURE `_insert_stadion`(
	IN `ime_param` VARCHAR(30),
	IN `adresa_param` VARCHAR(50),
	IN `kapacitet_param` SMALLINT,
	IN `stadion_img_path_param` VARCHAR(255)
)
BEGIN
INSERT INTO stadion(ime,adresa,kapacitet,stadion_img_path)
VALUES(ime_param,adresa_param,kapacitet_param,stadion_img_path_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._insert_uprava
DELIMITER //
CREATE PROCEDURE `_insert_uprava`(
	IN `dres_id_param` TINYINT(2),
	IN `zalaganje_param` ENUM('недоволно','доволно','истакнато'),
	IN `rabotna_ocenka_param` ENUM('1','2','3','4','5'),
	IN `uprava_img_path_param` VARCHAR(255)
)
BEGIN
INSERT INTO uprava (dres_id,zalaganje,rabotna_ocenka,uprava_img_path)
VALUES(dres_id_param,zalaganje_param,rabotna_ocenka_param,uprava_img_path_param);
END//
DELIMITER ;

-- Dumping structure for procedure klub_fudbalski._select_igrachi
DELIMITER //
CREATE PROCEDURE `_select_igrachi`()
BEGIN
SELECT *,income.ime as ime_income,income.prezime as prezime_income,
income.pozicija as pozicija_income,income.godini as godini_income,
igrachi.ime as ime_igrachi,igrachi.prezime as prezime_igrachi,igrachi.pozicija as pozicija_igrachi,
igrachi.godini as godini_igrachi
FROM igrachi
LEFT JOIN income
ON income.income_id=igrachi.income_id;
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
SELECT* FROM natprevaruvanje
      LEFT JOIN stadion
	    ON (stadion.stadion_id=natprevaruvanje.stadion_id)
      LEFT JOIN publika
	    ON (publika.datum_id=natprevaruvanje.datum_id)
      LEFT JOIN sostav
	    ON(sostav.sostav_id=natprevaruvanje.sostav_id);
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
SELECT * FROM outcome
INNER JOIN igrachi 
ON igrachi.dres_id=outcome.dres_id;
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

-- Dumping structure for procedure klub_fudbalski._select_sostav_natprevaruvanje
DELIMITER //
CREATE PROCEDURE `_select_sostav_natprevaruvanje`()
BEGIN
SELECT
sostav.sostav_id,
sostav.datum_sostav,
concat(natprevaruvanje.protivnik," || ",natprevaruvanje.rezultat," || ",natprevaruvanje.mesto) AS natprevar,
concat(igrachi2.dres_id,"||",igrachi2.ime," ",igrachi2.prezime) AS coach,
concat(igrachi3.dres_id,"||",igrachi3.ime," ",igrachi3.prezime) AS goalkeeper,
concat(igrachi4.dres_id,"||",igrachi4.ime," ",igrachi4.prezime) AS centre_back1,
concat(igrachi5.dres_id,"||",igrachi5.ime," ",igrachi5.prezime) AS centre_back2,
concat(igrachi6.dres_id,"||",igrachi6.ime," ",igrachi6.prezime) AS right_back,
concat(igrachi7.dres_id,"||",igrachi7.ime," ",igrachi7.prezime) AS left_back,
CONCAT(igrachi8.dres_id,"||",igrachi8.ime," ",igrachi8.prezime) AS defensive_midfielder,
CONCAT(igrachi9.dres_id,"||",igrachi9.ime," ",igrachi9.prezime) AS center_midfielder,
concat(igrachi10.dres_id,"||",igrachi10.ime," ",igrachi10.prezime) AS attacking_midfielder,
concat(igrachi11.dres_id,"||",igrachi11.ime," ",igrachi11.prezime) AS right_forward,
concat(igrachi12.dres_id,"||",igrachi12.ime," ",igrachi12.prezime) AS left_forward,
concat(igrachi13.dres_id,"||",igrachi13.ime," ",igrachi13.prezime) AS center_forward,
CONCAT(igrachi14.dres_id,"||",igrachi14.ime," ",igrachi14.prezime) AS reserve1,
concat(igrachi15.dres_id,"||",igrachi15.ime," ",igrachi15.prezime) AS reserve2,
concat(igrachi16.dres_id,"||",igrachi16.ime," ",igrachi16.prezime) AS reserve3,
concat(igrachi17.dres_id,"||",igrachi17.ime," ",igrachi17.prezime) AS reserve4,
concat(igrachi18.dres_id,"||",igrachi18.ime," ",igrachi18.prezime) AS reserve5,
concat(igrachi19.dres_id,"||",igrachi19.ime," ",igrachi19.prezime) AS reserve6,
concat(igrachi20.dres_id,"||",igrachi20.ime," ",igrachi20.prezime) AS reserve7,
sostav.sostav_img_path
FROM sostav
#LEFT JOIN igrachi AS igrachi1
       # ON igrachi1.dres_id=sostav.sostav_id
        LEFT JOIN igrachi AS igrachi2
        ON igrachi2.dres_id=sostav.coach
        LEFT JOIN igrachi AS igrachi3
        ON igrachi3.dres_id=sostav.goalkeeper
        LEFT JOIN igrachi AS igrachi4
        ON igrachi4.dres_id=sostav.centre_back1
        LEFT JOIN igrachi AS igrachi5
        ON igrachi5.dres_id=sostav.centre_back2
        LEFT JOIN igrachi AS igrachi6
        ON igrachi6.dres_id=sostav.right_back
        LEFT JOIN igrachi AS igrachi7
        ON igrachi7.dres_id=sostav.left_back
        LEFT JOIN igrachi AS igrachi8
        ON igrachi8.dres_id=sostav.defensive_midfielder
        LEFT JOIN igrachi AS igrachi9
        ON igrachi9.dres_id=sostav.center_midfielder
        LEFT JOIN igrachi AS igrachi10
        ON igrachi10.dres_id=sostav.attacking_midfielder
        LEFT JOIN igrachi AS igrachi11
        ON igrachi11.dres_id=sostav.right_forward
        LEFT JOIN igrachi AS igrachi12
        ON igrachi12.dres_id=sostav.left_forward
        LEFT JOIN igrachi AS igrachi13
        ON igrachi13.dres_id=sostav.center_forward
        LEFT JOIN igrachi AS igrachi14
        ON igrachi14.dres_id=sostav.reserve1
        LEFT JOIN igrachi AS igrachi15
        ON igrachi15.dres_id=sostav.reserve2
        LEFT JOIN igrachi AS igrachi16
        ON igrachi16.dres_id=sostav.reserve3
        LEFT JOIN igrachi AS igrachi17
        ON igrachi17.dres_id=sostav.reserve4
        LEFT JOIN igrachi AS igrachi18
        ON igrachi18.dres_id=sostav.reserve5
        LEFT JOIN igrachi AS igrachi19
        ON igrachi19.dres_id=sostav.reserve6
        LEFT JOIN igrachi AS igrachi20
        ON igrachi20.dres_id=sostav.reserve7
        LEFT JOIN natprevaruvanje
        ON natprevaruvanje.kolo_id=sostav.sostav_id;
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
select concat(igrachi.dres_id," || ",igrachi.ime," ",igrachi.prezime," || ",igrachi.pozicija," || ",igrachi.godini)AS dres_id,
igrachi.dres_id AS dresBroj,
uprava.zalaganje,uprava.rabotna_ocenka,uprava.uprava_img_path
FROM uprava
inner JOIN igrachi
ON igrachi.dres_id=uprava.dres_id;
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
