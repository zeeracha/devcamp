-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 14, 2022 at 08:37 AM
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
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `isbn` bigint(13) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `price` int(20) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`isbn`, `bookname`, `price`, `created`) VALUES
(9783598215766, 'His Toy', 289, '2022-05-14 08:23:30'),
(9783598215919, 'The Mars Room', 199, '2022-05-14 08:23:30'),
(9783598215933, 'The Marquis and I', 250, '2022-05-14 08:23:30'),
(9783598215957, 'Blood on the Tongue', 352, '2022-05-14 08:23:30'),
(9783598215995, 'A Higher Loyalty', 157, '2022-05-14 08:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `emplyee`
--

CREATE TABLE `emplyee` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emplyee`
--

INSERT INTO `emplyee` (`id`, `firstname`, `lastname`, `age`, `created`) VALUES
(1, 'Noah', 'Armstrong', 34, '2022-05-14 08:12:36'),
(2, 'Leslie', 'Ellis', 24, '2022-05-14 08:12:36'),
(3, 'Sandra', 'Hoffman', 35, '2022-05-14 08:12:36'),
(4, 'Cameron', 'Meyer', 19, '2022-05-14 08:12:36'),
(5, 'Cameron', 'Moore', 27, '2022-05-14 08:12:36');

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
(9783598215919, 2, 199, 1, '2022-05-14 08:32:35', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `emplyee`
--
ALTER TABLE `emplyee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`inv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `isbn` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9783598215996;

--
-- AUTO_INCREMENT for table `emplyee`
--
ALTER TABLE `emplyee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
