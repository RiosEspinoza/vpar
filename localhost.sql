-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-03-2022 a las 20:36:52
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
-- Base de datos: `cur_amigos`
--
CREATE DATABASE IF NOT EXISTS `cur_amigos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `cur_amigos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre_de_Usuario` varchar(100) DEFAULT NULL,
  `Amigos_en_común` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`Id_Usuario`, `Nombre_de_Usuario`, `Amigos_en_común`) VALUES
(1, 'Madheleyn ', 'si 8\r\n'),
(2, 'Valentina Espinoza', 'Sí 5\r\n'),
(3, 'sebas', 'No 0\r\n'),
(4, 'jorge', 'no 0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuarios` int(11) DEFAULT NULL,
  `Estado_de_la_solicitud` varchar(10) NOT NULL,
  `Respuesta_de_la_solicitud` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuarios`, `Estado_de_la_solicitud`, `Respuesta_de_la_solicitud`) VALUES
(1, 'Enviada', 'Aceptada'),
(2, 'Recibida', 'Aceptada'),
(3, 'Recibida', 'Rechazada'),
(4, 'Enviada', 'Rechazada');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD KEY `Id_Usuarios` (`Id_Usuarios`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_Usuarios`) REFERENCES `solicitud` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `estudiante`
--
CREATE DATABASE IF NOT EXISTS `estudiante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `estudiante`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Id` int(10) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Asignatura` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Id`, `Nombre`, `Apellido`, `Asignatura`) VALUES
(1, 'Juan', 'perez', 'matematica'),
(2, 'maria', 'pedrozo', 'quimica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `Id` int(10) NOT NULL,
  `Id_E` int(10) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Asignatura` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`Id`, `Id_E`, `Fecha_Nacimiento`, `Asignatura`) VALUES
(3, 1, '2002-03-23', 'matematica'),
(5, 2, '2022-03-16', 'quimica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_E` (`Id_E`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`Id_E`) REFERENCES `estudiante` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
--
-- Base de datos: `parcial`
--
CREATE DATABASE IF NOT EXISTS `parcial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `parcial`;

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
