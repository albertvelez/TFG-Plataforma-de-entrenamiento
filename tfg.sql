-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2018 a las 07:46:33
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tfg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atletas`
--

CREATE TABLE IF NOT EXISTS `atletas` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Club_organizacion` varchar(30) NOT NULL,
  `Sector` varchar(30) NOT NULL,
  `Especialidad` varchar(30) NOT NULL,
  `Fecha` varchar(4) NOT NULL,
  `Id_entrenador` int(5) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `atletas`
--

INSERT INTO `atletas` (`Id`, `Nombre`, `Apellidos`, `Email`, `Club_organizacion`, `Sector`, `Especialidad`, `Fecha`, `Id_entrenador`, `Usuario`, `Password`) VALUES
(3, 'Albert', 'Vélez Martín', 'nuvilavelez@hotmail.com', 'F.C.Barcelona', 'Saltos', 'Salto de altura', '1988', 2, 'Nuvila', '$2y$10$yuc5ADyN6vII0r2Nm8gY/ucv4100La9.aEXTnIp13VEER72lnDqMi'),
(4, 'Miquel', 'Vélez Martín', 'michi@gmail.com', 'U.A.Terrassa', 'Saltos', 'Salto de altura', '1983', 2, 'Michi', '$2y$10$zv216IINLzRAfFZieTYqDu5bZPnS9SmUrEpO0c7vU9.XE7d7BHSKK'),
(5, 'Miguel Ángel', 'Sancho Rubio', 'sancho@gmail.com', 'Playas de Castellón', 'Saltos', 'Salto de altura', '1983', 2, 'Sancho', '$2y$10$iV6IathG6YRvt4Vahi0.8exwKOc4Yr/t0zYwgPFcxfIPKiyrotiHa'),
(6, 'Marc', 'Pagès Corella', 'marcpages@gmail.com', 'J.A.Sabadell', 'Saltos', 'Salto de altura', '1974', 2, 'Marcp', '$2y$10$NwSUVBYpY1IkeAnNkINQX.vmo8fs01vZH0f6t4Z1DiCkmGY9BDvry'),
(7, 'Alfonso', 'Badolato Martín', 'alf@gmail.com', 'Universidad de Oviedo', 'Saltos', 'Salto de altura', '1973', 3, 'Alfonso', '$2y$10$lpPEg2epUNsX1P2n2SiHAuHNnE4zjDoUqcMrc5ByeKM4sivfSTmQK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenadores`
--

CREATE TABLE IF NOT EXISTS `entrenadores` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Club_organizacion` varchar(30) NOT NULL,
  `Sector` varchar(30) NOT NULL,
  `Especialidad` varchar(30) NOT NULL,
  `Titulacion` varchar(30) NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `entrenadores`
--

INSERT INTO `entrenadores` (`Id`, `Nombre`, `Apellidos`, `Email`, `Club_organizacion`, `Sector`, `Especialidad`, `Titulacion`, `Usuario`, `Password`) VALUES
(2, 'Miguel', 'Vélez Blasco', 'miklos@gmail.com', 'RFEA', 'Saltos', 'Salto de altura', 'Nacional especializado', 'Miklos', '$2y$10$c.2tZDP72MdCkK.R90UExevhSb/2nf8sfhK.xvdsGjUPh0qmYSTPi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planificacion`
--

CREATE TABLE IF NOT EXISTS `planificacion` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Id_entrenador` varchar(30) NOT NULL,
  `Temporada` varchar(30) NOT NULL,
  `Periodo` varchar(30) NOT NULL,
  `P_marcha` varchar(5) NOT NULL,
  `A_funcional` varchar(5) NOT NULL,
  `Int_p_marcha` varchar(5) NOT NULL,
  `Int_a_funcional` varchar(5) NOT NULL,
  `Prep_general` varchar(5) NOT NULL,
  `Fuerza` varchar(5) NOT NULL,
  `F_velocidad` varchar(5) NOT NULL,
  `Int_fuerza` varchar(5) NOT NULL,
  `Int_f_velocidad` varchar(5) NOT NULL,
  `Prep_especial` varchar(5) NOT NULL,
  `V_tecnica` varchar(5) NOT NULL,
  `M_competitiva` varchar(5) NOT NULL,
  `Int_v_tecnica` varchar(5) NOT NULL,
  `Int_m_competitiva` varchar(5) NOT NULL,
  `Prep_tecnica` varchar(5) NOT NULL,
  `Competitivo` varchar(5) NOT NULL,
  `Int_competitivo` varchar(5) NOT NULL,
  `Per_competitivo` varchar(5) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `planificacion`
--

INSERT INTO `planificacion` (`Id`, `Nombre`, `Id_entrenador`, `Temporada`, `Periodo`, `P_marcha`, `A_funcional`, `Int_p_marcha`, `Int_a_funcional`, `Prep_general`, `Fuerza`, `F_velocidad`, `Int_fuerza`, `Int_f_velocidad`, `Prep_especial`, `V_tecnica`, `M_competitiva`, `Int_v_tecnica`, `Int_m_competitiva`, `Prep_tecnica`, `Competitivo`, `Int_competitivo`, `Per_competitivo`) VALUES
(1, 'Plan1', 'Miklos', '2017/2018', 'Aire libre', '0', '2', '0', '1', '1', '4', '4', '2', '3', '1', '3', '3', '4', '4', '1', '8', '5', '1'),
(2, 'Plan2', 'Miklos', '2018/2019', 'Pista cubierta', '2', '3', '1', '2', '1', '4', '4', '3', '3', '1', '4', '0', '4', '0', '1', '6', '5', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados_atleta`
--

CREATE TABLE IF NOT EXISTS `resultados_atleta` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Id_atleta` int(5) NOT NULL,
  `Fecha` varchar(20) NOT NULL,
  `Competicion` varchar(30) NOT NULL,
  `Lugar` varchar(30) NOT NULL,
  `Posicion` varchar(4) NOT NULL,
  `Prueba` varchar(30) NOT NULL,
  `Marca` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `resultados_atleta`
--

INSERT INTO `resultados_atleta` (`Id`, `Id_atleta`, `Fecha`, `Competicion`, `Lugar`, `Posicion`, `Prueba`, `Marca`) VALUES
(1, 3, '20/10/2011', 'C. de España', 'Madrid', '1º', 'Salto de altura', '2.16'),
(2, 3, '15/11/2011', 'C. Cataluña', 'Barcelona', '2º', 'Salto de altura', '2.05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `volumenes_planificacion`
--

CREATE TABLE IF NOT EXISTS `volumenes_planificacion` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Id_planificacion` int(5) NOT NULL,
  `Ciclo` varchar(30) NOT NULL,
  `Mesociclo` varchar(30) NOT NULL,
  `Semana` varchar(5) NOT NULL,
  `Volumen` int(5) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Volcado de datos para la tabla `volumenes_planificacion`
--

INSERT INTO `volumenes_planificacion` (`Id`, `Id_planificacion`, `Ciclo`, `Mesociclo`, `Semana`, `Volumen`) VALUES
(1, 1, 'Preparación General', 'Adaptación funcional', '1', 50),
(2, 1, 'Preparación General', 'Adaptación funcional', '2', 60),
(3, 1, 'Preparación Especial', 'Fuerza', '3', 60),
(4, 1, 'Preparación Especial', 'Fuerza', '4', 70),
(5, 1, 'Preparación Especial', 'Fuerza', '5', 80),
(6, 1, 'Preparación Especial', 'Fuerza', '6', 60),
(7, 1, 'Preparación Especial', 'Fuerza velocidad', '7', 60),
(8, 1, 'Preparación Especial', 'Fuerza velocidad', '8', 80),
(9, 1, 'Preparación Especial', 'Fuerza velocidad', '9', 90),
(10, 1, 'Preparación Especial', 'Fuerza velocidad', '10', 60),
(11, 1, 'Preparación Técnica', 'Velocidad técnica', '11', 70),
(12, 1, 'Preparación Técnica', 'Velocidad técnica', '12', 90),
(13, 1, 'Preparación Técnica', 'Velocidad técnica', '13', 100),
(14, 1, 'Preparación Técnica', 'Modelación competitiva', '14', 80),
(15, 1, 'Preparación Técnica', 'Modelación competitiva', '15', 60),
(16, 1, 'Preparación Técnica', 'Modelación competitiva', '16', 50),
(17, 1, 'Periodo Competitivo', 'Competitivo', '17', 40),
(18, 1, 'Periodo Competitivo', 'Competitivo', '18', 40),
(19, 1, 'Periodo Competitivo', 'Competitivo', '19', 40),
(20, 1, 'Periodo Competitivo', 'Competitivo', '20', 40),
(21, 1, 'Periodo Competitivo', 'Competitivo', '21', 40),
(22, 1, 'Periodo Competitivo', 'Competitivo', '22', 40),
(23, 1, 'Periodo Competitivo', 'Competitivo', '23', 40),
(24, 1, 'Periodo Competitivo', 'Competitivo', '24', 40),
(25, 2, 'Preparación General', 'Puesta en marcha', '1', 50),
(26, 2, 'Preparación General', 'Puesta en marcha', '2', 60),
(27, 2, 'Preparación General', 'Adaptación funcional', '3', 70),
(28, 2, 'Preparación General', 'Adaptación funcional', '4', 80),
(29, 2, 'Preparación General', 'Adaptación funcional', '5', 90),
(30, 2, 'Preparación Especial', 'Fuerza', '6', 70),
(31, 2, 'Preparación Especial', 'Fuerza', '7', 100),
(32, 2, 'Preparación Especial', 'Fuerza', '8', 90),
(33, 2, 'Preparación Especial', 'Fuerza', '9', 50),
(34, 2, 'Preparación Especial', 'Fuerza velocidad', '10', 70),
(35, 2, 'Preparación Especial', 'Fuerza velocidad', '11', 100),
(36, 2, 'Preparación Especial', 'Fuerza velocidad', '12', 70),
(37, 2, 'Preparación Especial', 'Fuerza velocidad', '13', 50),
(38, 2, 'Preparación Técnica', 'Velocidad técnica', '14', 90),
(39, 2, 'Preparación Técnica', 'Velocidad técnica', '15', 70),
(40, 2, 'Preparación Técnica', 'Velocidad técnica', '16', 80),
(41, 2, 'Preparación Técnica', 'Velocidad técnica', '17', 50),
(42, 2, 'Periodo Competitivo', 'Competitivo', '18', 40),
(43, 2, 'Periodo Competitivo', 'Competitivo', '19', 40),
(44, 2, 'Periodo Competitivo', 'Competitivo', '20', 40),
(45, 2, 'Periodo Competitivo', 'Competitivo', '21', 30),
(46, 2, 'Periodo Competitivo', 'Competitivo', '22', 30),
(47, 2, 'Periodo Competitivo', 'Competitivo', '23', 30);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
