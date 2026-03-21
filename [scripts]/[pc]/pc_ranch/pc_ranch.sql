CREATE TABLE IF NOT EXISTS `pc_ranch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ranch_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `employees` longtext,
  `animals` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `storage` longtext,
  `troughs` longtext,
  `plants` longtext,
  `money` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3;