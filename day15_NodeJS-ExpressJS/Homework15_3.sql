-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 14, 2022 at 11:34 AM
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
-- Database: `homework15`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `isbn` bigint(13) NOT NULL,
  `employee_id` int(13) NOT NULL,
  `price` int(20) NOT NULL,
  `volumes` int(13) NOT NULL,
  `created` datetime NOT NULL,
  `inv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`isbn`, `employee_id`, `price`, `volumes`, `created`, `inv_id`) VALUES
(9783598215933, 3, 250, 1, '2022-05-14 08:32:35', 1),
(9783598215957, 4, 352, 1, '2022-05-14 08:32:35', 2),
(9783598215995, 1, 157, 1, '2022-05-14 08:32:35', 3),
(9783598215919, 2, 199, 1, '2022-05-14 08:32:35', 4),
(9783598215933, 3, 250, 1, '2022-05-14 08:32:35', 5),
(9783598215957, 4, 352, 1, '2022-05-14 08:32:35', 6),
(9783598215995, 1, 157, 1, '2022-05-14 08:32:35', 7),
(9783598215919, 2, 199, 1, '2022-05-14 08:32:35', 8),
(9783598215787, 3, 599, 1, '2022-05-14 11:14:01', 9),
(9783345215785, 4, 390, 1, '2022-05-14 11:14:01', 10),
(9783345216784, 2, 365, 1, '2022-05-14 11:14:01', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`inv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
