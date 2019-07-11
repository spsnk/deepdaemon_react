SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET
  AUTOCOMMIT = 0;
START TRANSACTION;
SET
  time_zone = "+00:00";
CREATE TABLE `career` (
    `id` int(10) UNSIGNED NOT NULL,
    `short_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
    `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
CREATE TABLE `grade` (
    `id` int(10) UNSIGNED NOT NULL,
    `id_member` int(10) UNSIGNED NOT NULL DEFAULT '0',
    `id_school` int(10) UNSIGNED NOT NULL DEFAULT '0',
    `id_career` int(10) UNSIGNED NOT NULL DEFAULT '0',
    `type` enum('bachelor', 'masters', 'phd', 'work') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bachelor',
    `start` date DEFAULT NULL,
    `end` date DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
CREATE TABLE `member` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Alumno',
    `lastname` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Alumno',
    `linkedin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
    `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
    `short_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
    `long_desc` text COLLATE utf8_unicode_ci,
    `status` enum('current', 'graduate', 'leader', 'out') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'current',
    `photo_filename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user.png',
    `ss` tinyint(1) NOT NULL DEFAULT '0'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
CREATE TABLE `project` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Proyecto',
    `desc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
    `impact` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
    `front_img` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'project_front.jpg',
    `modal_media` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'project_modal.jpg',
    `modal_type` enum('image', 'video', 'embed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'image',
    `link` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
CREATE TABLE `project_member` (
    `id_member` int(10) UNSIGNED NOT NULL,
    `id_project` int(10) UNSIGNED NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
CREATE TABLE `project_tech` (
    `id_project` int(10) UNSIGNED NOT NULL,
    `id_tech` int(10) UNSIGNED NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
CREATE TABLE `school` (
    `id` int(10) UNSIGNED NOT NULL,
    `short_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
    `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
CREATE TABLE `tech` (
    `id` int(10) UNSIGNED NOT NULL,
    `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Tecnologia',
    `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Descripción',
    `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'tech.png'
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;
ALTER TABLE
  `career`
ADD
  PRIMARY KEY (`id`);
ALTER TABLE
  `grade`
ADD
  PRIMARY KEY (`id`),
ADD
  UNIQUE KEY `career` (`id_member`, `id_school`, `id_career`),
ADD
  KEY `FK_grade_career` (`id_career`),
ADD
  KEY `FK_grade_student` (`id_member`),
ADD
  KEY `FK_grade_school` (`id_school`);
ALTER TABLE
  `member`
ADD
  PRIMARY KEY (`id`, `name`, `lastname`);
ALTER TABLE
  `project`
ADD
  PRIMARY KEY (`id`);
ALTER TABLE
  `project_member`
ADD
  PRIMARY KEY (`id_member`, `id_project`),
ADD
  KEY `FK__project` (`id_project`),
ADD
  KEY `FK__student` (`id_member`);
ALTER TABLE
  `project_tech`
ADD
  PRIMARY KEY (`id_project`, `id_tech`),
ADD
  KEY `FK__tech` (`id_tech`);
ALTER TABLE
  `school`
ADD
  PRIMARY KEY (`id`, `short_name`);
ALTER TABLE
  `tech`
ADD
  PRIMARY KEY (`id`, `name`);
ALTER TABLE
  `career`
MODIFY
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE
  `grade`
MODIFY
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE
  `member`
MODIFY
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE
  `project`
MODIFY
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE
  `school`
MODIFY
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE
  `tech`
MODIFY
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE
  `grade`
ADD
  CONSTRAINT `FK_grade_career` FOREIGN KEY (`id_career`) REFERENCES `career` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD
  CONSTRAINT `FK_grade_member` FOREIGN KEY (`id_member`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD
  CONSTRAINT `FK_grade_school` FOREIGN KEY (`id_school`) REFERENCES `school` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE
  `project_member`
ADD
  CONSTRAINT `FK__member` FOREIGN KEY (`id_member`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD
  CONSTRAINT `FK__project` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE
  `project_tech`
ADD
  CONSTRAINT `FK__project_tech` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD
  CONSTRAINT `FK__tech` FOREIGN KEY (`id_tech`) REFERENCES `tech` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
