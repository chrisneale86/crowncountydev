ALTER TABLE `characters` ADD COLUMN `crafting` longtext DEFAULT '{"medical":0,"blacksmith":0,"basic":0,"survival":0,"brewing":0,"food":0}';
ALTER TABLE `characters` ADD INDEX `crafting` (`crafting`);