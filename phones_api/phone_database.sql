-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2024 at 04:07 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cellphone_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cellphones`
--

DROP TABLE IF EXISTS `cellphones`;
CREATE TABLE IF NOT EXISTS `cellphones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL,
  `price_range` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cellphones`
--

INSERT INTO `cellphones` (`id`, `brand`, `model`, `release_year`, `category`, `full_name`, `rating`, `price_range`, `image_url`) VALUES
(1, 'Apple', 'iPhone 13', 2021, 'Smartphone', 'Apple iPhone 13', '5 Stars', '$799 - $1,099', 'images/iphone13.webp'),
(2, 'Samsung', 'Galaxy S22', 2022, 'Smartphone', 'Samsung Galaxy S22', '4.5 Stars', '$799 - $1,199', 'images/galaxys22.webp'),
(3, 'Google', 'Pixel 6', 2021, 'Smartphone', 'Google Pixel 6', '4.7 Stars', '$599 - $899', 'images/pixel6.jpg'),
(4, 'OnePlus', '9 Pro', 2021, 'Smartphone', 'OnePlus 9 Pro', '4.5 Stars', '$969 - $1,069', 'images/oneplus9pro.webp'),
(5, 'Xiaomi', 'Mi 11', 2021, 'Smartphone', 'Xiaomi Mi 11', '4.6 Stars', '$649 - $799', 'images/mi11.jpeg'),
(6, 'Realme', 'GT 5G', 2022, 'Smartphone', 'Realme GT 5G', '4.4 Stars', '$399 - $499', 'images/realmeGT5G.webp'),
(7, 'Sony', 'Xperia 1 III', 2021, 'Smartphone', 'Sony Xperia 1 III', '4.8 Stars', '$1,299 - $1,399', 'images/xperia1iii.webp'),
(8, 'Huawei', 'P50 Pro', 2021, 'Smartphone', 'Huawei P50 Pro', '4.3 Stars', '$1,099 - $1,299', 'images/p50pro.jpg'),
(9, 'Motorola', 'Edge+', 2020, 'Smartphone', 'Motorola Edge+', '4.5 Stars', '$999 - $1,199', 'images/edgeplus.webp'),
(10, 'Nokia', '8.3', 2020, 'Smartphone', 'Nokia 8.3', '4.2 Stars', '$499 - $599', 'images/nokia8.3.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
