-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2019 a las 02:42:43
-- Versión del servidor: 10.4.8-MariaDB
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
-- Base de datos: `maraton`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `descripcion` varchar(22) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `descripcion`, `nivel`) VALUES
(1, 'matematicas', 1),
(5, 'biologia', 1),
(7, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id_pregunta` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `opcion1` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `opcion2` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `opcion3` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `correcto` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id_pregunta`, `descripcion`, `opcion1`, `opcion2`, `opcion3`, `correcto`, `id_materia`) VALUES
(1, '¿cuanto es 2x5?', '4', '10', '6', 2, 1),
(2, '¿Quien fue Robert Hooke?', 'cientifico ingles', 'astronauta', 'doctor', 1, 5),
(3, '¿cual es la raiz cuadrada de 25?', '12', '3', '5', 3, 1),
(4, '¿quien fue Charles Darwin?', 'beisbolista', 'un naturalista ingles ', 'filosofo', 2, 5),
(5, '¿cuanto es 350x25?', '8750', '3200', '2509', 1, 1),
(6, '¿Que es una proteina?', 'cadena de atomos ', 'cadena de particulas', 'es una cadena de aminoacidos', 3, 5),
(7, '¿cuanto es la raiz cuadrada de 55?', '5.2598', '7.4161', '3.4875', 2, 1),
(8, '¿Que es una mutacion?', 'un cambio en la secuencia de un gen', 'proliferacion ', 'ecosistema', 2, 5),
(9, 'si tengo 1 sandwich y me compro otros 3 ¿cuantos tengo en total?', '4', '3', '6', 1, 1),
(10, '¿Que es un ecosistema?', 'celulas', 'seres vivos (plantas, animales)', 'aminoacidos', 2, 5),
(11, 'si tengo 4 tacos y me como 2 ¿cuantos tacos me quedan?', '4', '1', '2', 3, 1),
(12, '¿De que se trata la apoptosis?', 'proliferacion', 'no se ', 'fotosintesis', 1, 5),
(13, 'si tengo 40 chicles y me como 23¿cuantos me quedan?', '15', '22', '17', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(22) COLLATE utf8mb4_spanish_ci NOT NULL,
  `puntos` int(11) NOT NULL DEFAULT 0,
  `nivel` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `puntos`, `nivel`) VALUES
(1, 'nancyxd', 0, 1),
(3, '', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
