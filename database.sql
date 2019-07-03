CREATE TABLE `student` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL DEFAULT 'Alumno' COLLATE 'utf8_unicode_ci',
  `lastname` VARCHAR(25) NOT NULL DEFAULT 'Alumno' COLLATE 'utf8_unicode_ci',
  `linkedin` VARCHAR(100) NOT NULL DEFAULT 'https://www.linkedin.com' COLLATE 'utf8_unicode_ci',
  `email` VARCHAR(50) NOT NULL DEFAULT 'contacto@deepdaemon.org' COLLATE 'utf8_unicode_ci',
  `short_desc` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
  `long_desc` TEXT NULL COLLATE 'utf8_unicode_ci',
  `status` ENUM('current', 'graduate', 'leader', 'out') NOT NULL DEFAULT 'current' COLLATE 'utf8_unicode_ci',
  `photo_filename` VARCHAR(50) NOT NULL DEFAULT 'user.png' COLLATE 'utf8_unicode_ci',
  `ss` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`, `name`, `lastname`)
) CHARSET = utf8 COLLATE = 'utf8_unicode_ci' ENGINE = InnoDB;
