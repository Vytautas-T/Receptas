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
-- Table structure for table `receptai_igredientai_sujungimas`
--

DROP TABLE IF EXISTS `receptai_igredientai_sujungimas`;
CREATE TABLE IF NOT EXISTS `receptai_igredientai_sujungimas` (
  `igrediento_id` int(10) UNSIGNED NOT NULL,
  `recepto_id` int(10) UNSIGNED NOT NULL,
  KEY `igrediento_id` (`igrediento_id`),
  KEY `recepto_id` (`recepto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receptai_igredientai_sujungimas`
--

INSERT INTO `receptai_igredientai_sujungimas` (`igrediento_id`, `recepto_id`) VALUES
(6, 1),
(13, 1),
(14, 1),
(15, 1),
(12, 2),
(13, 2),
(14, 2),
(2, 3),
(6, 3),
(1, 4),
(6, 4),
(12, 4),
(6, 5),
(7, 5),
(8, 5),
(4, 6),
(7, 6),
(1, 7),
(9, 7),
(6, 8),
(8, 8),
(10, 8),
(11, 8),
(12, 8),
(4, 9),
(5, 9),
(3, 10),
(4, 10),
(16, 10);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `receptai_igredientai_sujungimas`
--
ALTER TABLE `receptai_igredientai_sujungimas`
  ADD CONSTRAINT `receptai_igredientai_sujungimas_ibfk_1` FOREIGN KEY (`igrediento_id`) REFERENCES `iingredientas` (`id`),
  ADD CONSTRAINT `receptai_igredientai_sujungimas_ibfk_2` FOREIGN KEY (`recepto_id`) REFERENCES `receptas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
