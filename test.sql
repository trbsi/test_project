-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2016 at 09:26 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `productlines`
--

CREATE TABLE IF NOT EXISTS `productlines` (
`id` int(11) NOT NULL,
  `textDescription` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productlines`
--

INSERT INTO `productlines` (`id`, `textDescription`) VALUES
(1, 'DESCRIPTION OF PRODUCT LINE 1'),
(2, 'DESCRIPTION OF PRODUCT LINE 2'),
(3, 'DESCRIPTION OF PRODUCT LINE 3');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `productCode` varchar(50) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productLine` int(11) NOT NULL,
  `productDescription` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productCode`, `productName`, `productLine`, `productDescription`) VALUES
(1, 'X', 'Ime 1', 1, 'Some description'),
(2, 'Y', 'Ime 2', 1, 'Description 2'),
(3, 'E', 'Ime 3', 2, 'Description E'),
(4, 'A', 'Ime 4', 2, 'Description A'),
(5, 'B', 'Ime 5', 3, 'Description B'),
(6, 'C', 'Ime 6', 2, 'Description C'),
(7, 'D', 'Ime 7', 1, 'Description D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productlines`
--
ALTER TABLE `productlines`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productlines`
--
ALTER TABLE `productlines`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
