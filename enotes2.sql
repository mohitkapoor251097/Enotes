-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 06:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enotes2`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `date`, `uid`) VALUES
(6, 'jsp', 'whtherhvwrvwv', '2021-02-23 09:47:24', 6),
(13, 'java', 'bhhgffffhfh', '2021-04-20 12:24:56', 6),
(18, 'Php', 'php', '2021-04-20 12:54:16', 6),
(28, 'java', 'bthththth', '2021-04-20 13:25:14', 8),
(31, 'what is java', 'Java is a programming language.', '2021-05-14 17:34:23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `profile`) VALUES
(1, 'Ram', 'kapoorm570@gmail.com', 'passwor', ''),
(3, 'jatin', 'mohitkapoor251097@gmail.com', '45678', 'IMG_20210307_131929_079.jpg'),
(4, 'Ram', 'ram@123gmail.com', '89876', 'default.jpg'),
(5, 'jatin', 'jatinkmadaan@gmail.com', '1234', 'default.jpg'),
(6, 'vikas sharma', 'wikasdude@gmail.com', 'password', 'IMG_20210307_131929_079.jpg'),
(7, 'abc', 'ujrm@hjfg.com', 'ghgbhmj', 'default.jpg'),
(8, 'Prateek', 'prateek.dwhffhdvcsaa@gmail.com', 'Prateek', 'default.jpg'),
(10, 'Rahul', 'rahul@gmail.com', '12345', 'default.jpg'),
(11, 'Madhav kapoor', 'madhav@gmail.com', '12345', 'default.jpg'),
(13, 'vijay', 'vijay@gmail.com', '2510', 'IMG_20180326_223445_802.jpg'),
(14, 'Sham', 'sham@gmail.com', '12345', 'IMG_20210307_131929_079.jpg'),
(15, 'Tarun Dhiman', '', 'tarun', 'default.jpg'),
(17, 'Sumit kumar', 'sumit@gmail.com', 'sumit', 'about.jpg'),
(18, 'Vinay', 'vinay@gmail.com', '12345', 'about.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_ibfk_1` (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
