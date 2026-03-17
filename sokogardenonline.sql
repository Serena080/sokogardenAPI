-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 09:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sokogardenonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` varchar(5000) NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(1, 'Android smartphone', 'This is a very mordern phone', 60000, 'smartphone2.jpg'),
(2, 'Iphone 15 promax', 'This is the newest phone in the market', 160000, 'ipone15 mex.jpg'),
(3, 'Samsung S25', 'The phone withcutting edge chip technology', 130500, 'download (27).jpg'),
(4, 'Samsung S21', 'The phone withcutting edge chip technology', 99500, 'Galaxy S21.jpg'),
(5, 'Oppo Reno 10', 'The phone withcutting edge chip technology', 100500, '⚠️ ׂ⛤  ִ.jpg'),
(6, 'Samsung S22+', 'The phone withcutting edge chip technology', 100500, 'Samsung S22.jpg'),
(7, 'Oppo Reno 10', 'Phon e with the newest technology and AI', 100500, 'Oppo Reno 10.jpg'),
(8, 'One plus++', 'From the producers of Oppo and Samsung:', 150000, 'Oneplus 13+.jpg'),
(9, 'Huawei', 'Affordable annd neat tech', 25000, 'Huawei 35.jpg'),
(10, 'Samsung Flip phone', 'The remake the iconic flip phone os the 20th century', 50750, 'Samsung Flip phone.jpg'),
(11, 'Iphone 15 pro max', 'The new brand of the Iphone makers', 750000, 'ipone15 mex.jpg'),
(12, 'Oppo A92', 'The new and affordable version of Oppo', 40500, 'Oppo A92.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone`, `password`) VALUES
(1, 'Martin', 'martinx@gmail.com', '25441449441', 'smart'),
(2, 'Martha', 'marthax.gmail.com', '25441500441', 'yellow'),
(3, 'Martha', '25441500441', 'marthax.gmail.com', 'yellow'),
(4, 'Yolanda ', '25441500441', 'myrbx.gmail.com', 'whoop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
