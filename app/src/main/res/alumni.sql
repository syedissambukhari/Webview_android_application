-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 11:13 PM
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
-- Database: `alumni`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) UNSIGNED NOT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `rollno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `createdTime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `userId`, `email`, `rollno`, `name`, `description`, `imageURL`, `createdTime`) VALUES
(1, 16, 'hnspakistan2@gmail.com', 'FA01-BBA-7', 'Painting', 'ksabasj kdaskajs dakjd aksj askdja sakdsakj sak kasj dkja jka kjda ', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fwww.YTS.MX.jpg?alt=media&token=772d77c7-008d-4455-8c1c-c831ec1903b1', '2022-11-29 22:18:57'),
(2, 16, 'hnspakistan2@gmail.com', 'FA01-BBA-7', 'saas', 'asjdas jask d asda dhaskjdhaksjdh akdhkajshdskja hdkjash dkjhaskjd haskjhdakjhdhs dah dahjkdhas kj hdkas hdahkja', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fwww.YTS.MX.jpg?alt=media&token=3ddc7645-5dbd-4d91-a2c5-a4a58ee3732e', '2022-11-29 22:30:09'),
(5, 16, 'hnspakistan2@gmail.com', 'FA01-BBA-7', 'saas', 'asdsdaa', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fwww.YTS.MX.jpg?alt=media&token=3ddc7645-5dbd-4d91-a2c5-a4a58ee3732e', '2022-11-29 22:30:11'),
(6, 16, 'hnspakistan2@gmail.com', 'FA01-BBA-7', 'saas', 'asdsdaa', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fwww.YTS.MX.jpg?alt=media&token=3ddc7645-5dbd-4d91-a2c5-a4a58ee3732e', '2022-11-29 22:30:11'),
(7, 16, 'hnspakistan2@gmail.com', 'FA01-BBA-7', 'saas', 'asdsdaa', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fwww.YTS.MX.jpg?alt=media&token=3ddc7645-5dbd-4d91-a2c5-a4a58ee3732e', '2022-11-29 22:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `eventId` int(11) UNSIGNED NOT NULL,
  `commentText` varchar(255) NOT NULL,
  `rollno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) UNSIGNED NOT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rollno` varchar(255) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `createdTime` varchar(255) NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `rollno` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `vaccancies` int(11) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `jobType` varchar(255) NOT NULL,
  `minExperience` int(11) UNSIGNED NOT NULL,
  `createdTime` varchar(255) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `rollno`, `title`, `vaccancies`, `description`, `jobType`, `minExperience`, `createdTime`, `skills`, `verified`) VALUES
(3, 'ADMIN', 'JHJHHJG', 3, 'kjh lih', 'fullTime', 6, '2022-11-29 21:31:54', 'kghiu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `years` varchar(255) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `rollno` int(11) UNSIGNED NOT NULL,
  `emailverify` tinyint(1) NOT NULL DEFAULT 0,
  `adminverify` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `years`, `department`, `rollno`, `emailverify`, `adminverify`) VALUES
(14, 'ADMIN', 'huzaifa@gmail.com', '$2b$10$kExVQQR/HYmDwvioIpM1K.eLW.GV372cfh.G.nw2rpf0smhyCQ0Au', 'admin', 'FA18', 'BSE', 7, 1, 1),
(16, 'Ali Ahmed', 'hnspakistan2@gmail.com', '$2b$10$ApLZulCv3kX18TZDVwsSC.WmO/2CgDRtg5PSDVh/dwW6oi1nLLH4W', 'user', 'FA01', 'BBA', 7, 1, 1),
(17, 'Ali Akbar', 'ahmed@gmail.com', '$2b$10$HfUkCMnaP3s/eWk/.iitI.03WBE0VvFwhokpwE52bhAUdhR1DfCa2', 'user', 'FA01', 'BCE', 6, 0, 0),
(18, 'Arshad ', 'arshad66879@gmail.com', '$2b$10$JOFLec7VjvqtohMkmI77fOdJXu1.0dHtMymwiYNy0ByMMwlXF34yi', 'user', 'SP18', 'BSE', 13, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_ibfk_1` (`eventId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
