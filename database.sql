CREATE TABLE `student` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL,
  `lastname` VARCHAR(25) NOT NULL,
  `linkedin` VARCHAR(100) NULL,
  `email` VARCHAR(50) NULL,
  `short_desc` VARCHAR(255) NULL,
  `long_desc` TEXT NULL,
  `status` ENUM('current', 'graduate', 'leader', 'out') NOT NULL DEFAULT 'current',
  `photo_filename` VARCHAR(50) NOT NULL DEFAULT 'user.png',
  `ss` BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (`id`, `name`, `lastname`)
) ENGINE = InnoDB CHARSET = utf8 COLLATE utf8_unicode_ci;
