-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2025 at 09:46 AM
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
-- Database: `tugas_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `role`) VALUES
(1, 'davamaulana', 'davamln@gmail.com', 'scrypt:32768:8:1$UO3DoZmmu1dZ52Gx$51878125002d4aa70028894b83cf6cee57433e708b360f68f0850cfc8090d4f84f5c6f3041c1ac15ca533d6a44ed0522f813b077604e9536f138ec0510f359a2', 'user'),
(2, 'zahra', 'dmvv404@gmail.com', 'scrypt:32768:8:1$je3PodrTrFfRRZrC$a567c2bd9a62f1a685bf9ecab5b21478b6334812635e82a9c94f531daa861be3f89be0cdad635791d40b4cf408b479b85ee438c33e0ff8cf0a7434d6d51dcb8b', 'user'),
(4, 'yana', 'yana@gmail.com', 'scrypt:32768:8:1$u7IEIwKllSZySIbE$765cff1a7d4296e1e0e3a9e1b2c7c75ebfffc4f9f5c3071fd9d64ea8bed1c54d8cf54857fbea5664b144ac5ef1e0aa184a4226aa4f9b92e5332c859693f0c9af', 'user'),
(7, 'raa', 'zahra@gmail.com', 'scrypt:32768:8:1$VdSa4mZFivNgF6Ht$4af96ba9ba9de1795eed408de57e66918c42ddb76e7e98c33e55b322a61619e4607c83636f7096f452aa72915d8e13bfaeb26c633055da5a7ef57c18aa0be8c0', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
