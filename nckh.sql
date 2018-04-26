-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2018 at 01:15 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nckh`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `examTypeID` int(11) NOT NULL,
  `name` text NOT NULL,
  `userID` int(11) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `examTypeID`, `name`, `userID`, `note`) VALUES
(1, 1, 'đề thử nghiệm 1', 5, 'cố gắng lên'),
(2, 1, 'đề thử nghiệm 2', 5, 'quyết chiến'),
(4, 1, 'b?i thi1', 5, 'a'),
(5, 1, 'jjjj', 5, 'a'),
(6, 1, 'a', 5, 'a'),
(7, 1, 'a', 5, 'a'),
(8, 1, 'a', 5, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `examtype`
--

CREATE TABLE `examtype` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examtype`
--

INSERT INTO `examtype` (`id`, `value`) VALUES
(1, 'TOEIC'),
(2, 'IELTS');

-- --------------------------------------------------------

--
-- Table structure for table `part1`
--

CREATE TABLE `part1` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `sound` text NOT NULL,
  `correct` int(1) NOT NULL,
  `examID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `part1`
--

INSERT INTO `part1` (`id`, `image`, `sound`, `correct`, `examID`) VALUES
(1, 'buoidaxanh.jpg', 'toeic_sound_1_1.mp3', 2, 1),
(3, 'dualeo.jpg', 'toeic_sound_1_2.mp3', 1, 1),
(4, 'D:	estEnglish.jpg', 'D:Nguoi-La-Oi-Karik-Orange-Superbrothers.mp3', 2, 6),
(5, 'D:	estEnglish.jpg', 'D:Nguoi-La-Oi-Karik-Orange-Superbrothers.mp3', 2, 6),
(6, 'D:	estimage21.jpg', 'D:Nguoi-La-Oi-Karik-Orange-Superbrothers.mp3', 2, 7),
(7, 'D:	estimage21.jpg', 'D:Nguoi-La-Oi-Karik-Orange-Superbrothers.mp3', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `part2`
--

CREATE TABLE `part2` (
  `id` int(11) NOT NULL,
  `sound` text NOT NULL,
  `correct` varchar(15) NOT NULL,
  `examID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `part3`
--

CREATE TABLE `part3` (
  `id` int(11) NOT NULL,
  `sound` text NOT NULL,
  `question` text NOT NULL,
  `answers` text NOT NULL,
  `correct` varchar(15) NOT NULL,
  `examID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='trg answers chứa 4 câu. mỗi câu cách nhau 1 dấu chấm để tách';

-- --------------------------------------------------------

--
-- Table structure for table `part4`
--

CREATE TABLE `part4` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answers` text NOT NULL,
  `correct` varchar(15) NOT NULL,
  `examID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `part5`
--

CREATE TABLE `part5` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answers` text NOT NULL,
  `correct` varchar(15) NOT NULL,
  `examID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `part6`
--

CREATE TABLE `part6` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `correct` varchar(1) NOT NULL,
  `examID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `part6`
--

INSERT INTO `part6` (`id`, `question`, `answer`, `correct`, `examID`) VALUES
(2, 'a', 'aa@@@a@@@a@@@a', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `part7`
--

CREATE TABLE `part7` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answers` text NOT NULL,
  `correct` varchar(30) NOT NULL,
  `paragraph` text NOT NULL,
  `examID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `part_1` int(11) NOT NULL,
  `part_2` int(11) NOT NULL,
  `part_3` int(11) NOT NULL,
  `part_4` int(11) NOT NULL,
  `part_5` int(11) NOT NULL,
  `part_6` int(11) NOT NULL,
  `part_7` int(11) NOT NULL,
  `part_7_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE `userdetail` (
  `userID` int(11) NOT NULL,
  `login` datetime NOT NULL,
  `logout` datetime NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` text NOT NULL,
  `birthdate` date DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `birthdate`, `phone`) VALUES
(5, 'admin', '123456', 'fff', '2018-03-17', '123456'),
(6, 'admin1', 'a', 's', '2018-01-31', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_exam_examtype` (`examTypeID`),
  ADD KEY `fk_exam_users` (`userID`);

--
-- Indexes for table `examtype`
--
ALTER TABLE `examtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `part1`
--
ALTER TABLE `part1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examID` (`examID`) USING BTREE;

--
-- Indexes for table `part2`
--
ALTER TABLE `part2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `examID` (`examID`);

--
-- Indexes for table `part3`
--
ALTER TABLE `part3`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `examID` (`examID`);

--
-- Indexes for table `part4`
--
ALTER TABLE `part4`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `examID` (`examID`);

--
-- Indexes for table `part5`
--
ALTER TABLE `part5`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `examID` (`examID`);

--
-- Indexes for table `part6`
--
ALTER TABLE `part6`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `examID` (`examID`);

--
-- Indexes for table `part7`
--
ALTER TABLE `part7`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `examID` (`examID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_state_users` (`user_id`);

--
-- Indexes for table `userdetail`
--
ALTER TABLE `userdetail`
  ADD PRIMARY KEY (`userID`,`login`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `examtype`
--
ALTER TABLE `examtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `part1`
--
ALTER TABLE `part1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `part2`
--
ALTER TABLE `part2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `part3`
--
ALTER TABLE `part3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `part4`
--
ALTER TABLE `part4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `part5`
--
ALTER TABLE `part5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `part6`
--
ALTER TABLE `part6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `part7`
--
ALTER TABLE `part7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `fk_exam_examtype` FOREIGN KEY (`examTypeID`) REFERENCES `examtype` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_exam_users` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `part1`
--
ALTER TABLE `part1`
  ADD CONSTRAINT `fk_part1_exam` FOREIGN KEY (`examID`) REFERENCES `exam` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `part2`
--
ALTER TABLE `part2`
  ADD CONSTRAINT `fk_part2_exam` FOREIGN KEY (`examID`) REFERENCES `exam` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `part3`
--
ALTER TABLE `part3`
  ADD CONSTRAINT `fk_part3_exam` FOREIGN KEY (`examID`) REFERENCES `exam` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `part4`
--
ALTER TABLE `part4`
  ADD CONSTRAINT `fk_part4_exam` FOREIGN KEY (`examID`) REFERENCES `exam` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `part5`
--
ALTER TABLE `part5`
  ADD CONSTRAINT `fk_part5_exam` FOREIGN KEY (`examID`) REFERENCES `exam` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `part6`
--
ALTER TABLE `part6`
  ADD CONSTRAINT `fk_part6_exam` FOREIGN KEY (`examID`) REFERENCES `exam` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `part7`
--
ALTER TABLE `part7`
  ADD CONSTRAINT `fk_part7_exam` FOREIGN KEY (`examID`) REFERENCES `exam` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `fk_state_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `userdetail`
--
ALTER TABLE `userdetail`
  ADD CONSTRAINT `fk_userdetail_user` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
