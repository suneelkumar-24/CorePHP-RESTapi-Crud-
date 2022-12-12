-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 05:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `oid` varchar(256) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `oid`, `name`, `age`, `comment`, `created`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', 32, 'Data Scientist', '2012-06-01 02:12:30'),
(2, '3336', 'sam.mraz1996@yahoo.com', 29, 'Apparel Patternmaker', '2013-03-03 01:20:10'),
(3, '3334', 'liliane_hirt@gmail.com', 36, 'Accountant', '2014-09-20 03:10:25'),
(4, '3335', 'michael2004@yahoo.com', 42, 'Shipping Manager', '2015-04-11 04:11:12'),
(5, '3334', 'krystel_wol7@gmail.com', 48, 'Chief Sustainability Officer', '2016-01-04 05:20:30'),
(6, 'Alan Wallin', 'neva_gutman10@hotmail.com', 37, 'Chemical Technician', '2017-01-10 06:40:10'),
(7, 'Joyce Hinze', 'davonte.maye@yahoo.com', 44, 'Transportation Planner', '2017-05-02 02:20:30'),
(8, 'Donna Andrews', 'joesph.quitz@yahoo.com', 49, 'Wind Energy Engineer', '2018-01-04 05:15:35'),
(9, 'Andrew Best', 'jeramie_roh@hotmail.com', 51, 'Geneticist', '2019-01-02 02:20:30'),
(10, 'Joel Ogle', 'summer_shanah@hotmail.com', 45, 'Space Sciences Teacher', '2020-02-01 06:22:50'),
(19, '', '', 0, '', '2022-08-15 08:04:36'),
(20, 'TEst', 'TEst@gmail.com', 24, 'TEst', '2022-08-15 08:04:59'),
(21, 'TEst', 'TEst@gmail.com', 24, 'TEst', '2022-08-15 08:09:13'),
(22, '', 'TEst', NULL, '', NULL),
(23, '', '', NULL, '', NULL),
(24, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(25, '3334', 'liliane_sdhirt@gmail.com', 36, 'Accountant', '2014-09-20 03:10:25'),
(26, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(27, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(28, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(29, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(30, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(31, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(32, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(33, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(34, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(35, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(36, '', '', NULL, '', NULL),
(37, '', '', NULL, '', NULL),
(38, '', '', NULL, '', NULL),
(39, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(40, '', '', NULL, '', NULL),
(41, '', '', NULL, '', NULL),
(42, '', '', NULL, '', NULL),
(43, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(44, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(45, 'TEst', 'TEst', NULL, 'TEst@gmail.com', NULL),
(46, 'AB123456X', 'TEst oNE', NULL, 'COMMENT ONE', NULL),
(47, 'AB123456X', 'TEst TWO', NULL, 'COMMENT TWO', NULL),
(48, 'AB123456XY', 'TEst ONE', NULL, 'COMMENT ONE', NULL),
(49, 'AB123456XY', 'TEst TWO', NULL, 'COMMENT TWO', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
