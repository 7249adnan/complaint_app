-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 08:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complaint`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` int(100) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `place` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `created_date` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `name`, `email`, `password`, `mobile`, `place`, `created_date`) VALUES
(2, 'Admin', 'admin@gmail.com', 'test', '1234567890', '', '2025-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `cus_id` int(255) DEFAULT NULL,
  `field_15` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_16` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_3` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `field_4` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `field_5` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_6` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_7` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_8` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_9` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_10` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_11` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_12` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_13` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_14` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cus_id`, `field_15`, `field_16`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `field_11`, `field_12`, `field_13`, `field_14`, `created_date`) VALUES
(20, '', '', 'user@gmail.com', 'Panneer', 'Nehru', '156', 'Vatti Pillayar Road', 'Kumbakonam', 'Water', 'Water Service Problem', 'High', 'Rejected', 'asfs', 'dasff', '', '', '', '2025-01-30'),
(23, '', '', 'user@gmail.com', 'Panneer Selvam', 'Safe home', '123', 'Kumbakonam', 'Pondi', 'Water', 'Water Service not recieving', 'Nil', 'Completed', 'Mun Water service stopped', 'Will be fixed in 4 hours', '', '', '', '2025-02-22'),
(24, '', '', 'user@gmail.com', 'Panneer', 'vasan Hosp', '4956', '504 - Vinayar Road', 'Chennai', 'Water', 'Water Not coming for last 2 days', 'Nil', 'Completed', 'Lack of water', 'Nil', '', '', '', '2025-04-16'),
(26, '', '', 'priya@gmail.com', 'Priya', 'Kumbakonam', '124 Vatti Pillayar Main Road', 'Near Agarwal Hosp', 'Thanjavur', 'Water', 'Water not coming for 2 days', 'Contact 9790675343', 'Completed', 'Reason', 'Solution', '', '', '', '2025-03-17'),
(28, '20.591169081431726', '78.9606684020996', 'user@gmail.com', 'Dharani', 'Kumberswarar Temple', 'Chennai', 'Chennai', 'Chennai', 'Street', 'Street Light Not working for 2 days', 'High', 'Pending', '', '', '', 'http://localhost/projects/complaint/web/uploads/istockphoto-496026170-612x612.jpg', 'http://localhost/projects/complaint/web/uploads/1 (2).jpg', '2025-01-29'),
(29, '', '', 'dharani1@gmail.com', 'Dharani', 'Kumb', '123 Kumbakonam', 'Kumbakonam', 'Chennai', 'Street', 'Light is not working', 'Low', 'Completed', 'Due to rain', 'its solved', 'nil', 'http://localhost/projects/complaint/web/uploads/1.JPG', 'http://localhost/projects/complaint/web/uploads/1 (2).jpg', '2025-01-29'),
(30, '9.425967357290594', '76.38328011550902', 'msooraj333@gmail.com', 'sooraj', 'Pallakad', 'no 2 Main road', 'Pallakad', 'Palakkad', 'Street', 'Street light is damaged', 'Low', 'On Progress', 'due to rain', 'it replaced', 'nil', 'http://localhost/projects/complaint/web/uploads/istockphoto-496026170-612x612.jpg', '', '2025-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `created_date` date DEFAULT NULL,
  `feedback_id` int(255) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_3` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_4` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`created_date`, `feedback_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`) VALUES
('2024-05-24', 4, 'user@gmail.com', 'Selvam', 'Thanks for the service', 'Chennai', 'Street'),
('2024-05-24', 5, 'user@gmail.com', 'Selvam', 'Thanks for the service', 'Bangalore', 'Street');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(100) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_3` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_4` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `created_date` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `email`, `password`, `mobile`, `field_1`, `field_2`, `field_3`, `field_4`, `created_date`) VALUES
(2, 'User', 'user@gmail.com', 'test', '1234567890', 'Kumbakonam', 'Thanjavur', 'whitey', 'bala', '2025-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `cus_id` int(255) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `field_1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`cus_id`, `email`, `field_1`, `created_date`) VALUES
(50, '', 'Bangalore', '2025-03-12'),
(51, '', 'Delhi', '2025-03-12'),
(55, '', 'Chennai', '2025-11-11'),
(56, '', 'Pondi', '2025-11-11'),
(58, '', 'Kumbakonam', '2025-11-11'),
(61, '', 'vijayawada', '2025-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `staff_login`
--

CREATE TABLE `staff_login` (
  `user_id` int(100) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `place` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `dept` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `created_date` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `staff_login`
--

INSERT INTO `staff_login` (`user_id`, `name`, `email`, `password`, `mobile`, `place`, `dept`, `created_date`) VALUES
(11, 'Street Chennai', 'street@gmail.com', 'test', '1234567890', 'Chennai', 'Street', '2025-04-07'),
(12, 'street', 'street2@gmail.com', 'test', '1234567890', 'Bangalore', 'Street', '2025-05-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `staff_login`
--
ALTER TABLE `staff_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `user_id` int(100) DEFAULT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `cus_id` int(255) DEFAULT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(255) DEFAULT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(100) DEFAULT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `cus_id` int(255) DEFAULT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `staff_login`
--
ALTER TABLE `staff_login`
  MODIFY `user_id` int(100) DEFAULT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
