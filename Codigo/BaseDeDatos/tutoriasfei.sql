-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 04:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutoriasfei`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicos`
--

CREATE TABLE `academicos` (
  `idAcademico` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidoPaterno` varchar(50) NOT NULL,
  `apellidoMaterno` varchar(50) NOT NULL,
  `correoElectronicoPersonal` varchar(100) NOT NULL,
  `correoElectronicoInstitucional` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academicos`
--

INSERT INTO `academicos` (`idAcademico`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `correoElectronicoPersonal`, `correoElectronicoInstitucional`) VALUES
(1, 'Virginia', 'Lagunes', 'Barradas', 'vlagunes@gmail.com', 'vlagunes@gmail.com'),
(2, 'Miguel', 'Ortigoza', 'Clemente', 'mortigoza@uv.mx', 'mortigoza@uv.mx'),
(3, 'Ana Luz', 'Polo', 'Estrella', 'analu.polo@gmail.com', 'apolo@uv.mx'),
(4, 'Christian', 'Perez', 'Salazar', 'TEST', 'chperez@uv.mx'),
(5, 'Lizbeth', 'Garrido', 'Ramirez', 'ligarrido@outlook.com', 'ligarrido@uv.mx'),
(6, 'this', 'is', 'a', 'lmao', 'sdf'),
(7, 'María de los Ángeles', 'Arenas', 'Valdés', '123', '123'),
(10, 'asdf', 'asdf', 'asdf', 'asdf', 'asdf'),
(11, 'qwer', 'qwer', 'qwer', 'qwer', 'qwer'),
(12, 'zxcv', 'zxcv', 'zxcv', 'zxcv', 'zxcv'),
(13, 'poiu', 'poiu', 'poiu', 'poiu', 'poiu'),
(14, 'mnbv', 'mnbv', 'mnbv', 'mnvb', 'mnvb');

-- --------------------------------------------------------

--
-- Table structure for table `academicosroles`
--

CREATE TABLE `academicosroles` (
  `idAcademico` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  `idProgramaEducativo` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academicosroles`
--

INSERT INTO `academicosroles` (`idAcademico`, `idRol`, `idProgramaEducativo`, `idUsuario`) VALUES
(7, 3, 0, 1),
(3, 4, 0, 2),
(3, 4, 3, 2),
(4, 4, 0, 3),
(7, 0, 0, 1),
(5, 4, 0, 6),
(2, 4, 0, 5),
(4, 0, 5, 3),
(10, 11, 0, 7),
(10, 11, 2, 8),
(10, 11, 3, 9),
(10, 11, 4, 10),
(11, 11, 0, 11),
(11, 11, 3, 12),
(12, 11, 0, 13),
(12, 11, 2, 14),
(12, 11, 3, 15),
(12, 11, 4, 16),
(13, 4, 0, 17),
(13, 11, 2, 18),
(14, 11, 3, 19),
(14, 11, 4, 20),
(1, 4, 0, 4),
(10, 11, 0, 7),
(7, 4, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `academicosusuarios`
--

CREATE TABLE `academicosusuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(50) NOT NULL,
  `contrasenia` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academicosusuarios`
--

INSERT INTO `academicosusuarios` (`idUsuario`, `nombreUsuario`, `contrasenia`) VALUES
(1, 'angeles', '0123456789'),
(2, 'apolo', '0123456789'),
(3, 'cperez', '0123456789'),
(4, 'Restrepo', 'd5dfefb7624419014560efa411a391ef59c12dcf37be52c80f7c195b0b22b3e07be26fdf95a253c25723717feccae37d6498a2f6e151cc5980a58456147c0e33'),
(5, 'mortigoza', '0123456789'),
(6, 'lgarrido', '0123456789'),
(7, '0_asdfasdf', '8a9cb5636f14c37f921fbac139eabaca036088f4c8845edfed966486b3dc5cc0cf564a9b4d70b97ca208144f5ec90a6f93aeb2b028c6033f10c9c552a92e9432'),
(8, '2_asdfasdf', 'd62e00e8bb8feeb9500937e327512c4de99825961fd14b290e86d8007d80ea1973868a80041d438313041fa3a9a82660c9ce58280c03207425d82e8633aaa5e8'),
(9, '3_asdfasdf', '5a3ffd416ba5e95b6c15eb1d9c05ab6f37aab0eb83c9b24d5a0acc4b907f88a72885e0deab8fa7bb851b1c4a4cf90f1f58fb0ad4a76ad610454986d2586efa1c'),
(10, '4_asdfasdf', '8d02c44a48753427a2bd40b1c5153938f688389f51d1fe1a900320fa6bf896b74ed6f62617fd9d66b8b551295bd856cd0440fe4e0b00a3c6dedc59df0fb9a9ab'),
(11, '0_qwerqwer', 'e866a1e4e78029720d0dcd8897090b13cd1f9cac8c13bc8789323139fa54710c05d57d57270c42719abf2a2c8122c5137cd4dd2caadac84c7b8e9a6bc53e9075'),
(12, '3_qwerqwer', 'cf6d8f131030931b2ac7b27ae495efed0c5fd1557312fc61be304e6242dc6822e3fa26917ff9d6397b14eeb8f46e0afbbdacea52149aa765b11bd0304abab85b'),
(13, '0_zxcvzxcv', '75db0aa1a13e1445a78166126f3f1728e4462ffb768df775e54be50f9749f68242ff92d23d4a6526fdb437839fcebd5850c4e0b07156d18a08fb41e1957b1f9e'),
(14, '2_zxcvzxcv', 'eca2e54fe8b157b9b6b0b8475578e3bf1651328dbc03611e180bb94225e1741fe9a9508925ec0e3a600459bb6c0e3d0b669c678fb1e1c358e16e6f1467a3f9a5'),
(15, '3_zxcvzxcv', '206c525ed6ac64a9b621bc98167ff2aca171235da3862782ec7abf0a61e659d24f308c599d83a3fa8ad65d6a9cc34a0c19f78be4b5ccaa0ef97de5d1b1ed9bcb'),
(16, '4_zxcvzxcv', 'f4772a2cffc4b312161593462c0e74708952791d1bd81833cc0bcf63ae7665196e63c2393a5ed15ab401a9897bde276f75e883079a65597f40220caa0e05be8e'),
(17, 'arenasss', 'a2250df20f3e010e18d0ce7c555582f8c80d2ea032ca3c5e9ad12b7a2207668f0477ee0d9991aef37d6082ade783515ed5ef06ffbe67b5264d3d6539a88a3a2b'),
(18, '2_poiupoiu', '6e6378cfe5efb7ddcd37901951582820614f7820cc5747ea41b828ae45e27fb7703b84eff1a8f26c2cfc242eeb7b8bfd92acf7d5116c21b1ac3fd359d860682f'),
(19, '3_mnbvmnbv', '7f055f469f125044d384414e64b242422eadef9cc67758e78284ccc4ffd4db6014df5cf69e98a335939e5927aa7898c636eadc6ded3f2ac3dea3392e9b0ffd3e'),
(20, '4_mnbvmnbv', 'b50320ee8f800fcb14b354079d3bdd12acd6cfa2fbd826240e3a824af038ae0a864cf9a880642e6e32d77ad81ea11bc8915243997fc021b9de22fb0edf3e4b7e'),
(21, 'arenasTutora', '607007e344edb07b0e3f73d73d99b2fd85690b57b367a9226ddb27fda3a1490ea601a0065bc03a415bcf8daa91c327d0a44bc2193a44596c840920d68cff14b6');

-- --------------------------------------------------------

--
-- Table structure for table `estudiantes`
--

CREATE TABLE `estudiantes` (
  `matricula` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidoPaterno` varchar(50) NOT NULL,
  `apellidoMaterno` varchar(50) NOT NULL,
  `semestreQueCursa` int(11) NOT NULL,
  `correoElectronicoPersonal` varchar(100) NOT NULL,
  `correoElectronicoInstitucional` varchar(30) NOT NULL,
  `idProgramaEducativo` int(11) NOT NULL,
  `idAcademico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `estudiantes`
--

INSERT INTO `estudiantes` (`matricula`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `semestreQueCursa`, `correoElectronicoPersonal`, `correoElectronicoInstitucional`, `idProgramaEducativo`, `idAcademico`) VALUES
('S20000000', 'Pedro', 'Hernandez', 'Gonzalez', 2, 'pedro@gmail.com', 'zs20000000@estudiantes.uv.mx', 0, 7),
('S20000001', 'Maria', 'Guzman', 'Lopez', 1, 'maria@gmail.com', 'zs20000001@estudiantes.uv.mx', 3, 1),
('S20000002', 'Daniel', 'Pereira', 'Solis', 3, 'daniel@outlook.com', 'zs200000002@estudiantes.uv.mx', 3, 1),
('S20000003', 'Ernesto', 'Contreras', 'Velazco', 5, 'ernest@gmail.com', 'zs200000003@estudiantes.uv.mx', 3, 1),
('S20000004', 'Alma', 'Perez', 'Jimenez', 7, '4lm4@hotmail.com', 'zs200000004@estudiantes.uv.mx', 0, 7),
('S20000005', 'juan', 'perez', 'gomez', 1, '123', '654', 0, 1),
('S20000006', 'juan', 'perez', 'gomez', 1, '123', '654', 0, 1),
('S20000007', 'armando', 'perez', 'casas', 1, '123', '654', 0, 1),
('S20000008', 'helena', 'castillo', 'gomez', 1, '123', '654', 0, 7),
('S20000009', 'alexis', 'montes', 'pereira', 1, '123', '654', 0, 7),
('S20000010', 'alondra', 'suarez', 'gomez', 1, '123', '654', 0, 7),
('S20000011', 'JOSE', 'rodrigez', 'jimenez', 1, '123', '654', 0, 7),
('S20000012', 'JONATAN', 'salazar', 'alcocer', 1, '123', '654', 0, 7),
('S20000013', 'aLiCia', 'fernandez', 'gomez', 1, '123', '654', 0, 7),
('S20000014', 'Justo', 'perez', 'hernandez', 1, '123', '654', 0, 7),
('S20000039', 'asdf', 'asdf', 'asdf', 1, '', 'asdf', 0, 3),
('S20000069', '1243', '1234', '1234', 2, '1234', '1234', 0, 3),
('S20000070', 'a', 'a', 'a', 1, 'a', 'a', 0, 3),
('S20000071', 'a', 'a', 'a', 1, 'a', 'a', 0, 3),
('S20000072', 'a', 'a', 'a', 1, 'a', 'a', 0, 3),
('S20000073', 'a', 'a', 'a', 1, 'a', 'a', 0, 3),
('S20000074', 'a', 'a', 'a', 1, 'a', 'a', 0, 3),
('S20000075', 'a', 'a', 'a', 1, 'a', 'a', 0, 3),
('S20000076', 'a', 'a', 'a', 1, 'a', 'a', 0, 3),
('S20015745', 'Alejandro', 'Chacón', 'Fernández', 4, 'maledict@proton.me', 'zs20015745@estudiantes.uv.mx', 0, 3),
('S20015748', 'Nombre', 'Apellido', 'Otroapellido', 4, 'asdf', 'zs20015748@estudiantes.uv.mx', 0, 3),
('S20015757', 's', 'ss', 's', 2, 's', 'zs20015757@estudiantes.uv.mx', 0, 3),
('S20015799', 'Alejandsro', 'asdf', 'sdaf', 2, 'fdsa', 'zs20015799@estudiantes.uv.mx', 0, NULL),
('S20016045', 'Montserrat', 'Guzman', 'Salas', 2, 'asdf', 'zs20016045@estudiantes.uv.mx', 0, 4),
('S30000000', 'asdf', 'asdf', 'asdf', 1, '', 'asdf', 0, 3),
('S30000001', 'asdf', 'asdf', 'asdf', 1, '', 'asdf', 0, 3),
('S30000002', 'asdf', 'asdf', 'asdf', 2, '', 'asdf', 0, 3),
('S30000003', 'asdf', 'asdf', 'asdf', 1, '', 'asdf', 0, 3),
('S300000055', 'asdf', 'asdf', 'asdf', 3, '', 'asdf', 0, 3),
('S30015745', 'ESTO', 'ES', 'UN', 0, 'TEST', 'YEP', 0, 3),
('S30015746', 'fdsa', 'lkjh', 'lkjh', 2, 'iuy', 'zs30015746@estudiantes.uv.mx', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `experienciaseducativas`
--

CREATE TABLE `experienciaseducativas` (
  `idExperienciaEducativa` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experienciaseducativas`
--

INSERT INTO `experienciaseducativas` (`idExperienciaEducativa`, `nombre`) VALUES
(1, 'Programacion'),
(2, 'Matematicas Discretas'),
(3, 'Redes'),
(4, 'Estructuras de Datos'),
(5, 'Bases de Datos');

-- --------------------------------------------------------

--
-- Table structure for table `experienciaseducativasacademicos`
--

CREATE TABLE `experienciaseducativasacademicos` (
  `NRC` int(11) NOT NULL,
  `idExperienciaEducativa` int(11) NOT NULL,
  `idAcademico` int(11) DEFAULT NULL,
  `idProgramaEducativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experienciaseducativasacademicos`
--

INSERT INTO `experienciaseducativasacademicos` (`NRC`, `idExperienciaEducativa`, `idAcademico`, `idProgramaEducativo`) VALUES
(78452, 3, 2, 3),
(78459, 1, 1, 3),
(78461, 2, 4, 2),
(78542, 1, 4, 0),
(78544, 2, 3, 0),
(91457, 5, 4, 3),
(91458, 4, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `experienciaseducativasestudiantes`
--

CREATE TABLE `experienciaseducativasestudiantes` (
  `NRC` int(11) NOT NULL,
  `matricula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experienciaseducativasestudiantes`
--

INSERT INTO `experienciaseducativasestudiantes` (`NRC`, `matricula`) VALUES
(78452, 'S20000001'),
(78452, 'S20000005');

-- --------------------------------------------------------

--
-- Table structure for table `fechastutorias`
--

CREATE TABLE `fechastutorias` (
  `idFechaTutoria` int(11) NOT NULL,
  `fechaTutoria` date NOT NULL,
  `fechaCierreDeReporte` date NOT NULL,
  `numeroSesion` int(11) NOT NULL,
  `idPeriodo` int(11) NOT NULL,
  `idProgramaEducativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fechastutorias`
--

INSERT INTO `fechastutorias` (`idFechaTutoria`, `fechaTutoria`, `fechaCierreDeReporte`, `numeroSesion`, `idPeriodo`, `idProgramaEducativo`) VALUES
(7, '2022-05-03', '2022-06-09', 1, 1, 0),
(8, '2022-05-09', '2022-06-05', 2, 1, 0),
(9, '2022-05-16', '2022-06-05', 3, 1, 0),
(10, '2022-05-10', '2022-06-06', 1, 1, 2),
(11, '2022-05-17', '2022-06-06', 2, 1, 2),
(12, '2022-05-24', '2022-06-06', 3, 1, 2),
(24, '2022-05-19', '2022-05-20', 4, 1, 4),
(25, '2023-02-04', '2023-02-06', 1, 4, 0),
(26, '2023-02-09', '2023-07-01', 2, 4, 0),
(27, '2023-02-16', '2023-07-01', 3, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `horarios`
--

CREATE TABLE `horarios` (
  `idHorario` int(11) NOT NULL,
  `asistencia` tinyint(1) NOT NULL,
  `riesgo` tinyint(1) NOT NULL,
  `horaTutoria` time NOT NULL,
  `idTutoriaAcademica` int(11) NOT NULL,
  `matricula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `horarios`
--

INSERT INTO `horarios` (`idHorario`, `asistencia`, `riesgo`, `horaTutoria`, `idTutoriaAcademica`, `matricula`) VALUES
(1, 1, 1, '20:00:00', 1, 'S20000000'),
(2, 0, 0, '04:00:00', 2, 'S20000000'),
(3, 0, 0, '00:00:00', 2, 'S20000004'),
(4, 0, 0, '00:00:00', 2, 'S20000008'),
(5, 0, 0, '00:00:00', 2, 'S20000013'),
(6, 0, 0, '00:00:00', 2, 'S20000009'),
(7, 0, 0, '00:00:00', 2, 'S20000007'),
(8, 0, 0, '00:00:00', 2, 'S20000006'),
(9, 0, 0, '00:00:00', 2, 'S20000005'),
(10, 0, 0, '00:00:00', 2, 'S20000014'),
(11, 0, 0, '00:00:00', 2, 'S20000011'),
(12, 0, 0, '00:00:00', 2, 'S20000012'),
(13, 0, 0, '00:00:00', 2, 'S20000010');

-- --------------------------------------------------------

--
-- Table structure for table `periodosescolares`
--

CREATE TABLE `periodosescolares` (
  `idPeriodo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periodosescolares`
--

INSERT INTO `periodosescolares` (`idPeriodo`, `nombre`, `fechaInicio`, `fechaFin`) VALUES
(1, 'Febrero 2022 - Junio 2022', '2022-02-02', '2022-06-05'),
(2, 'Mayo 2025 - Mayo 2025', '2025-05-13', '2025-05-22'),
(3, 'Agosto 2022 - Enero 2023', '2022-08-01', '2023-01-01'),
(4, 'Febrero 2023 - Julio 2023', '2023-02-02', '2023-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `problematicas`
--

CREATE TABLE `problematicas` (
  `idProblematica` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `NRC` int(11) NOT NULL,
  `matricula` varchar(10) NOT NULL,
  `idTutoriaAcademica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `problematicas`
--

INSERT INTO `problematicas` (`idProblematica`, `titulo`, `descripcion`, `NRC`, `matricula`, `idTutoriaAcademica`) VALUES
(1, 'asdf', 'asdf', 78459, 'S20000000', 1),
(2, 'qwer', 'qwer', 78542, 'S20000001', 1),
(3, 'asdf', 'asdf', 78459, 'S20000000', 1),
(4, 'asdf', 'asdf', 78459, 'S20000000', 1),
(5, 'asdf', 'asdf', 78459, 'S20000076', 1),
(6, 'asdf', 'asdf', 78459, 'S20000007', 1),
(7, 'asdf', 'asdf', 78459, 'S20000075', 1),
(8, 'asdf', 'asdf', 78459, 'S20000012', 1),
(9, 'asdf', 'asdf', 78459, 'S20000007', 1),
(10, 'asdf', 'asdf', 78459, 'S30000000', 1),
(11, 'qwer', 'qwer', 78542, 'S20000001', 1),
(12, 'qwer', 'qwer', 78542, 'S20000001', 1),
(13, 'qwer', 'qwer', 78542, 'S20000001', 1),
(14, 'qwer', 'qwer', 78542, 'S20000075', 1),
(15, 'qwer', 'qwer', 78542, 'S20000069', 1),
(16, 'qwer', 'qwer', 78542, 'S20015799', 1),
(22, 'sadfqwersd', 'fg2	34	24', 78452, 'S20000005', 1);

-- --------------------------------------------------------

--
-- Table structure for table `programaseducativos`
--

CREATE TABLE `programaseducativos` (
  `idProgramaEducativo` int(11) NOT NULL,
  `nombreProgramaEducativo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programaseducativos`
--

INSERT INTO `programaseducativos` (`idProgramaEducativo`, `nombreProgramaEducativo`) VALUES
(0, 'Ingeniería de Software'),
(2, 'Redes y Servicios de Cómputo'),
(3, 'Tecnologías Computacionales'),
(4, 'Ciencias y Técnicas Estadísticas'),
(5, 'Sin programa');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `nombreRol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`idRol`, `nombreRol`) VALUES
(0, 'Profesor'),
(2, 'Jefe de Carrera'),
(3, 'Coordinador de Tutorías Académicas'),
(4, 'Tutor Académico'),
(9, 'Administrador'),
(11, 'Sin rol');

-- --------------------------------------------------------

--
-- Table structure for table `soluciones`
--

CREATE TABLE `soluciones` (
  `idSolucion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `idAcademico` int(11) NOT NULL,
  `idProblematica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tutoriasacademicas`
--

CREATE TABLE `tutoriasacademicas` (
  `idTutoriaAcademica` int(11) NOT NULL,
  `comentarioGeneral` varchar(1000) NOT NULL,
  `idFechaTutoria` int(11) NOT NULL,
  `idAcademico` int(11) NOT NULL,
  `reporteEntregado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutoriasacademicas`
--

INSERT INTO `tutoriasacademicas` (`idTutoriaAcademica`, `comentarioGeneral`, `idFechaTutoria`, `idAcademico`, `reporteEntregado`) VALUES
(1, 'sadfasdf', 9, 1, 1),
(2, 'Sin comentario', 7, 7, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicos`
--
ALTER TABLE `academicos`
  ADD PRIMARY KEY (`idAcademico`);

--
-- Indexes for table `academicosroles`
--
ALTER TABLE `academicosroles`
  ADD KEY `idAcademico` (`idAcademico`),
  ADD KEY `idRol` (`idRol`),
  ADD KEY `idProgramaEducativo` (`idProgramaEducativo`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `academicosusuarios`
--
ALTER TABLE `academicosusuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `idProgramaEducativo` (`idProgramaEducativo`),
  ADD KEY `idAcademico` (`idAcademico`);

--
-- Indexes for table `experienciaseducativas`
--
ALTER TABLE `experienciaseducativas`
  ADD PRIMARY KEY (`idExperienciaEducativa`);

--
-- Indexes for table `experienciaseducativasacademicos`
--
ALTER TABLE `experienciaseducativasacademicos`
  ADD PRIMARY KEY (`NRC`),
  ADD KEY `experienciaseducativasacademicos_ibfk_1` (`idAcademico`),
  ADD KEY `experienciaseducativasacademicos_ibfk_2` (`idExperienciaEducativa`),
  ADD KEY `experienciaseducativasacademicos_ibfk_3` (`idProgramaEducativo`);

--
-- Indexes for table `experienciaseducativasestudiantes`
--
ALTER TABLE `experienciaseducativasestudiantes`
  ADD KEY `NRC` (`NRC`),
  ADD KEY `matricula` (`matricula`);

--
-- Indexes for table `fechastutorias`
--
ALTER TABLE `fechastutorias`
  ADD PRIMARY KEY (`idFechaTutoria`),
  ADD KEY `idPeriodo` (`idPeriodo`),
  ADD KEY `idProgramaEducativo` (`idProgramaEducativo`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`idHorario`),
  ADD KEY `idTutoriaAcademica` (`idTutoriaAcademica`),
  ADD KEY `matricula` (`matricula`);

--
-- Indexes for table `periodosescolares`
--
ALTER TABLE `periodosescolares`
  ADD PRIMARY KEY (`idPeriodo`);

--
-- Indexes for table `problematicas`
--
ALTER TABLE `problematicas`
  ADD PRIMARY KEY (`idProblematica`),
  ADD KEY `NRC` (`NRC`),
  ADD KEY `matricula` (`matricula`),
  ADD KEY `idTutoriaAcademica` (`idTutoriaAcademica`);

--
-- Indexes for table `programaseducativos`
--
ALTER TABLE `programaseducativos`
  ADD PRIMARY KEY (`idProgramaEducativo`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indexes for table `soluciones`
--
ALTER TABLE `soluciones`
  ADD PRIMARY KEY (`idSolucion`),
  ADD KEY `idAcademico` (`idAcademico`),
  ADD KEY `idProblematica` (`idProblematica`);

--
-- Indexes for table `tutoriasacademicas`
--
ALTER TABLE `tutoriasacademicas`
  ADD PRIMARY KEY (`idTutoriaAcademica`),
  ADD KEY `idFechaTutoria` (`idFechaTutoria`),
  ADD KEY `idAcademico` (`idAcademico`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicos`
--
ALTER TABLE `academicos`
  MODIFY `idAcademico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `academicosusuarios`
--
ALTER TABLE `academicosusuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `experienciaseducativas`
--
ALTER TABLE `experienciaseducativas`
  MODIFY `idExperienciaEducativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fechastutorias`
--
ALTER TABLE `fechastutorias`
  MODIFY `idFechaTutoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `idHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `periodosescolares`
--
ALTER TABLE `periodosescolares`
  MODIFY `idPeriodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `problematicas`
--
ALTER TABLE `problematicas`
  MODIFY `idProblematica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `programaseducativos`
--
ALTER TABLE `programaseducativos`
  MODIFY `idProgramaEducativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `soluciones`
--
ALTER TABLE `soluciones`
  MODIFY `idSolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutoriasacademicas`
--
ALTER TABLE `tutoriasacademicas`
  MODIFY `idTutoriaAcademica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academicosroles`
--
ALTER TABLE `academicosroles`
  ADD CONSTRAINT `academicosroles_ibfk_1` FOREIGN KEY (`idAcademico`) REFERENCES `academicos` (`idAcademico`) ON UPDATE CASCADE,
  ADD CONSTRAINT `academicosroles_ibfk_2` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON UPDATE CASCADE,
  ADD CONSTRAINT `academicosroles_ibfk_3` FOREIGN KEY (`idProgramaEducativo`) REFERENCES `programaseducativos` (`idProgramaEducativo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `academicosroles_ibfk_4` FOREIGN KEY (`idUsuario`) REFERENCES `academicosusuarios` (`idUsuario`) ON UPDATE CASCADE;

--
-- Constraints for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`idProgramaEducativo`) REFERENCES `programaseducativos` (`idProgramaEducativo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `estudiantes_ibfk_2` FOREIGN KEY (`idAcademico`) REFERENCES `academicos` (`idAcademico`) ON UPDATE CASCADE;

--
-- Constraints for table `experienciaseducativasacademicos`
--
ALTER TABLE `experienciaseducativasacademicos`
  ADD CONSTRAINT `experienciaseducativasacademicos_ibfk_1` FOREIGN KEY (`idAcademico`) REFERENCES `academicos` (`idAcademico`) ON UPDATE CASCADE,
  ADD CONSTRAINT `experienciaseducativasacademicos_ibfk_2` FOREIGN KEY (`idExperienciaEducativa`) REFERENCES `experienciaseducativas` (`idExperienciaEducativa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `experienciaseducativasacademicos_ibfk_3` FOREIGN KEY (`idProgramaEducativo`) REFERENCES `programaseducativos` (`idProgramaEducativo`) ON UPDATE CASCADE;

--
-- Constraints for table `experienciaseducativasestudiantes`
--
ALTER TABLE `experienciaseducativasestudiantes`
  ADD CONSTRAINT `experienciaseducativasestudiantes_ibfk_1` FOREIGN KEY (`NRC`) REFERENCES `experienciaseducativasacademicos` (`NRC`) ON UPDATE CASCADE,
  ADD CONSTRAINT `experienciaseducativasestudiantes_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `estudiantes` (`matricula`) ON UPDATE CASCADE;

--
-- Constraints for table `fechastutorias`
--
ALTER TABLE `fechastutorias`
  ADD CONSTRAINT `fechastutorias_ibfk_1` FOREIGN KEY (`idPeriodo`) REFERENCES `periodosescolares` (`idPeriodo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fechastutorias_ibfk_2` FOREIGN KEY (`idProgramaEducativo`) REFERENCES `programaseducativos` (`idProgramaEducativo`) ON UPDATE CASCADE;

--
-- Constraints for table `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`idTutoriaAcademica`) REFERENCES `tutoriasacademicas` (`idTutoriaAcademica`) ON UPDATE CASCADE,
  ADD CONSTRAINT `horarios_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `estudiantes` (`matricula`) ON UPDATE CASCADE;

--
-- Constraints for table `problematicas`
--
ALTER TABLE `problematicas`
  ADD CONSTRAINT `problematicas_ibfk_1` FOREIGN KEY (`NRC`) REFERENCES `experienciaseducativasacademicos` (`NRC`) ON UPDATE CASCADE,
  ADD CONSTRAINT `problematicas_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `estudiantes` (`matricula`) ON UPDATE CASCADE,
  ADD CONSTRAINT `problematicas_ibfk_3` FOREIGN KEY (`idTutoriaAcademica`) REFERENCES `tutoriasacademicas` (`idTutoriaAcademica`);

--
-- Constraints for table `soluciones`
--
ALTER TABLE `soluciones`
  ADD CONSTRAINT `soluciones_ibfk_1` FOREIGN KEY (`idAcademico`) REFERENCES `academicos` (`idAcademico`) ON UPDATE CASCADE,
  ADD CONSTRAINT `soluciones_ibfk_2` FOREIGN KEY (`idProblematica`) REFERENCES `problematicas` (`idProblematica`);

--
-- Constraints for table `tutoriasacademicas`
--
ALTER TABLE `tutoriasacademicas`
  ADD CONSTRAINT `tutoriasacademicas_ibfk_1` FOREIGN KEY (`idFechaTutoria`) REFERENCES `fechastutorias` (`idFechaTutoria`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tutoriasacademicas_ibfk_2` FOREIGN KEY (`idAcademico`) REFERENCES `academicos` (`idAcademico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
