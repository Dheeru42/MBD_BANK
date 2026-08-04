-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2026 at 10:44 AM
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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `account_number` varchar(30) DEFAULT NULL,
  `transaction_type` enum('Credit','Debit','Transfer','QR Payment','Interest','Refund') DEFAULT NULL,
  `amount` text NOT NULL,
  `balance_before` text NOT NULL,
  `balance_after` text NOT NULL,
  `status` enum('Success','Failed') DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_id`, `account_number`, `transaction_type`, `amount`, `balance_before`, `balance_after`, `status`, `remarks`, `created_at`) VALUES
(1, 'TXN202608041039325841', '2181010001', 'Credit', 'M7ImiVB3gi4IzAVw/8h8kSa5KKxn466uhHOkc9R1QTU=', '8/mO8cjHnbukwQeh4LOcR6NGreIWw9H29MKeKgOQDPI=', 'qRXMvCMezXv09u+Q0OBaHI7i2ik1fcYo4NDHAl9Y/vY=', 'Success', 'Cash Deposit', '2026-08-04 08:39:32'),
(2, 'TXN202608041039395133', '2181010001', 'Credit', 'X+/JLZGt8JS6kk3hI+VyXk6cv9D/D2iCsyoASv4A3p4=', 'V/Vx3hiI2lGocjnp3iAcnvjZalOBF7MicrDvO/rRd0w=', 'Kzk0RZgr5aI8EbclfGIg1S6nPWmq1RJcWVq4R4xjndE=', 'Success', 'Cash Deposit', '2026-08-04 08:39:39'),
(3, 'TXN202608041039432758', '2181010001', 'Credit', 'DzaIlOkudFLtoByRFIsYkOMsJkz9lY0bm7xnehxVor0=', 'UmIGhUcw78D0r2mbTHrHMM8M1ZqNn3C1V1iy9CDUUJI=', 'PYQ2+MCqP/GItzVvnLiOoeOkklfHT4RkIXWaZVh7+ck=', 'Success', 'Cash Deposit', '2026-08-04 08:39:43'),
(4, 'TXN202608041039578983', '2181010001', 'Credit', 'udjHkO/cCgzQBxHk5kj++TLqIEQxJ6BfqGb16QTC0tU=', '103yAT+frrykX9HEeuXcwTFmk+BkkLuSwlQKZ5tVRRw=', 'EcTTaQLIviSdzb3NcCAbSooRDTY80nG7XF8lLVXAGno=', 'Success', 'Cash Deposit', '2026-08-04 08:39:57'),
(5, 'TXN202608041040029071', '2181010002', 'Credit', 'k1Hv5JfRPzUBfPLoo03T7Rr87TkOHZCowVGcZyAg5RQ=', 'i/sfpQkfAn5HGXqOuFEPzgZx6UgBtc6LkYr7ly5J1VE=', 'SdxMFC3nTO90DWlajHtLM1p/vDlrKa1gXXdlCWUzZGc=', 'Success', 'Cash Deposit', '2026-08-04 08:40:02'),
(6, 'TXN202608041040052404', '2181010002', 'Credit', '/VjZ85lrQoE94sJgafTxzKi+TL6XZYK0QJ7f8PJSAV8=', 'x2v3ntM5K7t9eZURb38m9PQuCsQ2aVPZ068s6qPb3lg=', '6u9TXF/D8t7iPoEiuAyBNvXD6odV0SLOTn2fxfvd7CY=', 'Success', 'Cash Deposit', '2026-08-04 08:40:05'),
(7, 'TXN202608041040085699', '2181010002', 'Credit', 'E9sf413LFuj66H8OLx5jHh1g3vuoDG5UqjI1yGpo5yQ=', '7DW3W91f4EkGC/+o3pvG+YaYnjGdlntDWVQPt8ztUL0=', '87Bxw7LOaYvj9ag04oydeINcjJKgA1GoyQROD9LIp68=', 'Success', 'Cash Deposit', '2026-08-04 08:40:08'),
(8, 'TXN202608041040112420', '2181010002', 'Credit', 'mp5nS+YzdlS2rfQjhnWZROpCkVzHUjV0hZtQ63T7qWY=', 'zfEtyTLvhxmsR8MJFKd8UOJVut1u98Ew7ksaRk7/Zl8=', 'e/iD3xfbTXebfSTH2JE3rjSz1/NoTHrV0Fr7zW1xsVo=', 'Success', 'Cash Deposit', '2026-08-04 08:40:11'),
(9, 'TXN202608041040143908', '2181010002', 'Credit', 'tNk2R878Gqs0allPgMbBvkpyTtz/ICqPM+R6iLDN6+g=', 'Bi6aiY8JOh65ViwJbefipkS4rLWxT6ZLZVSGOD+9PuU=', '/37CR2ucgyLvIkcfN0fo2pVktDYnuAgiB5LMnGRUd3Q=', 'Success', 'Cash Deposit', '2026-08-04 08:40:14'),
(10, 'MBD17858328984225', '2181010001', 'Debit', 'TdJrddflpvU7XfudxZXBZLfCINkzCUhfRnShRmoDyd0=', 'tgRFl/YnapeT6eKzE/kQRH/ltmvuB5oLty9WKOcY+gE=', 'kZHF1EpVZGQneddB3giOYeD100mtKoUW0ZGDMBKdTNE=', 'Success', 'Money transferred to MBD Pay wallet', '2026-08-04 08:41:38'),
(11, 'MBD17858329163976', '2181010001', 'Credit', 'aahLpaPc9tUGtaYkfr2llvVcNkLknScMWZ4mpAZcThs=', 'kvUUGWJxdoc7VxTNj+Bzf8Zs+yfyWLmrgO+mfSlfzX4=', 'BXfMgfnKeiVCV9uSSGVQZkoVc3VoE+/DA42feCaGVcI=', 'Success', 'Money received from MBD Pay wallet', '2026-08-04 08:41:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
