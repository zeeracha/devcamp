-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 13, 2022 at 07:34 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homework16_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `emplyee`
--

CREATE TABLE `emplyee` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emplyee`
--

INSERT INTO `emplyee` (`id`, `firstname`, `lastname`, `age`, `created`, `address`) VALUES
(1, 'Neil', 'Armstrong', 34, '2022-05-13 10:21:36', 'Brooklyn'),
(2, 'Leslie', 'Ellis', 24, '2022-05-10 09:20:19', 'Brooklyn'),
(3, 'Sandra', 'Hoffman', 35, '2022-05-10 11:13:13', 'queens'),
(4, 'Cameron', 'Meyer', 19, '2022-05-06 15:23:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emplyee`
--
ALTER TABLE `emplyee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emplyee`
--
ALTER TABLE `emplyee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
