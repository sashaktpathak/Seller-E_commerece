-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2019 at 10:28 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_features`
--

CREATE TABLE `add_features` (
  `feature_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `feature` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `add_features`
--

INSERT INTO `add_features` (`feature_id`, `type_id`, `feature`) VALUES
(1, 3, 'width'),
(2, 3, 'color');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`) VALUES
(1, 'Phone'),
(3, 'Bedroom'),
(4, 'Room'),
(5, 'Furniture'),
(6, 'Hall'),
(7, 'battery'),
(8, 'car');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `client_num` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `username`, `password`, `email`, `phone`, `name`, `type`, `client_num`) VALUES
(1, 'admin', 'admin@123', '', '', 'Admin', 1, ''),
(2, 'sholls', 'january30', 'oniesther@gmail.com', '234 555 5___', 'Olusola Bamidele', 2, ''),
(7, 'tboy', 'tboy', 'samsung4reali@yahoo.com', '2348075563884', 'Samson', 2, '022'),
(8, 'memo', 'memo', 'memo@yahoo.com', '08033735390', 'Memo', 2, '023'),
(9, 'lanre', 'lanre', 'lanre@yahoo.com', '08038952676', 'Lanre', 2, '024');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `product_type` int(11) NOT NULL,
  `product_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `product_cond` int(11) NOT NULL,
  `product_desc` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `mrp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `img0` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img1` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img2` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img3` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img4` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img5` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img6` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img7` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img8` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img9` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `img10` varchar(600) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_type`, `product_name`, `product_cond`, `product_desc`, `price`, `quantity`, `mrp`, `img0`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `img9`, `img10`) VALUES
(2, 3, '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 3, '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 3, '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 3, '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 3, '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 3, '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_details_features`
--

CREATE TABLE `product_details_features` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `value` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_details_features`
--

INSERT INTO `product_details_features` (`id`, `feature_id`, `value`, `product_id`) VALUES
(1, 1, '', 3),
(2, 2, '', 3),
(3, 1, '', 4),
(4, 2, '', 4),
(5, 1, '', 5),
(6, 2, '', 5),
(7, 1, '', 6),
(8, 2, '', 6),
(9, 1, '', 7),
(10, 2, '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `type_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_type` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`type_id`, `subcategory_id`, `product_type`) VALUES
(1, 4, 'lithium battery'),
(3, 2, 'Deluxe Bed'),
(4, 2, 'Normal Bed'),
(5, 5, 'normal Sofa'),
(6, 5, 'deluxe sofa');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcategory_id`, `category_id`, `subcategory`) VALUES
(2, 3, 'Sleepinfg Bed'),
(4, 7, 'car battery'),
(5, 3, 'Sitting Sofa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_features`
--
ALTER TABLE `add_features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details_features`
--
ALTER TABLE `product_details_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_features`
--
ALTER TABLE `add_features`
  MODIFY `feature_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_details_features`
--
ALTER TABLE `product_details_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
