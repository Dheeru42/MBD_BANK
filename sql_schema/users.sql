-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2026 at 10:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ram_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(1004) NOT NULL,
  `account_number` varchar(12) NOT NULL,
  `ifsc` varchar(11) DEFAULT 'MBD002181',
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `current_address` varchar(1000) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(115) DEFAULT NULL,
  `aadhar` varchar(12) DEFAULT NULL,
  `transaction_id` varchar(124) NOT NULL,
  `account_status` enum('ACTIVE','INACTIVE') DEFAULT 'ACTIVE',
  `open_date` date DEFAULT NULL,
  `open_time` time DEFAULT NULL,
  `balance` text NOT NULL,
  `account_type` enum('SAVING','CURRENT') DEFAULT 'SAVING',
  `pin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `customer_id`, `account_number`, `ifsc`, `name`, `father_name`, `age`, `gender`, `current_address`, `occupation`, `mobile`, `email`, `aadhar`, `transaction_id`, `account_status`, `open_date`, `open_time`, `balance`, `account_type`, `pin`) VALUES
(1, '2101', '2181010001', 'MBD002181', 'Dheeraj Varshney', 'Bhupendra Kumar', 26, 'Male', '2G/18,Gopi mill compound Naurangabad,Aligarh\r\n', 'Student', '9411272563', 'dheerajvarshney74@gmail.com', '438755079546', 'TXN202608041038119224', 'ACTIVE', '2026-08-04', '14:08:47', 'BXfMgfnKeiVCV9uSSGVQZkoVc3VoE+/DA42feCaGVcI=', 'SAVING', '$2y$10$gCOPLR2ef3.gSOWGMONlc.ywbs8ojfCu7BvFj.6gD4KLwyelYrVG6'),
(2, '2102', '2181010002', 'MBD002181', 'Ram Varshney', 'Dasrath Varshney', 27, 'Male', '2G/18,Gopi mill compound Naurangabad,Aligarh\r\n', 'God', '9412510127', 'ramvarshney27@gmail.com', '138755079546', 'TXN202608041038476518', 'ACTIVE', '2026-08-04', '14:09:24', '/37CR2ucgyLvIkcfN0fo2pVktDYnuAgiB5LMnGRUd3Q=', 'SAVING', '$2y$10$Mw2wBq2zCvJekbtmHnqhsehnV/kGouznKeaRdKBLH.MTMND2Vr4rK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `aadhar` (`aadhar`),
  ADD UNIQUE KEY `customer_id` (`customer_id`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
