-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 12:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grip_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(3, 'Jayesh Rajgor', 'Chintan Rajgor', 3000, '2021-05-17 13:01:05'),
(4, 'Prathu Rathore', 'Jay Karolia', 5000, '2021-05-17 13:01:52'),
(5, 'Aditya Jain', 'Chintan Rajgor', 70000, '2021-05-17 13:04:16'),
(6, 'Khushal Jain', 'Chintan Rajgor', 1000000, '2021-05-17 13:05:45'),
(7, 'Jayesh Rajgor', 'Chintan Rajgor', 111567, '2021-05-17 13:07:31'),
(8, 'Khushal Jain', 'Harsh Patel', 50000, '2021-05-17 13:13:43'),
(9, 'Khushal Jain', 'Kashyap Kurani', 65000, '2021-05-17 13:14:36'),
(10, 'Aditya Jain', 'Jay Karolia', 45000, '2021-05-17 13:15:14'),
(11, 'Varsha Rajgor', 'Chintan Rajgor', 10000, '2021-05-17 19:54:11'),
(12, 'Chintan Rajgor', 'Kartik Nayak', 10000, '2021-05-17 20:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Chintan Rajgor', 'rajgorjc@gmail.com', 1234567),
(2, 'Prathu Rathore', 'prathu123@gmail.com', 35000),
(3, 'Harsh Patel', 'harsh2001@gmail.com', 70000),
(4, 'Khushal Jain', 'khushal22@gmail.com', 8885000),
(5, 'Tejas Sawant', 'tejas69@gmail.com', 500000),
(6, 'Aditya Jain', 'adityaj1@gmail.com', 1436000),
(7, 'Jay Karolia', 'jayk@gmail.com', 55555),
(8, 'Akshit Solanki', 'aj2001@gmail.com', 50000),
(9, 'Kashyap Kurani', 'kk99@gmail.com', 100000),
(10, 'Kartik Nayak', 'kartikn007@gmail.com', 100000),
(22, 'Jayesh Rajgor', 'jayeshrajgor123@gmai.com', 9885433),
(23, 'Varsha Rajgor', 'Varsha@gmail.com', 490000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
