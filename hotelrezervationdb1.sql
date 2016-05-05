-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2016 at 09:59 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelrezervationdb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `roomcatprice`
--

CREATE TABLE `roomcatprice` (
  `catID` int(11) UNSIGNED NOT NULL,
  `RoomCat` varchar(12) NOT NULL DEFAULT ' ',
  `PriceForDay` float(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roomcatprice`
--

INSERT INTO `roomcatprice` (`catID`, `RoomCat`, `PriceForDay`) VALUES
(1, 'Luxe', 100.00),
(2, 'FirstClass', 80.00),
(3, 'SecClass', 50.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roomcatprice`
--
ALTER TABLE `roomcatprice`
  ADD PRIMARY KEY (`catID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roomcatprice`
--
ALTER TABLE `roomcatprice`
  MODIFY `catID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
