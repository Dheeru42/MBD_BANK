-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2026 at 01:17 PM
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
(11, 'MBD17858329163976', '2181010001', 'Credit', 'aahLpaPc9tUGtaYkfr2llvVcNkLknScMWZ4mpAZcThs=', 'kvUUGWJxdoc7VxTNj+Bzf8Zs+yfyWLmrgO+mfSlfzX4=', 'BXfMgfnKeiVCV9uSSGVQZkoVc3VoE+/DA42feCaGVcI=', 'Success', 'Money received from MBD Pay wallet', '2026-08-04 08:41:56'),
(12, 'MBD17858428778584', '2181010001', 'Debit', 'wBaEwOX2sFLbhuSkgAV3vjkI7D7Ham0ANGkfO/zEqhs=', 'nDBQZDmHNJXH86n1ltO/oOfNu4+4/1DexF2JPGQlJKs=', 'pARabkpnpI58XRohMDn8a03YxU/VhtBN+709c/RQm1s=', 'Success', 'Money transferred to MBD Pay wallet', '2026-08-04 11:27:57'),
(13, 'MBD17858430352785', '2181010001', 'Credit', 'f88NcNCtzGIbuRejqCZv3bIRUyY00xXKmmglkmb5mtw=', 'ixJu5ZBiImFz0t3LsSpiOXBXEtnvLZFnRP9BJDgz9fM=', 'JeeDkn74zb92aM/YCo8DtBq77D4oQyNJKJic/Rje1/I=', 'Success', 'Money received from MBD Pay wallet', '2026-08-04 11:30:35'),
(14, 'MBD17858564635840', '2181010002', 'Debit', '8vlNmFtw0EEbZWJrRyFXO7ujoDeu4MmE/jGuNo9ZSDg=', 'HnCd5h/cdUlhc6nO5WzNgI6JK+1i4hHfYGiMBKZzezw=', 'T6j0+O94i6RfZVTMXkeL/5uX7ZXiUrEJqpHWhr50754=', 'Success', 'Money transferred to MBD Pay wallet', '2026-08-04 15:14:23'),
(15, 'TXN202608061109497860', '2181010002', 'Credit', 'zCPTmFgnGgYfeXoyk/AzeiByLa7elfJ7dLbjfw1ZjzA=', 'hrBqOvKH4u987W5+hqwuo0nLRszm8TbmirJ3Hhj/OTc=', '5YY6vvd4Mi1HMYPNkLS753cKRKtJS6GCsrPL7eQUVOM=', 'Success', 'Cash Deposit', '2026-08-06 09:09:49'),
(16, 'TXN202608061109521120', '2181010002', 'Credit', 'yM6SxZigDxpFxiBuXP/6J6J86jtzaYFNHltXKs1eZHo=', '+RqOBO01Us7O0OMXAY2FieB5u3uQSLcF5D/J049qv6w=', '//rMoyqGY1pDk3Nqf0DUek+wABHkDq5sg75PWoNQVFU=', 'Success', 'Cash Deposit', '2026-08-06 09:09:52'),
(17, 'TXN202608061109568231', '2181010002', 'Credit', 'kZByTZC8Xdduj+/wbeMytOmy0pLPg4QhoeLOKdMB4+w=', 'joR+t4K+WeKK7dLBgcAx6Sf0uWnLQrYK6xZKyD1M5bk=', '7JSRKXUa+1iEmJC3H1WJrMYe4dc7mTxBjtCDVUeQa/g=', 'Success', 'Cash Deposit', '2026-08-06 09:09:56'),
(18, 'TXN202608070921285270', '2181010001', 'Credit', 'DfYBfvrJUlAjRmnomhZNDZ+tw9yw+QV0KVoXxw99B6M=', '3pf/aQl4P37AWRvVZ8KO9QCaYmJYKHzV44md+3hrlmo=', 'LxeZ3AZmcyHPdT40BFNZZ25Nxj8v2cmZeApLAFL4KDc=', 'Success', 'Cash Deposit', '2026-08-07 07:21:28'),
(19, 'TXN202608070921329892', '2181010001', 'Credit', '0KEXsbdME+R7p8USzqVfiBNoWiIVVUyvt8AndjlcMOk=', '7fXn1pjpd4mYlmv6IIXHD67fDHlX9lCk5toHOxiWAC0=', 'SUGAwH5tNz0GzNO4Ux3HrehBp7EmjIlnyohdKay8vh8=', 'Success', 'Cash Deposit', '2026-08-07 07:21:32'),
(20, 'TXN202608070926298404', '2181010001', 'Credit', 'Tbhl4aWobaoq2CQ78kPDNyHrHkPmFGXpq8f5UlzYLRM=', 'p1BMsVEWTq1SJKEKyRiGmFFqqu4IxzxN/iXHZywhtpk=', 'z6iyzA7YVyADy/b7Iusbsfoag6USOO/7YFHfWx+BcTk=', 'Success', 'Cash Deposit', '2026-08-07 07:26:29'),
(21, 'TXN202608070926337467', '2181010001', 'Credit', '0Ck5zCEQaMKmLrz3UAq+ClJA9bqncfS3Eui55gAyEC4=', '+e2b8C2xWI1/kK78WIHIa2prwP9lov97j9hz6GqpkYc=', '7Mj3m0hg/U6j3RW7w6aEFIbbnE6Y3HqTZbS0Iv5kMiw=', 'Success', 'Cash Deposit', '2026-08-07 07:26:33'),
(22, 'TXN202608070935545431', '2181010001', 'Credit', 'c7BEshnDj4Syxx5dTVPswUOiQ3On9QstGklJyQ04Eeo=', 'VC7fCFbZp6fkp5F+fJ5rtH5498QV8v8N3NrdtF2OhWI=', '46ay2GFewCEyI+jn220OhVbA/Hwy8JcsY5mYSk7uFDw=', 'Success', 'Cash Deposit', '2026-08-07 07:35:54'),
(23, 'TXN202608070936553090', '2181010001', 'Credit', 'e6oLSyTC0JsAzCO/KkGNtU8PkEQde/0/DnCPBr0qulU=', 'RSylNFYCeQ5y0Pv6lxsFY9HGXcJAyphYPhxSMtMBh60=', 'naJyggkyERe+i6Q2Siy9uvgzNGxYaYlwHgjwPXACCnA=', 'Success', 'Cash Deposit', '2026-08-07 07:36:55'),
(24, 'TXN202608070937388099', '2181010001', 'Credit', 'pRs8wwonBP/Rxz0yEhyfa1zebVlOcrFToGpnRLxRm/c=', 'hvLVPlCVODCYcP9t08+FCthfENLzAI+mJuxv3xtwUGc=', 'SO5lztQhhcqjcJMXqDZqzmlUPytr35MLGfh0rlbE++o=', 'Success', 'Cash Deposit', '2026-08-07 07:37:38'),
(25, 'TXN202608070938572837', '2181010001', 'Credit', 'i0rA47P6f6mxkFlHjoOLypBnnYaHPbvdd1kYMJFf+Hs=', 'yWSUx+AR+fv74NdCcOUgduzCnXY2yDKABJWqH+bux0I=', '9ieh8VXS0chIaFtPPNbDBQQ8A6KmgyPKR6FpoElrHdA=', 'Success', 'Cash Deposit', '2026-08-07 07:38:57'),
(26, 'TXN202608070945077190', '2181010001', 'Credit', 'dRkOGjqcUX/xYCQ02fEQR93C+wkhRvQTeV1h3f2X5O8=', 'VdkWEUDLOuGufIKdsRlDCGQo7C8+iK1kkNd4NxQ6dpM=', 'SgOy+WJPHEC7dVmj3Vnm3mFw9PTEoRjCFzH4Poff8o4=', 'Success', 'Cash Deposit', '2026-08-07 07:45:07'),
(27, 'TXN202608070952253531', '2181010001', 'Credit', 'bb1lHl9ub5LS6a7AG181CZ/j4d8LaC41AgQ7tzra+x4=', 'PZLYa5hoqh8mTL5/3FkG0ieI9Vg2FM1+jVfgooxCAUI=', '060/w/PQDdcDxPVeUVU+WHObX3XO1zoR0N3S39aboyA=', 'Success', 'Cash Deposit', '2026-08-07 07:52:25'),
(28, 'TXN202608070953012659', '2181010001', 'Credit', 'In4tY+HFZY9ROmlU9exuR5BDdHVMzPer8n+qnQ/NuTU=', 'Y4yARUs1FI98qZxDyQi9Lsj0k3kbp07lQQigxd0CAYQ=', 'Osn3d7MYzsZitvmipI95DWAotvvAiC6eU01K7H59uLk=', 'Success', 'Cash Deposit', '2026-08-07 07:53:01'),
(29, 'MBD17860892761270', '2181010001', 'Debit', 'sZcDJCNFjcVf23seR+/wfjCGxLqZLRkOqypIQnrYWk8=', 'kCaCMqotg8UOponIujavkhBZUbFm+RkwoTcIDjSQP3k=', 'UuI9Ia71qZ5NHLtsaVmxO1Hy/pqaQFT/p0nUtPHS0M0=', 'Success', 'Money transferred to MBD Pay wallet', '2026-08-07 07:54:36'),
(30, 'MBD17860892856052', '2181010001', 'Debit', 'TiCr5STg9S0n21piBotjZE0FBK96rMFfdEqxudheC0M=', 'ZcPOeUFmeughJPEPT1m8v60B8XdUF+HGEoEjcA0YiU4=', 'yR5s1kFs1w2Q19WlhCvMaKTUiwl7/fhD7ozh5RrV2xE=', 'Success', 'Money transferred to MBD Pay wallet', '2026-08-07 07:54:45'),
(31, 'MBD17860896375081', '2181010001', 'Debit', '6Sektb42+D0IS1Gi/s+hyl/1MyjujmNT5BLy1k71P9k=', '5wzLVE7/tOdJMmiB3PUJKzEg7xYb0MfZeOdS8ny+vpI=', '9a0gzse9x5qCoRcZX0Vgc1drpcZ61RijDaDvifFTyqA=', 'Success', 'Money transferred to MBD Pay wallet', '2026-08-07 08:00:37'),
(32, 'MBD17860896587875', '2181010001', 'Credit', 'TNky7onu+d8m8mbB3091bq8LVurRs3ytxsBZ5FFw3oo=', 'DFJH6BTCSaLxncL6k1FJD8rrgBM4NWjxuDGTnbfdy3Y=', 'evjyd6TdsX73lkGbT9iD40LtNjx3ykTZtvMZY59swgY=', 'Success', 'Money received from MBD Pay wallet', '2026-08-07 08:00:58'),
(33, 'MBD17860896725789', '2181010001', 'Credit', '172dgLeHEDHTzkgla6cCLbj44n5yGFfSR5+CtjjAYls=', '/eD6yfnobRQHzR8mzcbufDiD0f12xBwqTi5WGpK+AKo=', '9r/ikEbRV0mt/KUWXQVaxEA3uKGY3nffGftrSemx828=', 'Success', 'Money received from MBD Pay wallet', '2026-08-07 08:01:12'),
(34, 'MBD17860896773413', '2181010001', 'Credit', 'F7Jd+aqwywwc7WmKX99VYH3Hmlm5/+UMbNk3RYff7UY=', 'fKTYJUkCCYFhejrS3Zx8zFgraIHChlX8xY3eRyERwQc=', 'QNJOl3Ii7ubbG1yMGZAVQpeqlCrc8qYq+bmQNQlJHF0=', 'Success', 'Money received from MBD Pay wallet', '2026-08-07 08:01:17'),
(35, 'MBD17860898609144', '2181010001', 'Credit', 'XYk38nUzt5ZHf6l3pW4Z8gU7XVXRr1LbFJC3sPvGVdI=', '4huVcIHZ3mKXJOmotmv2yyrrIZUXIrWFJVDeLf73RDg=', 'Lbe9sYBQeJ+YZlVDQ9J87ky2jyO9P4GfnRTgvwS6mE0=', 'Success', 'Money received from MBD Pay wallet', '2026-08-07 08:04:20'),
(36, 'MBD17860898672984', '2181010001', 'Debit', 'ZRMMRFrmib8ch4qXQS6hSh/pMSMNjGW0ccHB99cytb0=', 'W6NIqrD0Zz7zdh0iBUA+B5gUt2wvCvolTH1gRopdwXQ=', 'O3UbCuCki+18swt6G3BbQ7vwA87BaH17kzK3N5sHHTE=', 'Success', 'Money transferred to MBD Pay wallet', '2026-08-07 08:04:27'),
(37, 'MBD17860898775925', '2181010001', 'Credit', '1pDeijt1bc/92LYJj8uFphrKcY2gSzTmriB6Qh6MZ4c=', '5PyTY2UxUTISG5tZ5ggCo9W4bksZnV11Izq6ApQ0jHc=', 'gI9AU8jre8YafsZEesaE5a2Bf7TDswijNedPLj8t0KI=', 'Success', 'Money received from MBD Pay wallet', '2026-08-07 08:04:37'),
(38, 'TXN202608071107068474', '2181010003', 'Credit', 'RbdHkFdtDOXMt2hx+RfIaM2zh0UP8TVAZH56PwVD2pQ=', 'hGDillYOX/RXTK72TV40Lq1PtIz7eZ9k0MKBaBi5fBE=', '9iviThEvvozR/dKYuqL71T6RvLadXF5yi0w3a1aTPug=', 'Success', 'Cash Deposit', '2026-08-07 09:07:06'),
(39, 'MBD17860971946111', '2181010001', 'Debit', 'YeiZkk8XzMVPPiRsV82fNMBQKNXpAsvaYmjcrA24Oc8=', 'q24nY0OBtqbTpQA/rSZQc5L7Glwh1SZg4CQuLFlpP9c=', 'g3mDV8B9jqlVZHQP4TQQaO2QgCvG8ijgAijyHL6UIWc=', 'Success', 'Money transferred to MBD Pay wallet', '2026-08-07 10:06:34'),
(40, 'MBD17860973997087', '2181010001', 'Credit', 'OaibR/XGqwDrH1qyBG0VQwKs3jaRAtQ08bhaDZ5RJTc=', '6Qygu1g5nMs/hA/Tecbij7fewp4R3N5E/RINqodNcpA=', 'k4y/xqV7URA2jhhp3mRnMouOajOEgLSwksg/bQ6f4Vg=', 'Success', 'Money received from MBD Pay wallet', '2026-08-07 10:09:59'),
(41, 'TXN202608161313286000', '2181010001', 'Credit', '7MttG9Wl2NVjOAEJcvfXMeP2F0xe1DCqXz45TJmlX+s=', 'NYALYfz8/zoVLb7msYflZaQpltpeki9ItK7vzCUvEN8=', 'D9e1K/cSQt+CmgW6yPepQwX9hO7FJg6RRGn5vmo6uiw=', 'Success', 'Cash Deposit', '2026-08-16 11:13:28');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
