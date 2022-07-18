-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2022 at 07:09 PM
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
  `kaina` decimal(7,2) UNSIGNED NOT NULL,
  `kalorijos_per100g` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iingredientas`
--

INSERT INTO `iingredientas` (`id`, `pavadinimas`, `kaina`, `kalorijos_per100g`) VALUES
(1, 'Vištiena', '6.12', 166),
(2, 'Jautienos faršas', '8.55', 39),
(3, 'Braškės', '3.53', 309),
(4, 'Pienas', '4.53', 243),
(5, 'Avižiniai dribsniai', '3.59', 45),
(6, 'Svogūnas', '2.53', 72),
(7, 'Bulvės', '9.44', 313),
(8, 'Grietinė', '5.93', 307),
(9, 'Teriyaki marinatas', '3.85', 124),
(10, 'Lęšiai', '10.21', 290),
(11, 'Avinžirniai', '6.99', 423),
(12, 'Petražolė', '1.57', 319),
(13, 'Pomidoras', '8.87', 311),
(14, 'Agurkas', '3.59', 436),
(15, 'Couscous', '2.57', 84),
(16, 'Duona', '0.69', 44);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
