-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 02:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_votaciones`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidatos`
--

INSERT INTO `candidatos` (`id`, `nombre`) VALUES
(1, 'Manuel Blanco Encalada'),
(2, 'Agustín Eyzaguirre'),
(3, 'Ramón Freire'),
(4, 'Francisco Antonio Pinto'),
(5, 'Francisco Ramón Vicuña'),
(6, 'José Tomás Ovalle'),
(7, 'Fernando Errázuriz'),
(8, 'José Joaquín Prieto'),
(9, 'Manuel Bulnes'),
(10, 'Manuel Montt'),
(11, 'José Joaquín Pérez'),
(12, 'Federico Errázuriz Zañartu'),
(13, 'Aníbal Pinto'),
(14, 'Domingo Santa María'),
(15, 'José Manuel Balmaceda'),
(16, 'Jorge Montt'),
(17, 'Federico Errázuriz Echaurren'),
(18, 'Germán Riesco'),
(19, 'Pedro Montt'),
(20, 'Elías Fernández Albano'),
(21, 'Emiliano Figueroa'),
(22, 'Ramón Barros Luco'),
(23, 'Juan Luis Sanfuentes'),
(24, 'Arturo Alessandri'),
(25, 'Luis Barros Borgoño'),
(26, 'Emiliano Figueroa Larraín'),
(27, 'Carlos Ibáñez del Campo'),
(28, 'Juan Esteban Montero'),
(29, 'Bartolomé Blanche'),
(30, 'Carlos Dávila'),
(31, 'Arturo Alessandri'),
(32, 'Pedro Aguirre Cerda'),
(33, 'Jerónimo Méndez'),
(34, 'Juan Antonio Ríos'),
(35, 'Gabriel González Videla'),
(36, 'Carlos Ibáñez del Campo'),
(37, 'Jorge Alessandri'),
(38, 'Eduardo Frei Montalva'),
(39, 'Salvador Allende'),
(40, 'Augusto Pinochet'),
(41, 'Patricio Aylwin'),
(42, 'Eduardo Frei Ruiz-Tagle'),
(43, 'Ricardo Lagos'),
(44, 'Michelle Bachelet'),
(45, 'Sebastián Piñera'),
(46, 'Michelle Bachelet'),
(47, 'Sebastián Piñera'),
(48, 'Gabriel Boric');

-- --------------------------------------------------------

--
-- Table structure for table `comunas`
--

CREATE TABLE `comunas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `region_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comunas`
--

INSERT INTO `comunas` (`id`, `nombre`, `region_id`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'Putre', 1),
(4, 'General Lagos', 1),
(5, 'Iquique', 2),
(6, 'Alto Hospicio', 2),
(7, 'Pozo Almonte', 2),
(8, 'Camiña', 2),
(9, 'Colchane', 2),
(10, 'Huara', 2),
(11, 'Pica', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Taltal', 3),
(16, 'Calama', 3),
(17, 'Ollagüe', 3),
(18, 'San Pedro de Atacama', 3),
(19, 'Tocopilla', 3),
(20, 'María Elena', 3),
(21, 'Copiapó', 4),
(22, 'Caldera', 4),
(23, 'Tierra Amarilla', 4),
(24, 'Chañaral', 4),
(25, 'Diego de Almagro', 4),
(26, 'Vallenar', 4),
(27, 'Alto del Carmen', 4),
(28, 'Freirina', 4),
(29, 'Huasco', 4),
(30, 'La Serena', 5),
(31, 'Coquimbo', 5),
(32, 'Andacollo', 5),
(33, 'La Higuera', 5),
(34, 'Paiguano', 5),
(35, 'Vicuña', 5),
(36, 'Illapel', 5),
(37, 'Canela', 5),
(38, 'Los Vilos', 5),
(39, 'Salamanca', 5),
(40, 'Ovalle', 5),
(41, 'Combarbalá', 5),
(42, 'Monte Patria', 5),
(43, 'Punitaqui', 5),
(44, 'Río Hurtado', 5),
(45, 'Valparaíso', 6),
(46, 'Casablanca', 6),
(47, 'Concón', 6),
(48, 'Juan Fernández', 6),
(49, 'Puchuncaví', 6),
(50, 'Quintero', 6),
(51, 'Viña del Mar', 6),
(52, 'Isla de Pascua', 6),
(53, 'Los Andes', 6),
(54, 'Calle Larga', 6),
(55, 'Rinconada', 6),
(56, 'San Esteban', 6),
(57, 'La Ligua', 6),
(58, 'Cabildo', 6),
(59, 'Papudo', 6),
(60, 'Petorca', 6),
(61, 'Zapallar', 6),
(62, 'Quillota', 6),
(63, 'La Calera', 6),
(64, 'Hijuelas', 6),
(65, 'La Cruz', 6),
(66, 'Nogales', 6),
(67, 'San Antonio', 6),
(68, 'Algarrobo', 6),
(69, 'Cartagena', 6),
(70, 'El Quisco', 6),
(71, 'El Tabo', 6),
(72, 'Santo Domingo', 6),
(73, 'San Felipe', 6),
(74, 'Catemu', 6),
(75, 'Llaillay', 6),
(76, 'Panquehue', 6),
(77, 'Putaendo', 6),
(78, 'Santa María', 6),
(79, 'Cerrillos', 7),
(80, 'Cerro Navia', 7),
(81, 'Conchalí', 7),
(82, 'El Bosque', 7),
(83, 'Estación Central', 7),
(84, 'Huechuraba', 7),
(85, 'Independencia', 7),
(86, 'La Cisterna', 7),
(87, 'La Florida', 7),
(88, 'La Granja', 7),
(89, 'La Pintana', 7),
(90, 'La Reina', 7),
(91, 'Las Condes', 7),
(92, 'Lo Barnechea', 7),
(93, 'Lo Espejo', 7),
(94, 'Lo Prado', 7),
(95, 'Macul', 7),
(96, 'Maipú', 7),
(97, 'Ñuñoa', 7),
(98, 'Pedro Aguirre Cerda', 7),
(99, 'Peñalolén', 7),
(100, 'Providencia', 7),
(101, 'Pudahuel', 7),
(102, 'Quilicura', 7),
(103, 'Quinta Normal', 7),
(104, 'Recoleta', 7),
(105, 'Renca', 7),
(106, 'San Joaquín', 7),
(107, 'San Miguel', 7),
(108, 'San Ramón', 7),
(109, 'Santiago', 7),
(110, 'Vitacura', 7),
(111, 'Puente Alto', 7),
(112, 'Pirque', 7),
(113, 'San José de Maipo', 7),
(114, 'Colina', 7),
(115, 'Lampa', 7),
(116, 'Tiltil', 7),
(117, 'San Bernardo', 7),
(118, 'Buin', 7),
(119, 'Calera de Tango', 7),
(120, 'Paine', 7),
(121, 'Melipilla', 7),
(122, 'Alhué', 7),
(123, 'Curacaví', 7),
(124, 'María Pinto', 7),
(125, 'San Pedro', 7),
(126, 'Talagante', 7),
(127, 'El Monte', 7),
(128, 'Isla de Maipo', 7),
(129, 'Padre Hurtado', 7),
(130, 'Peñaflor', 7),
(131, 'Rancagua', 8),
(132, 'Codegua', 8),
(133, 'Coinco', 8),
(134, 'Coltauco', 8),
(135, 'Doñihue', 8),
(136, 'Graneros', 8),
(137, 'Las Cabras', 8),
(138, 'Machalí', 8),
(139, 'Malloa', 8),
(140, 'Mostazal', 8),
(141, 'Olivar', 8),
(142, 'Peumo', 8),
(143, 'Pichidegua', 8),
(144, 'Quinta de Tilcoco', 8),
(145, 'Rengo', 8),
(146, 'Requínoa', 8),
(147, 'San Vicente', 8),
(148, 'Pichilemu', 8),
(149, 'La Estrella', 8),
(150, 'Litueche', 8),
(151, 'Marchigüe', 8),
(152, 'Navidad', 8),
(153, 'Paredones', 8),
(154, 'San Fernando', 8),
(155, 'Chépica', 8),
(156, 'Chimbarongo', 8),
(157, 'Lolol', 8),
(158, 'Nancagua', 8),
(159, 'Palmilla', 8),
(160, 'Peralillo', 8),
(161, 'Placilla', 8),
(162, 'Pumanque', 8),
(163, 'Santa Cruz', 8),
(164, 'Talca', 9),
(165, 'Constitución', 9),
(166, 'Curepto', 9),
(167, 'Empedrado', 9),
(168, 'Maule', 9),
(169, 'Pelarco', 9),
(170, 'Pencahue', 9),
(171, 'Río Claro', 9),
(172, 'San Clemente', 9),
(173, 'San Rafael', 9),
(174, 'Cauquenes', 9),
(175, 'Chanco', 9),
(176, 'Pelluhue', 9),
(177, 'Curicó', 9),
(178, 'Hualañé', 9),
(179, 'Licantén', 9),
(180, 'Molina', 9),
(181, 'Rauco', 9),
(182, 'Romeral', 9),
(183, 'Sagrada Familia', 9),
(184, 'Teno', 9),
(185, 'Vichuquén', 9),
(186, 'Linares', 9),
(187, 'Colbún', 9),
(188, 'Longaví', 9),
(189, 'Parral', 9),
(190, 'Retiro', 9),
(191, 'San Javier', 9),
(192, 'Villa Alegre', 9),
(193, 'Yerbas Buenas', 9),
(194, 'Chillán', 10),
(195, 'Bulnes', 10),
(196, 'Cobquecura', 10),
(197, 'Coelemu', 10),
(198, 'Coihueco', 10),
(199, 'El Carmen', 10),
(200, 'Ninhue', 10),
(201, 'Ñiquén', 10),
(202, 'Pemuco', 10),
(203, 'Pinto', 10),
(204, 'Portezuelo', 10),
(205, 'Quillón', 10),
(206, 'Quirihue', 10),
(207, 'Ránquil', 10),
(208, 'San Carlos', 10),
(209, 'San Fabián', 10),
(210, 'San Ignacio', 10),
(211, 'San Nicolás', 10),
(212, 'Treguaco', 10),
(213, 'Yungay', 10),
(214, 'Concepción', 11),
(215, 'Coronel', 11),
(216, 'Chiguayante', 11),
(217, 'Florida', 11),
(218, 'Hualqui', 11),
(219, 'Lota', 11),
(220, 'Penco', 11),
(221, 'San Pedro de la Paz', 11),
(222, 'Santa Juana', 11),
(223, 'Talcahuano', 11),
(224, 'Tomé', 11),
(225, 'Hualpén', 11),
(226, 'Lebu', 11),
(227, 'Arauco', 11),
(228, 'Cañete', 11),
(229, 'Contulmo', 11),
(230, 'Curanilahue', 11),
(231, 'Los Álamos', 11),
(232, 'Tirúa', 11),
(233, 'Los Ángeles', 11),
(234, 'Antuco', 11),
(235, 'Cabrero', 11),
(236, 'Laja', 11),
(237, 'Mulchén', 11),
(238, 'Nacimiento', 11),
(239, 'Negrete', 11),
(240, 'Quilaco', 11),
(241, 'Quilleco', 11),
(242, 'San Rosendo', 11),
(243, 'Santa Bárbara', 11),
(244, 'Tucapel', 11),
(245, 'Yumbel', 11),
(246, 'Alto Biobío', 11),
(247, 'Temuco', 12),
(248, 'Carahue', 12),
(249, 'Cunco', 12),
(250, 'Curarrehue', 12),
(251, 'Freire', 12),
(252, 'Galvarino', 12),
(253, 'Gorbea', 12),
(254, 'Lautaro', 12),
(255, 'Loncoche', 12),
(256, 'Melipeuco', 12),
(257, 'Nueva Imperial', 12),
(258, 'Padre Las Casas', 12),
(259, 'Perquenco', 12),
(260, 'Pitrufquén', 12),
(261, 'Pucón', 12),
(262, 'Saavedra', 12),
(263, 'Teodoro Schmidt', 12),
(264, 'Toltén', 12),
(265, 'Vilcún', 12),
(266, 'Villarrica', 12),
(267, 'Cholchol', 12),
(268, 'Angol', 12),
(269, 'Collipulli', 12),
(270, 'Curacautín', 12),
(271, 'Ercilla', 12),
(272, 'Lonquimay', 12),
(273, 'Los Sauces', 12),
(274, 'Lumaco', 12),
(275, 'Purén', 12),
(276, 'Renaico', 12),
(277, 'Traiguén', 12),
(278, 'Victoria', 12),
(279, 'Valdivia', 13),
(280, 'Corral', 13),
(281, 'Lanco', 13),
(282, 'Los Lagos', 13),
(283, 'Máfil', 13),
(284, 'Mariquina', 13),
(285, 'Paillaco', 13),
(286, 'Panguipulli', 13),
(287, 'La Unión', 13),
(288, 'Futrono', 13),
(289, 'Lago Ranco', 13),
(290, 'Río Bueno', 13),
(291, 'Puerto Montt', 14),
(292, 'Calbuco', 14),
(293, 'Cochamó', 14),
(294, 'Fresia', 14),
(295, 'Frutillar', 14),
(296, 'Los Muermos', 14),
(297, 'Llanquihue', 14),
(298, 'Maullín', 14),
(299, 'Puerto Varas', 14),
(300, 'Castro', 14),
(301, 'Ancud', 14),
(302, 'Chonchi', 14),
(303, 'Curaco de Vélez', 14),
(304, 'Dalcahue', 14),
(305, 'Puqueldón', 14),
(306, 'Queilén', 14),
(307, 'Quellón', 14),
(308, 'Quemchi', 14),
(309, 'Quinchao', 14),
(310, 'Osorno', 14),
(311, 'Puerto Octay', 14),
(312, 'Purranque', 14),
(313, 'Puyehue', 14),
(314, 'Río Negro', 14),
(315, 'San Juan de la Costa', 14),
(316, 'San Pablo', 14),
(317, 'Chaitén', 14),
(318, 'Futaleufú', 14),
(319, 'Hualaihué', 14),
(320, 'Palena', 14),
(321, 'Coyhaique', 15),
(322, 'Lago Verde', 15),
(323, 'Aysén', 15),
(324, 'Cisnes', 15),
(325, 'Guaitecas', 15),
(326, 'Cochrane', 15),
(327, 'O\'Higgins', 15),
(328, 'Tortel', 15),
(329, 'Chile Chico', 15),
(330, 'Río Ibáñez', 15),
(331, 'Punta Arenas', 16),
(332, 'Laguna Blanca', 16),
(333, 'Río Verde', 16),
(334, 'San Gregorio', 16),
(335, 'Cabo de Hornos', 16),
(336, 'Antártica', 16),
(337, 'Porvenir', 16),
(338, 'Primavera', 16),
(339, 'Timaukel', 16),
(340, 'Natales', 16),
(341, 'Torres del Paine', 16);

-- --------------------------------------------------------

--
-- Table structure for table `regiones`
--

CREATE TABLE `regiones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regiones`
--

INSERT INTO `regiones` (`id`, `nombre`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Libertador General Bernardo O\'Higgins'),
(9, 'Región del Maule'),
(10, 'Región de Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región de Aysén del General Carlos Ibáñez del Campo'),
(16, 'Región de Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Table structure for table `votaciones`
--

CREATE TABLE `votaciones` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `rut` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `comuna` varchar(255) NOT NULL,
  `candidato` varchar(255) NOT NULL,
  `options` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votaciones`
--
ALTER TABLE `votaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `votaciones`
--
ALTER TABLE `votaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
