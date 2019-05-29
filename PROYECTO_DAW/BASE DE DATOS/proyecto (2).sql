-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2019 a las 04:50:41
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE `aula` (
  `Id_aula` int(11) NOT NULL,
  `Nombre_aula` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `Id_carrera` int(11) NOT NULL,
  `Nombre_carrera` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_prestamos`
--

CREATE TABLE `detalle_prestamos` (
  `Id_detalle_prestamo` int(11) NOT NULL,
  `Id_prestamoFK_detalle` int(11) DEFAULT NULL,
  `Id_equipoFK_detalle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `falla_equipo`
--

CREATE TABLE `falla_equipo` (
  `Id_falla` int(11) NOT NULL,
  `Id_equipoFK` int(11) DEFAULT NULL,
  `Tipo_falla` varchar(200) DEFAULT NULL,
  `Descripcion` blob,
  `Fecha_Reporte` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `Id_horario` int(11) NOT NULL,
  `Hora_inicio` varchar(50) DEFAULT NULL,
  `Hora_fin` varchar(50) DEFAULT NULL,
  `Hora_total` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `Id_marca` int(11) NOT NULL,
  `Nombre_marca` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `Id_modelo` int(11) NOT NULL,
  `Id_marcaFK` int(11) DEFAULT NULL,
  `Nombre_modelo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo_equipo`
--

CREATE TABLE `prestamo_equipo` (
  `Id_prstamo` int(11) NOT NULL,
  `CarnetFK_prestamo` varchar(8) DEFAULT NULL,
  `Id_aulaFK_prestamo` int(11) DEFAULT NULL,
  `Id_horariosFK_prestamo` int(11) DEFAULT NULL,
  `Fecha_prestamo` varchar(50) DEFAULT NULL,
  `Fecha_devolucion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_equipo`
--

CREATE TABLE `registro_equipo` (
  `Id_equipo` int(11) NOT NULL,
  `Id_modeloFK` int(11) DEFAULT NULL,
  `CarnetFK` varchar(8) DEFAULT NULL,
  `Id_carreraFk` int(11) DEFAULT NULL,
  `Nombre_equipo` varchar(100) NOT NULL,
  `Numero_serie` varchar(200) NOT NULL,
  `Tipo_de_equipo` varchar(200) DEFAULT NULL,
  `Descripcion` blob,
  `Fecha_Registro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Carnet` varchar(8) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `Apellido` varchar(200) DEFAULT NULL,
  `Correo` varchar(200) DEFAULT NULL,
  `Clave` varchar(10) DEFAULT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `acceso_sistema` int(11) NOT NULL,
  `es_administrador` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`Id_aula`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`Id_carrera`);

--
-- Indices de la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  ADD PRIMARY KEY (`Id_detalle_prestamo`),
  ADD KEY `fk_prestamo_detalle` (`Id_prestamoFK_detalle`),
  ADD KEY `fk_equipo_detalle` (`Id_equipoFK_detalle`);

--
-- Indices de la tabla `falla_equipo`
--
ALTER TABLE `falla_equipo`
  ADD PRIMARY KEY (`Id_falla`),
  ADD KEY `PK_equipo_falla` (`Id_equipoFK`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`Id_horario`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`Id_marca`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`Id_modelo`),
  ADD KEY `FK_marca` (`Id_marcaFK`);

--
-- Indices de la tabla `prestamo_equipo`
--
ALTER TABLE `prestamo_equipo`
  ADD PRIMARY KEY (`Id_prstamo`),
  ADD KEY `fk_carnet_prestamo` (`CarnetFK_prestamo`),
  ADD KEY `fk_horario_prestamo` (`Id_horariosFK_prestamo`),
  ADD KEY `fk_aula_prestamo` (`Id_aulaFK_prestamo`);

--
-- Indices de la tabla `registro_equipo`
--
ALTER TABLE `registro_equipo`
  ADD PRIMARY KEY (`Id_equipo`),
  ADD KEY `fk_carnet_equipo` (`CarnetFK`),
  ADD KEY `fk_carrera_equipo` (`Id_carreraFk`),
  ADD KEY `fk_modelo_equipo` (`Id_modeloFK`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Carnet`),
  ADD KEY `fk_carrera_usuario` (`id_carrera`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  ADD CONSTRAINT `fk_equipo_detalle` FOREIGN KEY (`Id_equipoFK_detalle`) REFERENCES `registro_equipo` (`Id_equipo`),
  ADD CONSTRAINT `fk_prestamo_detalle` FOREIGN KEY (`Id_prestamoFK_detalle`) REFERENCES `prestamo_equipo` (`Id_prstamo`);

--
-- Filtros para la tabla `falla_equipo`
--
ALTER TABLE `falla_equipo`
  ADD CONSTRAINT `PK_equipo_falla` FOREIGN KEY (`Id_equipoFK`) REFERENCES `registro_equipo` (`Id_equipo`);

--
-- Filtros para la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `FK_marca` FOREIGN KEY (`Id_marcaFK`) REFERENCES `marca` (`Id_marca`);

--
-- Filtros para la tabla `prestamo_equipo`
--
ALTER TABLE `prestamo_equipo`
  ADD CONSTRAINT `fk_aula_prestamo` FOREIGN KEY (`Id_aulaFK_prestamo`) REFERENCES `aula` (`Id_aula`),
  ADD CONSTRAINT `fk_carnet_prestamo` FOREIGN KEY (`CarnetFK_prestamo`) REFERENCES `usuario` (`Carnet`),
  ADD CONSTRAINT `fk_horario_prestamo` FOREIGN KEY (`Id_horariosFK_prestamo`) REFERENCES `horarios` (`Id_horario`);

--
-- Filtros para la tabla `registro_equipo`
--
ALTER TABLE `registro_equipo`
  ADD CONSTRAINT `fk_carnet_equipo` FOREIGN KEY (`CarnetFK`) REFERENCES `usuario` (`Carnet`),
  ADD CONSTRAINT `fk_carrera_equipo` FOREIGN KEY (`Id_carreraFk`) REFERENCES `carrera` (`Id_carrera`),
  ADD CONSTRAINT `fk_modelo_equipo` FOREIGN KEY (`Id_modeloFK`) REFERENCES `modelo` (`Id_modelo`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_carrera_usuario` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`Id_carrera`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
