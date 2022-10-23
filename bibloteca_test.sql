-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2022 a las 21:21:13
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bibloteca_test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `residencias_id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `numControl` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `residencias_id`, `nombre`, `apellido`, `numControl`) VALUES
(1, 1, 'Myriam Guadalupe', 'Manriquez Sanchez', '05410784'),
(2, 1, 'Maria Anabel', 'Vargas Rivera', '05410648'),
(3, 2, 'Rocio Margarita', 'Rivera Botello', '05410120'),
(4, 2, 'Leonel', 'Ramirez Saenz', '05410079'),
(5, 2, 'Mariel', 'Heredia Lucero', '05410054'),
(6, 2, 'Daniel Angel', 'Contreras Zaragoza', '05410202'),
(7, 3, 'Alma Adriana', 'Ontiveros Marquez', '04410165'),
(8, 3, 'Nubia', 'Lucero Hernandez', '04410159'),
(9, 4, 'Elva Luz', 'Hernandez Cano', '02410459'),
(10, 4, 'Jessica Ivette', 'Rodriguez Montoya', '03410020'),
(11, 5, 'Isabel Cristina', 'Meza Ugarte', '03410017'),
(12, 5, 'Jitzel Denisse', 'Palma Duarte', '02410916'),
(13, 6, 'Maria Guadalupe', 'Porras Muñoz', '04410208'),
(14, 6, 'Pedro Severiano', 'Lerma Luna', '04410646'),
(15, 6, 'Jaime Azair', 'Hernández Peña', '04410856'),
(16, 7, 'Jose De Jesus', 'Gonzales Lopez', '09410445'),
(17, 7, 'Martin Alberto', 'Torres Lujan', '09410484'),
(18, 8, 'Jesus Esteban', 'Lopez Villalobos', '09410442'),
(19, 8, 'Jose Alfredo', 'Cota Batista', '09410476'),
(20, 9, 'Nancy Jalohany', 'Ojeda Garcia', '08410894'),
(21, 9, 'Daniel Gonzalo', 'Reyes Torres', '08410874'),
(22, 10, 'Yrelda Angelica', 'Zuñiga Carrillo', '08410947'),
(23, 10, 'Hector Adrian', 'Estrada Cañas', '08410933'),
(24, 11, 'Octavio Andres', 'Cardenas Larrea', '97410109'),
(25, 12, 'Gustavo', 'Sandoval Montes', '02410613');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `nombre`) VALUES
(1, 'Licenciatura Informática'),
(2, 'Sistemas Computacionales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residencias`
--

CREATE TABLE `residencias` (
  `idResidencia` int(11) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `numPaginas` int(11) NOT NULL,
  `link` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `residencias`
--

INSERT INTO `residencias` (`idResidencia`, `carrera_id`, `tema`, `fecha`, `numPaginas`, `link`) VALUES
(1, 1, 'Uso de los medios informaticos en las aulas por parte de maestros y alumnos del ITP', '2010-08-01', 163, '17oQmyEuZp6CaxDPj0iIKDRUtS0GVkoaf'),
(2, 1, 'MACOPRE TEC 2009', '2009-12-01', 110, '1kV2KeSbnJ3dROHfa0Cl_Z-wZXbeKN4Rx'),
(3, 1, 'La Computadora en la Educacion', '2008-11-01', 223, '1WzpI4xNn6nEv4HUKb4OWNMPrmuGTu8iz'),
(4, 1, 'Desarrollo de pagina web en el centro de informacion', '2006-12-01', 58, '1HT_HXAElmmHP5T9INFghVIMqaluPNEeD'),
(5, 1, 'Sistema de Cafeteria', '2007-06-01', 86, '1pmAaQgeWs26xJAUXNrz4THOQiJD3Czal'),
(6, 1, 'Memoria Tecnica de Red y Software de Inventario', '2009-06-01', 468, '1TlUYd0VpfMDGMwdGqVLIbyXc3CykDALV'),
(7, 2, 'Sitio Web del departamento de sistemas y computacion del instituto tecnologico de parral', '2014-08-01', 71, '1DyzQD0Y78b1lFKxRG8MliD2EEW-XcJxd'),
(8, 2, 'Festival Virtual Club Piwy Kid\'s Fase Cinco', '2014-11-01', 117, '1VomPWJ6MaNRCX8aYDkHHJ0x3S6xeCh1v'),
(9, 2, 'HELP ME', '2014-08-01', 72, '1uzLX3I5Rm3fbV4b51OEkub5E7yfwm6sE'),
(10, 2, 'Innovando La Educacion Infantil: Wiky Piwy Segunda Fase', '2013-12-01', 193, '1f5dwyjB1_5Qs_qoIOrbkJjoSV9R8Z7mn'),
(11, 1, 'Lesiones rutinarias y nutricion en el levantamiento de pesas SYSGYM', '2006-01-01', 97, '1rnjAtGzXmwMjOUaj6OxGSax9shzeGEJk'),
(12, 1, 'SYSTEM MOLDURAS', '2008-01-01', 177, '1qoRxLKjiA-csB_Z4W86wBpemqIZl__hq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userType` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `email`, `password`, `userType`, `created_at`) VALUES
(1, 'Carlos Cereceres', 'carlos@gmail.com', 'hIs92dk$Sc', 1, '2022-06-16 18:05:34'),
(2, 'Erick Aguirre', 'erick@gmail.com', '123456789A$', 0, '2022-06-16 18:09:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`,`residencias_id`),
  ADD KEY `fk_autor_residencias_idx` (`residencias_id`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `residencias`
--
ALTER TABLE `residencias`
  ADD PRIMARY KEY (`idResidencia`),
  ADD KEY `fk_residencias_carrera1_idx` (`carrera_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `residencias`
--
ALTER TABLE `residencias`
  MODIFY `idResidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor`
--
ALTER TABLE `autor`
  ADD CONSTRAINT `fk_autor_residencias` FOREIGN KEY (`residencias_id`) REFERENCES `residencias` (`idResidencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `residencias`
--
ALTER TABLE `residencias`
  ADD CONSTRAINT `fk_residencias_carrera1` FOREIGN KEY (`carrera_id`) REFERENCES `carrera` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
