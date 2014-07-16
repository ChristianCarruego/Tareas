-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2014 a las 02:11:21
-- Versión del servidor: 5.6.14
-- Versión de PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tareasdev`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `nombre_empresa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `version`, `nombre_empresa`) VALUES
(1, 0, 'SMATA'),
(2, 1, 'AGFA'),
(3, 0, 'BUSYMIND');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_usuario`
--

CREATE TABLE IF NOT EXISTS `empresa_usuario` (
  `empresa_usuario_id` bigint(20) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  KEY `FK93394178FC86C013` (`usuario_id`),
  KEY `FK93394178A999A2E4` (`empresa_usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa_usuario`
--

INSERT INTO `empresa_usuario` (`empresa_usuario_id`, `usuario_id`) VALUES
(1, 2),
(1, 5),
(2, 4),
(3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_tarea`
--

CREATE TABLE IF NOT EXISTS `estado_tarea` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `estado_tarea`
--

INSERT INTO `estado_tarea` (`id`, `version`, `descripcion`) VALUES
(1, 0, 'Pendiente'),
(2, 0, 'enProceso'),
(3, 0, 'Finalizada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authority` (`authority`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `version`, `authority`) VALUES
(1, 0, 'ROLE_ADMIN'),
(2, 0, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE IF NOT EXISTS `tarea` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `detalle` varchar(255) NOT NULL,
  `estado_id` bigint(20) NOT NULL,
  `fecha_finalizado` datetime NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `registro_trabajo` varchar(255) NOT NULL,
  `resumen` varchar(255) NOT NULL,
  `tipo_tarea_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK69077019F174468` (`estado_id`),
  KEY `FK6907701A49CBECA` (`tipo_tarea_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`id`, `version`, `detalle`, `estado_id`, `fecha_finalizado`, `fecha_inicio`, `registro_trabajo`, `resumen`, `tipo_tarea_id`) VALUES
(1, 0, 'aguante CGT oficial', 2, '2014-07-10 00:00:00', '2014-07-10 00:00:00', '.', 'tocarBombo', 1),
(2, 0, 'me explotan y me cagaron con speed', 2, '2014-07-10 00:00:00', '2014-07-10 00:00:00', '.', 'mulearConElTeclado', 2),
(3, 0, 'aguante Linux, muerte a win8', 3, '2014-07-10 00:00:00', '2014-07-10 00:00:00', '.', 'motoVeloz', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_tarea`
--

CREATE TABLE IF NOT EXISTS `tipo_tarea` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipo_tarea`
--

INSERT INTO `tipo_tarea` (`id`, `version`, `descripcion`) VALUES
(1, 0, 'Servicio'),
(2, 0, 'Incidencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `version`, `account_expired`, `account_locked`, `enabled`, `password`, `password_expired`, `username`) VALUES
(1, 0, b'0', b'0', b'1', '$2a$10$Q6vGqViLMhVLdW8YU73s8.y.jPgbnpPA4y6zDCMlxJAvYsRm8i4ve', b'0', 'admin'),
(2, 0, b'0', b'0', b'1', '$2a$10$So3Uef7Gnvx.2JrZI7cdVuoLzBkmC4f1vU/9h/m.XYtQ2qp18EudW', b'0', 'Christian'),
(3, 1, b'0', b'0', b'1', '$2a$10$eTFUKyPEIOzflX9C9YHLCuFhjAucpGGS.EV2P1vgdgxXNQhsLwMOK', b'0', 'Daniel'),
(4, 0, b'0', b'0', b'1', '$2a$10$nAcoQD48SAJU.5i40sqH5ej/AXJQiGrz1D5Ft3dmRIEnntBefLjPq', b'0', 'Fernando'),
(5, 0, b'0', b'0', b'1', '$2a$10$c04AfUyhmvPCreQrzUwW7u0KhvvI/tK9A97mrX3uGpWhrX9c0tFm2', b'0', 'Jorge');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE IF NOT EXISTS `usuario_rol` (
  `rol_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  PRIMARY KEY (`rol_id`,`usuario_id`),
  KEY `FK3118953E386AA4F3` (`rol_id`),
  KEY `FK3118953EFC86C013` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`rol_id`, `usuario_id`) VALUES
(1, 1),
(1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_tarea`
--

CREATE TABLE IF NOT EXISTS `usuario_tarea` (
  `usuario_tarea_id` bigint(20) DEFAULT NULL,
  `tarea_id` bigint(20) DEFAULT NULL,
  KEY `FK4D5E32B0BE243D73` (`tarea_id`),
  KEY `FK4D5E32B0D37C3951` (`usuario_tarea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_tarea`
--

INSERT INTO `usuario_tarea` (`usuario_tarea_id`, `tarea_id`) VALUES
(3, 3),
(3, 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresa_usuario`
--
ALTER TABLE `empresa_usuario`
  ADD CONSTRAINT `FK93394178A999A2E4` FOREIGN KEY (`empresa_usuario_id`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK93394178FC86C013` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `FK6907701A49CBECA` FOREIGN KEY (`tipo_tarea_id`) REFERENCES `tipo_tarea` (`id`),
  ADD CONSTRAINT `FK69077019F174468` FOREIGN KEY (`estado_id`) REFERENCES `estado_tarea` (`id`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK3118953EFC86C013` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK3118953E386AA4F3` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);

--
-- Filtros para la tabla `usuario_tarea`
--
ALTER TABLE `usuario_tarea`
  ADD CONSTRAINT `FK4D5E32B0D37C3951` FOREIGN KEY (`usuario_tarea_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK4D5E32B0BE243D73` FOREIGN KEY (`tarea_id`) REFERENCES `tarea` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
