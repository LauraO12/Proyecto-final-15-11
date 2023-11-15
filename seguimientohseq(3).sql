-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2023 a las 18:36:50
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seguimientohseq`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_Administrador` bigint(10) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_Administrador`, `usuario`, `contrasena`, `Correo`) VALUES
(1, 'losorio170', 'Durley.1', 'losoriogi@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afp`
--

CREATE TABLE `afp` (
  `id_AFP` bigint(60) NOT NULL,
  `Nombre_AFP` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `afp`
--

INSERT INTO `afp` (`id_AFP`, `Nombre_AFP`) VALUES
(1, 'Porvenir'),
(2, 'Protección S.A'),
(3, 'Colfondos Pensiones y Cesantías.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alergias`
--

CREATE TABLE `alergias` (
  `id_Alergias` bigint(100) NOT NULL,
  `Nombre_Alergia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alergias`
--

INSERT INTO `alergias` (`id_Alergias`, `Nombre_Alergia`) VALUES
(1, 'no aplica'),
(2, 'POLEN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arl`
--

CREATE TABLE `arl` (
  `id_ARL` bigint(20) NOT NULL,
  `nombre_ARL` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `arl`
--

INSERT INTO `arl` (`id_ARL`, `nombre_ARL`) VALUES
(1, 'Bolivar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campo`
--

CREATE TABLE `campo` (
  `id_Campo` bigint(20) NOT NULL,
  `nombre_Campo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `campo`
--

INSERT INTO `campo` (`id_Campo`, `nombre_Campo`) VALUES
(1, 'campo centro'),
(2, 'campo Velasquez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_Cargo` bigint(50) NOT NULL,
  `Nombre_Cargo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id_Cargo`, `Nombre_Cargo`) VALUES
(1, 'Alturas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_Cursos` bigint(100) NOT NULL,
  `Nombre_Curso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_Cursos`, `Nombre_Curso`) VALUES
(1, 'curso TSA'),
(2, 'Alturas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eps`
--

CREATE TABLE `eps` (
  `id_Eps` bigint(20) NOT NULL,
  `nombre_Eps` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eps`
--

INSERT INTO `eps` (`id_Eps`, `nombre_Eps`) VALUES
(1, 'Famisanar'),
(2, 'Medimas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricante`
--

CREATE TABLE `fabricante` (
  `id_Fabricante` bigint(20) NOT NULL,
  `NombreFabricante` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fabricante`
--

INSERT INTO `fabricante` (`id_Fabricante`, `NombreFabricante`) VALUES
(1, 'xxxxxxx'),
(2, 'lllllll');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `id_lugar` bigint(50) NOT NULL,
  `nombre_lugar` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id_lugar`, `nombre_lugar`) VALUES
(1, 'cartagena'),
(2, 'Puerto Boyacá'),
(3, 'Bogotá D.C.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id_Medicamentos` bigint(100) NOT NULL,
  `Nombre_medicamento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id_Medicamentos`, `Nombre_medicamento`) VALUES
(1, 'No aplica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_Persona` bigint(40) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Cedula` bigint(10) NOT NULL,
  `fecha_Expedicion` date NOT NULL,
  `numero_Celular` bigint(10) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Retirado` varchar(45) NOT NULL,
  `nombre_Cemergencia` varchar(45) DEFAULT NULL,
  `apellido_Cemergencia` varchar(45) DEFAULT NULL,
  `celular_Cemergencia` double DEFAULT NULL,
  `id_AFP` bigint(60) NOT NULL,
  `id_Tipo_sangre` bigint(20) NOT NULL,
  `id_ARL` bigint(20) NOT NULL,
  `id_Eps` bigint(20) NOT NULL,
  `id_Medicamentos` bigint(100) NOT NULL,
  `id_Cargo` bigint(50) NOT NULL,
  `id_Alergias` bigint(100) NOT NULL,
  `idRol` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_Persona`, `Nombre`, `Apellido`, `Cedula`, `fecha_Expedicion`, `numero_Celular`, `Correo`, `Retirado`, `nombre_Cemergencia`, `apellido_Cemergencia`, `celular_Cemergencia`, `id_AFP`, `id_Tipo_sangre`, `id_ARL`, `id_Eps`, `id_Medicamentos`, `id_Cargo`, `id_Alergias`, `idRol`) VALUES
(1, 'Laura', 'Osorio', 1054538071, '2022-11-02', 3228897126, 'losoriogi@gmail.com', 'no', 'Durley', 'Giraldo', 3228897126, 1, 1, 1, 2, 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_cursos`
--

CREATE TABLE `persona_cursos` (
  `id_Persona_Cursos` bigint(40) NOT NULL,
  `id_Persona` bigint(40) NOT NULL,
  `id_Cursos` bigint(100) NOT NULL,
  `id_lugar` bigint(50) NOT NULL,
  `id_Campo` bigint(20) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `Nota` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona_cursos`
--

INSERT INTO `persona_cursos` (`id_Persona_Cursos`, `id_Persona`, `id_Cursos`, `id_lugar`, `id_Campo`, `fecha_vencimiento`, `Nota`) VALUES
(1, 1, 1, 3, 1, '2024-11-02', '80'),
(3, 1, 2, 3, 1, '2023-11-30', '90');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` bigint(100) NOT NULL,
  `Tipo_Rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `Tipo_Rol`) VALUES
(1, 'supervisor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_sangre`
--

CREATE TABLE `tipo_sangre` (
  `id_Tipo_sangre` bigint(20) NOT NULL,
  `tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_sangre`
--

INSERT INTO `tipo_sangre` (`id_Tipo_sangre`, `tipo`) VALUES
(1, 'B+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunas`
--

CREATE TABLE `vacunas` (
  `id_Vacunas` bigint(100) NOT NULL,
  `Nombre_Vacuna` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vacunas`
--

INSERT INTO `vacunas` (`id_Vacunas`, `Nombre_Vacuna`) VALUES
(1, 'Covid 19'),
(2, 'Tetanica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunas_persona`
--

CREATE TABLE `vacunas_persona` (
  `id_Vacunas_Persona` bigint(40) NOT NULL,
  `id_Vacunas` bigint(100) NOT NULL,
  `id_Persona` bigint(40) NOT NULL,
  `Dosis` bigint(10) DEFAULT NULL,
  `Fecha_Dosis` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vacunas_persona`
--

INSERT INTO `vacunas_persona` (`id_Vacunas_Persona`, `id_Vacunas`, `id_Persona`, `Dosis`, `Fecha_Dosis`) VALUES
(5, 1, 1, 1, '2021-10-06'),
(6, 2, 1, 1, '2022-10-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna_fabricante`
--

CREATE TABLE `vacuna_fabricante` (
  `id_Vacuna_Fabricante` bigint(20) NOT NULL,
  `id_Vacunas` bigint(100) NOT NULL,
  `id_Fabricante` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vacuna_fabricante`
--

INSERT INTO `vacuna_fabricante` (`id_Vacuna_Fabricante`, `id_Vacunas`, `id_Fabricante`) VALUES
(1, 1, 1),
(3, 2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_Administrador`);

--
-- Indices de la tabla `afp`
--
ALTER TABLE `afp`
  ADD PRIMARY KEY (`id_AFP`);

--
-- Indices de la tabla `alergias`
--
ALTER TABLE `alergias`
  ADD PRIMARY KEY (`id_Alergias`);

--
-- Indices de la tabla `arl`
--
ALTER TABLE `arl`
  ADD PRIMARY KEY (`id_ARL`);

--
-- Indices de la tabla `campo`
--
ALTER TABLE `campo`
  ADD PRIMARY KEY (`id_Campo`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_Cargo`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_Cursos`);

--
-- Indices de la tabla `eps`
--
ALTER TABLE `eps`
  ADD PRIMARY KEY (`id_Eps`);

--
-- Indices de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`id_Fabricante`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id_lugar`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id_Medicamentos`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_Persona`,`id_AFP`,`id_Tipo_sangre`,`id_ARL`,`id_Eps`,`id_Medicamentos`,`id_Cargo`,`id_Alergias`,`idRol`) USING BTREE,
  ADD KEY `fk_Persona_AFP1_idx` (`id_AFP`),
  ADD KEY `fk_Persona_Tipo_sangre1_idx` (`id_Tipo_sangre`),
  ADD KEY `fk_Persona_ARL1_idx` (`id_ARL`),
  ADD KEY `fk_Persona_Eps1_idx` (`id_Eps`),
  ADD KEY `fk_Persona_Medicamentos1_idx` (`id_Medicamentos`),
  ADD KEY `fk_Persona_Cargo1_idx` (`id_Cargo`),
  ADD KEY `fk_Persona_Alergias1_idx` (`id_Alergias`),
  ADD KEY `fk_Persona_Rol1_idx` (`idRol`);

--
-- Indices de la tabla `persona_cursos`
--
ALTER TABLE `persona_cursos`
  ADD PRIMARY KEY (`id_Persona_Cursos`,`id_Persona`,`id_Cursos`,`id_lugar`,`id_Campo`),
  ADD KEY `fk_Persona_has_Cursos_Cursos1_idx` (`id_Cursos`),
  ADD KEY `fk_Persona_has_Cursos_Persona1_idx` (`id_Persona`),
  ADD KEY `fk_Persona_has_Cursos_lugar1_idx` (`id_lugar`),
  ADD KEY `fk_Persona_has_Cursos_Campo1_idx` (`id_Campo`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `tipo_sangre`
--
ALTER TABLE `tipo_sangre`
  ADD PRIMARY KEY (`id_Tipo_sangre`);

--
-- Indices de la tabla `vacunas`
--
ALTER TABLE `vacunas`
  ADD PRIMARY KEY (`id_Vacunas`);

--
-- Indices de la tabla `vacunas_persona`
--
ALTER TABLE `vacunas_persona`
  ADD PRIMARY KEY (`id_Vacunas_Persona`,`id_Vacunas`,`id_Persona`),
  ADD KEY `fk_Vacunas_has_Persona_Persona1_idx` (`id_Persona`),
  ADD KEY `fk_Vacunas_has_Persona_Vacunas1_idx` (`id_Vacunas`);

--
-- Indices de la tabla `vacuna_fabricante`
--
ALTER TABLE `vacuna_fabricante`
  ADD PRIMARY KEY (`id_Vacuna_Fabricante`,`id_Vacunas`,`id_Fabricante`),
  ADD KEY `fk_Vacunas_has_Fabricante_Fabricante1_idx` (`id_Fabricante`),
  ADD KEY `fk_Vacunas_has_Fabricante_Vacunas1_idx` (`id_Vacunas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_Administrador` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `afp`
--
ALTER TABLE `afp`
  MODIFY `id_AFP` bigint(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `alergias`
--
ALTER TABLE `alergias`
  MODIFY `id_Alergias` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `arl`
--
ALTER TABLE `arl`
  MODIFY `id_ARL` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `campo`
--
ALTER TABLE `campo`
  MODIFY `id_Campo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_Cargo` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_Cursos` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `eps`
--
ALTER TABLE `eps`
  MODIFY `id_Eps` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `id_Fabricante` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id_lugar` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id_Medicamentos` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_Persona` bigint(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `persona_cursos`
--
ALTER TABLE `persona_cursos`
  MODIFY `id_Persona_Cursos` bigint(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_sangre`
--
ALTER TABLE `tipo_sangre`
  MODIFY `id_Tipo_sangre` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vacunas`
--
ALTER TABLE `vacunas`
  MODIFY `id_Vacunas` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vacunas_persona`
--
ALTER TABLE `vacunas_persona`
  MODIFY `id_Vacunas_Persona` bigint(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vacuna_fabricante`
--
ALTER TABLE `vacuna_fabricante`
  MODIFY `id_Vacuna_Fabricante` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_Persona_AFP1` FOREIGN KEY (`id_AFP`) REFERENCES `afp` (`id_AFP`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_ARL1` FOREIGN KEY (`id_ARL`) REFERENCES `arl` (`id_ARL`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_Alergias1` FOREIGN KEY (`id_Alergias`) REFERENCES `alergias` (`id_Alergias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_Cargo1` FOREIGN KEY (`id_Cargo`) REFERENCES `cargo` (`id_Cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_Eps1` FOREIGN KEY (`id_Eps`) REFERENCES `eps` (`id_Eps`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_Medicamentos1` FOREIGN KEY (`id_Medicamentos`) REFERENCES `medicamentos` (`id_Medicamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_Rol1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_Tipo_sangre1` FOREIGN KEY (`id_Tipo_sangre`) REFERENCES `tipo_sangre` (`id_Tipo_sangre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona_cursos`
--
ALTER TABLE `persona_cursos`
  ADD CONSTRAINT `fk_Persona_has_Cursos_Campo1` FOREIGN KEY (`id_Campo`) REFERENCES `campo` (`id_Campo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_has_Cursos_Cursos1` FOREIGN KEY (`id_Cursos`) REFERENCES `cursos` (`id_Cursos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_has_Cursos_Persona1` FOREIGN KEY (`id_Persona`) REFERENCES `persona` (`id_Persona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Persona_has_Cursos_lugar1` FOREIGN KEY (`id_lugar`) REFERENCES `lugar` (`id_lugar`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vacunas_persona`
--
ALTER TABLE `vacunas_persona`
  ADD CONSTRAINT `fk_Vacunas_has_Persona_Persona1` FOREIGN KEY (`id_Persona`) REFERENCES `persona` (`id_Persona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vacunas_has_Persona_Vacunas1` FOREIGN KEY (`id_Vacunas`) REFERENCES `vacunas` (`id_Vacunas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vacuna_fabricante`
--
ALTER TABLE `vacuna_fabricante`
  ADD CONSTRAINT `fk_Vacunas_has_Fabricante_Fabricante1` FOREIGN KEY (`id_Fabricante`) REFERENCES `fabricante` (`id_Fabricante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vacunas_has_Fabricante_Vacunas1` FOREIGN KEY (`id_Vacunas`) REFERENCES `vacunas` (`id_Vacunas`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
