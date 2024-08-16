-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2024 a las 03:46:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zoologico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuidadores`
--

CREATE TABLE `cuidadores` (
  `id_cui` int(5) NOT NULL,
  `id_cuid` int(10) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL,
  `fecha_ingreso` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuidadores`
--

INSERT INTO `cuidadores` (`id_cui`, `id_cuid`, `nombre`, `direccion`, `telefono`, `fecha_ingreso`) VALUES
(1, NULL, 'Diego Ospina', 'calle 25 # 6-08', 0, '02/05/2024'),
(2, NULL, 'Fernando Sandoval', 'calle 37 # 42-12', 0, '15/06/2024'),
(3, NULL, 'Valentina Perez', 'calle7 # 19-35', 0, '28/06/2024'),
(4, NULL, 'Adriana Florez', 'Avenida 1 # 28-57', 0, '10/07/2024'),
(5, NULL, 'Cristian Fonseca', 'calle 10 # 8-07', 0, '27/07/2024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuidadores_especies`
--

CREATE TABLE `cuidadores_especies` (
  `id_Cuidadoresid_cui` int(5) NOT NULL,
  `id_Especiesid_espe` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `id_esp` int(5) NOT NULL,
  `id_espe` int(10) DEFAULT NULL,
  `Nombre_esp` varchar(20) DEFAULT NULL,
  `Nombre_cie` varchar(15) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`id_esp`, `id_espe`, `Nombre_esp`, `Nombre_cie`, `descripcion`) VALUES
(1, NULL, 'Elefante africano', 'sLoxodonta afri', 'El animal terrestre más grande del mundo, con gran'),
(2, NULL, 'Koala', 'Phascolarctos c', 'Marsupial arborícola, conocido por su dieta a base'),
(3, NULL, 'Ballena jorobada', 'Megaptera novae', 'Cetáceo conocido por sus largas aletas pectorales '),
(4, NULL, 'Camaleón pantera', 'Furcifer pardal', 'Reptil conocido por su capacidad de cambiar de col'),
(5, NULL, 'Mariposa monarca', 'Danaus plexippu', 'Insecto conocido por su larga migración y sus alas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies_habitat`
--

CREATE TABLE `especies_habitat` (
  `Especiesid_esp` int(5) NOT NULL,
  `Habitatid_hab` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias`
--

CREATE TABLE `guias` (
  `id_gui` int(5) NOT NULL,
  `id_guia` int(10) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL,
  `fecha_contratacion` varchar(20) DEFAULT NULL,
  `fecha_asignacion_espe` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `guias`
--

INSERT INTO `guias` (`id_gui`, `id_guia`, `nombre`, `direccion`, `telefono`, `fecha_contratacion`, `fecha_asignacion_espe`) VALUES
(1, NULL, 'Viviana Arrieta', 'Calle 53 # 25A-35 ', 0, 'dfgdfb', 'ergfd'),
(2, NULL, 'Valeria Fernandez', 'Calle 5 # 4-48 Barri', 0, 'dfgdfb', 'ergfd'),
(3, NULL, 'Alberto Villegas', 'Calle 8 # 7-40 Centr', 0, 'dfgdfb', 'ergfd'),
(4, NULL, 'Adrian Vegas', 'Avenida 3 norte # 50', 0, '(5) 351 -3401', 'ergfd'),
(5, NULL, 'Yolanda Padro', 'srgrsgsd', 0, '(1) 3814000', 'ergfd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias_itinerarios`
--

CREATE TABLE `guias_itinerarios` (
  `id_Gui_Iti` int(5) NOT NULL,
  `id_Guiasid_gui` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitat`
--

CREATE TABLE `habitat` (
  `id_habi` int(5) NOT NULL,
  `id_habit` int(10) DEFAULT NULL,
  `nombre` varchar(10) DEFAULT NULL,
  `clima` varchar(10) DEFAULT NULL,
  `tipo_vegetacion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitat`
--

INSERT INTO `habitat` (`id_habi`, `id_habit`, `nombre`, `clima`, `tipo_vegetacion`) VALUES
(1, NULL, 'Bosques tr', 'áreas cáli', 'Vegetación'),
(2, NULL, 'bosques de', 'ambiente f', 'eucaliptos'),
(3, NULL, 'piscinas c', 'Temperatur', 'N/A'),
(4, NULL, 'selva trop', 'temperatur', ' plantas t'),
(5, NULL, ' invernade', ' temperatu', 'Plantas co');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerarios`
--

CREATE TABLE `itinerarios` (
  `Id_iti` int(5) NOT NULL,
  `Id_itin` int(10) DEFAULT NULL,
  `codigo_iti` varchar(10) DEFAULT NULL,
  `Duracion_reco` varchar(20) DEFAULT NULL,
  `Longitud_inti` varchar(20) DEFAULT NULL,
  `max_visitantes` varchar(20) DEFAULT NULL,
  `numero_especies` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `itinerarios`
--

INSERT INTO `itinerarios` (`Id_iti`, `Id_itin`, `codigo_iti`, `Duracion_reco`, `Longitud_inti`, `max_visitantes`, `numero_especies`) VALUES
(1, NULL, '001', '2 HR', '135.789°', '100', '22'),
(2, NULL, '002', '1 HR', '-25.341°', '60', '12'),
(3, NULL, '003', '3HR', '89.123°', '30', '45'),
(4, NULL, '004', '50 MN', '172.567°', '85', '10'),
(5, NULL, '005', '4 HR', '-10.987°', '120', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerarios_zonas`
--

CREATE TABLE `itinerarios_zonas` (
  `id_Cuidadoresid_cui` int(5) NOT NULL,
  `id_Especiesid_espe` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `Id_zon` int(5) NOT NULL,
  `Id_zona` int(10) DEFAULT NULL,
  `Nombre` varchar(10) DEFAULT NULL,
  `Extencion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`Id_zon`, `Id_zona`, `Nombre`, `Extencion`) VALUES
(1, 1, 'Elefan', 'África sub'),
(2, 2, 'Kolag de e', 'bosques de'),
(3, 3, 'Océan', 'océanos'),
(4, 4, 'Camalg', 'Madagascar'),
(5, 5, 'Marig', 'América de');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  ADD PRIMARY KEY (`id_cui`),
  ADD KEY `fk_ep` (`id_cuid`);

--
-- Indices de la tabla `cuidadores_especies`
--
ALTER TABLE `cuidadores_especies`
  ADD PRIMARY KEY (`id_Cuidadoresid_cui`),
  ADD KEY `fk_ce` (`id_Especiesid_espe`);

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id_esp`),
  ADD KEY `fk_eh` (`id_espe`);

--
-- Indices de la tabla `especies_habitat`
--
ALTER TABLE `especies_habitat`
  ADD PRIMARY KEY (`Especiesid_esp`),
  ADD KEY `fk_he` (`Habitatid_hab`);

--
-- Indices de la tabla `guias`
--
ALTER TABLE `guias`
  ADD PRIMARY KEY (`id_gui`),
  ADD KEY `fk_gi` (`id_guia`);

--
-- Indices de la tabla `guias_itinerarios`
--
ALTER TABLE `guias_itinerarios`
  ADD PRIMARY KEY (`id_Gui_Iti`),
  ADD KEY `fk_ig` (`id_Guiasid_gui`);

--
-- Indices de la tabla `habitat`
--
ALTER TABLE `habitat`
  ADD PRIMARY KEY (`id_habi`);

--
-- Indices de la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  ADD PRIMARY KEY (`Id_iti`),
  ADD KEY `fk_iz` (`Id_itin`);

--
-- Indices de la tabla `itinerarios_zonas`
--
ALTER TABLE `itinerarios_zonas`
  ADD PRIMARY KEY (`id_Cuidadoresid_cui`),
  ADD KEY `fk_zi` (`id_Especiesid_espe`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`Id_zon`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  MODIFY `id_cui` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cuidadores_especies`
--
ALTER TABLE `cuidadores_especies`
  MODIFY `id_Cuidadoresid_cui` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `id_esp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `especies_habitat`
--
ALTER TABLE `especies_habitat`
  MODIFY `Especiesid_esp` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guias`
--
ALTER TABLE `guias`
  MODIFY `id_gui` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `guias_itinerarios`
--
ALTER TABLE `guias_itinerarios`
  MODIFY `id_Gui_Iti` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habitat`
--
ALTER TABLE `habitat`
  MODIFY `id_habi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  MODIFY `Id_iti` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `itinerarios_zonas`
--
ALTER TABLE `itinerarios_zonas`
  MODIFY `id_Cuidadoresid_cui` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `Id_zon` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  ADD CONSTRAINT `fk_ep` FOREIGN KEY (`id_cuid`) REFERENCES `cuidadores_especies` (`id_Cuidadoresid_cui`);

--
-- Filtros para la tabla `cuidadores_especies`
--
ALTER TABLE `cuidadores_especies`
  ADD CONSTRAINT `fk_ce` FOREIGN KEY (`id_Especiesid_espe`) REFERENCES `especies` (`id_esp`);

--
-- Filtros para la tabla `especies`
--
ALTER TABLE `especies`
  ADD CONSTRAINT `fk_eh` FOREIGN KEY (`id_espe`) REFERENCES `especies_habitat` (`Especiesid_esp`),
  ADD CONSTRAINT `fk_zonas` FOREIGN KEY (`id_espe`) REFERENCES `zonas` (`Id_zon`);

--
-- Filtros para la tabla `especies_habitat`
--
ALTER TABLE `especies_habitat`
  ADD CONSTRAINT `fk_he` FOREIGN KEY (`Habitatid_hab`) REFERENCES `habitat` (`id_habi`);

--
-- Filtros para la tabla `guias`
--
ALTER TABLE `guias`
  ADD CONSTRAINT `fk_gi` FOREIGN KEY (`id_guia`) REFERENCES `guias_itinerarios` (`id_Gui_Iti`);

--
-- Filtros para la tabla `guias_itinerarios`
--
ALTER TABLE `guias_itinerarios`
  ADD CONSTRAINT `fk_ig` FOREIGN KEY (`id_Guiasid_gui`) REFERENCES `itinerarios` (`Id_itin`);

--
-- Filtros para la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  ADD CONSTRAINT `fk_iz` FOREIGN KEY (`Id_itin`) REFERENCES `itinerarios_zonas` (`id_Cuidadoresid_cui`);

--
-- Filtros para la tabla `itinerarios_zonas`
--
ALTER TABLE `itinerarios_zonas`
  ADD CONSTRAINT `fk_zi` FOREIGN KEY (`id_Especiesid_espe`) REFERENCES `zonas` (`Id_zon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
