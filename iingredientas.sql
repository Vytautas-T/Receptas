-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2022 at 10:38 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtuves_receptai`
--

-- --------------------------------------------------------

--
-- Table structure for table `iingredientas`
--

DROP TABLE IF EXISTS `iingredientas`;
CREATE TABLE IF NOT EXISTS `iingredientas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(30) NOT NULL,
  `Kalorijos` int(11) DEFAULT NULL,
  `kaina` decimal(7,2) UNSIGNED NOT NULL,
  `alergijos` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alergijos` (`alergijos`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iingredientas`
--

INSERT INTO `iingredientas` (`id`, `pavadinimas`, `Kalorijos`, `kaina`, `alergijos`) VALUES
(1, 'Vištiena', 166, '6.12', NULL),
(2, 'Jautienos faršas', 39, '8.55', NULL),
(3, 'Braškės', 309, '3.53', NULL),
(4, 'Pienas', 243, '4.53', 7),
(5, 'Avižiniai dribsniai', 45, '3.59', NULL),
(6, 'Svogūnas', 72, '2.53', NULL),
(7, 'Bulvės', 313, '9.44', NULL),
(8, 'Grietinė', 307, '5.93', NULL),
(9, 'Teriyaki marinatas', 134, '3.85', NULL),
(10, 'Lęšiai', 290, '10.21', NULL),
(11, 'Avinžirniai', 423, '6.99', NULL),
(12, 'Petražolė', 318, '1.57', NULL),
(13, 'Pomidoras', 311, '8.87', NULL),
(14, 'Agurkas', 436, '3.59', NULL),
(15, 'Couscous', 84, '2.57', NULL),
(16, 'Duona', 44, '0.69', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `iingredientas`
--
ALTER TABLE `iingredientas`
  ADD CONSTRAINT `alergijos` FOREIGN KEY (`alergijos`) REFERENCES `alergijos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
