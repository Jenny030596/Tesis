-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2020 a las 20:19:23
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bdfisioatlas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_control`
--

CREATE TABLE IF NOT EXISTS `t_control` (
  `id_cont` int(11) NOT NULL,
  `fecha_visita_cont` date NOT NULL,
  `valoracion_cont` varchar(200) NOT NULL,
  `id_trat` int(11) NOT NULL,
  `observacion_cont` varchar(200) NOT NULL,
  PRIMARY KEY (`id_cont`),
  KEY `id_trat` (`id_trat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_ejercicio`
--

CREATE TABLE IF NOT EXISTS `t_ejercicio` (
  `id_ejer` int(11) NOT NULL,
  `nombre_ejer` varchar(100) NOT NULL,
  `verificacion_ejer` tinyint(1) NOT NULL,
  `tiempo_real_ejer` int(11) NOT NULL,
  PRIMARY KEY (`id_ejer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_escenario`
--

CREATE TABLE IF NOT EXISTS `t_escenario` (
  `id_esc` int(11) NOT NULL,
  `nombre_esc` varchar(100) NOT NULL,
  PRIMARY KEY (`id_esc`),
  KEY `id_esc` (`id_esc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_juego`
--

CREATE TABLE IF NOT EXISTS `t_juego` (
  `id_jueg` int(11) NOT NULL,
  `nombre_jueg` varchar(100) NOT NULL,
  `puntaje_def_jueg` int(11) NOT NULL,
  `tiempo_def_jueg` int(11) NOT NULL,
  `id_ejer_jueg` int(11) NOT NULL,
  `id_escen_jueg` int(11) NOT NULL,
  `id_notif_jueg` int(11) NOT NULL,
  PRIMARY KEY (`id_jueg`),
  KEY `id_ejer_jueg` (`id_ejer_jueg`),
  KEY `id_escen_jueg` (`id_escen_jueg`),
  KEY `id_notif_jueg` (`id_notif_jueg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_notificacion`
--

CREATE TABLE IF NOT EXISTS `t_notificacion` (
  `id_notif` int(11) NOT NULL,
  `nombre_notif` varchar(100) NOT NULL,
  `mensaje_notif` varchar(100) NOT NULL,
  PRIMARY KEY (`id_notif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_paciente`
--

CREATE TABLE IF NOT EXISTS `t_paciente` (
  `id_pac` int(11) NOT NULL,
  `id_usu_pac` int(11) NOT NULL,
  `num_cedula_pac` varchar(10) NOT NULL,
  `nombres_pac` varchar(50) NOT NULL,
  `apellidos_pac` varchar(50) NOT NULL,
  `celular_pac` varchar(10) NOT NULL,
  `direccion_pac` varchar(200) NOT NULL,
  PRIMARY KEY (`id_pac`),
  KEY `id_usu_pac` (`id_usu_pac`),
  KEY `id_usu_pac_2` (`id_usu_pac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_tratamiento`
--

CREATE TABLE IF NOT EXISTS `t_tratamiento` (
  `id_trat` int(11) NOT NULL,
  `id_usuario_trat` int(11) NOT NULL,
  `fecha_ini_trat` date NOT NULL,
  `fecha_fin_trat` date NOT NULL,
  `num_sesion_trat` int(11) NOT NULL,
  `preescripcion_trat` varchar(200) NOT NULL,
  PRIMARY KEY (`id_trat`),
  KEY `id_usuario_trat` (`id_usuario_trat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_trat_ejerc`
--

CREATE TABLE IF NOT EXISTS `t_trat_ejerc` (
  `id_trat_ejerc` int(11) NOT NULL AUTO_INCREMENT,
  `id_trat` int(11) NOT NULL,
  `id_ejerc` int(11) NOT NULL,
  PRIMARY KEY (`id_trat_ejerc`),
  KEY `id_trat` (`id_trat`),
  KEY `id_ejerc` (`id_ejerc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuario`
--

CREATE TABLE IF NOT EXISTS `t_usuario` (
  `id_usuario` int(11) NOT NULL,
  `correo_usuario` varchar(50) NOT NULL,
  `contrasena_usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_control`
--
ALTER TABLE `t_control`
  ADD CONSTRAINT `t_control_ibfk_1` FOREIGN KEY (`id_trat`) REFERENCES `t_tratamiento` (`id_trat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `t_juego`
--
ALTER TABLE `t_juego`
  ADD CONSTRAINT `t_juego_ibfk_1` FOREIGN KEY (`id_ejer_jueg`) REFERENCES `t_ejercicio` (`id_ejer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_juego_ibfk_2` FOREIGN KEY (`id_escen_jueg`) REFERENCES `t_escenario` (`id_esc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_juego_ibfk_3` FOREIGN KEY (`id_notif_jueg`) REFERENCES `t_notificacion` (`id_notif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `t_paciente`
--
ALTER TABLE `t_paciente`
  ADD CONSTRAINT `t_paciente_ibfk_1` FOREIGN KEY (`id_usu_pac`) REFERENCES `t_usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `t_tratamiento`
--
ALTER TABLE `t_tratamiento`
  ADD CONSTRAINT `t_tratamiento_ibfk_1` FOREIGN KEY (`id_usuario_trat`) REFERENCES `t_paciente` (`id_pac`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `t_trat_ejerc`
--
ALTER TABLE `t_trat_ejerc`
  ADD CONSTRAINT `t_trat_ejerc_ibfk_1` FOREIGN KEY (`id_trat`) REFERENCES `t_tratamiento` (`id_trat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_trat_ejerc_ibfk_2` FOREIGN KEY (`id_ejerc`) REFERENCES `t_ejercicio` (`id_ejer`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
