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
-- Table structure for table `receptai_virtuve`
--

DROP TABLE IF EXISTS `receptai_virtuve`;
CREATE TABLE IF NOT EXISTS `receptai_virtuve` (
  `recepto_id` int(10) UNSIGNED NOT NULL,
  `virtuve_id` int(10) UNSIGNED NOT NULL,
  KEY `virtuve_id` (`virtuve_id`),
  KEY `recepto_id` (`recepto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receptai_virtuve`
--

INSERT INTO `receptai_virtuve` (`recepto_id`, `virtuve_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 3),
(10, 6);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `receptai_virtuve`
--
ALTER TABLE `receptai_virtuve`
  ADD CONSTRAINT `receptai_virtuve_ibfk_1` FOREIGN KEY (`virtuve_id`) REFERENCES `virtuve` (`id`),
  ADD CONSTRAINT `receptai_virtuve_ibfk_2` FOREIGN KEY (`recepto_id`) REFERENCES `receptas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
