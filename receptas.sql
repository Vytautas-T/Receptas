-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2022 at 07:08 PM
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
-- Table structure for table `receptas`
--

DROP TABLE IF EXISTS `receptas`;
CREATE TABLE IF NOT EXISTS `receptas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(50) NOT NULL,
  `nurodymai` varchar(300) NOT NULL,
  `Kalorijos` int(11) NOT NULL,
  `kaina` decimal(7,2) UNSIGNED NOT NULL,
  `vartotojo_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vartotojo_id` (`vartotojo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receptas`
--

INSERT INTO `receptas` (`id`, `pavadinimas`, `nurodymai`, `Kalorijos`, `kaina`, `vartotojo_id`) VALUES
(1, 'Tabule couscous salotos', '1. Paruošiame couscous 2. Supjausstom daržoves ir viską suberiam į vieną.', 564, '6.82', 8),
(2, 'Tablue lebanietiškos salotos', '1. Supjausstom daržoves ir viską suberiam į vieną.', 831, '15.03', 9),
(3, 'Jautienos faršas su svogūnais', '1. Pakepiname faršą. 2. Pakepinam svogūną. 3. Viską į vieną', 622, '12.97', 10),
(4, 'Kepta vištiena su svogūnu ir petražolėmis', '1. Supjaustome vištieną. 2. Pakepiname vištieną 3. Pakepiname svogūną ir petražolę. 4.Viską į vieną', 663, '26.86', 7),
(5, 'Keptos bulvės su grietine', '1. Supjaustom bulves ir svogūną. 2. Pakepinam bulves ir svogūną. 3. Sumaišome su grietine', 754, '19.22', 9),
(6, 'Bulvių košė', '1. Supjaustyti bulves 2. Išvirti 3. Sutrinti bulves maišant su pienu', 352, '9.52', 6),
(7, 'Teriyaki vištiena', '1. Supjaustyti juostelėmis vištieną. 2. Užmarinuoti teriyaki padaže. 3. Iškepti', 329, '18.76', 6),
(8, 'Lęšių ir avinžirnių sriuba', '1. Supjaustyt daržoves. 2. Virti daržoves ir lęšius. 3. Sutrinti daržoves ir lęšius. 4. Įdėti avinžirnius ir truputį pavirti. 5. Pateikti su grietine', 1410, '27.23', 8),
(9, 'Avižinė košė', '1. Išvirti dribsnius piene', 288, '8.12', 10),
(10, 'Mutinys', '1. Sumaišyti duoną, braškes ir pieną', 596, '8.75', 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
