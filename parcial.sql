-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-03-2022 a las 21:15:22
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `Código_Asignatura` int(11) NOT NULL,
  `Nombre_Asignatura` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`Código_Asignatura`, `Nombre_Asignatura`) VALUES
(2, 'base de da'),
(1, 'fundamento'),
(3, 'programaci');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `Núm_matrícula` int(11) NOT NULL,
  `Nombre_Asignatura` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Teléfono` int(11) NOT NULL,
  `Nombre_Estudiante` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`Núm_matrícula`, `Nombre_Asignatura`, `FechaNacimiento`, `Teléfono`, `Nombre_Estudiante`) VALUES
(2, 'base de da', '2003-10-09', 35884129, 'marta'),
(1, 'fundamento', '2003-10-23', 320458796, 'josefa'),
(5, 'programaci', '2003-10-02', 325489755, 'maria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `Id_P` int(11) NOT NULL,
  `NIF_P` varchar(10) NOT NULL,
  `Código_Asignatura` int(11) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Especialidad` varchar(225) NOT NULL,
  `Teléfono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`Id_P`, `NIF_P`, `Código_Asignatura`, `Nombre`, `Especialidad`, `Teléfono`) VALUES
(1, 'QII001', 1, 'William Insignares', 'bilingüe, informático y Químico ', 35884129),
(1, 'QII001', 2, 'William Insignares', 'bilingüe, Informático y Químico.', 35884129),
(1, 'QII001', 3, 'William Insignares', 'bilingüe, informático y químico', 35884129);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`Código_Asignatura`),
  ADD KEY `Nombre_Asignatura` (`Nombre_Asignatura`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`Nombre_Asignatura`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD KEY `Código_Asignatura` (`Código_Asignatura`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`Nombre_Asignatura`) REFERENCES `estudiantes` (`Nombre_Asignatura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`Código_Asignatura`) REFERENCES `asignatura` (`Código_Asignatura`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
