-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 05:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `springved2`
--

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `created` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `created`, `name`, `phone`, `status`, `address`, `city`, `email`, `firstName`, `lastName`, `state`, `age`, `gender`, `modified`) VALUES
(8, '2023-08-04', 'ved', 654654, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-08-05'),
(19, '2023-08-05', 'ved', 654654, 0, NULL, NULL, NULL, NULL, NULL, NULL, 21, 'Male', '2023-08-05'),
(20, '2023-08-05', NULL, 1223259, 0, NULL, NULL, NULL, 'Vedprakash', NULL, NULL, 23, 'Male', '2023-08-05'),
(21, '2023-08-05', NULL, 918329082608, 0, NULL, NULL, NULL, 'Vedprakash', 'Kashte', NULL, 23, 'Male', '2023-08-05'),
(22, '2023-08-05', NULL, 918329082608, 0, 'Raja Raghuji nagar', 'Nagpur', 'vedprakashkashte@gmail.com', 'Vedprakash', 'Kashte', 'Maharashtra', 0, 'Male', '2023-08-05'),
(23, '2023-08-05', NULL, 918329082608, 1, 'Raja Raghuji nagar', 'Nagpur', 'vedprakashkashte@gmail.com', 'Vedprakash', 'Kashte', 'Maharashtra', 0, 'Male', '2023-08-05'),
(24, '2023-08-05', NULL, 918329082608, 1, 'Raja Raghuji nagar', 'Nagpur', 'vedprakashkashte@gmail.com', 'Vedprakash', 'Kashte', 'UP', 0, 'Male', '2023-08-05'),
(25, '2023-08-05', NULL, 918329082608, 0, 'Raja Raghuji nagar', 'Nagpur', 'vedprakashkashte@gmail.com', 'Vedprakash', 'Kashte', 'Mumbai', 0, 'Male', '2023-08-05'),
(26, '2023-08-05', NULL, 918329082608, 1, 'Raja Raghuji nagar', 'Nagpur', 'vedprakashkashte@gmail.com', 'Vedprakash', 'Kashte', 'Maharashtra', 0, 'Male', '2023-08-05'),
(27, '2023-08-05', NULL, 918329082608, 1, 'Raja Raghuji nagar', 'Nagpur', 'vedprakashkashte@gmail.com', 'Vedprakash', 'Kashte', 'uioo', 0, 'Male', '2023-08-05'),
(28, '2023-08-05', NULL, 918329082608, 1, 'Raja Raghuji nagar', 'jbkhb u', 'vedprakashkashte@gmail.com', 'Vedprakash', 'Kashte', 'Maharashtra', 0, 'Male', '2023-08-05'),
(29, '2023-08-05', NULL, 918329082608, 1, 'Raja Raghuji nagar', 'dfghjk', 'vedprakashkashte@gmail.com', 'Vedprakash', 'Kashte', 'Maharashtra', 0, 'Male', '2023-08-05'),
(30, '2023-08-05', NULL, 918329082608, 1, 'Raja Raghuji nagar', 'Nagpur', 'vedprakashkashte108@gmail.com', 'Vedprakash', 'Kashte', 'Maharashtra', 0, 'Male', '2023-08-05'),
(31, '2023-08-05', NULL, 918329082608, 1, 'Raja Raghuji nagar', 'Nagpur', 'vedprakashkashte@gmail.com', 'Sagar', 'Kashte', 'Maharashtra', 0, 'Male', '2023-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `created` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created`, `email`, `modified`, `name`, `password`, `status`) VALUES
(1, '2023-06-02', 'ved@gmail.com', '2023-05-29', 'VED', '456321', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
