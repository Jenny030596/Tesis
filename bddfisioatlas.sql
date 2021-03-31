-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2021 a las 23:02:41
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bddfisioatlas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add paciente', 7, 'add_paciente'),
(26, 'Can change paciente', 7, 'change_paciente'),
(27, 'Can delete paciente', 7, 'delete_paciente'),
(28, 'Can view paciente', 7, 'view_paciente'),
(29, 'Can add control', 8, 'add_control'),
(30, 'Can change control', 8, 'change_control'),
(31, 'Can delete control', 8, 'delete_control'),
(32, 'Can view control', 8, 'view_control'),
(33, 'Can add profesional', 9, 'add_profesional'),
(34, 'Can change profesional', 9, 'change_profesional'),
(35, 'Can delete profesional', 9, 'delete_profesional'),
(36, 'Can view profesional', 9, 'view_profesional'),
(37, 'Can add progreso', 10, 'add_progreso'),
(38, 'Can change progreso', 10, 'change_progreso'),
(39, 'Can delete progreso', 10, 'delete_progreso'),
(40, 'Can view progreso', 10, 'view_progreso'),
(41, 'Can add rutina', 11, 'add_rutina'),
(42, 'Can change rutina', 11, 'change_rutina'),
(43, 'Can delete rutina', 11, 'delete_rutina'),
(44, 'Can view rutina', 11, 'view_rutina'),
(45, 'Can add escenario', 12, 'add_escenario'),
(46, 'Can change escenario', 12, 'change_escenario'),
(47, 'Can delete escenario', 12, 'delete_escenario'),
(48, 'Can view escenario', 12, 'view_escenario'),
(49, 'Can add juego', 13, 'add_juego'),
(50, 'Can change juego', 13, 'change_juego'),
(51, 'Can delete juego', 13, 'delete_juego'),
(52, 'Can view juego', 13, 'view_juego'),
(53, 'Can add notificacion', 14, 'add_notificacion'),
(54, 'Can change notificacion', 14, 'change_notificacion'),
(55, 'Can delete notificacion', 14, 'delete_notificacion'),
(56, 'Can view notificacion', 14, 'view_notificacion'),
(57, 'Can add provincia', 15, 'add_provincia'),
(58, 'Can change provincia', 15, 'change_provincia'),
(59, 'Can delete provincia', 15, 'delete_provincia'),
(60, 'Can view provincia', 15, 'view_provincia'),
(61, 'Can add canton', 16, 'add_canton'),
(62, 'Can change canton', 16, 'change_canton'),
(63, 'Can delete canton', 16, 'delete_canton'),
(64, 'Can view canton', 16, 'view_canton'),
(65, 'Can add historia clinica', 17, 'add_historiaclinica'),
(66, 'Can change historia clinica', 17, 'change_historiaclinica'),
(67, 'Can delete historia clinica', 17, 'delete_historiaclinica'),
(68, 'Can view historia clinica', 17, 'view_historiaclinica'),
(69, 'Can add signos vitales', 18, 'add_signosvitales'),
(70, 'Can change signos vitales', 18, 'change_signosvitales'),
(71, 'Can delete signos vitales', 18, 'delete_signosvitales'),
(72, 'Can view signos vitales', 18, 'view_signosvitales'),
(73, 'Can add rutina juego', 19, 'add_rutinajuego'),
(74, 'Can change rutina juego', 19, 'change_rutinajuego'),
(75, 'Can delete rutina juego', 19, 'delete_rutinajuego'),
(76, 'Can view rutina juego', 19, 'view_rutinajuego'),
(77, 'Can add intento', 20, 'add_intento'),
(78, 'Can change intento', 20, 'change_intento'),
(79, 'Can delete intento', 20, 'delete_intento'),
(80, 'Can view intento', 20, 'view_intento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$LsEt91Jsjpiy$hCbwN3RWO5WqqKikkfgVM2Y2p0GGo4IXMljO1XYaoPI=', '2021-03-29 16:40:02.670117', 1, 'daisyximena', 'Daisy Ximena', 'Ortega Mora', 'ximenaortega4@gmail.com', 1, 1, '2020-11-18 02:40:40.000000'),
(57, 'pbkdf2_sha256$216000$nczjfJRHWR0J$AY6i75YAo6sZPHZe3qC8xN0XgQOTC2JQHq4kw/bHwtA=', '2021-03-29 16:42:03.231751', 1, 'santy8516@gmail.com', 'HENRRY SANTIAGO', 'CHANATASIG MEZA', 'santy8516@gmail.com', 0, 1, '2021-02-19 17:50:42.000000'),
(65, 'NA', NULL, 0, 'mishell@gmail.com', 'MISHELL CARLA', 'COLLANTES CANDO', 'mishell@gmail.com', 0, 1, '2021-03-08 17:03:36.581716'),
(66, 'NA', NULL, 0, 'normaartega@gmail.com', 'NORMA ELI', 'ARTEAGA MORA', 'normaartega@gmail.com', 0, 1, '2021-03-08 17:06:13.482676'),
(67, 'pbkdf2_sha256$216000$jU1H63LzxrPI$PDBRNssN3W5nChsnu6a5inm3gL4PaeAw89BaaTw0mjw=', '2021-03-09 03:44:19.508574', 0, 'sofia123@gmail.com', 'SOFIA FERNANDA', 'RODRIGUEZ', 'sofia123@gmail.com', 0, 0, '2021-03-09 03:28:42.397890'),
(68, 'pbkdf2_sha256$216000$90LAgbaKlE1B$ymWhPUdaFsyZrsyi5/AbmmW4Ll8fwKflN+WKTr3qpY0=', NULL, 0, 'karitojohanna1994@gmail.com', 'KAROL', 'CHANATASIG', 'karitojohanna1994@gmail.com', 0, 1, '2021-03-09 03:48:00.582897'),
(69, 'NA', NULL, 0, 'rosa@gmail.com', 'ROSA', 'CARRILLO', 'rosa@gmail.com', 0, 1, '2021-03-09 03:51:23.194247'),
(70, 'NA', NULL, 0, 'carlos2020@gmail.com', 'CARLOS', 'CANDO', 'carlos2020@gmail.com', 0, 1, '2021-03-20 16:30:51.067008'),
(71, 'NA', NULL, 0, 'aaaaaa4@gmail.com', 'ANDERSON', 'BERRU', 'aaaaaa4@gmail.com', 0, 1, '2021-03-20 16:32:06.520374'),
(72, 'NA', NULL, 0, 'cristian2020@gmail.com', 'CRISTIAN', 'CANDO', 'cristian2020@gmail.com', 0, 1, '2021-03-20 16:57:07.104280'),
(73, 'NA', NULL, 0, 'crsitianed@gmail.com', 'CRISTIAN', 'CANDO', 'crsitianed@gmail.com', 0, 1, '2021-03-20 16:58:53.354026'),
(74, 'NA', NULL, 0, 'oscar.yunda2021@gmail.com', 'OSCAR', 'YUNDA', 'oscar.yunda2021@gmail.com', 0, 1, '2021-03-20 17:36:06.547161'),
(75, 'pbkdf2_sha256$216000$TbG99Zx07rPL$0L9nop/pUbJCmi4faCv4TwImNHp08jFEOtb95jIMlNE=', '2021-03-20 20:57:36.972703', 0, 'oscar.yunda2020@gmail.com', 'OSCAR JAVIER', 'YUNDA CANDO', 'oscar.yunda2020@gmail.com', 0, 1, '2021-03-20 18:08:02.096589'),
(76, 'NA', NULL, 0, 'ximenaortega44@gmail.com', 'XIMENITA MI CHIKITA LOVE', 'ORTEGA', 'ximenaortega44@gmail.com', 0, 1, '2021-03-20 18:09:05.386965'),
(77, 'NA', NULL, 0, 'ximenaortega43123@gmail.com', 'CRISTIAN EDUARDO', 'CANDO', 'ximenaortega43123@gmail.com', 0, 1, '2021-03-20 20:58:06.991578'),
(78, 'NA', NULL, 0, 'chikita2020@gmail.com', 'MI CHIKITA LOVE', 'DE OSCAR', 'chikita2020@gmail.com', 0, 1, '2021-03-22 01:51:49.539823'),
(79, 'NA', NULL, 0, 'carloscasa@gmail.com', 'CARLOS', 'CASA', 'carloscasa@gmail.com', 0, 1, '2021-03-26 18:29:43.635144');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canton_canton`
--

CREATE TABLE `canton_canton` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `provincia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canton_canton`
--

INSERT INTO `canton_canton` (`id`, `nombre`, `provincia_id`) VALUES
(1, 'Cuenca', 1),
(2, 'Girón', 1),
(3, 'Gualaceo', 1),
(4, 'Nabón', 1),
(5, 'Paute', 1),
(6, 'Pucara', 1),
(7, 'San Fernando', 1),
(8, 'Santa Isabel', 1),
(9, 'Sigsig', 1),
(10, 'Oña', 1),
(11, 'Chordeleg', 1),
(12, 'El Pan', 1),
(13, 'Sevilla de Oro', 1),
(14, 'Guachapala', 1),
(15, 'Camilo Ponce Enríquez', 1),
(16, 'Guaranda', 2),
(17, 'Chillanes', 2),
(18, 'Chimbo', 2),
(19, 'Echeandía', 2),
(20, 'San Miguel', 2),
(21, 'Caluma', 2),
(22, 'Las Naves', 2),
(23, 'Azogues', 3),
(24, 'Biblián', 3),
(25, 'Cañar', 3),
(26, 'La Troncal', 3),
(27, 'El Tambo', 3),
(28, 'Déleg', 3),
(29, 'Suscal', 3),
(30, 'Tulcán', 4),
(31, 'Bolívar', 4),
(32, 'Espejo', 4),
(33, 'Mira', 4),
(34, 'Montúfar', 4),
(35, 'San Pedro de Huaca', 4),
(36, 'Latacunga', 5),
(37, 'La Maná', 5),
(38, 'Pangua', 5),
(39, 'Pujili', 5),
(40, 'Salcedo', 5),
(41, 'Saquisilí', 5),
(42, 'Sigchos', 5),
(43, 'Riobamba', 6),
(44, 'Alausi', 6),
(45, 'Colta', 6),
(46, 'Chambo', 6),
(47, 'Chunchi', 6),
(48, 'Guamote', 6),
(49, 'Guano', 6),
(50, 'Pallatanga', 6),
(51, 'Penipe', 6),
(52, 'Cumandá', 6),
(53, 'Machala', 7),
(54, 'Arenillas', 7),
(55, 'Atahualpa', 7),
(56, 'Balsas', 7),
(57, 'Chilla', 7),
(58, 'El Guabo', 7),
(59, 'Huaquillas', 7),
(60, 'Marcabelí', 7),
(61, 'Pasaje', 7),
(62, 'Piñas', 7),
(63, 'Portovelo', 7),
(64, 'Santa Rosa', 7),
(65, 'Zaruma', 7),
(66, 'Las Lajas', 7),
(67, 'Esmeraldas', 8),
(68, 'Eloy Alfaro', 8),
(69, 'Muisne', 8),
(70, 'Quinindé', 8),
(71, 'San Lorenzo', 8),
(72, 'Atacames', 8),
(73, 'Rioverde', 8),
(74, 'La Concordia', 8),
(75, 'Guayaquil', 9),
(76, 'Alfredo Baquerizo Moreno (Juján)', 9),
(77, 'Balao', 9),
(78, 'Balzar', 9),
(79, 'Colimes', 9),
(80, 'Daule', 9),
(81, 'Durán', 9),
(82, 'El Empalme', 9),
(83, 'El Triunfo', 9),
(84, 'Milagro', 9),
(85, 'Naranjal', 9),
(86, 'Naranjito', 9),
(87, 'Palestina', 9),
(88, 'Pedro Carbo', 9),
(89, 'Samborondón', 9),
(90, 'Santa Lucía', 9),
(91, 'Salitre (Urbina Jado)', 9),
(92, 'San Jacinto de Yaguachi', 9),
(93, 'Playas', 9),
(94, 'Simón Bolívar', 9),
(95, 'Coronel Marcelino Maridueña', 9),
(96, 'Lomas de Sargentillo', 9),
(97, 'Nobol', 9),
(98, 'General Antonio Elizalde', 9),
(99, 'Isidro Ayora', 9),
(100, 'Ibarra', 10),
(101, 'Antonio Ante', 10),
(102, 'Cotacachi', 10),
(103, 'Otavalo', 10),
(104, 'Pimampiro', 10),
(105, 'San Miguel de Urcuquí', 10),
(106, 'Loja', 11),
(107, 'Calvas', 11),
(108, 'Catamayo', 11),
(109, 'Celica', 11),
(110, 'Chaguarpamba', 11),
(111, 'Espíndola', 11),
(112, 'Gonzanamá', 11),
(113, 'Macará', 11),
(114, 'Paltas', 11),
(115, 'Puyango', 11),
(116, 'Saraguro', 11),
(117, 'Sozoranga', 11),
(118, 'Zapotillo', 11),
(119, 'Pindal', 11),
(120, 'Quilanga', 11),
(121, 'Olmedo', 11),
(122, 'Babahoyo', 12),
(123, 'Baba', 12),
(124, 'Montalvo', 12),
(125, 'Puebloviejo', 12),
(126, 'Quevedo', 12),
(127, 'Urdaneta', 12),
(128, 'Ventanas', 12),
(129, 'Vínces', 12),
(130, 'Palenque', 12),
(131, 'Buena Fé', 12),
(132, 'Valencia', 12),
(133, 'Mocache', 12),
(134, 'Quinsaloma', 12),
(135, 'Portoviejo', 13),
(136, 'Bolívar', 13),
(137, 'Chone', 13),
(138, 'El Carmen', 13),
(139, 'Flavio Alfaro', 13),
(140, 'Jipijapa', 13),
(141, 'Junín', 13),
(142, 'Manta', 13),
(143, 'Montecristi', 13),
(144, 'Paján', 13),
(145, 'Pichincha', 13),
(146, 'Rocafuerte', 13),
(147, 'Santa Ana', 13),
(148, 'Sucre', 13),
(149, 'Tosagua', 13),
(150, '24 de Mayo', 13),
(151, 'Pedernales', 13),
(152, 'Olmedo', 13),
(153, 'Puerto López', 13),
(154, 'Jama', 13),
(155, 'Jaramijó', 13),
(156, 'San Vicente', 13),
(157, 'Morona', 14),
(158, 'Gualaquiza', 14),
(159, 'Limón Indanza', 14),
(160, 'Palora', 14),
(161, 'Santiago', 14),
(162, 'Sucúa', 14),
(163, 'Huamboya', 14),
(164, 'San Juan Bosco', 14),
(165, 'Taisha', 14),
(166, 'Logroño', 14),
(167, 'Pablo Sexto', 14),
(168, 'Tiwintza', 14),
(169, 'Tena', 15),
(170, 'Archidona', 15),
(171, 'El Chaco', 15),
(172, 'Quijos', 15),
(173, 'Carlos Julio Arosemena Tola', 15),
(174, 'Pastaza', 16),
(175, 'Mera', 16),
(176, 'Santa Clara', 16),
(177, 'Arajuno', 16),
(178, 'Quito', 17),
(179, 'Cayambe', 17),
(180, 'Mejia', 17),
(181, 'Pedro Moncayo', 17),
(182, 'Rumiñahui', 17),
(183, 'San Miguel de Los Bancos', 17),
(184, 'Pedro Vicente Maldonado', 17),
(185, 'Puerto Quito', 17),
(186, 'Ambato', 18),
(187, 'Baños de Agua Santa', 18),
(188, 'Cevallos', 18),
(189, 'Mocha', 18),
(190, 'Patate', 18),
(191, 'Quero', 18),
(192, 'San Pedro de Pelileo', 18),
(193, 'Santiago de Píllaro', 18),
(194, 'Tisaleo', 18),
(195, 'Zamora', 19),
(196, 'Chinchipe', 19),
(197, 'Nangaritza', 19),
(198, 'Yacuambi', 19),
(199, 'Yantzaza (Yanzatza)', 19),
(200, 'El Pangui', 19),
(201, 'Centinela del Cóndor', 19),
(202, 'Palanda', 19),
(203, 'Paquisha', 19),
(204, 'San Cristóbal', 20),
(205, 'Isabela', 20),
(206, 'Santa Cruz', 20),
(207, 'Lago Agrio', 21),
(208, 'Gonzalo Pizarro', 21),
(209, 'Putumayo', 21),
(210, 'Shushufindi', 21),
(211, 'Sucumbíos', 21),
(212, 'Cascales', 21),
(213, 'Cuyabeno', 21),
(214, 'Orellana', 22),
(215, 'Aguarico', 22),
(216, 'La Joya de Los Sachas', 22),
(217, 'Loreto', 22),
(218, 'Santo Domingo', 23),
(219, 'Santa Elena', 24),
(220, 'La Libertad', 24),
(221, 'Salinas', 24),
(222, 'Las Golondrinas', 25),
(223, 'Manga del Cura', 25),
(224, 'El Piedrero', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_control`
--

CREATE TABLE `control_control` (
  `id` int(11) NOT NULL,
  `fecha_visita` date DEFAULT NULL,
  `valoracion` varchar(300) DEFAULT NULL,
  `dolor` int(11) DEFAULT NULL,
  `rutina_id` int(11) DEFAULT NULL,
  `numeroSesion` int(11) DEFAULT NULL,
  `juego_id` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `control_control`
--

INSERT INTO `control_control` (`id`, `fecha_visita`, `valoracion`, `dolor`, `rutina_id`, `numeroSesion`, `juego_id`, `estado`) VALUES
(114, '2021-03-15', 'Ninguna', 8, 27, 1, NULL, NULL),
(115, NULL, NULL, NULL, 27, 2, NULL, NULL),
(116, NULL, NULL, NULL, 27, 3, NULL, NULL),
(117, NULL, NULL, NULL, 27, 4, NULL, NULL),
(118, '2021-03-16', 'ninguna', 8, 28, 1, NULL, NULL),
(119, NULL, NULL, NULL, 28, 2, NULL, NULL),
(120, NULL, NULL, NULL, 28, 3, NULL, NULL),
(121, NULL, NULL, NULL, 28, 4, NULL, NULL),
(122, NULL, NULL, NULL, 28, 5, NULL, NULL),
(123, '2021-03-04', 'aawdawd', 2, 29, 1, NULL, NULL),
(124, NULL, NULL, NULL, 29, 2, NULL, NULL),
(125, NULL, NULL, NULL, 29, 3, NULL, NULL),
(126, NULL, NULL, NULL, 29, 4, NULL, NULL),
(127, NULL, NULL, NULL, 29, 5, NULL, NULL),
(128, NULL, NULL, NULL, 30, 1, NULL, NULL),
(129, NULL, NULL, NULL, 30, 2, NULL, NULL),
(130, NULL, NULL, NULL, 30, 3, NULL, NULL),
(131, NULL, NULL, NULL, 30, 4, NULL, NULL),
(132, NULL, NULL, NULL, 30, 5, NULL, NULL),
(133, NULL, NULL, NULL, 30, 6, NULL, NULL),
(134, NULL, NULL, NULL, 30, 7, NULL, NULL),
(135, NULL, NULL, NULL, 30, 8, NULL, NULL),
(136, NULL, NULL, NULL, 30, 9, NULL, NULL),
(137, NULL, NULL, NULL, 31, 1, NULL, NULL),
(138, NULL, NULL, NULL, 31, 2, NULL, NULL),
(139, NULL, NULL, NULL, 31, 3, NULL, NULL),
(140, '2021-03-18', 'eqe', 4, 33, 1, 1, NULL),
(141, NULL, NULL, NULL, 33, 2, 1, NULL),
(142, NULL, NULL, NULL, 33, 3, 1, NULL),
(143, NULL, NULL, NULL, 33, 1, 3, NULL),
(144, NULL, NULL, NULL, 33, 2, 3, NULL),
(146, NULL, NULL, NULL, 34, 1, 1, NULL),
(147, NULL, NULL, NULL, 34, 2, 1, NULL),
(148, NULL, NULL, NULL, 34, 3, 1, NULL),
(149, NULL, NULL, NULL, 34, 4, 1, NULL),
(150, NULL, NULL, NULL, 34, 5, 1, NULL),
(151, NULL, NULL, NULL, 34, 1, 2, NULL),
(152, NULL, NULL, NULL, 34, 2, 2, NULL),
(153, NULL, NULL, NULL, 34, 3, 2, NULL),
(154, NULL, NULL, NULL, 34, 4, 2, NULL),
(155, NULL, NULL, NULL, 34, 1, 3, NULL),
(156, NULL, NULL, NULL, 34, 2, 3, NULL),
(157, NULL, NULL, NULL, 34, 3, 3, NULL),
(158, NULL, NULL, NULL, 34, 4, 3, NULL),
(159, NULL, NULL, NULL, 34, 5, 3, NULL),
(160, NULL, NULL, NULL, 34, 6, 3, NULL),
(161, NULL, NULL, NULL, 34, 7, 3, NULL),
(162, NULL, NULL, NULL, 34, 8, 3, NULL),
(163, NULL, NULL, NULL, 34, 9, 3, NULL),
(164, NULL, NULL, NULL, 35, 1, 1, NULL),
(165, NULL, NULL, NULL, 35, 2, 1, NULL),
(166, NULL, NULL, NULL, 35, 3, 1, NULL),
(167, NULL, NULL, NULL, 35, 4, 1, NULL),
(168, NULL, NULL, NULL, 35, 5, 1, NULL),
(169, NULL, NULL, NULL, 35, 6, 1, NULL),
(170, NULL, NULL, NULL, 35, 1, 3, NULL),
(171, NULL, NULL, NULL, 35, 2, 3, NULL),
(172, NULL, NULL, NULL, 35, 3, 3, NULL),
(173, NULL, NULL, NULL, 35, 4, 3, NULL),
(174, NULL, NULL, NULL, 35, 5, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-22 20:28:26.103304', '1', 'daisyximena', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(2, '2020-12-04 18:48:49.315161', '21', 'mari@gmail.com', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(5, '2021-02-19 17:38:56.567400', '18', '', 3, '', 4, 1),
(6, '2021-02-19 17:38:56.659820', '52', '1321312@gmail.com', 3, '', 4, 1),
(7, '2021-02-19 17:38:56.693423', '51', '2222@gmail.com', 3, '', 4, 1),
(8, '2021-02-19 17:38:56.726911', '27', 'ander@gmail.com', 3, '', 4, 1),
(9, '2021-02-19 17:38:56.759558', '46', 'crissara@gmail.com', 3, '', 4, 1),
(10, '2021-02-19 17:38:56.794393', '23', 'cristian.yunda2020@gmail.com', 3, '', 4, 1),
(11, '2021-02-19 17:38:56.854243', '56', 'daisyximena12321@gmail.com', 3, '', 4, 1),
(12, '2021-02-19 17:38:56.893233', '30', 'edicopara@gmail.com', 3, '', 4, 1),
(13, '2021-02-19 17:38:56.949348', '26', 'erli@gmail.com', 3, '', 4, 1),
(14, '2021-02-19 17:38:56.970487', '48', 'jaic@gmail.com', 3, '', 4, 1),
(15, '2021-02-19 17:38:57.004957', '21', 'mari@gmail.com', 3, '', 4, 1),
(16, '2021-02-19 17:38:57.037684', '53', 'marichu122112212@gmail.com', 3, '', 4, 1),
(17, '2021-02-19 17:38:57.072550', '25', 'marichu2@gmail.com', 3, '', 4, 1),
(18, '2021-02-19 17:38:57.103723', '55', 'marichu32442@gmail.com', 3, '', 4, 1),
(19, '2021-02-19 17:38:57.138782', '24', 'oscar.yunda1995@gmail.com', 3, '', 4, 1),
(20, '2021-02-19 17:38:57.171016', '20', 'oscar.yunda2020@gmail.com', 3, '', 4, 1),
(21, '2021-02-19 17:38:57.205574', '54', 'qweqweqwx@gmail.com', 3, '', 4, 1),
(22, '2021-02-19 17:38:57.237866', '33', 'reta@gmail.com', 3, '', 4, 1),
(23, '2021-02-19 17:38:57.271643', '47', 'romacarlos@gmaill.com', 3, '', 4, 1),
(24, '2021-02-19 17:38:57.447553', '43', 'sara@gmail.com', 3, '', 4, 1),
(25, '2021-02-19 17:38:57.481996', '49', 'sefsef@gmail.com', 3, '', 4, 1),
(26, '2021-02-19 17:38:57.537303', '32', 'ssa@gmail.com', 3, '', 4, 1),
(27, '2021-02-19 17:38:57.581428', '28', 'usuario@gmail.com', 3, '', 4, 1),
(28, '2021-02-19 17:38:57.615502', '37', 'xavi220@gmail.com', 3, '', 4, 1),
(29, '2021-02-19 17:38:57.647525', '44', 'xavi531070@gmail.com', 3, '', 4, 1),
(30, '2021-02-19 17:38:57.681550', '40', 'ximenaorteg213a4@gmail.com', 3, '', 4, 1),
(31, '2021-02-19 17:38:57.713625', '42', 'ximenaortega42222@gmail.com', 3, '', 4, 1),
(32, '2021-02-19 17:38:57.748658', '29', 'ximenaortega4@gmail.com', 3, '', 4, 1),
(33, '2021-02-19 17:38:57.780626', '41', 'ximenaortega5554@gmail.com', 3, '', 4, 1),
(34, '2021-02-19 17:38:57.814387', '22', 'ximeortega@gmail.com', 3, '', 4, 1),
(35, '2021-02-19 17:38:57.846972', '50', 'xzxxxx@gmail.com', 3, '', 4, 1),
(36, '2021-03-29 16:41:48.775580', '57', 'santy8516@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(16, 'Canton', 'canton'),
(5, 'contenttypes', 'contenttype'),
(8, 'Control', 'control'),
(12, 'Escenario', 'escenario'),
(17, 'HistoriaClinica', 'historiaclinica'),
(20, 'Intento', 'intento'),
(13, 'Juego', 'juego'),
(14, 'Notificacion', 'notificacion'),
(7, 'Paciente', 'paciente'),
(9, 'Profesional', 'profesional'),
(10, 'Progreso', 'progreso'),
(15, 'Provincia', 'provincia'),
(11, 'Rutina', 'rutina'),
(19, 'RutinaJuego', 'rutinajuego'),
(6, 'sessions', 'session'),
(18, 'SignosVitales', 'signosvitales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Provincia', '0001_initial', '2020-11-18 02:37:40.557747'),
(2, 'Canton', '0001_initial', '2020-11-18 02:37:40.732749'),
(3, 'Control', '0001_initial', '2020-11-18 02:37:41.633525'),
(4, 'Escenario', '0001_initial', '2020-11-18 02:37:41.833618'),
(5, 'SignosVitales', '0001_initial', '2020-11-18 02:37:42.104371'),
(6, 'contenttypes', '0001_initial', '2020-11-18 02:37:42.712830'),
(7, 'auth', '0001_initial', '2020-11-18 02:37:44.488274'),
(8, 'Paciente', '0001_initial', '2020-11-18 02:37:51.443115'),
(9, 'HistoriaClinica', '0001_initial', '2020-11-18 02:37:52.769580'),
(10, 'Notificacion', '0001_initial', '2020-11-18 02:37:55.997670'),
(11, 'Juego', '0001_initial', '2020-11-18 02:37:56.207542'),
(12, 'Profesional', '0001_initial', '2020-11-18 02:37:57.957684'),
(13, 'Progreso', '0001_initial', '2020-11-18 02:37:59.074904'),
(14, 'Rutina', '0001_initial', '2020-11-18 02:38:00.442253'),
(15, 'admin', '0001_initial', '2020-11-18 02:38:02.686146'),
(16, 'admin', '0002_logentry_remove_auto_add', '2020-11-18 02:38:04.379164'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-18 02:38:04.433426'),
(18, 'contenttypes', '0002_remove_content_type_name', '2020-11-18 02:38:05.495090'),
(19, 'auth', '0002_alter_permission_name_max_length', '2020-11-18 02:38:06.434363'),
(20, 'auth', '0003_alter_user_email_max_length', '2020-11-18 02:38:06.652487'),
(21, 'auth', '0004_alter_user_username_opts', '2020-11-18 02:38:06.743240'),
(22, 'auth', '0005_alter_user_last_login_null', '2020-11-18 02:38:07.720627'),
(23, 'auth', '0006_require_contenttypes_0002', '2020-11-18 02:38:07.765730'),
(24, 'auth', '0007_alter_validators_add_error_messages', '2020-11-18 02:38:07.855558'),
(25, 'auth', '0008_alter_user_username_max_length', '2020-11-18 02:38:08.013105'),
(26, 'auth', '0009_alter_user_last_name_max_length', '2020-11-18 02:38:08.239386'),
(27, 'auth', '0010_alter_group_name_max_length', '2020-11-18 02:38:08.486436'),
(28, 'auth', '0011_update_proxy_permissions', '2020-11-18 02:38:08.556711'),
(29, 'auth', '0012_alter_user_first_name_max_length', '2020-11-18 02:38:08.901469'),
(30, 'sessions', '0001_initial', '2020-11-18 02:38:09.205301'),
(31, 'HistoriaClinica', '0002_auto_20210124_1204', '2021-01-24 17:04:36.157029'),
(32, 'Paciente', '0002_paciente_historiaclinca', '2021-01-27 23:39:57.182268'),
(33, 'Paciente', '0003_auto_20210127_1916', '2021-01-28 00:16:58.791432'),
(34, 'Rutina', '0002_auto_20210204_1806', '2021-02-04 23:06:38.168335'),
(35, 'Rutina', '0003_auto_20210204_1847', '2021-02-04 23:48:10.174805'),
(36, 'Control', '0002_control_rutina', '2021-02-04 23:48:11.415044'),
(37, 'RutinaJuego', '0001_initial', '2021-02-04 23:52:51.340492'),
(38, 'Control', '0003_control_numerosesion', '2021-02-11 02:28:23.029297'),
(39, 'Paciente', '0004_paciente_segimiento', '2021-03-06 21:56:27.484594'),
(40, 'Paciente', '0005_auto_20210306_1659', '2021-03-06 21:59:25.846878'),
(41, 'Juego', '0002_auto_20210307_2139', '2021-03-08 02:40:00.949691'),
(42, 'Escenario', '0002_escenario_juego', '2021-03-08 02:40:01.837630'),
(43, 'Intento', '0001_initial', '2021-03-08 02:40:02.654541'),
(44, 'Progreso', '0002_auto_20210307_2139', '2021-03-08 02:40:04.222267'),
(45, 'RutinaJuego', '0002_auto_20210307_2139', '2021-03-08 02:40:04.516265'),
(46, 'Intento', '0002_auto_20210307_2148', '2021-03-08 02:48:19.593479'),
(47, 'Intento', '0003_auto_20210307_2152', '2021-03-08 02:52:05.714422'),
(48, 'Paciente', '0006_paciente_profesional', '2021-03-20 16:24:25.167066'),
(49, 'Paciente', '0007_auto_20210320_1140', '2021-03-20 16:40:37.552206'),
(50, 'Paciente', '0008_paciente_patologia', '2021-03-20 16:57:31.497224'),
(51, 'Intento', '0004_auto_20210321_0854', '2021-03-21 13:54:31.177565'),
(52, 'Control', '0004_control_juego', '2021-03-22 01:18:42.779973'),
(53, 'Progreso', '0003_progreso_control', '2021-03-23 23:51:50.727223'),
(54, 'Control', '0005_control_estado', '2021-03-31 20:59:46.828038'),
(55, 'Intento', '0005_intento_estadoi', '2021-03-31 21:02:13.865733');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2rvwrmqkruej82yu1au43jywfe5khsbc', '.eJxVjEEOwiAQRe_C2pAOlaF16d4zkIEZpGogKe3KeHfbpAvd_vfefytP65L92mT2E6uLAnX63QLFp5Qd8IPKvepYyzJPQe-KPmjTt8ryuh7u30GmlrdaaBCkzhKacB4SGHZokNPoOBpiSGDH3jEworAxllNnZfNFGELoSX2-9vk4tQ:1lDBaE:B17h2YjcHnoFQ7-ogJTS4xpQtkCIhhKq2Qj3vq7u4KY', '2021-03-05 19:36:58.239155'),
('62bzy7ub7etbrax6mp5ea9nx5v46pc6u', '.eJxVjM0OwiAQhN-FsyFSu_x49N5nIAvLStVAUtqT8d2lSQ-auc33zbyFx23Nfmtp8TOJqwAjTr9lwPhMZSf0wHKvMtayLnOQuyIP2uRUKb1uh_t3kLHlvmYLFwUOkYzloIIaybFljkNyFnrOGCg4qxKb6GAwOiErsrrz0WgQny8iWzhw:1lQuxn:yqMjzXUor_EOSq9IRA93fQ1RKUWkUtf-fY8zJxsWOAo', '2021-04-12 16:42:03.275189'),
('74o3sotk4hupi8ropm9g6ds2cu4ta56e', '.eJxVjEEOwiAQRe_C2pAOlaF16d4zkIEZpGogKe3KeHfbpAvd_vfefytP65L92mT2E6uLAnX63QLFp5Qd8IPKvepYyzJPQe-KPmjTt8ryuh7u30GmlrdaaBCkzhKacB4SGHZokNPoOBpiSGDH3jEworAxllNnZfNFGELoSX2-9vk4tQ:1kgw0b:66-Be4iVa7jqcEJNvaMoDFDzn8DdGTixA3HJg2uzpVQ', '2020-12-06 20:30:53.636897'),
('kxoyl6bgyl6b36u2nwn2td7wge9bfi1z', '.eJxVjEEOwiAQRe_C2pAOlaF16d4zkIEZpGogKe3KeHfbpAvd_vfefytP65L92mT2E6uLAnX63QLFp5Qd8IPKvepYyzJPQe-KPmjTt8ryuh7u30GmlrdaaBCkzhKacB4SGHZokNPoOBpiSGDH3jEworAxllNnZfNFGELoSX2-9vk4tQ:1kfDQo:v5no9Kztms4ylacY37MQtr7y8um_b7D339iIbbewt8w', '2020-12-02 02:42:50.089977'),
('ps5tca33qv3dfq73fje0mwunvd2wxpga', '.eJxVjEEOwiAQRe_C2pAOlaF16d4zkIEZpGogKe3KeHfbpAvd_vfefytP65L92mT2E6uLAnX63QLFp5Qd8IPKvepYyzJPQe-KPmjTt8ryuh7u30GmlrdaaBCkzhKacB4SGHZokNPoOBpiSGDH3jEworAxllNnZfNFGELoSX2-9vk4tQ:1klGpM:Sad3Pw4OofjtG-26EIWN7q62DimNyfe787a8As9OGoE', '2020-12-18 19:33:12.268169'),
('s6tqxwgr4om0f5nrdq08alidt8d1iwwp', '.eJxVjDsOwjAQBe_iGln-xMGmpM8Zol3vLgkgW4qTCnF3iJQC2jcz76VG2NZp3Bov40zqos5BnX5HhPzgshO6Q7lVnWtZlxn1ruiDNj1U4uf1cP8OJmjTtzYRwPTRYW86lhxs8DYgYUgSJbvM4imBhSDCSJQZvRcHDInAdr1V7w8uzDmp:1lNiV5:u_W328IgSG0AU32XjaB1jgCg1ySNUPshU_-U4Gy-Sp8', '2021-04-03 20:47:11.650519'),
('uhqnjf1zpvwy4zb6ln8qdt8p2j42jkf4', '.eJxVjEEOwiAQRe_C2pAOlaF16d4zkIEZpGogKe3KeHfbpAvd_vfefytP65L92mT2E6uLAnX63QLFp5Qd8IPKvepYyzJPQe-KPmjTt8ryuh7u30GmlrdaaBCkzhKacB4SGHZokNPoOBpiSGDH3jEworAxllNnZfNFGELoSX2-9vk4tQ:1klFi5:xUSHLe7oZgx2oE_RmU2YX6py9pOt6qtA_RoQHOsBL9o', '2020-12-18 18:21:37.470065');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escenario_escenario`
--

CREATE TABLE `escenario_escenario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `juego_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historiaclinica_historiaclinica`
--

CREATE TABLE `historiaclinica_historiaclinica` (
  `id` int(11) NOT NULL,
  `fecha_atencion` date DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` varchar(100) DEFAULT NULL,
  `estado_civil` varchar(100) DEFAULT NULL,
  `parroquia` varchar(100) DEFAULT NULL,
  `barrio` varchar(100) DEFAULT NULL,
  `dependiente` varchar(100) DEFAULT NULL,
  `nombre_representante` varchar(100) DEFAULT NULL,
  `cedula_representante` varchar(20) DEFAULT NULL,
  `actividad_fisica` varchar(300) DEFAULT NULL,
  `alimentacion` varchar(300) DEFAULT NULL,
  `consumo` varchar(100) DEFAULT NULL,
  `nombre_medicamento` varchar(300) DEFAULT NULL,
  `nombre_comercial` varchar(300) DEFAULT NULL,
  `administracion` varchar(300) DEFAULT NULL,
  `frecuencia` varchar(300) DEFAULT NULL,
  `patologias` varchar(300) DEFAULT NULL,
  `inter_quirurgica` varchar(300) DEFAULT NULL,
  `hta` varchar(300) DEFAULT NULL,
  `dm` varchar(300) DEFAULT NULL,
  `dislipidemias` varchar(300) DEFAULT NULL,
  `ecv` varchar(300) DEFAULT NULL,
  `alergias` varchar(300) DEFAULT NULL,
  `cancer` varchar(300) DEFAULT NULL,
  `otros` varchar(300) DEFAULT NULL,
  `motivo_consulta` varchar(400) DEFAULT NULL,
  `estado_funcional` varchar(300) DEFAULT NULL,
  `revision_aparatos` varchar(300) DEFAULT NULL,
  `inspeccion` varchar(300) DEFAULT NULL,
  `palpacion` varchar(300) DEFAULT NULL,
  `flexion` decimal(5,2) DEFAULT NULL,
  `extension` decimal(5,2) DEFAULT NULL,
  `signo_schober` varchar(300) DEFAULT NULL,
  `calificar` int(11) DEFAULT NULL,
  `diag_clinico` varchar(400) DEFAULT NULL,
  `diag_fisioterapeutico` varchar(400) DEFAULT NULL,
  `examen_complementario` varchar(300) DEFAULT NULL,
  `diagnostico_clinico` varchar(300) DEFAULT NULL,
  `pronostico` varchar(400) DEFAULT NULL,
  `objetivo_inicialI` varchar(300) DEFAULT NULL,
  `objetivo_intervencionI` varchar(300) DEFAULT NULL,
  `plan_tratamientoI` varchar(300) DEFAULT NULL,
  `objetivo_inicialII` varchar(300) DEFAULT NULL,
  `objetivo_intervencionII` varchar(300) DEFAULT NULL,
  `plan_tratamientoII` varchar(300) DEFAULT NULL,
  `objetivo_intervencionIII` varchar(300) DEFAULT NULL,
  `plan_tratamientoIII` varchar(300) DEFAULT NULL,
  `plan_cuidadoIII` varchar(300) DEFAULT NULL,
  `resultados` varchar(400) DEFAULT NULL,
  `anexos` varchar(400) DEFAULT NULL,
  `cantonResidencia_id` int(11) DEFAULT NULL,
  `paciente_id` int(11) DEFAULT NULL,
  `provinciaResidencia_id` int(11) DEFAULT NULL,
  `frec_cardiaca` decimal(5,2) DEFAULT NULL,
  `frec_respiratoria` decimal(5,2) DEFAULT NULL,
  `imc` decimal(5,2) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `presion_arterial` decimal(5,2) DEFAULT NULL,
  `talla` decimal(5,2) DEFAULT NULL,
  `temperatura` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historiaclinica_historiaclinica`
--

INSERT INTO `historiaclinica_historiaclinica` (`id`, `fecha_atencion`, `fecha_nacimiento`, `sexo`, `estado_civil`, `parroquia`, `barrio`, `dependiente`, `nombre_representante`, `cedula_representante`, `actividad_fisica`, `alimentacion`, `consumo`, `nombre_medicamento`, `nombre_comercial`, `administracion`, `frecuencia`, `patologias`, `inter_quirurgica`, `hta`, `dm`, `dislipidemias`, `ecv`, `alergias`, `cancer`, `otros`, `motivo_consulta`, `estado_funcional`, `revision_aparatos`, `inspeccion`, `palpacion`, `flexion`, `extension`, `signo_schober`, `calificar`, `diag_clinico`, `diag_fisioterapeutico`, `examen_complementario`, `diagnostico_clinico`, `pronostico`, `objetivo_inicialI`, `objetivo_intervencionI`, `plan_tratamientoI`, `objetivo_inicialII`, `objetivo_intervencionII`, `plan_tratamientoII`, `objetivo_intervencionIII`, `plan_tratamientoIII`, `plan_cuidadoIII`, `resultados`, `anexos`, `cantonResidencia_id`, `paciente_id`, `provinciaResidencia_id`, `frec_cardiaca`, `frec_respiratoria`, `imc`, `peso`, `presion_arterial`, `talla`, `temperatura`) VALUES
(15, NULL, NULL, 'Femenino', 'Soltero(a)', NULL, NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89, 22, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, 'Masculino', 'Soltero(a)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 24, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intento_intento`
--

CREATE TABLE `intento_intento` (
  `id` int(11) NOT NULL,
  `puntaje` int(11) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `fechaHora` datetime(6) DEFAULT NULL,
  `control_id` int(11) DEFAULT NULL,
  `dificultad` varchar(20) DEFAULT NULL,
  `tipoJuego` varchar(20) DEFAULT NULL,
  `estadoI` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `intento_intento`
--

INSERT INTO `intento_intento` (`id`, `puntaje`, `tiempo`, `fechaHora`, `control_id`, `dificultad`, `tipoJuego`, `estadoI`) VALUES
(9, 20, '10', '2021-03-14 05:13:13.000000', 140, 'Facil', NULL, NULL),
(10, 40, '10', '2021-03-14 17:13:36.000000', 140, 'Medio', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_juego`
--

CREATE TABLE `juego_juego` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `juego_juego`
--

INSERT INTO `juego_juego` (`id`, `nombre`) VALUES
(1, 'Saltarin'),
(2, 'Guerra'),
(3, 'Packman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion_notificacion`
--

CREATE TABLE `notificacion_notificacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_paciente`
--

CREATE TABLE `paciente_paciente` (
  `id` int(11) NOT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `fechaCita` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `historiaClinica` varchar(100) DEFAULT NULL,
  `seguimiento` varchar(100) DEFAULT NULL,
  `profesional_id` int(11) DEFAULT NULL,
  `patologia` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente_paciente`
--

INSERT INTO `paciente_paciente` (`id`, `cedula`, `telefono`, `fechaCita`, `user_id`, `historiaClinica`, `seguimiento`, `profesional_id`, `patologia`) VALUES
(22, '0501234567', '245240', '2021-03-08', 65, 'SI', 'SI', 30, NULL),
(23, '1713376542', '098764555', '2021-03-10', 66, 'SI', 'SI', 30, NULL),
(24, '045698252', '0987982212', '2021-03-09', 69, 'SI', 'SI', 30, NULL),
(25, '0505044525', '054504654', '2021-04-02', 71, 'SI', 'SI', 30, NULL),
(26, '0504420282', '0999154222', '2021-04-02', 73, 'SI', 'SI', 30, 'Patologia pruebas'),
(27, '0504420282', '0995337079', '2021-03-26', 74, 'SI', 'SI', 30, 'Patologia pruebas'),
(28, '0504420288', '0994564564', '2021-03-28', 76, 'SI', 'SI', 38, 'chaparra'),
(29, '0505445656', '0987982214', '2021-03-25', 77, 'SI', '', 38, 'Prueba'),
(30, '0505445021', '0995636862', '2021-03-27', 78, 'SI', 'SI', 30, 'Pruebas'),
(31, '17652435789', '0986432678', '2021-03-27', 79, 'SI', NULL, 30, 'Patologia pruebas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesional_profesional`
--

CREATE TABLE `profesional_profesional` (
  `id` int(11) NOT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `autoidentificacion` varchar(30) DEFAULT NULL,
  `formacion` varchar(100) DEFAULT NULL,
  `codigoMSP` varchar(15) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesional_profesional`
--

INSERT INTO `profesional_profesional` (`id`, `cedula`, `telefono`, `fecha_nacimiento`, `nacionalidad`, `foto`, `autoidentificacion`, `formacion`, `codigoMSP`, `user_id`) VALUES
(30, '0401498282', '0961343434', '1996-12-01', 'Ecuatoriana', '/media/20190213_223408_I8rH7QC.jpg', 'Mestizo', 'Fisioterapeuta', '12345', 1),
(33, '0503870917', '0987982214', '1993-03-20', 'Ecuatoriano', '/media/fisio_uEJO9Sr.jpg', 'Mestizo', 'Fisioterapeuta', '51710', 57),
(36, '0452698745', '0987456858', '1985-03-08', 'Ecuatoriana', '/media/7v.PNG', 'Mestizo', 'Fisioterapeuta', '234232', 67),
(37, '0504154923', '0999154222', '1994-11-17', 'Ecuatoriana', '/media/3v.PNG', 'Mestizo', 'Medico', '0504154923', 68),
(38, '0504420282', '0995337079', '1994-08-17', 'Ecuatoriana', '/media/cotrol.jpg', 'Mestizo', 'Fisioterapeuta', '123456', 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `progreso_progreso`
--

CREATE TABLE `progreso_progreso` (
  `id` int(11) NOT NULL,
  `gradoDolor` int(11) DEFAULT NULL,
  `control_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `progreso_progreso`
--

INSERT INTO `progreso_progreso` (`id`, `gradoDolor`, `control_id`) VALUES
(1, 9, 140);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia_provincia`
--

CREATE TABLE `provincia_provincia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincia_provincia`
--

INSERT INTO `provincia_provincia` (`id`, `nombre`) VALUES
(1, 'Azuay'),
(2, 'Bolívar'),
(3, 'Cañar'),
(4, 'Carchi'),
(5, 'Cotopaxi'),
(6, 'Chimborazo'),
(7, 'El Oro'),
(8, 'Esmeraldas'),
(9, 'Guayas'),
(10, 'Imbabura'),
(11, 'Loja'),
(12, 'Los Rios'),
(13, 'Manabi'),
(14, 'Morona Santiago'),
(15, 'Napo'),
(16, 'Pastaza'),
(17, 'Pichincha'),
(18, 'Tungurahua'),
(19, 'Zamora Chinchipe'),
(20, 'Galápagos'),
(21, 'Sucumbíos'),
(22, 'Orellana'),
(23, 'Santo Domingo de Los Tsáchilas'),
(24, 'Santa Elena'),
(25, 'Zonas No Delimitadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinajuego_rutinajuego`
--

CREATE TABLE `rutinajuego_rutinajuego` (
  `id` int(11) NOT NULL,
  `juego_id` int(11) DEFAULT NULL,
  `rutina_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutinajuego_rutinajuego`
--

INSERT INTO `rutinajuego_rutinajuego` (`id`, `juego_id`, `rutina_id`) VALUES
(12, 2, 27),
(13, 3, 27),
(14, 2, 28),
(15, 3, 28),
(16, 1, 29),
(17, 3, 29),
(18, 1, 30),
(19, 2, 30),
(20, 1, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina_rutina`
--

CREATE TABLE `rutina_rutina` (
  `id` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `num_sesion` int(11) DEFAULT NULL,
  `preescripcion` varchar(300) DEFAULT NULL,
  `mano_derecha` tinyint(1) DEFAULT NULL,
  `historiaClinica_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutina_rutina`
--

INSERT INTO `rutina_rutina` (`id`, `fecha_inicio`, `fecha_fin`, `num_sesion`, `preescripcion`, `mano_derecha`, `historiaClinica_id`) VALUES
(27, '2021-03-15', '2021-03-22', 4, 'Ninguna', 0, 15),
(28, '2021-03-15', '2021-03-22', 5, 'Ninguna', 0, 16),
(29, '2021-03-04', '2021-04-04', 5, 'prueba', 1, 17),
(30, '2021-03-18', '2021-03-28', 9, 'Pruba', 0, 19),
(31, '2021-03-03', '2021-03-19', 3, 'Pruebas', 0, 20),
(32, '2021-03-21', '2021-03-25', 4, 'Pruebas', 0, 18),
(33, '2021-03-09', '2021-03-28', 19, 'Pruebas', 0, 21),
(34, '2021-03-21', '2021-03-30', 9, 'tratamiento', 1, 22),
(35, '2021-03-23', '2021-04-11', 19, NULL, 0, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `signosvitales_signosvitales`
--

CREATE TABLE `signosvitales_signosvitales` (
  `id` int(11) NOT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `temperatura` decimal(5,2) DEFAULT NULL,
  `talla` decimal(5,2) DEFAULT NULL,
  `imc` decimal(5,2) DEFAULT NULL,
  `frec_respiratoria` decimal(5,2) DEFAULT NULL,
  `frec_cardiaca` decimal(5,2) DEFAULT NULL,
  `presion_arterial` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `canton_canton`
--
ALTER TABLE `canton_canton`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Canton_canton_provincia_id_3c439100_fk_Provincia_provincia_id` (`provincia_id`);

--
-- Indices de la tabla `control_control`
--
ALTER TABLE `control_control`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Control_control_rutina_id_4e0803f6_fk_Rutina_rutina_id` (`rutina_id`),
  ADD KEY `Control_control_juego_id_8467cff4_fk_Juego_juego_id` (`juego_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `escenario_escenario`
--
ALTER TABLE `escenario_escenario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Escenario_escenario_juego_id_aa283db3_fk_Juego_juego_id` (`juego_id`);

--
-- Indices de la tabla `historiaclinica_historiaclinica`
--
ALTER TABLE `historiaclinica_historiaclinica`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paciente_id` (`paciente_id`),
  ADD KEY `HistoriaClinica_hist_cantonResidencia_id_80457743_fk_Canton_ca` (`cantonResidencia_id`),
  ADD KEY `HistoriaClinica_hist_provinciaResidencia__94960693_fk_Provincia` (`provinciaResidencia_id`);

--
-- Indices de la tabla `intento_intento`
--
ALTER TABLE `intento_intento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Intento_intento_control_id_cd0f13ab_fk_Control_control_id` (`control_id`);

--
-- Indices de la tabla `juego_juego`
--
ALTER TABLE `juego_juego`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificacion_notificacion`
--
ALTER TABLE `notificacion_notificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paciente_paciente`
--
ALTER TABLE `paciente_paciente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `Paciente_paciente_profesional_id_5a797021` (`profesional_id`);

--
-- Indices de la tabla `profesional_profesional`
--
ALTER TABLE `profesional_profesional`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `progreso_progreso`
--
ALTER TABLE `progreso_progreso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `control_id` (`control_id`);

--
-- Indices de la tabla `provincia_provincia`
--
ALTER TABLE `provincia_provincia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rutinajuego_rutinajuego`
--
ALTER TABLE `rutinajuego_rutinajuego`
  ADD PRIMARY KEY (`id`),
  ADD KEY `RutinaJuego_rutinajuego_juego_id_9612217c_fk_Juego_juego_id` (`juego_id`),
  ADD KEY `RutinaJuego_rutinajuego_rutina_id_b5bc8e30_fk_Rutina_rutina_id` (`rutina_id`);

--
-- Indices de la tabla `rutina_rutina`
--
ALTER TABLE `rutina_rutina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Rutina_rutina_historiaClinica_id_dcb53891_fk_HistoriaC` (`historiaClinica_id`);

--
-- Indices de la tabla `signosvitales_signosvitales`
--
ALTER TABLE `signosvitales_signosvitales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canton_canton`
--
ALTER TABLE `canton_canton`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT de la tabla `control_control`
--
ALTER TABLE `control_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `escenario_escenario`
--
ALTER TABLE `escenario_escenario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historiaclinica_historiaclinica`
--
ALTER TABLE `historiaclinica_historiaclinica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `intento_intento`
--
ALTER TABLE `intento_intento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `juego_juego`
--
ALTER TABLE `juego_juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `notificacion_notificacion`
--
ALTER TABLE `notificacion_notificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paciente_paciente`
--
ALTER TABLE `paciente_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `profesional_profesional`
--
ALTER TABLE `profesional_profesional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `progreso_progreso`
--
ALTER TABLE `progreso_progreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `provincia_provincia`
--
ALTER TABLE `provincia_provincia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `rutinajuego_rutinajuego`
--
ALTER TABLE `rutinajuego_rutinajuego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `rutina_rutina`
--
ALTER TABLE `rutina_rutina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `signosvitales_signosvitales`
--
ALTER TABLE `signosvitales_signosvitales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `canton_canton`
--
ALTER TABLE `canton_canton`
  ADD CONSTRAINT `Canton_canton_provincia_id_3c439100_fk_Provincia_provincia_id` FOREIGN KEY (`provincia_id`) REFERENCES `provincia_provincia` (`id`);

--
-- Filtros para la tabla `control_control`
--
ALTER TABLE `control_control`
  ADD CONSTRAINT `Control_control_juego_id_8467cff4_fk_Juego_juego_id` FOREIGN KEY (`juego_id`) REFERENCES `juego_juego` (`id`),
  ADD CONSTRAINT `Control_control_rutina_id_4e0803f6_fk_Rutina_rutina_id` FOREIGN KEY (`rutina_id`) REFERENCES `rutina_rutina` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `escenario_escenario`
--
ALTER TABLE `escenario_escenario`
  ADD CONSTRAINT `Escenario_escenario_juego_id_aa283db3_fk_Juego_juego_id` FOREIGN KEY (`juego_id`) REFERENCES `juego_juego` (`id`);

--
-- Filtros para la tabla `historiaclinica_historiaclinica`
--
ALTER TABLE `historiaclinica_historiaclinica`
  ADD CONSTRAINT `HistoriaClinica_hist_cantonResidencia_id_80457743_fk_Canton_ca` FOREIGN KEY (`cantonResidencia_id`) REFERENCES `canton_canton` (`id`),
  ADD CONSTRAINT `HistoriaClinica_hist_paciente_id_d0f7a76a_fk_Paciente_` FOREIGN KEY (`paciente_id`) REFERENCES `paciente_paciente` (`id`),
  ADD CONSTRAINT `HistoriaClinica_hist_provinciaResidencia__94960693_fk_Provincia` FOREIGN KEY (`provinciaResidencia_id`) REFERENCES `provincia_provincia` (`id`);

--
-- Filtros para la tabla `intento_intento`
--
ALTER TABLE `intento_intento`
  ADD CONSTRAINT `Intento_intento_control_id_cd0f13ab_fk_Control_control_id` FOREIGN KEY (`control_id`) REFERENCES `control_control` (`id`);

--
-- Filtros para la tabla `paciente_paciente`
--
ALTER TABLE `paciente_paciente`
  ADD CONSTRAINT `Paciente_paciente_profesional_id_5a797021_fk_Profesion` FOREIGN KEY (`profesional_id`) REFERENCES `profesional_profesional` (`id`),
  ADD CONSTRAINT `Paciente_paciente_user_id_d172c08e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `profesional_profesional`
--
ALTER TABLE `profesional_profesional`
  ADD CONSTRAINT `Profesional_profesional_user_id_b27a8d19_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `progreso_progreso`
--
ALTER TABLE `progreso_progreso`
  ADD CONSTRAINT `Progreso_progreso_control_id_13e647c9_fk_Control_control_id` FOREIGN KEY (`control_id`) REFERENCES `control_control` (`id`);

--
-- Filtros para la tabla `rutinajuego_rutinajuego`
--
ALTER TABLE `rutinajuego_rutinajuego`
  ADD CONSTRAINT `RutinaJuego_rutinajuego_juego_id_9612217c_fk_Juego_juego_id` FOREIGN KEY (`juego_id`) REFERENCES `juego_juego` (`id`),
  ADD CONSTRAINT `RutinaJuego_rutinajuego_rutina_id_b5bc8e30_fk_Rutina_rutina_id` FOREIGN KEY (`rutina_id`) REFERENCES `rutina_rutina` (`id`);

--
-- Filtros para la tabla `rutina_rutina`
--
ALTER TABLE `rutina_rutina`
  ADD CONSTRAINT `Rutina_rutina_historiaClinica_id_dcb53891_fk_HistoriaC` FOREIGN KEY (`historiaClinica_id`) REFERENCES `historiaclinica_historiaclinica` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
