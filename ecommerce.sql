-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2021 a las 01:25:18
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Electrodomestico'),
(3, 'Mueble');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `email`, `pass`, `nombre`, `direccion`) VALUES
(1, 'edwinporras2012@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Edwin Front', 'cll 11 # 11- 11'),
(2, 'edw@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Edwin TEST', 'cll 99 # 99-99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventas`
--

CREATE TABLE `detalleventas` (
  `id_detventa` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id_files` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id_files`, `file_name`, `id_producto`) VALUES
(34, 'fotos/armario01.jpg', 6),
(35, 'fotos/armario02.jpg', 6),
(36, 'fotos/armario03.jpg', 6),
(37, 'fotos/armario04.jpg', 6),
(38, 'fotos/cama01.jpg', 2),
(39, 'fotos/cama02.jpg', 2),
(40, 'fotos/cama03.jpg', 2),
(41, 'fotos/cama04.jpg', 2),
(42, 'fotos/dvd01.jpg', 7),
(43, 'fotos/dvd02.jpg', 7),
(44, 'fotos/dvd04.jpg', 7),
(45, 'fotos/escritorio01.jpg', 5),
(46, 'fotos/escritorio02.jpg', 5),
(47, 'fotos/escritorio03.jpg', 5),
(48, 'fotos/escritorio04.jpg', 5),
(49, 'fotos/lavadora01.jpg', 1),
(50, 'fotos/lavadora02.jpg', 1),
(51, 'fotos/lavadora03.jpg', 1),
(52, 'fotos/lavadora04.jpg', 1),
(53, 'fotos/mesa01.jpg', 4),
(54, 'fotos/mesa02.jpg', 4),
(55, 'fotos/mesa03.jpg', 4),
(56, 'fotos/mesa04.jpg', 4),
(57, 'fotos/silla01.png', 8),
(58, 'fotos/silla02.png', 8),
(59, 'fotos/silla03.png', 8),
(60, 'fotos/silla04.png', 8),
(61, 'fotos/tv01.jpg', 3),
(62, 'fotos/tv02.jpg', 3),
(63, 'fotos/tv03.jpg', 3),
(64, 'fotos/tv04.jpg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`, `existencia`, `id_categoria`, `descripcion`) VALUES
(1, 'lavadora', 3000.55, 50, 1, 'este fue un ejemplos lavadora'),
(2, 'cama', 1000.55, 30, 1, 'este es un ejemplo 2a'),
(3, 'tele nueva', 5000.99, 12, 3, 'este fue un ejemplo tele'),
(4, 'Mesa', 1000.99, 11, 3, 'este es un ejemplo mesa'),
(5, 'escritorio', 6000.7, 30, 3, 'este es un ejemplo 2 ver'),
(6, 'Armario', 13500.99, 5, 3, 'ejemplo de una descripcion'),
(7, 'dvd', 3000.7, 12, 1, 'este fue un ejemplos'),
(8, 'silla', 1000.12, 352, 3, 'este es un ejemplo 2a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibe`
--

CREATE TABLE `recibe` (
  `id_recibe` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recibe`
--

INSERT INTO `recibe` (`id_recibe`, `nombre`, `email`, `direccion`, `id_cliente`) VALUES
(1, 'Edwin TEST MOD', 'mod@mail.com', 'cll 77b -225', 2),
(2, 'Edwin TEST MOD', 'mod@mail.com', 'cll 77b -225', 2),
(3, 'Edwin TEST MOD', 'mod@mail.com', 'cll 77b -225', 2),
(4, 'Edwin TEST MOD', 'mod@mail.com', 'cll 77b -225', 2),
(5, 'Edwin TEST MOD', 'mod@mail.com', 'cll 77b -225', 2),
(6, 'Edwin TEST MOD', 'mod@mail.com', 'cll 77b -225', 2),
(7, 'Edwin TEST MOD', 'mod@mail.com', 'cll 77b -225', 2),
(8, 'Edwin TEST MOD', 'mod@mail.com', 'cll 77b -225', 2),
(9, 'Edwin TEST MOD', 'mod@mail.com', 'cll 77b -225', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `email`, `pass`, `nombre`) VALUES
(1, 'edw@mail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'edwin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_pago` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fecha`, `id_cliente`, `id_pago`) VALUES
(1, '2021-03-06 19:38:36', 2, '1'),
(2, '2021-03-06 19:45:14', 2, '1'),
(3, '2021-03-06 21:39:40', 2, '1'),
(4, '2021-03-07 12:07:49', 2, '1'),
(5, '2021-03-07 12:09:35', 2, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `kEmail` (`email`);

--
-- Indices de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD PRIMARY KEY (`id_detventa`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id_files`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_id_categoria` (`id_categoria`);

--
-- Indices de la tabla `recibe`
--
ALTER TABLE `recibe`
  ADD PRIMARY KEY (`id_recibe`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  MODIFY `id_detventa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id_files` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `recibe`
--
ALTER TABLE `recibe`
  MODIFY `id_recibe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD CONSTRAINT `detalleventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `detalleventas_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`);

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `recibe`
--
ALTER TABLE `recibe`
  ADD CONSTRAINT `recibe_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
