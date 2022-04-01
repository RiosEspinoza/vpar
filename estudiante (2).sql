-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-04-2022 a las 20:58:10
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
-- Base de datos: `estudiante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `Id_Asig` int(10) NOT NULL,
  `Id_Fac` int(10) NOT NULL,
  `Nombre_Asignatura` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`Id_Asig`, `Id_Fac`, `Nombre_Asignatura`) VALUES
(2, 8, 'Calculo'),
(3, 4, 'Etica'),
(4, 5, 'Programacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Id` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Id`, `Nombre`, `Apellido`) VALUES
(1, 'juana', 'perez'),
(2, 'Marta', 'perez'),
(3, 'Gorge', 'Marquez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `Id_Fac` int(11) NOT NULL,
  `Id_Asig` int(11) NOT NULL,
  `Id_Mat` int(11) NOT NULL,
  `Nombre_facultad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`Id_Fac`, `Id_Asig`, `Id_Mat`, `Nombre_facultad`) VALUES
(4, 3, 5, 'Derecho'),
(5, 4, 6, 'Ingeneria'),
(8, 3, 4, 'Contaduria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `Id` int(10) NOT NULL,
  `Id_E` int(10) NOT NULL,
  `Id_Fac` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Id_Asignatura` int(20) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`Id`, `Id_E`, `Id_Fac`, `Nombre`, `Id_Asignatura`, `Fecha_Nacimiento`) VALUES
(4, 3, 8, 'Gorge', 2, '2022-03-12'),
(5, 2, 4, 'Marta', 3, '2022-03-22'),
(6, 1, 5, 'juana', 4, '2022-03-02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`Id_Asig`),
  ADD KEY `Id_Fac` (`Id_Fac`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`Id_Fac`),
  ADD KEY `Id_Asig` (`Id_Asig`,`Id_Mat`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_E` (`Id_E`,`Id_Fac`),
  ADD KEY `Id_Fac` (`Id_Fac`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `matricula` (`Id_E`);

--
-- Filtros para la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD CONSTRAINT `facultad_ibfk_1` FOREIGN KEY (`Id_Asig`) REFERENCES `asignatura` (`Id_Asig`) ON DELETE CASCADE;

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`Id_Fac`) REFERENCES `facultad` (`Id_Fac`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
