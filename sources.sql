-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2017 at 08:41 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsall`
--

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id_source` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `source` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `source_url` text COLLATE utf8mb4_bin NOT NULL,
  `source_image` text COLLATE utf8mb4_bin NOT NULL,
  `source_share_count` int(20) NOT NULL,
  `source_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id_source`, `id_language`, `id_user`, `id_category`, `source`, `source_url`, `source_image`, `source_share_count`, `source_created_on`, `status`) VALUES
(1, 2, 2, 1, 'Sakal', 'http://www.esakal.com/', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Sakal_Media_Group_logo.jpg/1200px-Sakal_Media_Group_logo.jpg', 3, '2017-06-09 06:31:40', 1),
(2, 2, 3, 1, 'pushari', 'http://www.newspaper.pudhari.co.in/', 'http://www.pudharicorp.com/images/logo7.png', 1, '2017-06-09 06:34:05', 1),
(14, 1, 3, 1, 'toi', '', 'http://www.pudharicorp.com/images/logo7.png', 1, '2017-06-03 14:56:14', 1),
(15, 3, 3, 1, 'hindi samachar', '', 'http://www.pudharicorp.com/images/logo7.png', 1, '2017-06-03 14:56:14', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id_source`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id_source` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
