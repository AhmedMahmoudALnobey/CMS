-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2019 at 11:53 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.2.15-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web18_pnako16`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 4, 'dfgfgf', '2019-05-15 13:16:45', 1),
(2, 4, 1, 'egrtyguhijok\n\n', '2019-05-15 13:17:06', 1),
(3, 4, 1, '🤣🤣🤣🤣🤣🤣🤣😍😍😍😍😍😍😍😍', '2019-05-15 13:17:23', 1),
(13, 1, 4, 'dsfghjjds', '2019-06-04 13:58:03', 1),
(14, 1, 4, 'afasfdsfsfdfd\n\n', '2019-06-06 18:33:31', 1),
(15, 0, 4, 'hello<div><br></div>', '2019-06-07 09:24:29', 1),
(16, 0, 1, 'hi&nbsp;<div><br></div>', '2019-06-07 12:11:53', 1),
(17, 1, 4, 'hello', '2019-06-07 12:12:02', 1),
(18, 1, 4, 'assddfgfgh', '2019-06-07 12:12:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_event`, `end_event`) VALUES
(3, 'New', '2019-06-04 00:00:00', '2019-06-05 00:00:00'),
(4, 'anotherevent', '2019-06-14 00:00:00', '2019-06-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(11) NOT NULL,
  `patient_id` int(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `file` varchar(500) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `disposition` varchar(100) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `tmp_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `patient_id`, `name`, `file`, `filename`, `disposition`, `type`, `tmp_name`) VALUES
(7, 2, 'nada file', 'images/nada.png', '', 'attachment', 'application/octet-stream', ''),
(8, 0, 'auth', 'images/auth.txt', '', 'attachment', 'application/octet-stream', ''),
(9, 0, 'patient', 'images/patient.html', '', 'attachment', 'application/octet-stream', ''),
(10, 0, 'greenhouse code', 'images/greenhouse code.txt', '', 'attachment', 'application/octet-stream', ''),
(11, 0, 'ProducerConsumerCode', 'images/ProducerConsumerCode.txt', '', 'attachment', 'application/octet-stream', ''),
(12, 0, 'auth', 'images/auth.txt', '', 'attachment', 'application/octet-stream', ''),
(13, 0, 'green', 'images/green.txt', '', 'attachment', 'application/octet-stream', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(15) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'ketihysi', 'c5742394456ae049e6431d8e26b811e3'),
(2, 'xhenilakti', 'a625a41be2c48577fbe6332e28a99736'),
(4, 'pironadanako', '9de41a6d41c84d5be0e20b7ce63e65bb');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 4, '2019-05-15 10:57:16', 'no'),
(2, 1, '2019-05-15 10:59:25', 'no'),
(3, 4, '2019-05-15 11:00:48', 'no'),
(4, 4, '2019-05-15 11:02:05', 'no'),
(5, 4, '2019-05-15 11:03:22', 'no'),
(6, 4, '2019-05-15 12:24:45', 'no'),
(7, 1, '2019-05-15 12:27:03', 'no'),
(8, 4, '2019-05-15 12:43:44', 'no'),
(9, 4, '2019-05-15 12:49:07', 'no'),
(10, 4, '2019-05-15 13:01:44', 'no'),
(11, 4, '2019-05-15 13:05:28', 'no'),
(12, 4, '2019-05-15 13:23:29', 'no'),
(13, 1, '2019-05-15 13:38:39', 'no'),
(14, 4, '2019-05-15 13:29:51', 'no'),
(15, 4, '2019-05-15 13:38:41', 'no'),
(16, 1, '2019-05-15 15:52:10', 'no'),
(17, 4, '2019-05-15 19:28:49', 'no'),
(18, 1, '2019-05-15 20:00:50', 'no'),
(19, 1, '2019-05-15 20:07:44', 'no'),
(20, 4, '2019-05-15 21:59:10', 'no'),
(21, 4, '2019-05-16 12:37:38', 'no'),
(22, 1, '2019-05-16 12:39:10', 'no'),
(23, 1, '2019-05-20 10:32:49', 'no'),
(24, 4, '2019-05-20 10:31:56', 'no'),
(25, 1, '2019-05-23 15:16:51', 'no'),
(26, 4, '2019-05-24 12:08:21', 'no'),
(27, 1, '2019-05-29 19:20:38', 'no'),
(28, 4, '2019-06-04 13:58:06', 'no'),
(29, 4, '2019-06-06 18:33:31', 'no'),
(30, 4, '2019-06-07 09:24:50', 'no'),
(31, 1, '2019-06-07 12:08:06', 'no'),
(32, 4, '2019-06-07 12:08:43', 'no'),
(33, 4, '2019-06-07 12:09:10', 'no'),
(34, 1, '2019-06-07 12:10:30', 'no'),
(35, 1, '2019-06-07 12:13:12', 'no'),
(36, 4, '2019-06-07 12:13:14', 'no'),
(37, 4, '2019-06-07 16:22:46', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(50) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `FirstName` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `LastName` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `level` int(100) NOT NULL,
  `img_dir` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `doctor_id` int(100) DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `birthdate` date NOT NULL,
  `home_adress` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `username`, `FirstName`, `LastName`, `password`, `level`, `img_dir`, `doctor_id`, `gender`, `birthdate`, `home_adress`, `phone_number`) VALUES
(2, 'nada', 'Pironada', 'Nako', 'b01abf84324066bdb4eed4d5bf20f887', 0, 'images/nada.jpg', 4, 'Female', '1997-11-01', 'Fier', 0),
(4, 'lorela', 'Lorela', 'Hysi', '8dc911aaac3c2c4ec304e8c0e64b5951', 1, 'images/doc_lorela.jpg', NULL, 'Female', '1994-02-08', NULL, NULL),
(5, 'ana', 'Ana', 'Lelo', '276b6c4692e78d4799c12ada515bc3e4', 0, 'images/ana.jpg\r\n', 6, 'Female', '2015-09-25', 'Vlorë', NULL),
(6, 'shaban', 'Shaban', 'Dhima', '201266726f8b8e2da5d8c7d42f7693cc', 1, 'images/doc_shaban.jpg', NULL, 'Male', '1971-05-09', 'Myslym Shyri', NULL),
(7, 'dalina', 'Dalina', 'Marku', '9bbfda9ee78f8aa3f1ecba895ed6a5f9', 0, 'images/dalina.png', 4, 'Female', '1990-10-09', 'Patos', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(100) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `surname` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(100) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `fatherName` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `birthday` date NOT NULL,
  `academicDegree` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `phoneNumber` int(200) NOT NULL,
  `homeAddress` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `img_dir` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `name`, `surname`, `username`, `password`, `fatherName`, `gender`, `birthday`, `academicDegree`, `phoneNumber`, `homeAddress`, `img_dir`) VALUES
(1, 'Astrit', 'Andoni', 'astrit', 'ffcaef61421a0ca7a41d5c86059852d3', 'Ylber', 'Male', '1982-12-23', 'Shkenca Sociale', 6745658, 'Zog i Zi', ''),
(2, 'Erlind', 'Cenaj', 'erlind', '634bba7710732f86af4c077422d91ee8', 'Jovan', 'Male', '1992-12-06', 'Shkenca Sociale', 21654848, 'Laprakë', 'images/elind.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
