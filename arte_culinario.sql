-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-04-2022 a las 20:58:18
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
-- Base de datos: `arte_culinario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `Coments` int(50) NOT NULL,
  `Comentarios del menú` varchar(900) NOT NULL,
  `Comentario_iingredientes` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`Coments`, `Comentarios del menú`, `Comentario_iingredientes`) VALUES
(11, 'Excelente servicio', 'Buena sazón'),
(12, 'Excelente servicio y rápido ', ' muy rico\r\n'),
(13, 'Tienen buenos platos con precios económicos', 'Súper Rico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion_física`
--

CREATE TABLE `informacion_física` (
  `ID_INFO` int(11) NOT NULL,
  `Nombre_Biblioteca` varchar(50) NOT NULL,
  `Lugar_Estantería` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `informacion_física`
--

INSERT INTO `informacion_física` (`ID_INFO`, `Nombre_Biblioteca`, `Lugar_Estantería`) VALUES
(11, 'Valentina Espinoza', 'A1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `ID_INGRE` int(11) NOT NULL,
  `Cantidad` varchar(50) NOT NULL,
  `Ingredientes` varchar(50) NOT NULL,
  `Coments` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`ID_INGRE`, `Cantidad`, `Ingredientes`, `Coments`) VALUES
(13, '1Lb de arroz, 1Pescado, -Papa,Magui y Ajo.', ' Pescado, Papa,Magui y Ajo.', 5),
(11, '1 Libra de arroz, 1 libra de carne, un pizca de sa', 'Sal,Cebolla,Pimienta,Ajo,Tomate,Slasa negra Y Sals', 5),
(12, '1Lb de arroz, 1 pollo, un limon, medio vaso de vin', 'Vinagre, Limon,Sal', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menú`
--

CREATE TABLE `menú` (
  `ID_MENUS` int(11) NOT NULL,
  `Nombre_del_Plato` varchar(50) NOT NULL,
  `Número_Del_plato` int(11) NOT NULL,
  `Tipo_de_Plato` varchar(50) NOT NULL,
  `El_precio_del_plato` int(11) NOT NULL,
  `Nombre_del_postre` varchar(50) NOT NULL,
  `Precio_Del_postre` int(11) NOT NULL,
  `Nombre_Entrada` varchar(50) NOT NULL,
  `Precio_Entrada` int(11) NOT NULL,
  `Número_del_Menú` int(11) NOT NULL,
  `Coments` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `menú`
--

INSERT INTO `menú` (`ID_MENUS`, `Nombre_del_Plato`, `Número_Del_plato`, `Tipo_de_Plato`, `El_precio_del_plato`, `Nombre_del_postre`, `Precio_Del_postre`, `Nombre_Entrada`, `Precio_Entrada`, `Número_del_Menú`, `Coments`) VALUES
(1, 'VAMA', 11, 'CARNE', 20000, 'BLACK', 12000, 'Papitas con suero', 8000, 111, 5),
(2, 'VAR', 12, 'POLLO', 48000, 'MOM', 20000, 'Yuca con suero ', 12000, 112, 5),
(3, 'MAPR', 13, 'PESCADO', 15000, 'MIMI', 17500, 'Patacones con suero', 10000, 113, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `ingredientes_receta` varchar(800) NOT NULL,
  `Ingredien_principal` varchar(50) NOT NULL,
  `Obtencion_de_la_receta` varchar(50) NOT NULL,
  `Calorías` varchar(50) NOT NULL,
  `Número_de_plato` int(11) NOT NULL,
  `Tiempo_de_preparación` varchar(200) NOT NULL,
  `Utensilios` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`ingredientes_receta`, `Ingredien_principal`, `Obtencion_de_la_receta`, `Calorías`, `Número_de_plato`, `Tiempo_de_preparación`, `Utensilios`) VALUES
('Sal,Cebolla,Pimienta,Ajo,Tomate,Slasa negra Y Salsa Tomate.\r\n', 'Carne', 'Familia', '267Kcal', 11, '15 minutos\r\n', 'Olla, Picadora,Olla de presión,Sartén y Una tapa.\r\n'),
('-Vinagre,Limon y Sal', 'POLLO', 'WEB', '125Kcal', 12, '10 Minutos', 'Sartén y Una tapa.\r\n'),
('pescado, Papa,Magui, Ajo, y limón\r\n', 'PESCADO', 'Amigo', '95Kcal', 13, '11 minutos', 'Olla, Picadora,Olla de presión,Sartén y Una tapa.\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`Coments`);

--
-- Indices de la tabla `informacion_física`
--
ALTER TABLE `informacion_física`
  ADD PRIMARY KEY (`ID_INFO`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`Ingredientes`),
  ADD KEY `ID_INGRE` (`ID_INGRE`);

--
-- Indices de la tabla `menú`
--
ALTER TABLE `menú`
  ADD PRIMARY KEY (`Número_Del_plato`),
  ADD KEY `ID_MENUS` (`ID_MENUS`),
  ADD KEY `Número_del_Menú` (`Número_del_Menú`),
  ADD KEY `Tipo_de_Plato` (`Tipo_de_Plato`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`Número_de_plato`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`Coments`) REFERENCES `menú` (`Número_Del_plato`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`Coments`) REFERENCES `ingredientes` (`ID_INGRE`) ON DELETE CASCADE;

--
-- Filtros para la tabla `informacion_física`
--
ALTER TABLE `informacion_física`
  ADD CONSTRAINT `informacion_física_ibfk_1` FOREIGN KEY (`ID_INFO`) REFERENCES `recetas` (`Número_de_plato`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `ingredientes_ibfk_1` FOREIGN KEY (`ID_INGRE`) REFERENCES `recetas` (`Número_de_plato`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ingredientes_ibfk_2` FOREIGN KEY (`ID_INGRE`) REFERENCES `menú` (`Número_Del_plato`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`Número_de_plato`) REFERENCES `menú` (`Número_Del_plato`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
