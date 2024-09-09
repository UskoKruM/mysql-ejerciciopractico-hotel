-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-09-2024 a las 03:49:02
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
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id` char(36) NOT NULL,
  `cliente_id` smallint(5) UNSIGNED NOT NULL,
  `habitacion_id` smallint(3) UNSIGNED NOT NULL,
  `preciodiario` decimal(5,2) UNSIGNED NOT NULL,
  `fechaentrada` date NOT NULL,
  `dias` smallint(3) UNSIGNED NOT NULL,
  `total` decimal(7,2) UNSIGNED NOT NULL,
  `mediopago_id` tinyint(1) UNSIGNED NOT NULL,
  `concluido` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Almacena los datos de los alquileres.';

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`id`, `cliente_id`, `habitacion_id`, `preciodiario`, `fechaentrada`, `dias`, `total`, `mediopago_id`, `concluido`) VALUES
('0076c3d6-b7db-11ee-944c-d8bbc16a7388', 6, 1, 33.00, '2023-01-03', 10, 330.00, 3, 1),
('00792a82-b7db-11ee-944c-d8bbc16a7388', 16, 2, 42.00, '2023-01-01', 14, 588.00, 2, 1),
('007a26ac-b7db-11ee-944c-d8bbc16a7388', 2, 3, 43.00, '2023-01-23', 3, 129.00, 3, 1),
('007b0ee3-b7db-11ee-944c-d8bbc16a7388', 8, 7, 44.00, '2023-01-08', 9, 396.00, 2, 1),
('007bfac0-b7db-11ee-944c-d8bbc16a7388', 14, 8, 36.00, '2023-01-11', 13, 468.00, 2, 1),
('007ce810-b7db-11ee-944c-d8bbc16a7388', 5, 9, 39.00, '2023-01-22', 6, 234.00, 2, 1),
('007dd3ab-b7db-11ee-944c-d8bbc16a7388', 15, 13, 38.00, '2023-01-11', 6, 228.00, 1, 1),
('007ebd86-b7db-11ee-944c-d8bbc16a7388', 3, 14, 42.00, '2023-01-01', 13, 546.00, 1, 1),
('007fa0e9-b7db-11ee-944c-d8bbc16a7388', 1, 4, 57.00, '2023-01-03', 12, 684.00, 3, 1),
('00809af5-b7db-11ee-944c-d8bbc16a7388', 18, 5, 54.00, '2023-01-24', 10, 540.00, 1, 1),
('00818d70-b7db-11ee-944c-d8bbc16a7388', 6, 6, 49.00, '2023-01-13', 8, 392.00, 3, 1),
('00828097-b7db-11ee-944c-d8bbc16a7388', 3, 10, 47.00, '2023-01-19', 6, 282.00, 2, 1),
('00836a7d-b7db-11ee-944c-d8bbc16a7388', 4, 11, 51.00, '2023-01-27', 9, 459.00, 2, 1),
('008458d4-b7db-11ee-944c-d8bbc16a7388', 2, 12, 50.00, '2023-01-06', 5, 250.00, 1, 1),
('008545a2-b7db-11ee-944c-d8bbc16a7388', 18, 15, 53.00, '2023-01-08', 5, 265.00, 3, 1),
('008636b0-b7db-11ee-944c-d8bbc16a7388', 14, 16, 56.00, '2023-01-28', 14, 784.00, 1, 1),
('008720cd-b7db-11ee-944c-d8bbc16a7388', 16, 19, 63.00, '2023-01-10', 3, 189.00, 3, 1),
('008806e3-b7db-11ee-944c-d8bbc16a7388', 10, 20, 70.00, '2023-01-16', 14, 980.00, 2, 1),
('0088f614-b7db-11ee-944c-d8bbc16a7388', 5, 17, 77.00, '2023-01-12', 4, 308.00, 2, 1),
('0089e8db-b7db-11ee-944c-d8bbc16a7388', 14, 18, 76.00, '2023-01-18', 13, 988.00, 1, 1),
('008ad1d2-b7db-11ee-944c-d8bbc16a7388', 8, 21, 72.00, '2023-01-14', 5, 360.00, 2, 1),
('008bb66d-b7db-11ee-944c-d8bbc16a7388', 4, 22, 75.00, '2023-01-25', 13, 975.00, 2, 1),
('008c9c80-b7db-11ee-944c-d8bbc16a7388', 4, 23, 139.00, '2023-01-16', 2, 278.00, 3, 1),
('02b01168-b7de-11ee-944c-d8bbc16a7388', 1, 1, 45.00, '2023-11-08', 3, 135.00, 2, 1),
('02b1e14b-b7de-11ee-944c-d8bbc16a7388', 15, 2, 45.00, '2023-11-07', 10, 450.00, 2, 1),
('02b2c950-b7de-11ee-944c-d8bbc16a7388', 12, 3, 37.00, '2023-11-18', 2, 74.00, 1, 1),
('02b3b787-b7de-11ee-944c-d8bbc16a7388', 5, 7, 34.00, '2023-11-02', 8, 272.00, 1, 1),
('02b4affa-b7de-11ee-944c-d8bbc16a7388', 3, 8, 41.00, '2023-11-25', 15, 615.00, 2, 1),
('02b5ac5c-b7de-11ee-944c-d8bbc16a7388', 14, 9, 41.00, '2023-11-04', 9, 369.00, 1, 1),
('02b69a0f-b7de-11ee-944c-d8bbc16a7388', 2, 13, 40.00, '2023-11-22', 14, 560.00, 3, 1),
('02b78f35-b7de-11ee-944c-d8bbc16a7388', 5, 14, 34.00, '2023-11-22', 2, 68.00, 3, 1),
('02b89014-b7de-11ee-944c-d8bbc16a7388', 12, 4, 58.00, '2023-11-16', 6, 348.00, 3, 1),
('02b97dbd-b7de-11ee-944c-d8bbc16a7388', 3, 5, 46.00, '2023-11-27', 12, 552.00, 3, 1),
('02ba69b9-b7de-11ee-944c-d8bbc16a7388', 5, 6, 48.00, '2023-11-14', 1, 48.00, 1, 1),
('02bb523c-b7de-11ee-944c-d8bbc16a7388', 17, 10, 46.00, '2023-11-27', 13, 598.00, 2, 1),
('02bc3a4b-b7de-11ee-944c-d8bbc16a7388', 2, 11, 55.00, '2023-11-12', 3, 165.00, 3, 1),
('02bd1aa4-b7de-11ee-944c-d8bbc16a7388', 2, 12, 53.00, '2023-11-06', 5, 265.00, 2, 1),
('02be7517-b7de-11ee-944c-d8bbc16a7388', 12, 15, 57.00, '2023-11-19', 6, 342.00, 2, 1),
('02bf5e56-b7de-11ee-944c-d8bbc16a7388', 15, 16, 51.00, '2023-11-20', 6, 306.00, 2, 1),
('02c04968-b7de-11ee-944c-d8bbc16a7388', 17, 19, 64.00, '2023-11-05', 12, 768.00, 2, 1),
('02c13caa-b7de-11ee-944c-d8bbc16a7388', 16, 20, 75.00, '2023-11-01', 13, 975.00, 2, 1),
('02c22a6d-b7de-11ee-944c-d8bbc16a7388', 1, 17, 75.00, '2023-11-13', 9, 675.00, 3, 1),
('02c31603-b7de-11ee-944c-d8bbc16a7388', 17, 18, 72.00, '2023-11-22', 3, 216.00, 3, 1),
('02c40b0c-b7de-11ee-944c-d8bbc16a7388', 7, 21, 81.00, '2023-11-06', 14, 1134.00, 2, 1),
('02c4eda1-b7de-11ee-944c-d8bbc16a7388', 18, 22, 76.00, '2023-11-01', 12, 912.00, 2, 1),
('02c5d80c-b7de-11ee-944c-d8bbc16a7388', 14, 23, 135.00, '2023-11-12', 15, 2025.00, 3, 1),
('0c4bc240-b7de-11ee-944c-d8bbc16a7388', 11, 1, 43.00, '2023-12-07', 15, 645.00, 2, 1),
('0c567f9f-b7de-11ee-944c-d8bbc16a7388', 18, 2, 43.00, '2023-12-06', 10, 430.00, 2, 1),
('0c578581-b7de-11ee-944c-d8bbc16a7388', 15, 3, 41.00, '2023-12-14', 5, 205.00, 3, 1),
('0c587df2-b7de-11ee-944c-d8bbc16a7388', 10, 7, 36.00, '2023-12-11', 13, 468.00, 3, 1),
('0c597041-b7de-11ee-944c-d8bbc16a7388', 14, 8, 45.00, '2023-12-14', 12, 540.00, 1, 1),
('0c5a6551-b7de-11ee-944c-d8bbc16a7388', 7, 9, 34.00, '2023-12-03', 8, 272.00, 1, 1),
('0c5b59d5-b7de-11ee-944c-d8bbc16a7388', 1, 13, 38.00, '2023-12-02', 6, 228.00, 1, 1),
('0c5c4af9-b7de-11ee-944c-d8bbc16a7388', 13, 14, 43.00, '2023-12-08', 13, 559.00, 3, 1),
('0c5d3f71-b7de-11ee-944c-d8bbc16a7388', 18, 4, 58.00, '2023-12-10', 14, 812.00, 3, 1),
('0c5e3156-b7de-11ee-944c-d8bbc16a7388', 4, 5, 57.00, '2023-12-13', 13, 741.00, 3, 1),
('0c5f1f11-b7de-11ee-944c-d8bbc16a7388', 13, 6, 48.00, '2023-12-01', 3, 144.00, 2, 1),
('0c60057c-b7de-11ee-944c-d8bbc16a7388', 10, 10, 48.00, '2023-12-01', 12, 576.00, 1, 1),
('0c60f925-b7de-11ee-944c-d8bbc16a7388', 16, 11, 51.00, '2023-12-03', 4, 204.00, 2, 1),
('0c61f4c8-b7de-11ee-944c-d8bbc16a7388', 16, 12, 53.00, '2023-12-13', 10, 530.00, 2, 1),
('0c62e145-b7de-11ee-944c-d8bbc16a7388', 18, 15, 50.00, '2023-12-12', 7, 350.00, 1, 1),
('0c63e1c2-b7de-11ee-944c-d8bbc16a7388', 17, 16, 57.00, '2023-12-07', 9, 513.00, 3, 1),
('0c64d213-b7de-11ee-944c-d8bbc16a7388', 8, 19, 75.00, '2023-12-15', 11, 825.00, 1, 1),
('0c65be91-b7de-11ee-944c-d8bbc16a7388', 13, 20, 70.00, '2023-12-10', 5, 350.00, 1, 1),
('0c66ac55-b7de-11ee-944c-d8bbc16a7388', 17, 17, 70.00, '2023-12-14', 13, 910.00, 3, 1),
('0c679402-b7de-11ee-944c-d8bbc16a7388', 10, 18, 72.00, '2023-12-15', 3, 216.00, 1, 1),
('0c690f2e-b7de-11ee-944c-d8bbc16a7388', 14, 21, 80.00, '2023-12-01', 1, 80.00, 2, 1),
('0c69fb6f-b7de-11ee-944c-d8bbc16a7388', 12, 22, 83.00, '2023-12-03', 4, 332.00, 1, 1),
('0c6ad978-b7de-11ee-944c-d8bbc16a7388', 9, 23, 123.00, '2023-12-11', 5, 615.00, 2, 1),
('44cfb9d2-b7e1-11ee-944c-d8bbc16a7388', 2, 6, 50.00, '2023-12-27', 4, 200.00, 1, 0),
('57bd084b-b7e2-11ee-944c-d8bbc16a7388', 10, 3, 40.00, '2023-12-21', 10, 400.00, 1, 0),
('77398987-b7dd-11ee-944c-d8bbc16a7388', 2, 1, 35.00, '2023-04-24', 11, 385.00, 1, 1),
('773bbf20-b7dd-11ee-944c-d8bbc16a7388', 19, 2, 39.00, '2023-04-20', 14, 546.00, 2, 1),
('773cc1dd-b7dd-11ee-944c-d8bbc16a7388', 15, 3, 32.00, '2023-04-08', 15, 480.00, 2, 1),
('773dc374-b7dd-11ee-944c-d8bbc16a7388', 12, 7, 44.00, '2023-04-28', 4, 176.00, 3, 1),
('773ebd5d-b7dd-11ee-944c-d8bbc16a7388', 10, 8, 34.00, '2023-04-03', 7, 238.00, 1, 1),
('773fade6-b7dd-11ee-944c-d8bbc16a7388', 13, 9, 43.00, '2023-04-29', 1, 43.00, 2, 1),
('77409e40-b7dd-11ee-944c-d8bbc16a7388', 15, 13, 41.00, '2023-04-08', 3, 123.00, 3, 1),
('774189c0-b7dd-11ee-944c-d8bbc16a7388', 15, 14, 45.00, '2023-04-24', 6, 270.00, 1, 1),
('7742782d-b7dd-11ee-944c-d8bbc16a7388', 15, 4, 52.00, '2023-04-15', 15, 780.00, 2, 1),
('7743cdb0-b7dd-11ee-944c-d8bbc16a7388', 13, 5, 54.00, '2023-04-23', 14, 756.00, 2, 1),
('7744c597-b7dd-11ee-944c-d8bbc16a7388', 19, 6, 51.00, '2023-04-26', 4, 204.00, 2, 1),
('7745b523-b7dd-11ee-944c-d8bbc16a7388', 9, 10, 52.00, '2023-04-21', 13, 676.00, 3, 1),
('7746a343-b7dd-11ee-944c-d8bbc16a7388', 13, 11, 56.00, '2023-04-27', 9, 504.00, 3, 1),
('77478f1e-b7dd-11ee-944c-d8bbc16a7388', 13, 12, 48.00, '2023-04-18', 8, 384.00, 1, 1),
('77487842-b7dd-11ee-944c-d8bbc16a7388', 3, 15, 46.00, '2023-04-17', 3, 138.00, 2, 1),
('77496033-b7dd-11ee-944c-d8bbc16a7388', 13, 16, 48.00, '2023-04-13', 1, 48.00, 3, 1),
('774a49fc-b7dd-11ee-944c-d8bbc16a7388', 16, 19, 61.00, '2023-04-23', 7, 427.00, 3, 1),
('774b3589-b7dd-11ee-944c-d8bbc16a7388', 15, 20, 61.00, '2023-04-26', 9, 549.00, 1, 1),
('774c21cd-b7dd-11ee-944c-d8bbc16a7388', 4, 17, 75.00, '2023-04-01', 4, 300.00, 3, 1),
('774cfe96-b7dd-11ee-944c-d8bbc16a7388', 11, 18, 81.00, '2023-04-30', 3, 243.00, 2, 1),
('774df8cf-b7dd-11ee-944c-d8bbc16a7388', 10, 21, 90.00, '2023-04-29', 15, 1350.00, 3, 1),
('774ee4a8-b7dd-11ee-944c-d8bbc16a7388', 13, 22, 86.00, '2023-04-22', 10, 860.00, 3, 1),
('774fd300-b7dd-11ee-944c-d8bbc16a7388', 17, 23, 112.00, '2023-04-25', 6, 672.00, 1, 1),
('88b7e480-b7dd-11ee-944c-d8bbc16a7388', 5, 1, 45.00, '2023-05-15', 12, 540.00, 2, 1),
('88b9c904-b7dd-11ee-944c-d8bbc16a7388', 9, 2, 36.00, '2023-05-28', 11, 396.00, 2, 1),
('88babc40-b7dd-11ee-944c-d8bbc16a7388', 2, 3, 35.00, '2023-05-23', 11, 385.00, 3, 1),
('88bbc1a2-b7dd-11ee-944c-d8bbc16a7388', 9, 7, 40.00, '2023-05-07', 7, 280.00, 1, 1),
('88bcb99b-b7dd-11ee-944c-d8bbc16a7388', 17, 8, 43.00, '2023-05-29', 13, 559.00, 2, 1),
('88bdb7a7-b7dd-11ee-944c-d8bbc16a7388', 4, 9, 33.00, '2023-05-19', 7, 231.00, 2, 1),
('88bebc63-b7dd-11ee-944c-d8bbc16a7388', 14, 13, 44.00, '2023-05-03', 10, 440.00, 1, 1),
('88bfb3f1-b7dd-11ee-944c-d8bbc16a7388', 8, 14, 43.00, '2023-05-13', 6, 258.00, 2, 1),
('88c0a203-b7dd-11ee-944c-d8bbc16a7388', 12, 4, 56.00, '2023-05-30', 14, 784.00, 1, 1),
('88c1a953-b7dd-11ee-944c-d8bbc16a7388', 3, 5, 49.00, '2023-05-24', 15, 735.00, 2, 1),
('88c29e29-b7dd-11ee-944c-d8bbc16a7388', 12, 6, 54.00, '2023-05-19', 7, 378.00, 3, 1),
('88c3a463-b7dd-11ee-944c-d8bbc16a7388', 4, 10, 51.00, '2023-05-01', 4, 204.00, 3, 1),
('88c4fc6a-b7dd-11ee-944c-d8bbc16a7388', 17, 11, 54.00, '2023-05-29', 2, 108.00, 2, 1),
('88c5eb17-b7dd-11ee-944c-d8bbc16a7388', 8, 12, 55.00, '2023-05-28', 1, 55.00, 2, 1),
('88c6db38-b7dd-11ee-944c-d8bbc16a7388', 15, 15, 55.00, '2023-05-08', 10, 550.00, 2, 1),
('88c7c78c-b7dd-11ee-944c-d8bbc16a7388', 12, 16, 45.00, '2023-05-08', 3, 135.00, 3, 1),
('88c8bce0-b7dd-11ee-944c-d8bbc16a7388', 11, 19, 73.00, '2023-05-23', 14, 1022.00, 3, 1),
('88c9b74d-b7dd-11ee-944c-d8bbc16a7388', 8, 20, 72.00, '2023-05-17', 12, 864.00, 3, 1),
('88caa5f6-b7dd-11ee-944c-d8bbc16a7388', 11, 17, 90.00, '2023-05-31', 13, 1170.00, 3, 1),
('88cb9117-b7dd-11ee-944c-d8bbc16a7388', 7, 18, 77.00, '2023-05-23', 5, 385.00, 2, 1),
('88cc8648-b7dd-11ee-944c-d8bbc16a7388', 16, 21, 80.00, '2023-05-24', 15, 1200.00, 1, 1),
('88cd76ca-b7dd-11ee-944c-d8bbc16a7388', 16, 22, 87.00, '2023-05-22', 7, 609.00, 1, 1),
('88ce711e-b7dd-11ee-944c-d8bbc16a7388', 12, 23, 134.00, '2023-05-10', 14, 1876.00, 3, 1),
('cb3af9ea-b7dd-11ee-944c-d8bbc16a7388', 8, 1, 40.00, '2023-06-15', 3, 120.00, 1, 1),
('cb3cc2ba-b7dd-11ee-944c-d8bbc16a7388', 1, 2, 35.00, '2023-06-01', 7, 245.00, 1, 1),
('cb3e20ca-b7dd-11ee-944c-d8bbc16a7388', 5, 3, 34.00, '2023-06-03', 8, 272.00, 1, 1),
('cb3f095e-b7dd-11ee-944c-d8bbc16a7388', 9, 7, 40.00, '2023-06-16', 3, 120.00, 2, 1),
('cb3fe9d1-b7dd-11ee-944c-d8bbc16a7388', 15, 8, 32.00, '2023-06-20', 14, 448.00, 2, 1),
('cb40dc2e-b7dd-11ee-944c-d8bbc16a7388', 18, 9, 36.00, '2023-06-04', 9, 324.00, 1, 1),
('cb41d261-b7dd-11ee-944c-d8bbc16a7388', 9, 13, 41.00, '2023-06-25', 5, 205.00, 1, 1),
('cb42c8fe-b7dd-11ee-944c-d8bbc16a7388', 10, 14, 35.00, '2023-06-01', 7, 245.00, 1, 1),
('cb43b5b8-b7dd-11ee-944c-d8bbc16a7388', 13, 4, 48.00, '2023-06-19', 2, 96.00, 1, 1),
('cb449e86-b7dd-11ee-944c-d8bbc16a7388', 2, 5, 53.00, '2023-06-11', 9, 477.00, 3, 1),
('cb458ff3-b7dd-11ee-944c-d8bbc16a7388', 11, 6, 54.00, '2023-06-21', 13, 702.00, 1, 1),
('cb467c22-b7dd-11ee-944c-d8bbc16a7388', 11, 10, 50.00, '2023-06-12', 10, 500.00, 2, 1),
('cb47625a-b7dd-11ee-944c-d8bbc16a7388', 5, 11, 50.00, '2023-06-18', 5, 250.00, 2, 1),
('cb48486a-b7dd-11ee-944c-d8bbc16a7388', 5, 12, 53.00, '2023-06-04', 15, 795.00, 2, 1),
('cb4936a4-b7dd-11ee-944c-d8bbc16a7388', 14, 15, 53.00, '2023-06-22', 4, 212.00, 3, 1),
('cb4a22b1-b7dd-11ee-944c-d8bbc16a7388', 2, 16, 54.00, '2023-06-20', 10, 540.00, 2, 1),
('cb4b106c-b7dd-11ee-944c-d8bbc16a7388', 15, 19, 64.00, '2023-06-18', 12, 768.00, 2, 1),
('cb4bfdc9-b7dd-11ee-944c-d8bbc16a7388', 2, 20, 64.00, '2023-06-23', 8, 512.00, 3, 1),
('cb4ce855-b7dd-11ee-944c-d8bbc16a7388', 14, 17, 87.00, '2023-06-04', 3, 261.00, 2, 1),
('cb4dd6aa-b7dd-11ee-944c-d8bbc16a7388', 12, 18, 83.00, '2023-06-18', 13, 1079.00, 2, 1),
('cb4ebf39-b7dd-11ee-944c-d8bbc16a7388', 6, 21, 76.00, '2023-06-24', 5, 380.00, 2, 1),
('cb4fbcaa-b7dd-11ee-944c-d8bbc16a7388', 2, 22, 77.00, '2023-06-07', 11, 847.00, 2, 1),
('cb50db25-b7dd-11ee-944c-d8bbc16a7388', 11, 23, 146.00, '2023-06-12', 8, 1168.00, 1, 1),
('dc12bdb8-b7dd-11ee-944c-d8bbc16a7388', 4, 1, 39.00, '2023-07-02', 7, 273.00, 1, 1),
('dc14c823-b7dd-11ee-944c-d8bbc16a7388', 14, 2, 34.00, '2023-07-06', 11, 374.00, 3, 1),
('dc15c82f-b7dd-11ee-944c-d8bbc16a7388', 3, 3, 42.00, '2023-07-28', 2, 84.00, 1, 1),
('dc16c27d-b7dd-11ee-944c-d8bbc16a7388', 17, 7, 42.00, '2023-07-25', 15, 630.00, 3, 1),
('dc17b9f8-b7dd-11ee-944c-d8bbc16a7388', 1, 8, 38.00, '2023-07-22', 3, 114.00, 1, 1),
('dc18a78f-b7dd-11ee-944c-d8bbc16a7388', 2, 9, 43.00, '2023-07-02', 6, 258.00, 3, 1),
('dc199e60-b7dd-11ee-944c-d8bbc16a7388', 10, 13, 40.00, '2023-07-12', 13, 520.00, 1, 1),
('dc1a96aa-b7dd-11ee-944c-d8bbc16a7388', 7, 14, 42.00, '2023-07-10', 13, 546.00, 3, 1),
('dc1b92ce-b7dd-11ee-944c-d8bbc16a7388', 11, 4, 52.00, '2023-07-22', 1, 52.00, 2, 1),
('dc1c7bca-b7dd-11ee-944c-d8bbc16a7388', 18, 5, 55.00, '2023-07-12', 2, 110.00, 2, 1),
('dc1d7b9f-b7dd-11ee-944c-d8bbc16a7388', 10, 6, 58.00, '2023-07-19', 6, 348.00, 3, 1),
('dc1e780d-b7dd-11ee-944c-d8bbc16a7388', 6, 10, 56.00, '2023-07-14', 11, 616.00, 1, 1),
('dc1f5fff-b7dd-11ee-944c-d8bbc16a7388', 11, 11, 45.00, '2023-07-07', 9, 405.00, 1, 1),
('dc2049d4-b7dd-11ee-944c-d8bbc16a7388', 5, 12, 48.00, '2023-07-04', 12, 576.00, 2, 1),
('dc213c67-b7dd-11ee-944c-d8bbc16a7388', 17, 15, 48.00, '2023-07-03', 10, 480.00, 1, 1),
('dc222ad5-b7dd-11ee-944c-d8bbc16a7388', 4, 16, 47.00, '2023-07-14', 15, 705.00, 2, 1),
('dc2317ed-b7dd-11ee-944c-d8bbc16a7388', 11, 19, 62.00, '2023-07-27', 9, 558.00, 3, 1),
('dc24600f-b7dd-11ee-944c-d8bbc16a7388', 8, 20, 62.00, '2023-07-11', 14, 868.00, 3, 1),
('dc255101-b7dd-11ee-944c-d8bbc16a7388', 3, 17, 78.00, '2023-07-28', 7, 546.00, 2, 1),
('dc265308-b7dd-11ee-944c-d8bbc16a7388', 11, 18, 72.00, '2023-07-05', 2, 144.00, 3, 1),
('dc273c65-b7dd-11ee-944c-d8bbc16a7388', 17, 21, 88.00, '2023-07-12', 6, 528.00, 3, 1),
('dc282f20-b7dd-11ee-944c-d8bbc16a7388', 10, 22, 83.00, '2023-07-06', 12, 996.00, 3, 1),
('dc292147-b7dd-11ee-944c-d8bbc16a7388', 1, 23, 141.00, '2023-07-07', 8, 1128.00, 1, 1),
('e0bff67a-b7e1-11ee-944c-d8bbc16a7388', 15, 19, 70.00, '2023-12-28', 3, 210.00, 3, 0),
('e5861f26-b7dd-11ee-944c-d8bbc16a7388', 18, 1, 40.00, '2023-08-25', 2, 80.00, 1, 1),
('e589225c-b7dd-11ee-944c-d8bbc16a7388', 7, 2, 33.00, '2023-08-11', 10, 330.00, 2, 1),
('e58a2665-b7dd-11ee-944c-d8bbc16a7388', 8, 3, 39.00, '2023-08-29', 3, 117.00, 2, 1),
('e58b1f3a-b7dd-11ee-944c-d8bbc16a7388', 8, 7, 44.00, '2023-08-15', 12, 528.00, 2, 1),
('e58c08ee-b7dd-11ee-944c-d8bbc16a7388', 1, 8, 34.00, '2023-08-22', 10, 340.00, 1, 1),
('e58cf5dc-b7dd-11ee-944c-d8bbc16a7388', 13, 9, 37.00, '2023-08-27', 7, 259.00, 3, 1),
('e58df1fe-b7dd-11ee-944c-d8bbc16a7388', 13, 13, 41.00, '2023-08-13', 6, 246.00, 1, 1),
('e58edeae-b7dd-11ee-944c-d8bbc16a7388', 9, 14, 35.00, '2023-08-08', 1, 35.00, 1, 1),
('e58fd5ee-b7dd-11ee-944c-d8bbc16a7388', 10, 4, 47.00, '2023-08-18', 8, 376.00, 2, 1),
('e590c55f-b7dd-11ee-944c-d8bbc16a7388', 17, 5, 51.00, '2023-08-24', 11, 561.00, 3, 1),
('e591aeca-b7dd-11ee-944c-d8bbc16a7388', 13, 6, 53.00, '2023-08-24', 5, 265.00, 1, 1),
('e5929e6c-b7dd-11ee-944c-d8bbc16a7388', 6, 10, 58.00, '2023-08-08', 15, 870.00, 3, 1),
('e59389e8-b7dd-11ee-944c-d8bbc16a7388', 9, 11, 46.00, '2023-08-13', 11, 506.00, 1, 1),
('e594d191-b7dd-11ee-944c-d8bbc16a7388', 9, 12, 47.00, '2023-08-22', 11, 517.00, 1, 1),
('e595b8d4-b7dd-11ee-944c-d8bbc16a7388', 9, 15, 58.00, '2023-08-25', 3, 174.00, 1, 1),
('e596a08a-b7dd-11ee-944c-d8bbc16a7388', 7, 16, 52.00, '2023-08-15', 13, 676.00, 3, 1),
('e59794f3-b7dd-11ee-944c-d8bbc16a7388', 16, 19, 64.00, '2023-08-05', 1, 64.00, 3, 1),
('e5987cdf-b7dd-11ee-944c-d8bbc16a7388', 10, 20, 60.00, '2023-08-24', 5, 300.00, 3, 1),
('e59962e8-b7dd-11ee-944c-d8bbc16a7388', 1, 17, 76.00, '2023-08-20', 10, 760.00, 3, 1),
('e59a522f-b7dd-11ee-944c-d8bbc16a7388', 3, 18, 88.00, '2023-08-30', 5, 440.00, 1, 1),
('e59b3c34-b7dd-11ee-944c-d8bbc16a7388', 7, 21, 78.00, '2023-08-10', 1, 78.00, 3, 1),
('e59c418c-b7dd-11ee-944c-d8bbc16a7388', 3, 22, 78.00, '2023-08-12', 14, 1092.00, 3, 1),
('e59d3f4a-b7dd-11ee-944c-d8bbc16a7388', 8, 23, 109.00, '2023-08-22', 6, 654.00, 3, 1),
('e610907e-b7dc-11ee-944c-d8bbc16a7388', 10, 1, 35.00, '2023-02-26', 7, 245.00, 1, 1),
('e6132136-b7dc-11ee-944c-d8bbc16a7388', 14, 2, 41.00, '2023-02-01', 6, 246.00, 1, 1),
('e614214e-b7dc-11ee-944c-d8bbc16a7388', 9, 3, 37.00, '2023-02-12', 6, 222.00, 3, 1),
('e615086e-b7dc-11ee-944c-d8bbc16a7388', 5, 7, 41.00, '2023-02-13', 9, 369.00, 3, 1),
('e615ef2c-b7dc-11ee-944c-d8bbc16a7388', 3, 8, 35.00, '2023-02-02', 13, 455.00, 3, 1),
('e616dd90-b7dc-11ee-944c-d8bbc16a7388', 17, 9, 40.00, '2023-02-06', 1, 40.00, 1, 1),
('e617c849-b7dc-11ee-944c-d8bbc16a7388', 11, 13, 41.00, '2023-02-27', 2, 82.00, 1, 1),
('e618b9be-b7dc-11ee-944c-d8bbc16a7388', 16, 14, 42.00, '2023-02-05', 8, 336.00, 3, 1),
('e619bcde-b7dc-11ee-944c-d8bbc16a7388', 9, 4, 51.00, '2023-02-25', 14, 714.00, 3, 1),
('e61aa9da-b7dc-11ee-944c-d8bbc16a7388', 8, 5, 47.00, '2023-02-04', 5, 235.00, 2, 1),
('e61ba44a-b7dc-11ee-944c-d8bbc16a7388', 7, 6, 56.00, '2023-02-06', 3, 168.00, 3, 1),
('e61c918b-b7dc-11ee-944c-d8bbc16a7388', 17, 10, 53.00, '2023-02-06', 15, 795.00, 3, 1),
('e61d8db2-b7dc-11ee-944c-d8bbc16a7388', 14, 11, 54.00, '2023-02-13', 8, 432.00, 2, 1),
('e61e776a-b7dc-11ee-944c-d8bbc16a7388', 14, 12, 51.00, '2023-02-10', 7, 357.00, 1, 1),
('e61f651e-b7dc-11ee-944c-d8bbc16a7388', 4, 15, 55.00, '2023-02-03', 7, 385.00, 3, 1),
('e62055aa-b7dc-11ee-944c-d8bbc16a7388', 3, 16, 56.00, '2023-02-11', 15, 840.00, 2, 1),
('e62154bd-b7dc-11ee-944c-d8bbc16a7388', 9, 19, 72.00, '2023-02-24', 9, 648.00, 2, 1),
('e622408a-b7dc-11ee-944c-d8bbc16a7388', 15, 20, 60.00, '2023-02-26', 15, 900.00, 3, 1),
('e6232bdd-b7dc-11ee-944c-d8bbc16a7388', 5, 17, 75.00, '2023-02-07', 15, 1125.00, 2, 1),
('e624253e-b7dc-11ee-944c-d8bbc16a7388', 10, 18, 88.00, '2023-02-21', 11, 968.00, 2, 1),
('e625101b-b7dc-11ee-944c-d8bbc16a7388', 2, 21, 80.00, '2023-02-12', 12, 960.00, 1, 1),
('e6260743-b7dc-11ee-944c-d8bbc16a7388', 13, 22, 76.00, '2023-02-08', 15, 1140.00, 2, 1),
('e626fcae-b7dc-11ee-944c-d8bbc16a7388', 3, 23, 136.00, '2023-02-17', 15, 2040.00, 3, 1),
('ea5cefca-b7e0-11ee-944c-d8bbc16a7388', 3, 2, 36.00, '2023-12-17', 3, 108.00, 2, 1),
('ea5f1073-b7e0-11ee-944c-d8bbc16a7388', 5, 1, 35.00, '2023-12-19', 2, 70.00, 1, 1),
('f13c023a-b7dd-11ee-944c-d8bbc16a7388', 3, 1, 36.00, '2023-09-05', 4, 144.00, 2, 1),
('f146cbde-b7dd-11ee-944c-d8bbc16a7388', 6, 2, 33.00, '2023-09-22', 13, 429.00, 2, 1),
('f147c3dc-b7dd-11ee-944c-d8bbc16a7388', 10, 3, 36.00, '2023-09-06', 9, 324.00, 1, 1),
('f148ae48-b7dd-11ee-944c-d8bbc16a7388', 2, 7, 41.00, '2023-09-07', 6, 246.00, 2, 1),
('f1499c2a-b7dd-11ee-944c-d8bbc16a7388', 4, 8, 40.00, '2023-09-17', 12, 480.00, 1, 1),
('f14a8758-b7dd-11ee-944c-d8bbc16a7388', 4, 9, 42.00, '2023-09-11', 6, 252.00, 1, 1),
('f14b7553-b7dd-11ee-944c-d8bbc16a7388', 7, 13, 43.00, '2023-09-16', 13, 559.00, 2, 1),
('f14c5d50-b7dd-11ee-944c-d8bbc16a7388', 14, 14, 38.00, '2023-09-04', 4, 152.00, 1, 1),
('f14d4864-b7dd-11ee-944c-d8bbc16a7388', 12, 4, 45.00, '2023-09-25', 1, 45.00, 3, 1),
('f14e394a-b7dd-11ee-944c-d8bbc16a7388', 12, 5, 58.00, '2023-09-03', 3, 174.00, 3, 1),
('f14f2345-b7dd-11ee-944c-d8bbc16a7388', 12, 6, 49.00, '2023-09-04', 3, 147.00, 3, 1),
('f1506ea2-b7dd-11ee-944c-d8bbc16a7388', 7, 10, 45.00, '2023-09-28', 15, 675.00, 3, 1),
('f15156ae-b7dd-11ee-944c-d8bbc16a7388', 5, 11, 53.00, '2023-09-30', 6, 318.00, 3, 1),
('f1523de7-b7dd-11ee-944c-d8bbc16a7388', 17, 12, 49.00, '2023-09-13', 2, 98.00, 2, 1),
('f1532670-b7dd-11ee-944c-d8bbc16a7388', 1, 15, 52.00, '2023-09-24', 7, 364.00, 2, 1),
('f1541283-b7dd-11ee-944c-d8bbc16a7388', 8, 16, 54.00, '2023-09-12', 10, 540.00, 3, 1),
('f154f4b5-b7dd-11ee-944c-d8bbc16a7388', 18, 19, 75.00, '2023-09-28', 1, 75.00, 3, 1),
('f155dd75-b7dd-11ee-944c-d8bbc16a7388', 12, 20, 67.00, '2023-09-21', 3, 201.00, 1, 1),
('f156c09b-b7dd-11ee-944c-d8bbc16a7388', 8, 17, 77.00, '2023-09-29', 2, 154.00, 2, 1),
('f157a507-b7dd-11ee-944c-d8bbc16a7388', 13, 18, 75.00, '2023-09-08', 11, 825.00, 2, 1),
('f1588f52-b7dd-11ee-944c-d8bbc16a7388', 16, 21, 88.00, '2023-09-09', 7, 616.00, 2, 1),
('f15975d5-b7dd-11ee-944c-d8bbc16a7388', 8, 22, 84.00, '2023-09-06', 3, 252.00, 2, 1),
('f15a638f-b7dd-11ee-944c-d8bbc16a7388', 5, 23, 106.00, '2023-09-06', 6, 636.00, 2, 1),
('fa9de9a1-b7dd-11ee-944c-d8bbc16a7388', 12, 1, 44.00, '2023-10-14', 1, 44.00, 2, 1),
('faa0d6db-b7dd-11ee-944c-d8bbc16a7388', 10, 2, 43.00, '2023-10-27', 1, 43.00, 3, 1),
('faa1b9e6-b7dd-11ee-944c-d8bbc16a7388', 12, 3, 35.00, '2023-10-29', 2, 70.00, 3, 1),
('faa2b622-b7dd-11ee-944c-d8bbc16a7388', 5, 7, 45.00, '2023-10-17', 15, 675.00, 2, 1),
('faa3a3e1-b7dd-11ee-944c-d8bbc16a7388', 14, 8, 43.00, '2023-10-20', 15, 645.00, 2, 1),
('faa4a51b-b7dd-11ee-944c-d8bbc16a7388', 17, 9, 42.00, '2023-10-11', 13, 546.00, 3, 1),
('faa59428-b7dd-11ee-944c-d8bbc16a7388', 7, 13, 40.00, '2023-10-01', 4, 160.00, 2, 1),
('faa67f11-b7dd-11ee-944c-d8bbc16a7388', 18, 14, 37.00, '2023-10-19', 1, 37.00, 3, 1),
('faa76cf8-b7dd-11ee-944c-d8bbc16a7388', 14, 4, 45.00, '2023-10-15', 13, 585.00, 1, 1),
('faa85cf1-b7dd-11ee-944c-d8bbc16a7388', 4, 5, 53.00, '2023-10-20', 15, 795.00, 3, 1),
('faa94cb4-b7dd-11ee-944c-d8bbc16a7388', 17, 6, 57.00, '2023-10-04', 11, 627.00, 2, 1),
('faaa9d21-b7dd-11ee-944c-d8bbc16a7388', 3, 10, 51.00, '2023-10-16', 2, 102.00, 3, 1),
('faab8594-b7dd-11ee-944c-d8bbc16a7388', 17, 11, 48.00, '2023-10-29', 11, 528.00, 1, 1),
('faac70a8-b7dd-11ee-944c-d8bbc16a7388', 7, 12, 57.00, '2023-10-15', 8, 456.00, 2, 1),
('faad59a7-b7dd-11ee-944c-d8bbc16a7388', 17, 15, 55.00, '2023-10-31', 10, 550.00, 2, 1),
('faae3d9a-b7dd-11ee-944c-d8bbc16a7388', 15, 16, 48.00, '2023-10-19', 13, 624.00, 1, 1),
('faaf25db-b7dd-11ee-944c-d8bbc16a7388', 11, 19, 68.00, '2023-10-19', 14, 952.00, 2, 1),
('fab00815-b7dd-11ee-944c-d8bbc16a7388', 9, 20, 67.00, '2023-10-04', 7, 469.00, 2, 1),
('fab0efed-b7dd-11ee-944c-d8bbc16a7388', 17, 17, 85.00, '2023-10-26', 5, 425.00, 1, 1),
('fab1d9b0-b7dd-11ee-944c-d8bbc16a7388', 19, 18, 84.00, '2023-10-24', 13, 1092.00, 1, 1),
('fab2c54e-b7dd-11ee-944c-d8bbc16a7388', 5, 21, 79.00, '2023-10-14', 14, 1106.00, 2, 1),
('fab3b7dd-b7dd-11ee-944c-d8bbc16a7388', 17, 22, 88.00, '2023-10-10', 5, 440.00, 2, 1),
('fab4a7ed-b7dd-11ee-944c-d8bbc16a7388', 12, 23, 148.00, '2023-10-14', 7, 1036.00, 3, 1),
('fbb3f963-b7dc-11ee-944c-d8bbc16a7388', 11, 1, 43.00, '2023-03-21', 5, 215.00, 1, 1),
('fbb628e3-b7dc-11ee-944c-d8bbc16a7388', 6, 2, 37.00, '2023-03-04', 10, 370.00, 1, 1),
('fbb712b8-b7dc-11ee-944c-d8bbc16a7388', 5, 3, 40.00, '2023-03-27', 14, 560.00, 3, 1),
('fbb7fe3b-b7dc-11ee-944c-d8bbc16a7388', 5, 7, 32.00, '2023-03-14', 5, 160.00, 2, 1),
('fbb8ea66-b7dc-11ee-944c-d8bbc16a7388', 5, 8, 32.00, '2023-03-13', 6, 192.00, 3, 1),
('fbb9d443-b7dc-11ee-944c-d8bbc16a7388', 18, 9, 45.00, '2023-03-19', 14, 630.00, 3, 1),
('fbbab7a9-b7dc-11ee-944c-d8bbc16a7388', 10, 13, 44.00, '2023-03-07', 8, 352.00, 2, 1),
('fbbc0a72-b7dc-11ee-944c-d8bbc16a7388', 8, 14, 39.00, '2023-03-28', 4, 156.00, 1, 1),
('fbbcfd01-b7dc-11ee-944c-d8bbc16a7388', 6, 4, 54.00, '2023-03-18', 10, 540.00, 3, 1),
('fbbde992-b7dc-11ee-944c-d8bbc16a7388', 2, 5, 46.00, '2023-03-30', 6, 276.00, 2, 1),
('fbbed19e-b7dc-11ee-944c-d8bbc16a7388', 3, 6, 48.00, '2023-03-07', 1, 48.00, 3, 1),
('fbbfbb95-b7dc-11ee-944c-d8bbc16a7388', 6, 10, 50.00, '2023-03-15', 8, 400.00, 1, 1),
('fbc0ae39-b7dc-11ee-944c-d8bbc16a7388', 18, 11, 46.00, '2023-03-10', 15, 690.00, 3, 1),
('fbc19c83-b7dc-11ee-944c-d8bbc16a7388', 1, 12, 54.00, '2023-03-05', 12, 648.00, 1, 1),
('fbc2852a-b7dc-11ee-944c-d8bbc16a7388', 12, 15, 47.00, '2023-03-08', 6, 282.00, 1, 1),
('fbc3704e-b7dc-11ee-944c-d8bbc16a7388', 10, 16, 53.00, '2023-03-13', 3, 159.00, 2, 1),
('fbc45d6b-b7dc-11ee-944c-d8bbc16a7388', 9, 19, 72.00, '2023-03-22', 9, 648.00, 3, 1),
('fbc54c97-b7dc-11ee-944c-d8bbc16a7388', 2, 20, 70.00, '2023-03-12', 12, 840.00, 3, 1),
('fbc6306e-b7dc-11ee-944c-d8bbc16a7388', 14, 17, 76.00, '2023-03-20', 14, 1064.00, 2, 1),
('fbc719af-b7dc-11ee-944c-d8bbc16a7388', 8, 18, 71.00, '2023-03-26', 10, 710.00, 2, 1),
('fbc7fdaf-b7dc-11ee-944c-d8bbc16a7388', 15, 21, 73.00, '2023-03-02', 7, 511.00, 1, 1),
('fbc8e89b-b7dc-11ee-944c-d8bbc16a7388', 14, 22, 85.00, '2023-03-01', 8, 680.00, 1, 1),
('fbc9d209-b7dc-11ee-944c-d8bbc16a7388', 11, 23, 119.00, '2023-03-10', 3, 357.00, 1, 1);

--
-- Disparadores `alquiler`
--
DELIMITER $$
CREATE TRIGGER `tr_ActualizarDisponibilidadHabitacion` AFTER INSERT ON `alquiler` FOR EACH ROW BEGIN
	UPDATE habitacion
    SET disponible = 0
    WHERE id = NEW.habitacion_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `sexo` char(1) NOT NULL,
  `pais_id` tinyint(2) UNSIGNED NOT NULL,
  `numeropasaporte` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Almacena los datos de los clientes.';

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `apellidos`, `nombres`, `sexo`, `pais_id`, `numeropasaporte`) VALUES
(1, 'Donaldson', 'Jazmine', 'F', 2, '820918716'),
(2, 'Hernández Tello', 'Mariana', 'F', 3, '842190024'),
(3, 'Santistéban', 'Juan Alberto', 'M', 4, '899149347'),
(4, 'De la Torre', 'Amanda', 'F', 5, '309128195'),
(5, 'Harrison', 'Jenny', 'F', 6, '401518591'),
(6, 'Gamarra Vásquez', 'Luis Arturo', 'M', 7, '701941952'),
(7, 'Guzmán', 'Diana Fiorella', 'F', 8, '742101566'),
(8, 'Díaz Bazán', 'Camila', 'F', 9, '468932821'),
(9, 'Gayoso Vega', 'Úlises', 'M', 10, '250219525'),
(10, 'Asenjo Sandoval', 'Andy Enrique', 'M', 1, '295820525'),
(11, 'Peña Ramírez', 'Diego Andrés', 'M', 3, '242221561'),
(12, 'Collazos Tejada', 'Belén', 'F', 4, '842743581'),
(13, 'Quispe Almanzar', 'Laura Elizabeth', 'F', 5, '309819457'),
(14, 'Faurway', 'David Smith', 'M', 6, '312281940'),
(15, 'Branden', 'Shaffer', 'M', 2, '103282845'),
(16, 'Osborn', 'Baker', 'M', 6, '309148945'),
(17, 'Hughes', 'Maxwell', 'M', 2, '309148945'),
(18, 'Jaramillo López', 'Luciana Daniela', 'F', 10, '820910243'),
(19, 'Mendiola Vargas', 'Hugo', 'M', 8, '328241452');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `id` smallint(3) UNSIGNED NOT NULL,
  `numero` char(3) NOT NULL,
  `tipohabitacion_id` tinyint(1) UNSIGNED NOT NULL,
  `disponible` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Almacena los datos de las habitaciones.';

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`id`, `numero`, `tipohabitacion_id`, `disponible`) VALUES
(1, '101', 1, 1),
(2, '102', 1, 1),
(3, '103', 1, 0),
(4, '104', 2, 1),
(5, '105', 2, 1),
(6, '106', 2, 0),
(7, '201', 1, 1),
(8, '202', 1, 1),
(9, '203', 1, 1),
(10, '204', 2, 1),
(11, '205', 2, 1),
(12, '206', 2, 1),
(13, '301', 1, 1),
(14, '302', 1, 1),
(15, '303', 2, 1),
(16, '304', 2, 1),
(17, '305', 4, 1),
(18, '306', 4, 1),
(19, '401', 3, 0),
(20, '402', 3, 1),
(21, '403', 4, 1),
(22, '404', 4, 1),
(23, '501', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediopago`
--

CREATE TABLE `mediopago` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Almacena los medios de pago.';

--
-- Volcado de datos para la tabla `mediopago`
--

INSERT INTO `mediopago` (`id`, `nombre`) VALUES
(1, 'Contado'),
(2, 'Tarjeta de débito'),
(3, 'Tarjeta de crédito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Almacena los datos de los países.';

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'Perú'),
(2, 'Estados Unidos'),
(3, 'Colombia'),
(4, 'Argentina'),
(5, 'México'),
(6, 'Australia'),
(7, 'Uruguay'),
(8, 'Puerto Rico'),
(9, 'España'),
(10, 'Ecuador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipohabitacion`
--

CREATE TABLE `tipohabitacion` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `preciodiario` decimal(5,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Almacena los tipos de habitaciones.';

--
-- Volcado de datos para la tabla `tipohabitacion`
--

INSERT INTO `tipohabitacion` (`id`, `nombre`, `preciodiario`) VALUES
(1, 'Simple', 35.00),
(2, 'Doble', 48.00),
(3, 'Matrimonial', 60.00),
(4, 'Triple', 70.00),
(5, 'Presidencial', 110.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_alquiler_cliente` (`cliente_id`),
  ADD KEY `FK_alquiler_habitacion` (`habitacion_id`),
  ADD KEY `FK_alquiler_mediopago` (`mediopago_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cliente_pais` (`pais_id`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_habitacion_tipohabitacion` (`tipohabitacion_id`);

--
-- Indices de la tabla `mediopago`
--
ALTER TABLE `mediopago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipohabitacion`
--
ALTER TABLE `tipohabitacion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `mediopago`
--
ALTER TABLE `mediopago`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipohabitacion`
--
ALTER TABLE `tipohabitacion`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `FK_alquiler_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK_alquiler_habitacion` FOREIGN KEY (`habitacion_id`) REFERENCES `habitacion` (`id`),
  ADD CONSTRAINT `FK_alquiler_mediopago` FOREIGN KEY (`mediopago_id`) REFERENCES `mediopago` (`id`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_cliente_pais` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `FK_habitacion_tipohabitacion` FOREIGN KEY (`tipohabitacion_id`) REFERENCES `tipohabitacion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
