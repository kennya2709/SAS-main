-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2023 a las 19:24:03
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sacramentos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bautizo`
--

CREATE TABLE `bautizo` (
  `id_ba` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `lug_nac` varchar(60) NOT NULL,
  `fecha_nac` varchar(60) NOT NULL,
  `fecha_bau` varchar(60) NOT NULL,
  `padre` varchar(60) NOT NULL,
  `madre` varchar(60) NOT NULL,
  `abuelo_pa` varchar(60) NOT NULL,
  `abuela_pa` varchar(60) NOT NULL,
  `abuelo_ma` varchar(60) NOT NULL,
  `abuela_ma` varchar(60) NOT NULL,
  `padrino_oleos` varchar(60) NOT NULL,
  `padrino_pila` varchar(60) NOT NULL,
  `libro` varchar(60) NOT NULL,
  `foja` varchar(60) NOT NULL,
  `acta` varchar(60) NOT NULL,
  `R.C` varchar(60) NOT NULL,
  `lugar` varchar(60) NOT NULL,
  `fecha` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunion`
--

CREATE TABLE `comunion` (
  `id_comu` int(11) NOT NULL,
  `fecha` varchar(60) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `fecha_nac` varchar(60) NOT NULL,
  `lug_nac` varchar(60) NOT NULL,
  `padre` varchar(60) NOT NULL,
  `madre` varchar(60) NOT NULL,
  `padrino` varchar(60) NOT NULL,
  `parroco` varchar(60) NOT NULL,
  `libro_no` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confirmacion`
--

CREATE TABLE `confirmacion` (
  `id_co` int(11) NOT NULL,
  `fecha_conf` varchar(60) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `padre` varchar(60) NOT NULL,
  `madre` varchar(60) NOT NULL,
  `padrino` varchar(60) NOT NULL,
  `lug_nac` varchar(60) NOT NULL,
  `fecha_nac` varchar(60) NOT NULL,
  `lugar_bau` varchar(60) NOT NULL,
  `fecha_bau` varchar(60) NOT NULL,
  `min_conf` varchar(60) NOT NULL,
  `no_lib_par` varchar(60) NOT NULL,
  `no_acta` varchar(60) NOT NULL,
  `fecha_realiz` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contraer`
--

CREATE TABLE `contraer` (
  `id_comu` int(11) NOT NULL,
  `id_ma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrimonio`
--

CREATE TABLE `matrimonio` (
  `id_ma` int(11) NOT NULL,
  `fecha` varchar(60) NOT NULL,
  `hombre` varchar(60) NOT NULL,
  `mujer` varchar(60) NOT NULL,
  `testigo1` varchar(60) NOT NULL,
  `testigo2` varchar(60) NOT NULL,
  `padre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puede`
--

CREATE TABLE `puede` (
  `id_co` int(11) NOT NULL,
  `id_comu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realiza`
--

CREATE TABLE `realiza` (
  `id_ba` int(11) NOT NULL,
  `id_co` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `password`) VALUES
('jose', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bautizo`
--
ALTER TABLE `bautizo`
  ADD PRIMARY KEY (`id_ba`);

--
-- Indices de la tabla `comunion`
--
ALTER TABLE `comunion`
  ADD PRIMARY KEY (`id_comu`);

--
-- Indices de la tabla `confirmacion`
--
ALTER TABLE `confirmacion`
  ADD PRIMARY KEY (`id_co`);

--
-- Indices de la tabla `contraer`
--
ALTER TABLE `contraer`
  ADD KEY `id_comu` (`id_comu`),
  ADD KEY `id_ma` (`id_ma`);

--
-- Indices de la tabla `matrimonio`
--
ALTER TABLE `matrimonio`
  ADD PRIMARY KEY (`id_ma`);

--
-- Indices de la tabla `puede`
--
ALTER TABLE `puede`
  ADD KEY `id_co` (`id_co`),
  ADD KEY `id_comu` (`id_comu`);

--
-- Indices de la tabla `realiza`
--
ALTER TABLE `realiza`
  ADD KEY `id_ba` (`id_ba`,`id_co`),
  ADD KEY `id_co` (`id_co`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bautizo`
--
ALTER TABLE `bautizo`
  MODIFY `id_ba` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comunion`
--
ALTER TABLE `comunion`
  MODIFY `id_comu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `confirmacion`
--
ALTER TABLE `confirmacion`
  MODIFY `id_co` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `matrimonio`
--
ALTER TABLE `matrimonio`
  MODIFY `id_ma` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunion`
--
ALTER TABLE `comunion`
  ADD CONSTRAINT `comunion_ibfk_1` FOREIGN KEY (`id_comu`) REFERENCES `contraer` (`id_comu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contraer`
--
ALTER TABLE `contraer`
  ADD CONSTRAINT `contraer_ibfk_1` FOREIGN KEY (`id_ma`) REFERENCES `matrimonio` (`id_ma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `puede`
--
ALTER TABLE `puede`
  ADD CONSTRAINT `puede_ibfk_1` FOREIGN KEY (`id_co`) REFERENCES `confirmacion` (`id_co`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `puede_ibfk_2` FOREIGN KEY (`id_comu`) REFERENCES `comunion` (`id_comu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `realiza`
--
ALTER TABLE `realiza`
  ADD CONSTRAINT `realiza_ibfk_1` FOREIGN KEY (`id_ba`) REFERENCES `bautizo` (`id_ba`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `realiza_ibfk_2` FOREIGN KEY (`id_co`) REFERENCES `confirmacion` (`id_co`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
