-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2020 at 03:51 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paket_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id` int(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_address_detail` varchar(150) NOT NULL,
  `customer_zip_code` varchar(10) NOT NULL,
  `zone_code` varchar(10) NOT NULL,
  `organization_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id`, `customer_name`, `customer_address`, `customer_email`, `customer_phone`, `customer_address_detail`, `customer_zip_code`, `zone_code`, `organization_id`, `location_id`) VALUES
(1, 'PT AMARIS HOTEL SIMPANG LIMA', 'JL. KH. AHMAD DAHLAN NO. 01, SEMARANG TENGAH', '', '0248453499', 'KOTA SEMARANG SEMARANG TENGAH KARANGKIDUL', '50241', 'SMG', 6, 59565165),
(3, 'sili3', 'as', 'as', 'as', 'as', '22222', '85', 58, 58);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
