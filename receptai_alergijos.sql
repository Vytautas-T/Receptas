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
-- Table structure for table `receptai_alergijos`
--

DROP TABLE IF EXISTS `receptai_alergijos`;
CREATE TABLE IF NOT EXISTS `receptai_alergijos` (
  `recepto_id` int(10) UNSIGNED NOT NULL,
  `alergijos_id` int(10) UNSIGNED NOT NULL,
  KEY `recepto_id` (`recepto_id`),
  KEY `alergijos_id` (`alergijos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receptai_alergijos`
--

INSERT INTO `receptai_alergijos` (`recepto_id`, `alergijos_id`) VALUES
(1, 1),
(5, 7),
(6, 7),
(7, 11),
(7, 6),
(8, 7),
(9, 1),
(10, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `receptai_alergijos`
--
ALTER TABLE `receptai_alergijos`
  ADD CONSTRAINT `receptai_alergijos_ibfk_1` FOREIGN KEY (`recepto_id`) REFERENCES `receptas` (`id`),
  ADD CONSTRAINT `receptai_alergijos_ibfk_2` FOREIGN KEY (`alergijos_id`) REFERENCES `alergijos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
