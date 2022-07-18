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
-- Table structure for table `ingredientai_alergijos`
--

DROP TABLE IF EXISTS `ingredientai_alergijos`;
CREATE TABLE IF NOT EXISTS `ingredientai_alergijos` (
  `igrediento_id` int(10) UNSIGNED NOT NULL,
  `alergijos_id` int(10) UNSIGNED NOT NULL,
  KEY `igrediento_id` (`igrediento_id`),
  KEY `alergijos_id` (`alergijos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredientai_alergijos`
--

INSERT INTO `ingredientai_alergijos` (`igrediento_id`, `alergijos_id`) VALUES
(4, 7),
(5, 1),
(8, 7),
(9, 6),
(9, 11),
(15, 1),
(16, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ingredientai_alergijos`
--
ALTER TABLE `ingredientai_alergijos`
  ADD CONSTRAINT `ingredientai_alergijos_ibfk_1` FOREIGN KEY (`igrediento_id`) REFERENCES `iingredientas` (`id`),
  ADD CONSTRAINT `ingredientai_alergijos_ibfk_2` FOREIGN KEY (`alergijos_id`) REFERENCES `alergijos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
