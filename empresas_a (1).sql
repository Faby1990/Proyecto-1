-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 11-01-2023 a las 02:36:10
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
-- Base de datos: `empresas.a`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(10) NOT NULL,
  `Nombre` text NOT NULL,
  `Telefono` int(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `Nombre`, `Telefono`, `Correo`, `Mensaje`) VALUES
(1, 'Luis Aguana', 987897994, 'jgjun@gmail.com', 'Buen producto felicitaciones'),
(2, 'Luis Aguana', 987897994, 'jgjun@gmail.com', 'Buen producto felicitaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizacion`
--

CREATE TABLE `organizacion` (
  `id` int(10) NOT NULL,
  `Nombre` text NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `Descripcion` text NOT NULL,
  `Mision` text NOT NULL,
  `Vision` text NOT NULL,
  `Valores` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `organizacion`
--

INSERT INTO `organizacion` (`id`, `Nombre`, `Foto`, `Descripcion`, `Mision`, `Vision`, `Valores`) VALUES
(1, 'Quimica Suiza', 'https://lh3.googleusercontent.com/p/AF1QipM_W5VlKQXveWmBMbZDV7CV1fmwCfrqiapJLjYH=s680-w680-h510', 'Empresa multinacional', 'Ser pioneros en la area farmaceutica', 'Ser pioneros en la industria', 'Respeto y puntualidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id` int(10) NOT NULL,
  `Nombre` text NOT NULL,
  `Cargo` text NOT NULL,
  `Rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id`, `Nombre`, `Cargo`, `Rol`) VALUES
(1, 'Juan Valdez', 'Bodega de logistica', 'Supervisor'),
(2, 'Juan Gomez', 'Logistica', 'Auxiliar de bodega');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(10) NOT NULL,
  `Nombre` text NOT NULL,
  `Codigo` int(100) NOT NULL,
  `Descripcion` text NOT NULL,
  `Foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `Nombre`, `Codigo`, `Descripcion`, `Foto`) VALUES
(1, 'Sal yodada', 12, 'La mejor sal del pais', 'https://blogs.iadb.org/salud/wp-content/uploads/sites/15/2015/05/Diamundialhipertensio%CC%81n.jpg'),
(2, 'Salsa de tomate', 11, 'Salsa de tomate Ecuatoriana', 'https://tiaecuador.vtexassets.com/arquivos/ids/164459/250137000.jpg?v=637088217407700000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `organizacion`
--
ALTER TABLE `organizacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `organizacion`
--
ALTER TABLE `organizacion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
