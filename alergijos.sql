-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 17, 2022 at 02:54 PM
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
-- Table structure for table `alergijos`
--

DROP TABLE IF EXISTS `alergijos`;
CREATE TABLE IF NOT EXISTS `alergijos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `alergeno_pavadinimas` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alergijos`
--

INSERT INTO `alergijos` (`id`, `alergeno_pavadinimas`) VALUES
(1, 'glitimas'),
(2, 'veziagyviai'),
(3, 'kiausiniai'),
(4, 'zuvys'),
(5, 'zemes riesutai'),
(6, 'soju pupeles'),
(7, 'pienas'),
(8, 'riesutai'),
(9, 'salieras'),
(10, 'garstycios'),
(11, 'sezamo seklos'),
(12, 'sieros dioksidas'),
(13, 'lubinai'),
(14, 'moliuskai');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
