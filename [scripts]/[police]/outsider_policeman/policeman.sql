/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE IF NOT EXISTS `policeman_billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `town` varchar(50) NOT NULL DEFAULT '0',
  `charid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL DEFAULT '"none"',
  `description` mediumtext NOT NULL DEFAULT '"none"',
  `issued_by` varchar(50) NOT NULL DEFAULT '"none"',
  `date_pay` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `penal_code` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `charid` (`charid`),
  KEY `town` (`town`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `policeman_criminals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `charid` int(11) NOT NULL,
  `charges` longtext NOT NULL,
  `image` longtext DEFAULT NULL,
  `wanted` int(11) NOT NULL DEFAULT 0,
  `town` varchar(50) NOT NULL DEFAULT '""',
  `gender` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wanted` (`wanted`),
  KEY `charid` (`charid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `policeman_investigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suspects` text DEFAULT NULL COMMENT 'suspects to arrest',
  `charges` text DEFAULT NULL COMMENT 'charges facing',
  `witnesses` text DEFAULT NULL COMMENT 'witnesses of the case',
  `description` longtext DEFAULT NULL COMMENT 'description of case',
  `evidence` longtext DEFAULT NULL COMMENT 'images of evidence',
  `detectives` text DEFAULT NULL COMMENT 'players involved',
  `title` varchar(250) DEFAULT NULL COMMENT 'title of case',
  `type` varchar(50) DEFAULT NULL COMMENT 'type of case',
  `town` varchar(50) DEFAULT NULL COMMENT 'town of the case',
  `date` varchar(50) DEFAULT NULL COMMENT 'date of the case',
  `accepted` int(11) NOT NULL DEFAULT 0 COMMENT 'accepted status',
  `accepted_by` varchar(250) DEFAULT NULL COMMENT 'player that accepted this case',
  PRIMARY KEY (`id`),
  KEY `town` (`town`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `policeman_jail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charid` int(11) NOT NULL COMMENT 'player citizenid',
  `name` varchar(50) DEFAULT NULL COMMENT 'player name',
  `time_facing` int(11) UNSIGNED DEFAULT NULL COMMENT 'time in hours player will have to face',
  `type` varchar(50) DEFAULT NULL COMMENT 'status of player in jail',
  `jailed_date` datetime DEFAULT NULL COMMENT 'player has been jail on this date',
  `time_served` DECIMAL(20,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT 'cumulative in-game time served by the player in minutes',
  `dateandtime` VARCHAR(50) NULL DEFAULT NULL COMMENT 'release date and time for display only' COLLATE 'utf8mb4_general_ci',
  `last_login` datetime DEFAULT NULL COMMENT 'timestamp of the player''s last login',
  `case` int(11) NOT NULL DEFAULT 0 COMMENT 'case number',
  `release` varchar(50) DEFAULT NULL COMMENT 'release date',
  `released_by` varchar(50) DEFAULT NULL COMMENT 'released by who',
  `accepted_by` varchar(50) DEFAULT NULL COMMENT 'accepted by an officer',
  `cell` int(11) DEFAULT NULL COMMENT 'player cell number',
  `insolitary` int(11) DEFAULT 0 COMMENT 'in this player in solitary confinement',
  `setwanted` int(11) DEFAULT 0 COMMENT 'was this player set to wanted already by an officer',
  `time_released` datetime DEFAULT NULL COMMENT 'time released',
  PRIMARY KEY (`id`),
  KEY `charid` (`charid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='where players info that are jailed is';


CREATE TABLE IF NOT EXISTS `policeman_office` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `town` varchar(25) DEFAULT NULL,
  `ledger` float NOT NULL DEFAULT 0,
  `employees` longtext DEFAULT NULL,
  `gunrack` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `town` (`town`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `policeman_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `town` varchar(50) NOT NULL,
  `report_desc` longtext NOT NULL,
  `officers_involved` mediumtext NOT NULL,
  `report_date` varchar(50) NOT NULL,
  `witnesses` mediumtext NOT NULL,
  `suspects_involved` mediumtext NOT NULL,
  `suspects_charids` mediumtext NOT NULL,
  `title` varchar(100) NOT NULL,
  `reported_by` varchar(50) NOT NULL,
  `charges` mediumtext NOT NULL,
  `location` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `archived_by` varchar(50) NOT NULL DEFAULT '""',
  `archived_date` varchar(50) NOT NULL DEFAULT '""',
  `edited` int(11) NOT NULL DEFAULT 0,
  `edited_by` varchar(50) NOT NULL DEFAULT '""',
  `evidence` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `town` (`town`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `policeman_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `town` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `date` varchar(50) NOT NULL DEFAULT '',
  `accepted` int(11) NOT NULL DEFAULT 0,
  `requesting` varchar(50) NOT NULL,
  `accepted_by` varchar(50) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `charges` mediumtext NOT NULL,
  `evidence` longtext NOT NULL,
  `suspects` mediumtext NOT NULL,
  `witnesses` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `town` (`town`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `policeman_stables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `town` (`town`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `policeman_wanted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `town` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` longtext NOT NULL,
  `gender` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `poster_type` varchar(50) DEFAULT NULL,
  `date_posted` varchar(50) DEFAULT NULL,
  `reward` double NOT NULL DEFAULT 0,
  `posted_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `town` (`town`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


/* EDIT NAMES DESCRITIONS ETC, THIS IS OPTIONAL ADD YOUR OWN IF YOU WANT */
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('cuffs', 'Cuffs', 10, 1, 'item_standard', 1, NULL, '{}', 'Cuffs for Law men to arrest criminals');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('rope', 'Rope', 10, 1, 'item_standard', 1, NULL, '{}', 'Rope for Law men to hogtie criminals');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('monocle', 'Monocle', 10, 1, 'item_standard', 1, NULL, '{}', 'Monocle for detectives to inspect bullet samples');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('lawbook', 'Law Book', 10, 1, 'item_standard', 1, NULL, '{}', 'A book containing the laws and all documents related to the law "MDT" ');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('prisonoutfit', 'Prison outfit', 10, 1, 'item_standard', 1, NULL, '{}', 'Prison outfits for female or male');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('policebill', 'Law Bill', 10, 1, 'item_standard', 1, NULL, '{}', 'A Bill paper containing information about the law in violation and its fines');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('wagonlockpick', 'Wagon lockpick', 5, 1, 'item_standard', 1, NULL, '{}', 'A lockpick that opens Law wagons doors');
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('bulletinfo', 'Report bullet sample', 10, 1, 'item_standard', 1, NULL, '{}', 'A document containing a report made about bullets found in crime scenes' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('bulletsample', 'Bullet sample', 10, 1, 'item_standard', 1, NULL, '{}', 'A bullet shell found in crime scenes that may contain information about the crime' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('evidencebag', 'Evidence bag', 10, 1, 'item_standard', 1, NULL, '{}', 'A bag used to store evidence found in crime scenes' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('gloves', 'Gloves', 10, 1, 'item_standard', 1, NULL, '{}', 'Gloves used to handle evidence in crime scenes' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('bisturi', 'Bisturi', 10, 1, 'item_standard', 1, NULL, '{}', 'A bisturi used to collect evidence in crime scenes on dead bodies' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('prisonlockpick', 'Prison lockpick', 5, 1, 'item_standard', 1, NULL, '{}', 'A lockpick that opens prison back doors at a certain time of the night' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('prisonbroom', 'Prison broom', 10, 1, 'item_standard', 1, NULL, '{}', 'A broom used to sweep the prison floors' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('prisonbrush', 'Prison brush', 10, 1, 'item_standard', 1, NULL, '{}', 'A brush used to wash the prison floors' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('prisonhammer', 'Prison hammer', 10, 1, 'item_standard', 1, NULL, '{}', 'A hammer used to fix things around the prison' );



/* NEW TABLE FOR DUTY SYSTEM */
CREATE TABLE `policeman_duty` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`char_id` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`location` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`start_time` TIMESTAMP NOT NULL,
	`end_time` TIMESTAMP NULL DEFAULT NULL,
	`money_earned` DECIMAL(10,2) NOT NULL DEFAULT '0.00',
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `idx_char_id` (`char_id`) USING BTREE,
	INDEX `idx_location` (`location`) USING BTREE,
	INDEX `idx_active` (`location`, `end_time`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;
