-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2023 a las 23:56:39
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `anime`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `color` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `color`) VALUES
(1, 'Accion', '000000'),
(2, 'Artes Marciales', '575757'),
(3, 'Aventuras', 'f1f1f1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `sipnosis` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `fecha_insercion` date NOT NULL,
  `votos` float(1,1) NOT NULL,
  `anio` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`id`, `nombre`, `sipnosis`, `thumbnail`, `fecha_insercion`, `votos`, `anio`) VALUES
(1, 'un dia gris', '', 'https://picsum.photos/300/200', '2023-06-11', 0.0, 2023),
(2, 'una dia en', '', 'https://picsum.photos/300/200\r\n', '2023-06-11', 0.0, 2023),
(3, 'azul1', '', 'https://picsum.photos/300/200', '2023-06-11', 0.0, 2022),
(4, 'verde', '', 'https://picsum.photos/300/200', '2022-11-06', 0.0, 2023),
(5, 'rojo', '', 'https://picsum.photos/300/200', '2023-06-07', 0.0, 2023),
(6, 'blanco', '', 'https://picsum.photos/300/200', '2022-12-06', 0.0, 2022),
(7, 'super', '', 'https://picsum.photos/300/200', '2023-06-08', 0.0, 2023),
(8, 'los amigos', '', 'https://picsum.photos/300/200', '2023-05-06', 0.0, 2023),
(9, 'aviador', '', 'https://picsum.photos/300/200', '2023-06-09', 0.0, 2023),
(10, 'estrella', '', 'https://picsum.photos/300/200', '2023-06-11', 0.0, 2023);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_roles`
--

CREATE TABLE `rel_roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_status`
--

CREATE TABLE `rel_status` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_video_categoria`
--

CREATE TABLE `rel_video_categoria` (
  `id` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rel_video_lista`
--

CREATE TABLE `rel_video_lista` (
  `id` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `id_lista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `rol` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `contrasena`, `rol`, `status`, `usuario`) VALUES
(1, 'alex@gmail.com', '123456', 1, 1, 'alex');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `titulo` varchar(55) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `archivo` varchar(255) NOT NULL,
  `categoria` int(11) NOT NULL,
  `lista` int(4) NOT NULL,
  `fecha_insercion` date NOT NULL,
  `fecha_publicacion` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `orden` int(4) NOT NULL,
  `episodio` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`id`, `titulo`, `thumbnail`, `archivo`, `categoria`, `lista`, `fecha_insercion`, `fecha_publicacion`, `orden`, `episodio`) VALUES
(1, 'animene', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', 1, 1, '2023-06-07', '2023-06-07 16:42:50', 0, 8),
(2, 'animeplus', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', 1, 1, '2023-06-07', '2023-06-07 16:41:54', 0, 1),
(3, 'pelicula', 'https://picsum.photos/300/200', 'https://picsum.photos/300/200', 1, 1, '2023-06-07', '2023-06-07 16:47:24', 0, 2),
(4, 'sin valor', 'https://picsum.photos/300/200', '', 1, 1, '2023-06-07', '2023-06-14 11:41:46', 0, 0),
(5, 'dragon ball', 'https://picsum.photos/300/200', '', 1, 1, '2023-05-06', '2023-06-14 11:42:16', 0, 0),
(6, 'Naruto', 'https://picsum.photos/300/200', '', 1, 1, '2023-06-07', '2023-06-14 11:43:19', 0, 0),
(7, 'efecto m', 'https://picsum.photos/300/200', '', 1, 1, '2023-05-06', '2023-06-14 11:43:19', 0, 0),
(8, 'mejor monm', 'https://picsum.photos/300/200', '', 1, 1, '2023-06-07', '2023-06-14 11:44:37', 0, 0),
(9, 'major7', 'https://picsum.photos/300/200', '', 1, 1, '2023-06-08', '2023-06-14 11:45:28', 0, 0),
(10, 'neelix', 'https://picsum.photos/300/200', '', 1, 1, '2023-05-06', '2023-06-14 11:45:28', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rel_roles`
--
ALTER TABLE `rel_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rel_status`
--
ALTER TABLE `rel_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rel_video_categoria`
--
ALTER TABLE `rel_video_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rel_video_lista`
--
ALTER TABLE `rel_video_lista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `rel_roles`
--
ALTER TABLE `rel_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rel_status`
--
ALTER TABLE `rel_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rel_video_categoria`
--
ALTER TABLE `rel_video_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rel_video_lista`
--
ALTER TABLE `rel_video_lista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
