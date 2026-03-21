CREATE TABLE IF NOT EXISTS `bounty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext DEFAULT '',
  `identifier` varchar(50) DEFAULT NULL,
  `charidentifier` int(11) DEFAULT NULL,
  `info` longtext DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
