-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 15, 2021 at 03:08 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_1531`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prod_image` varchar(200) NOT NULL,
  `prod_code` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `prod_image`, `prod_code`, `prod_name`, `prod_price`) VALUES
(1, './img/gingerale.png', 'rf', 'Ginger Ale', '3.25'),
(2, './img/blueberry.png', 'rf', 'Blueberry', '3.25'),
(3, './img/pomegranate.png', 'rf', 'Pomegranate', '3.25'),
(4, './img/rootbeer.png', 'rf', 'Root Beer', '3.25'),
(5, './img/strawberry.png', 'rf', 'Strawberry Lemonade', '3.25'),
(6, './img/tangerine.png', 'rf', 'Tangerine', '3.25'),
(7, './img/chocolate-chip.png', 'ck', 'Chocolate Chip Cookies', '7.49'),
(8, './img/sugar-cookies.png', 'ck', 'Holiday Sugar Cookies', '5.49'),
(9, './img/peanut-butter.png', 'ck', 'Peanut Butter Cookies', '5.49'),
(10, './img/thin-mints.png', 'ck', 'Thin Mint Cookies', '5.49'),
(11, './img/oatmeal.png', 'ck', 'Oatmeal Raisin Cookies', '7.49'),
(12, './img/snicker.png', 'ck', 'Snickerdoodle Cookies', '5.49'),
(13, './img/arabica.png', 'cf', 'Arabica Coffee', '20.49'),
(14, './img/robusta.png', 'cf', 'Robusta', '20.49'),
(15, './img/ethiopian.png', 'cf', 'Ethiopian Coffee', '20.49'),
(16, './img/excelsa.png', 'cf', 'Excelsa Coffee', '20.49'),
(17, './img/liberica.png', 'cf', 'Liberica Coffee', '20.49'),
(18, './img/vietnam.png', 'cf', 'Vietnam Coffee', '20.49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
