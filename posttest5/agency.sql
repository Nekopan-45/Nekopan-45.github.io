-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 03:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vtuber`
--

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ytname` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`id`, `name`, `ytname`, `status`) VALUES
(2, 'Tokoyami Towa', 'Towa ch.', 'Hololive'),
(3, 'Siska Leontyne', 'Sika Leontyne [NIJISANJI]', 'Nijisanji'),
(4, 'Amatsuka Uto', 'Uto ch.', 'Indie'),
(6, 'Sakura Miko', 'Miko ch.', 'Hololive'),
(7, 'Kiryu Coco', 'Coco ch.', 'Hololive'),
(8, 'Mika Melatika', 'Mika Melatika [NIJISANJI]', 'Nijisanji'),
(9, 'Shylily', 'Shylily', 'Indie'),
(10, 'kson', 'kson', 'Vshojo'),
(11, 'Ironmouse', 'Ironmouse', 'Vshojo'),
(12, 'Bonnievier Pranaja', 'Bonnivier Pranaja [NIJISANJI]', 'Nijisanji'),
(13, 'Nekoyama Sena', 'Nekoyama Sena [Yume]', 'Yume Reality');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
