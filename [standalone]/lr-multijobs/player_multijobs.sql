CREATE TABLE IF NOT EXISTS `player_multijobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL COMMENT 'Player Steam identifier',
  `charidentifier` int(11) NOT NULL COMMENT 'Character ID from characters table',
  `job` varchar(50) NOT NULL COMMENT 'Job name (must match syn_society job names)',
  `jobgrade` int(11) NOT NULL DEFAULT 0 COMMENT 'Job grade/rank',
  `hired_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'When character was hired',
  `last_active` timestamp NULL DEFAULT NULL COMMENT 'Last time this job was active',
  `status` enum('active','inactive','fired') DEFAULT 'inactive' COMMENT 'Job status',
  
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_character_job` (`charidentifier`, `job`),
  KEY `idx_charidentifier` (`charidentifier`),
  KEY `idx_identifier` (`identifier`),
  KEY `idx_job` (`job`),
  KEY `idx_hired_date` (`hired_date`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tracks multiple jobs per character';

INSERT IGNORE INTO `player_multijobs` (`identifier`, `charidentifier`, `job`, `jobgrade`, `hired_date`, `status`)
SELECT 
    `identifier`, 
    `charidentifier`, 
    `job`, 
    `jobGrade` as `jobgrade`,
    NOW() as `hired_date`,
    'inactive' as `status`
FROM `characters` 
WHERE `job` IS NOT NULL
AND `job` != '' 
AND `job` != 'unemployed';

UPDATE `player_multijobs` pm 
INNER JOIN `characters` c ON pm.charidentifier = c.charidentifier 
SET pm.status = 'active', pm.last_active = NOW()
WHERE pm.job = c.job AND c.job != 'unemployed';

ALTER TABLE `player_multijobs` 
ADD INDEX IF NOT EXISTS `idx_char_job_status` (`charidentifier`, `job`, `status`);

ALTER TABLE `player_multijobs` 
ADD INDEX IF NOT EXISTS `idx_identifier_status` (`identifier`, `status`);

SELECT 
    'Total jobs migrated' as description,
    COUNT(*) as count
FROM player_multijobs
UNION ALL
SELECT 
    'Unique characters with jobs' as description,
    COUNT(DISTINCT charidentifier) as count
FROM player_multijobs
UNION ALL
SELECT 
    'Different job types' as description,
    COUNT(DISTINCT job) as count
FROM player_multijobs
UNION ALL
SELECT 
    'Active jobs' as description,
    COUNT(*) as count
FROM player_multijobs
WHERE status = 'active';

-- ========================================================
-- CLEANUP QUERY (Run if needed)
-- ========================================================

-- Uncomment and run this if you need to clean duplicate entries
-- DELETE pm1 FROM player_multijobs pm1
-- INNER JOIN player_multijobs pm2 
-- WHERE pm1.charidentifier = pm2.charidentifier 
-- AND pm1.job = pm2.job 
-- AND pm1.id < pm2.id;

-- ========================================================
-- INSTALLATION COMPLETE
-- ========================================================

SELECT 'LR-MultiJobs database installation completed successfully!' as status;