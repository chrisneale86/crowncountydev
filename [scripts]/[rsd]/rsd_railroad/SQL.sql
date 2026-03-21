CREATE TABLE IF NOT EXISTS `rsd_railroad` (
  `id` int(11) NOT NULL,
  `owner_job` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `model` bigint(20) NOT NULL,
  `station` varchar(50) NOT NULL,
  `life` int(50) NOT NULL DEFAULT 100,
  `coal` int(50) NOT NULL DEFAULT 0,
  `water` int(50) NOT NULL DEFAULT 0,
  `maxspeed` decimal(20,2) NOT NULL DEFAULT 0.00,
  `skin` varchar(250) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

ALTER TABLE `rsd_railroad`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `rsd_railroad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;
