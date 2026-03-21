
CREATE TABLE IF NOT EXISTS `tp_beekeepers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charidentifier` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `steamname` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `maximum_insects` int(11) NOT NULL DEFAULT 0,
  `location` longtext NOT NULL DEFAULT '{}',
  `members` longtext DEFAULT '[]',
  `data` longtext DEFAULT '[]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=98627 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- VORP ONLY BELOW:

INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('insect_medicine', 'Insect Medicine', 10, 1, 'item_standard', 1, NULL, '{}', 'Medicine used to treat insect bites and stings');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('basic_bees', 'Basic Bees', 10, 1, 'item_standard', 1, NULL, '{}', 'A basic set of bees for pollination');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('wild_bees', 'Wild Bees', 10, 1, 'item_standard', 1, NULL, '{}', 'A wild variety of bees for natural habitats');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('basic_hornets', 'Basic Hornet', 10, 1, 'item_standard', 1, NULL, '{}', 'A basic species of hornet for pest control');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('mexican_hornets', 'Mexican Hornet', 10, 1, 'item_standard', 1, NULL, '{}', 'A species of hornet found in Mexico');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('basic_queen', 'Basic Queen', 10, 1, 'item_standard', 1, NULL, '{}', 'A basic queen bee for hive management');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('wild_queen', 'Wild Queen', 5, 1, 'item_standard', 1, NULL, '{}', 'A queen bee from a wild colony');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('basic_hornet_queen', 'Basic Hornet Queen', 10, 1, 'item_standard', 1, NULL, '{}', 'A queen hornet for starting a new colony' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('mexican_hornet_queen', 'Mexican Hornet Queen', 10, 1, 'item_standard', 1, NULL, '{}', 'The queen of a Mexican hornet species' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('hornet_poison', 'Hornet Poison', 10, 1, 'item_standard', 1, NULL, '{}', 'Poison specifically for dealing with hornets' );
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('empty_bee_jar', 'Clean Bee Jar', 10, 1, 'item_standard', 1, NULL, '{}', 'A jar used to store bees or other small insects');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('sponge', 'Sponge', 10, 1, 'item_standard', 1, NULL, '{}', 'An absorbent material used for cleaning');  
INSERT IGNORE INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `id`, `metadata`, `desc`) VALUES ('pipepeace', 'Bee Smoking Pipe', 10, 1, 'item_standard', 1, NULL, '{}', 'A pipe used for calming bees with smoke');  