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
-- Table structure for table `kategorija_virtuve_junginys`
--

DROP TABLE IF EXISTS `kategorija_virtuve_junginys`;
CREATE TABLE IF NOT EXISTS `kategorija_virtuve_junginys` (
  `kategorijos_id` int(10) UNSIGNED NOT NULL,
  `virtuves_id` int(10) UNSIGNED NOT NULL,
  KEY `kategorijos_id` (`kategorijos_id`),
  KEY `virtuves_id` (`virtuves_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategorija_virtuve_junginys`
--

INSERT INTO `kategorija_virtuve_junginys` (`kategorijos_id`, `virtuves_id`) VALUES
(2, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategorija_virtuve_junginys`
--
ALTER TABLE `kategorija_virtuve_junginys`
  ADD CONSTRAINT `kategorija_virtuve_junginys_ibfk_1` FOREIGN KEY (`kategorijos_id`) REFERENCES `kategorija` (`id`),
  ADD CONSTRAINT `kategorija_virtuve_junginys_ibfk_2` FOREIGN KEY (`virtuves_id`) REFERENCES `virtuve` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
