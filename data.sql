-- --------------------------------------------------------
-- Host:                         deepdaemon.org
-- Server version:               10.1.40-MariaDB-cll-lve - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table deepdaem_web.career: ~8 rows (approximately)
/*!40000 ALTER TABLE `career` DISABLE KEYS */;
INSERT INTO `career` (`id`, `short_name`, `name`) VALUES
	(1, 'Lider', 'Lider de proyecto'),
	(2, 'ISC', 'Ingeniería en Sistemas Computacionales'),
	(3, 'MCC', 'Maestría en Ciencias de la Computación'),
	(4, 'DCC', 'Doctorado en Ciencias de la Computación'),
	(5, 'MCIC', 'Maestría en Ciencias en Ingeniería de Cómputo'),
	(6, 'IMeca', 'Ingeniería Mecatrónica'),
	(7, 'IAero', 'Ingeniería Aeronáutica'),
	(8, 'Empleado', 'Empleado');
/*!40000 ALTER TABLE `career` ENABLE KEYS */;

-- Dumping data for table deepdaem_web.grade: ~46 rows (approximately)
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` (`id`, `id_member`, `id_school`, `id_career`, `type`, `start`, `end`) VALUES
	(1, 1, 2, 1, 'phd', NULL, NULL),
	(2, 2, 2, 1, 'phd', NULL, NULL),
	(3, 3, 1, 2, 'bachelor', '2017-08-00', '2018-12-00'),
	(4, 5, 1, 2, 'bachelor', '2017-01-00', '2018-05-00'),
	(5, 5, 2, 3, 'masters', '2019-01-00', NULL),
	(6, 12, 2, 3, 'masters', '2017-01-00', '2019-06-00'),
	(7, 14, 2, 3, 'masters', '2017-08-00', NULL),
	(8, 15, 1, 2, 'bachelor', '2017-01-00', '2018-05-00'),
	(9, 15, 2, 3, 'masters', '2019-01-00', NULL),
	(10, 17, 1, 2, 'bachelor', '2017-01-00', '2018-06-00'),
	(11, 19, 2, 4, 'phd', '2016-08-00', NULL),
	(12, 21, 1, 2, 'bachelor', '2016-08-00', '2019-12-31'),
	(13, 22, 1, 2, 'bachelor', '2017-01-00', '2019-12-31'),
	(14, 24, 3, 6, 'bachelor', '2018-08-00', NULL),
	(15, 25, 5, 7, 'bachelor', NULL, NULL),
	(16, 6, 2, 3, 'masters', '2016-08-00', '2018-06-00'),
	(18, 26, 2, 3, 'masters', '2018-08-00', NULL),
	(19, 27, 1, 2, 'bachelor', '2019-01-00', NULL),
	(20, 12, 6, 8, 'work', NULL, NULL),
	(21, 23, 1, 2, 'bachelor', '2018-08-00', NULL),
	(22, 8, 1, 2, 'bachelor', '2018-08-00', '2018-12-00'),
	(23, 9, 1, 2, 'bachelor', '2019-01-00', '2019-06-00'),
	(24, 28, 3, 6, 'bachelor', '2018-08-00', NULL),
	(25, 11, 1, 2, 'bachelor', '2017-01-00', '2018-06-00'),
	(26, 11, 7, 8, 'work', NULL, NULL),
	(27, 29, 3, 6, 'bachelor', '2019-01-00', NULL),
	(28, 4, 2, 3, 'masters', '2017-08-00', NULL),
	(29, 10, 1, 2, 'bachelor', '2017-08-00', '2017-12-00'),
	(30, 30, 1, 2, 'bachelor', '2019-01-00', NULL),
	(31, 31, 1, 2, 'bachelor', '2018-01-00', '2019-06-00'),
	(32, 13, 1, 2, 'bachelor', '2018-08-00', '2019-12-00'),
	(33, 13, 7, 8, 'work', NULL, NULL),
	(34, 32, 2, 3, 'masters', '2014-08-00', '2016-12-00'),
	(35, 32, 6, 8, 'work', NULL, NULL),
	(36, 33, 1, 2, 'bachelor', '2018-06-00', '2019-01-00'),
	(38, 33, 8, 8, 'work', NULL, NULL),
	(39, 34, 1, 2, 'bachelor', '2017-07-00', '2018-11-00'),
	(40, 35, 3, 6, 'bachelor', '2018-08-00', NULL),
	(41, 36, 1, 2, 'bachelor', '2017-08-00', '2018-11-00'),
	(42, 37, 3, 6, 'bachelor', '2019-01-00', NULL),
	(43, 38, 1, 2, 'bachelor', '2018-08-00', '2018-12-00'),
	(44, 18, 1, 2, 'bachelor', '2018-06-00', NULL),
	(45, 40, 1, 2, 'bachelor', '2017-08-00', '2018-11-00'),
	(46, 41, 3, 6, 'bachelor', '2018-08-00', NULL),
	(47, 20, 2, 3, 'masters', '2017-08-00', NULL),
	(48, 17, 9, 8, 'work', NULL, NULL);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;

-- Dumping data for table deepdaem_web.member: ~42 rows (approximately)
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `name`, `lastname`, `linkedin`, `email`, `short_desc`, `long_desc`, `status`, `photo_filename`, `ss`) VALUES
	(1, 'Marco Antonio', 'Moreno Armendáriz', 'https://www.linkedin.com/in/mam-armendariz/', 'amam.armendariz@deepdaemon.org', 'Soy investigador del IPN con 20 años de experiencia y miembro del Sistema Nacional de Investigadores.', NULL, 'leader', 'morenoam.jpg', 0),
	(2, 'Carlos Alberto', 'Duchanoy Martínez', 'https://www.linkedin.com/in/carlos-alberto-duchanoy-mart%C3%ADnez-0a6a0457/', 'carlos.duchanoy@deepdaemon.org', 'Investigador CONACYT con experiencia en el desarrollo y dirección de proyectos en la industria y academia, enfocado al desarrollo de nuevas tecnologías en IA.', NULL, 'leader', 'duchanoymc.jpg', 0),
	(3, 'Adriana', 'Vásquez Ramírez', NULL, NULL, 'Soy estudiante de la carrera Ing. Sistemas Computacionales, mis objetivos son aprender nuevas cosas sobre mi carrera para crear proyectos innovadores.', NULL, 'graduate', 'vasquezra.jpg', 0),
	(4, 'Jonathan Adrián', 'Mendieta Antúnez', 'http://linkedin.com/in/jonathan-adri%C3%A1n-mendieta-ant%C3%BAnez-09999a116', 'adrian.mendieta@deepdaemon.org', 'Ingeniero Mecatrónico de la Universidad La Salle y actual estudiante de maestría en el Centro de Investigación en Computación del Instituto Politécnico Nacional.', NULL, 'current', 'mendietaaj.jpg', 0),
	(5, 'José Alberto', 'Torres León', 'https://www.linkedin.com/in/jos%C3%A9-alberto-torres-00a446140/', 'alberto.torres@deepdaemon.org', 'Estudiante de Ingeniería en Sistemas Computacionales, interesado en desarrollar aplicaciones de Inteligencia Artificial.', NULL, 'current', 'torreslj.jpg', 1),
	(6, 'Arturo Pablo', 'Rocha Ramirez', 'https://www.linkedin.com/in/arturo-pablo-rocha-ramirez-b32741b7', 'arturo.rocha@deepdaemon.org', 'Estudiante de maestría en ciencias en ingeniería de computo, interés en programación de backend, procesamiento de lenguaje natural y aprendizaje automático.', NULL, 'graduate', 'rochara.jpg', 0),
	(7, 'Augusto I.', 'Hernández Ruiz', NULL, 'augusto.hernandez@deepdaemon.org', 'Estudiante que disfruta de convivir con sus amigos, desarrollar aplicaciones web, interesado en temas de deep learning, criptografía etc. Ama tomar fotos, nadar y los tacos de pastor.', NULL, 'out', 'hernandezra.jpg', 0),
	(8, 'Edgar Abel', 'Quiroga Maldonado', 'https://www.linkedin.com/in/edgar-abel-quiroga-maldonado-26a354162', 'abel.quiroga@deepdaemon.org', 'Entusiasta de la tecnología altamente preparado para el desarrollo de software, capaz, confiable, puntual y amable son cualidades que lo representan.', NULL, 'graduate', 'quirogame.jpg', 0),
	(9, 'Eduardo', 'Hernandez Martinez', NULL, NULL, NULL, NULL, 'current', 'hernandezme.jpg', 1),
	(10, 'José Antonio', 'Martinez Faustinos', NULL, NULL, NULL, NULL, 'current', 'martinezfj.jpg', 1),
	(11, 'Israel Agustin', 'Vargas Monroy', 'https://www.linkedin.com/in/israel-a-vargas-monroy-18155a134/', 'israel.vargas@deepdaemon.org', 'Me considero como un ingeniero capaz, motivado y orientado a poder desarrollar soluciones a problemas a través de mis capacidades preparado para afrontar retos.', NULL, 'graduate', 'vargasmi.jpg', 0),
	(12, 'Juan Carlos', 'Moreno Torres', 'https://www.linkedin.com/in/juan-carlos-moreno-04aa8485/', 'juanc.moreno@deepdaemon.org', NULL, NULL, 'graduate', 'morenojc.jpg', 0),
	(13, 'Juan Manuel', 'Balderas Sánchez', 'https://www.linkedin.com/in/juanbalderas', 'juan.balderas@deepdaemon.org', 'Ingeniero en sistemas computacionales interesado en analizar, diseñar e implementar soluciones a problemas sociales mediante procesos científicos y tecnológicos.', NULL, 'graduate', 'balderassj.jpg', 0),
	(14, 'Miguelangel', 'Moreno Sotelo', 'https://www.linkedin.com/in/miguelangel-moreno-315037b1/', 'miguel.moreno@deepdaemon.org', 'Me considero como un ingeniero capaz, motivado y orientado a poder desarrollar soluciones a problemas a través de mis capacidades preparado para afrontar retos.', NULL, 'current', 'morenosm.jpg', 0),
	(15, 'Oliver', 'Bustamante Peralta', 'https://www.linkedin.com/in/oliver-bustamante-peralta-a8b9ba95/', 'oliver.bustamante@deepdaemon.org', 'Estudiante de último semestre de la licenciatura en sistemas computacionales enfocado al área de aprendizaje maquina para procesamiento de lenguaje natural.', NULL, 'current', 'bustamantepo.jpg', 0),
	(16, 'Roberto Francisco', 'García Enríquez', NULL, NULL, NULL, NULL, 'out', 'garciaer.jpg', 0),
	(17, 'Anayantzin Paola', 'Lopez Juarez', 'https://www.linkedin.com/in/anayantzin-paola-l%C3%B3pez-ju%C3%A1rez-a5a709140/', 'anayatzin.lopez@deepdaemon.org', 'Me considero una persona seria y responsable con ganas de trabajar y aprender, tengo la creatividad y la capacitad para resolver problemas forma eficiente.', NULL, 'graduate', 'lopezja.jpg', 1),
	(18, 'Rodrigo Andrés', 'Burciaga Ornelas', 'https://www.linkedin.com/in/israel-a-vargas-monroy-18155a134/', 'israel.vargas@deepdaemon.org', NULL, NULL, 'current', 'burciagaor.jpg', 1),
	(19, 'Sandra Jazmín', 'Gutiérrez Hinojosa', NULL, 'sandra.gutierrez@deepdaemon.org', 'Estudiante de doctorado en computación con antecedentes en biónica y bioelectrónica.', NULL, 'current', 'gutierrezhs.jpg', 0),
	(20, 'Victor Eugenio', 'Hernández Ramos', 'http://www.linkedin.com/in/victor-eugenio-hern%C3%A1ndez-ramos-01340061', 'victor.hernandez@deepdaemon.org', 'Ingeniero en Informática (IPN-UPIICSA), con experiencia en herramientas de BI, SMBD, futuro Científico de Datos e investigador en Deep y Machine learning.', NULL, 'current', 'hernandezrv.jpg', 0),
	(21, 'Salvador', 'Paz Santos', 'https://www.linkedin.com/in/salvadorpaz/', 'salvador.paz@deepdaemon.org', 'Estudiante de Ingeniería en Sistemas Computacionales, apasionado por la Inteligencia Artificial y la Astronomía.', NULL, 'current', 'pazss.jpg', 1),
	(22, 'Jennifer', 'Pineda Aburto', NULL, 'jennifer.pineda@deepdaemon.org', NULL, NULL, 'current', 'pinedaaj.jpg', 1),
	(23, 'Damián Amaury', 'García García', NULL, 'damian.garcia@deepdaemon.org', NULL, NULL, 'current', 'garciagd.jpg', 0),
	(24, 'Abraham', 'Camarillo Loza', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(25, 'Ana Paula', 'Zamora', NULL, NULL, NULL, NULL, 'current', 'user.png', 1),
	(26, 'Axel Dasaev', 'González Villegas', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(27, 'Cristian', 'Rosales Deloya', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(28, 'Gabriel Anthony', 'Pérez Germán', NULL, NULL, NULL, NULL, 'current', 'user.png', 1),
	(29, 'Jesua Salvador', 'Salcedo Castañeda', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(30, 'José Emmanuel', 'Martínez Cerón', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(31, 'José Luis', 'Amézaga Díaz', NULL, NULL, NULL, NULL, 'graduate', 'user.png', 0),
	(32, 'Leopoldo', 'Urbina Márquez', NULL, NULL, NULL, NULL, 'graduate', 'user.png', 0),
	(33, 'Luis Alfonso', 'Rivera Pérez', NULL, NULL, NULL, NULL, 'graduate', 'user.png', 0),
	(34, 'Luis Ángel', 'Granados Díaz', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(35, 'Luis Fernando', 'Osorio Segura', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(36, 'Mariano Santiago', 'López China', NULL, NULL, NULL, NULL, 'graduate', 'user.png', 0),
	(37, 'Michel', 'Ayala Canseco', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(38, 'Pedro', 'Salazar Garrido', NULL, NULL, NULL, NULL, 'graduate', 'user.png', 1),
	(39, 'Raymundo', 'Rosales Reyes', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(40, 'Steven', 'Soto Vázquez', NULL, NULL, NULL, NULL, 'graduate', 'user.png', 1),
	(41, 'Victor David', 'González Pastor', NULL, NULL, NULL, NULL, 'current', 'user.png', 0),
	(42, 'Eddy', 'Alumno', NULL, NULL, NULL, NULL, 'out', 'user.png', 0);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- Dumping data for table deepdaem_web.project: ~1 rows (approximately)
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` (`id`, `name`, `desc`, `impact`, `front_img`, `modal_media`, `modal_type`, `link`) VALUES
	(1, 'Nombre de proyecto', 'Descripción de proyecto', 'Impacto de proyecto', 'project_front.jpg', 'project_modal.jpg', 'image', 'https://github.com/spsnk/deepdaemon_react');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;

-- Dumping data for table deepdaem_web.project_member: ~0 rows (approximately)
/*!40000 ALTER TABLE `project_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_member` ENABLE KEYS */;

-- Dumping data for table deepdaem_web.project_tech: ~0 rows (approximately)
/*!40000 ALTER TABLE `project_tech` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_tech` ENABLE KEYS */;

-- Dumping data for table deepdaem_web.school: ~9 rows (approximately)
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` (`id`, `short_name`, `name`) VALUES
	(1, 'ESCOM-IPN', 'Escuela Superior de Cómputo'),
	(2, 'CIC-IPN', 'Centro de Investigación en Computación'),
	(3, 'UPIITA-IPN', 'Unidad Profesional Interdisciplinaria en Ingeniería y Tecnologías Avanzadas'),
	(4, 'ESIMEZ-IPN', 'Escuela Superior de Ingeniería Mecánica y Eléctrica Zacatenco'),
	(5, 'ESIMET-IPN', 'Escuela Superior de Ingeniería Mecánica y Eléctrica Ticomán'),
	(6, 'Ford', 'Ford Motor Company México'),
	(7, 'Posadas', 'Posadas Hotelera'),
	(8, 'Softeck', 'Softeck'),
	(9, 'Everis', 'Everis');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;

-- Dumping data for table deepdaem_web.tech: ~1 rows (approximately)
/*!40000 ALTER TABLE `tech` DISABLE KEYS */;
INSERT INTO `tech` (`id`, `name`, `desc`, `icon`) VALUES
	(1, 'ML', 'Machine learning', 'tech.png');
/*!40000 ALTER TABLE `tech` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
