CREATE TABLE `student` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NOT NULL DEFAULT 'Alumno',
  `lastname` VARCHAR(25) NOT NULL DEFAULT 'Alumno',
  `linkedin` VARCHAR(100) NOT NULL DEFAULT 'https://www.linkedin.com',
  `email` VARCHAR(50) NOT NULL DEFAULT 'contacto@deepdaemon.org',
  `short_desc` VARCHAR(255) NULL DEFAULT NULL,
  `long_desc` TEXT NULL,
  `status` ENUM('current', 'graduate', 'leader', 'out') NOT NULL DEFAULT 'current',
  `photo_filename` VARCHAR(50) NOT NULL DEFAULT 'user.png',
  `ss` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`, `name`, `lastname`)
) COLLATE = 'utf8_unicode_ci' ENGINE = InnoDB;
CREATE TABLE `project` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL DEFAULT 'Proyecto' COLLATE 'utf8_general_ci',
  `desc` VARCHAR(500) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
  `impact` VARCHAR(500) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
  `front_img` VARCHAR(50) NOT NULL DEFAULT 'project_front.jpg' COLLATE 'utf8_general_ci',
  `modal_img` VARCHAR(50) NOT NULL DEFAULT 'project_modal.jpg' COLLATE 'utf8_general_ci',
  `link` VARCHAR(50) NOT NULL DEFAULT 'https://spsnk.github.io/deepdaemon_react/' COLLATE 'utf8_general_ci',
  PRIMARY KEY (`id`)
) COLLATE = 'utf8_unicode_ci' ENGINE = InnoDB;
