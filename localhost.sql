-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2020 at 04:45 PM
-- Server version: 5.6.47-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timeinby_appointment`
--
CREATE DATABASE IF NOT EXISTS `timeinby_appointment` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `timeinby_appointment`;

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agentID` int(11) NOT NULL,
  `agentName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `password` text NOT NULL,
  `profession` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `payment_plan` int(11) NOT NULL DEFAULT '1',
  `usertypeID` int(11) UNSIGNED NOT NULL DEFAULT '2',
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agentID`, `agentName`, `username`, `description`, `email`, `phone`, `address`, `password`, `profession`, `photo`, `payment_plan`, `usertypeID`, `active`, `created_at`, `deleted_at`) VALUES
(1, 'James John', 'agent', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'ezzy.alexo@gmail.com', '0845231445', '37 Redcliffe Way WOODLANDS BH21 0BA', '$2y$11$kP2ykeFHqLfPH9ITCgifm.yPkC4KGrJIQtEkmt40duYUKC2iGhM4q', 'Doctor', 'assets/img/user.png', 1, 2, 1, '2020-02-23 00:00:00', NULL),
(2, 'Elon Hulk', '', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'elon.hulk@gmail.com', '0865412566', '20 Osborne Road KING\'S PYON HR4 7ZD', '', 'Baby Sitter', '', 1, 2, 1, '2020-02-23 00:00:00', NULL),
(4, 'Alexander Onyeagwa', 'ales', '', 'alesonyeagwa@gmail.com', '0265243315', 'St Marks Park Avenue', '$2y$11$at0Tlv/wbqlRkDnZi6XEU.CjXTZLoTTVFOWr0c6NCYmRvoQ14M3vi', '', '', 1, 2, 1, '2020-04-18 14:40:33', NULL),
(5, 'James Brown', '', '', 'piblaze@ymail.com', '0873256478', '1191 Gateway Road Portland, OR 97220', '$2y$11$at0Tlv/wbqlRkDnZi6XEU.CjXTZLoTTVFOWr0c6NCYmRvoQ14M3vi', '', '', 1, 2, 1, '2020-04-22 18:16:52', NULL),
(6, 'Liam McCabe', '', '', 'liamrocks@gmail.com', '0841523689', '20 Osborne Road KING\'S PYON HR4 7ZD', '', 'Baby Sitter', '', 1, 2, 1, '2020-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointmentID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `servName` varchar(255) NOT NULL,
  `totalCost` int(11) NOT NULL,
  `extraServiceIDs` text NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `timingID` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2',
  `created_date` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointmentID`, `userID`, `serviceID`, `servName`, `totalCost`, `extraServiceIDs`, `appointmentDate`, `timingID`, `status`, `created_date`, `created_at`, `deleted_at`) VALUES
(22, 1, 1, 'Baby Sitting', 0, '[\"1\"]', '2020-04-27', 4, 1, '2020-04-15T13:53:38+00:00', '2020-04-15 13:53:38', NULL),
(23, 1, 1, 'Baby Sitting', 0, '[]', '2020-04-20', 1, 0, '2020-04-15T15:32:52+00:00', '2020-04-15 15:32:52', NULL),
(24, 1, 9, 'Nanny II', 85, '[\"18\",\"17\",\"19\"]', '2020-04-27', 10, 4, '2020-04-17T23:41:10+00:00', '2020-04-17 23:41:10', NULL),
(25, 1, 9, 'Nanny II', 85, '[\"17\",\"18\"]', '2020-04-27', 10, 2, '2020-04-22T02:30:12+01:00', '2020-04-22 02:30:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emailtoken`
--

CREATE TABLE `emailtoken` (
  `tokenID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `token` text NOT NULL,
  `generated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailtoken`
--

INSERT INTO `emailtoken` (`tokenID`, `userID`, `usertypeID`, `purpose`, `token`, `generated_at`) VALUES
(3, 1, 2, 'password_change', '23267449', '2020-04-19 02:38:42'),
(4, 5, 2, 'email_verify', 'cG93eTZJdGovMTVmaTI0OG9vVUlIaFJjMzRkcUV5bW9jSWc3NWQvR3ZWSm9vNmxOdWpXWHk4amlCeW9KUGhTN3NzZVZhcUdpMnhralFCZHMrR1p2elE9PQ==', '2020-04-22 18:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `extraservice`
--

CREATE TABLE `extraservice` (
  `esID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extraservice`
--

INSERT INTO `extraservice` (`esID`, `serviceID`, `name`, `cost`, `created_at`, `deleted_at`) VALUES
(1, 1, 'House-keeping', 5, '2020-03-21 00:00:00', NULL),
(2, 1, 'Dancing', 0, '0000-00-00 00:00:00', '2020-04-16 17:42:15'),
(3, 1, 'Playing', 10, '0000-00-00 00:00:00', '2020-04-16 17:41:49'),
(4, 1, 'Singing', 20, '0000-00-00 00:00:00', NULL),
(5, 1, 'Wailing', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:16'),
(6, 1, 'Looking', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:20'),
(7, 1, 'Pitching', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:32'),
(8, 1, 'Sitting', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:30'),
(9, 1, 'Crying', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:28'),
(10, 1, 'Smiling', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:24'),
(11, 1, 'Running', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:23'),
(12, 1, 'Walking', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:37'),
(13, 1, 'Jumping', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:35'),
(14, 1, 'Skipping', 0, '0000-00-00 00:00:00', '2020-04-16 17:44:39'),
(15, 1, 'Cooking', 0, '2020-04-16 17:20:13', '2020-04-16 17:44:41'),
(16, 1, 'Reading', 0, '2020-04-16 17:20:13', NULL),
(17, 9, 'Napkin Change', 10, '2020-04-17 00:32:45', NULL),
(18, 9, 'Bottle Feeding', 15, '2020-04-17 00:33:28', NULL),
(19, 9, 'Another Extra Service', 0, '2020-04-17 00:34:19', '2020-04-17 00:34:26'),
(20, 16, '', 0, '2020-04-22 14:48:19', '2020-04-22 14:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `loginfailure`
--

CREATE TABLE `loginfailure` (
  `failureID` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginfailure`
--

INSERT INTO `loginfailure` (`failureID`, `login`, `ip`, `created_at`) VALUES
(25, 'user@gmail.com', '::1', '2020-04-22 00:20:58'),
(24, '`a`', '::1', '2020-04-21 03:38:54'),
(23, '\'a\' = \'a\'', '::1', '2020-04-21 03:22:58'),
(26, 'user@gmail.com', '::1', '2020-04-22 00:22:30'),
(38, 'wil.smith@gmail.com', '::1', '2020-04-22 19:15:27'),
(32, 'agent', '::1', '2020-04-22 18:27:39'),
(40, 'z19122934@spwproject.xyz', '31.205.226.144', '2020-04-22 14:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

CREATE TABLE `loginlog` (
  `loginlogID` int(11) NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `browser` varchar(128) DEFAULT NULL,
  `operatingsystem` varchar(128) DEFAULT NULL,
  `login` int(11) UNSIGNED DEFAULT NULL,
  `logout` int(11) UNSIGNED DEFAULT NULL,
  `usertypeID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`loginlogID`, `ip`, `browser`, `operatingsystem`, `login`, `logout`, `usertypeID`, `userID`) VALUES
(144, '::1', 'Google Chrome', 'windows', 1581480519, 1581480819, 3, 1),
(145, '::1', 'Google Chrome', 'windows', 1581480876, 1581481176, 3, 1),
(146, '::1', 'Google Chrome', 'windows', 1581480920, 1581481220, 3, 1),
(147, '::1', 'Google Chrome', 'windows', 1581596995, 1581597295, 3, 1),
(148, '::1', 'Google Chrome', 'windows', 1581555714, 1581556014, 3, 1),
(149, '::1', 'Google Chrome', 'windows', 1581561717, 1581562017, 3, 1),
(150, '::1', 'Google Chrome', 'windows', 1581561822, 1581562122, 3, 1),
(151, '::1', 'Google Chrome', 'windows', 1582344096, 1582344396, 3, 1),
(152, '::1', 'Google Chrome', 'windows', 1582344810, 1582345110, 3, 1),
(153, '::1', 'Google Chrome', 'windows', 1582367178, 1582367478, 3, 1),
(154, '::1', 'Google Chrome', 'windows', 1582367915, 1582368215, 1, 1),
(155, '::1', 'Apple Safari', 'mac', 1582370186, NULL, 1, 1),
(156, '::1', 'Google Chrome', 'windows', 1582420242, 1582420542, 3, 1),
(157, '::1', 'Google Chrome', 'windows', 1582420302, 1582420602, 1, 1),
(158, '::1', 'Google Chrome', 'windows', 1582420400, 1582420700, 3, 1),
(159, '::1', 'Google Chrome', 'windows', 1582420452, 1582420752, 3, 1),
(160, '::1', 'Google Chrome', 'windows', 1582420503, 1582420803, 3, 1),
(161, '::1', 'Google Chrome', 'windows', 1582450358, 1582450658, 3, 1),
(162, '::1', 'Google Chrome', 'windows', 1582450374, 1582450674, 1, 1),
(163, '::1', 'Google Chrome', 'windows', 1583929197, 1583929497, 3, 1),
(164, '::1', 'Google Chrome', 'windows', 1584164977, 1584165277, 3, 1),
(165, '::1', 'Google Chrome', 'windows', 1584164990, 1584165290, 1, 1),
(166, '::1', 'Google Chrome', 'windows', 1584172540, 1584172840, 3, 1),
(167, '::1', 'Google Chrome', 'windows', 1584510796, 1584511096, 1, 1),
(168, '::1', 'Google Chrome', 'windows', 1584510979, 1584511279, 3, 1),
(169, '::1', 'Google Chrome', 'windows', 1584511164, 1584511464, 1, 1),
(170, '::1', 'Google Chrome', 'windows', 1584511212, 1584511512, 1, 1),
(171, '::1', 'Google Chrome', 'windows', 1584511231, 1584511531, 3, 1),
(172, '::1', 'Google Chrome', 'windows', 1584582541, 1584582841, 1, 1),
(173, '::1', 'Google Chrome', 'windows', 1584583795, 1584584095, 3, 1),
(174, '::1', 'Google Chrome', 'windows', 1584584323, 1584584623, 3, 1),
(175, '::1', 'Google Chrome', 'windows', 1584585177, 1584585477, 1, 1),
(176, '::1', 'Google Chrome', 'windows', 1584585518, 1584585818, 3, 1),
(177, '::1', 'Google Chrome', 'windows', 1584583212, 1584583512, 3, 1),
(178, '::1', 'Google Chrome', 'windows', 1584583615, 1584583915, 3, 1),
(179, '::1', 'Google Chrome', 'windows', 1584583787, 1584584087, 3, 1),
(180, '::1', 'Google Chrome', 'windows', 1584590814, 1584591114, 1, 1),
(181, '::1', 'Google Chrome', 'windows', 1584596313, 1584596613, 1, 1),
(182, '::1', 'Google Chrome', 'windows', 1584610923, 1584611223, 3, 1),
(183, '::1', 'Google Chrome', 'windows', 1584668758, 1584669058, 3, 1),
(184, '::1', 'Google Chrome', 'windows', 1584705008, 1584705308, 3, 1),
(185, '::1', 'Google Chrome', 'windows', 1584674193, 1584674493, 3, 1),
(186, '::1', 'Google Chrome', 'windows', 1584693610, 1584693910, 3, 1),
(187, '::1', 'Google Chrome', 'windows', 1584958804, 1584959104, 3, 1),
(188, '::1', 'Google Chrome', 'windows', 1585050029, 1585050329, 3, 1),
(189, '::1', 'Google Chrome', 'windows', 1585038520, 1585038820, 3, 1),
(190, '::1', 'Google Chrome', 'windows', 1585714680, 1585714980, 3, 1),
(191, '::1', 'Google Chrome', 'windows', 1586834193, 1586834493, 3, 1),
(192, '::1', 'Google Chrome', 'windows', 1586838823, 1586839123, 3, 1),
(193, '::1', 'Google Chrome', 'windows', 1586838861, 1586839161, 3, 1),
(194, '::1', 'Google Chrome', 'windows', 1586852802, 1586853102, 3, 1),
(195, '::1', 'Google Chrome', 'windows', 1586853671, 1586853971, 3, 1),
(196, '::1', 'Google Chrome', 'windows', 1586953746, 1586954046, 3, 1),
(197, '::1', 'Google Chrome', 'windows', 1586925474, NULL, NULL, 1),
(198, '::1', 'Google Chrome', 'windows', 1586926369, 1586926669, 2, 1),
(199, '::1', 'Google Chrome', 'windows', 1586927350, 1586927650, 2, 1),
(200, '::1', 'Google Chrome', 'windows', 1586929154, 1586929454, 3, 1),
(201, '::1', 'Google Chrome', 'windows', 1586929168, 1586929468, 2, 1),
(202, '::1', 'Google Chrome', 'windows', 1586942634, 1586942934, 2, 1),
(203, '::1', 'Google Chrome', 'windows', 1587005544, 1587005844, 2, 1),
(204, '::1', 'Google Chrome', 'windows', 1587035442, 1587035742, 2, 1),
(205, '::1', 'Google Chrome', 'windows', 1587010136, 1587010436, 2, 1),
(206, '::1', 'Google Chrome', 'windows', 1587087037, 1587087337, 2, 1),
(207, '::1', 'Google Chrome', 'windows', 1587126411, 1587126711, 2, 1),
(208, '::1', 'Google Chrome', 'windows', 1587089565, 1587089865, 1, 1),
(209, '::1', 'Google Chrome', 'windows', 1587089977, 1587090277, 2, 1),
(210, '::1', 'Google Chrome', 'windows', 1587090993, 1587091293, 1, 1),
(211, '::1', 'Google Chrome', 'windows', 1587091050, 1587091350, 2, 1),
(212, '::1', 'Google Chrome', 'windows', 1587093208, 1587093508, 1, 1),
(213, '::1', 'Google Chrome', 'windows', 1587093329, 1587093629, 2, 1),
(214, '::1', 'Google Chrome', 'windows', 1587094721, 1587095021, 2, 1),
(215, '::1', 'Google Chrome', 'windows', 1587097085, 1587097385, 1, 1),
(216, '::1', 'Google Chrome', 'windows', 1587097130, 1587097430, 2, 1),
(217, '::1', 'Google Chrome', 'windows', 1587107577, 1587107877, 1, 1),
(218, '::1', 'Google Chrome', 'windows', 1587107662, 1587107962, 2, 1),
(219, '::1', 'Google Chrome', 'windows', 1587109059, 1587109359, 2, 1),
(220, '::1', 'Google Chrome', 'windows', 1587115917, 1587116217, 2, 1),
(221, '::1', 'Google Chrome', 'windows', 1587117764, 1587118064, 2, 1),
(222, '::1', 'Google Chrome', 'windows', 1587118845, 1587119145, 2, 1),
(223, '::1', 'Google Chrome', 'windows', 1587119186, 1587119486, 3, 1),
(224, '::1', 'Google Chrome', 'windows', 1587120449, 1587120749, 1, 1),
(225, '::1', 'Google Chrome', 'windows', 1587120629, 1587120929, 3, 1),
(226, '::1', 'Google Chrome', 'windows', 1587124555, 1587124855, 2, 1),
(227, '::1', 'Google Chrome', 'windows', 1587211372, 1587211672, 3, 1),
(228, '::1', 'Google Chrome', 'windows', 1587211386, 1587211686, 1, 1),
(229, '::1', 'Google Chrome', 'windows', 1587212121, 1587212421, 3, 1),
(230, '::1', 'Google Chrome', 'windows', 1587212171, 1587212471, 1, 1),
(231, '::1', 'Google Chrome', 'windows', 1587212621, 1587212921, 3, 1),
(232, '::1', 'Google Chrome', 'windows', 1587182198, 1587182498, 2, 1),
(233, '::1', 'Google Chrome', 'windows', 1587182210, 1587182510, 2, 1),
(234, '::1', 'Google Chrome', 'windows', 1587182257, 1587182557, 2, 1),
(235, '::1', 'Google Chrome', 'windows', 1587182323, 1587182623, 2, 1),
(236, '::1', 'Google Chrome', 'windows', 1587182471, 1587182771, 2, 1),
(237, '::1', 'Google Chrome', 'windows', 1587182507, 1587182807, 2, 1),
(238, '::1', 'Google Chrome', 'windows', 1587182574, 1587182874, 2, 1),
(239, '::1', 'Google Chrome', 'windows', 1587182793, 1587183093, 2, 1),
(240, '::1', 'Google Chrome', 'windows', 1587184550, 1587184850, 1, 1),
(241, '::1', 'Google Chrome', 'windows', 1587186939, 1587187239, 1, 1),
(242, '::1', 'Google Chrome', 'windows', 1587187970, 1587188270, 1, 1),
(243, '::1', 'Google Chrome', 'windows', 1587189031, 1587189331, 2, 4),
(244, '::1', 'Google Chrome', 'windows', 1587263916, 1587264216, 2, 1),
(245, '::1', 'Google Chrome', 'windows', 1587264305, 1587264605, 2, 4),
(246, '::1', 'Google Chrome', 'windows', 1587267416, 1587267716, 2, 4),
(247, '::1', 'Google Chrome', 'windows', 1587267435, 1587267735, 1, 1),
(248, '::1', 'Google Chrome', 'windows', 1587268047, 1587268347, 1, 1),
(249, '::1', 'Google Chrome', 'windows', 1587269504, 1587269804, 2, 4),
(250, '::1', 'Google Chrome', 'windows', 1587281289, 1587281589, 2, 4),
(251, '::1', 'Google Chrome', 'windows', 1587281655, 1587281955, 2, 4),
(252, '::1', 'Google Chrome', 'windows', 1587346228, 1587346528, 3, 1),
(253, '::1', 'Google Chrome', 'windows', 1587346251, 1587346551, 2, 1),
(254, '::1', 'Google Chrome', 'windows', 1587346389, 1587346689, 3, 1),
(255, '::1', 'Google Chrome', 'windows', 1587347523, 1587347823, 2, 1),
(256, '::1', 'Google Chrome', 'windows', 1587347980, 1587348280, 1, 1),
(257, '::1', 'Google Chrome', 'windows', 1587455098, 1587455398, 3, 1),
(258, '::1', 'Google Chrome', 'windows', 1587555087, 1587555387, 1, 1),
(259, '::1', 'Google Chrome', 'windows', 1587516158, 1587516458, 3, 1),
(260, '::1', 'Google Chrome', 'windows', 1587519826, NULL, 2, 1),
(261, '::1', 'Google Chrome', 'windows', 1587521846, 1587522146, 1, 1),
(262, '::1', 'Google Chrome', 'windows', 1587524179, 1587524479, 3, 1),
(263, '::1', 'Google Chrome', 'windows', 1587554564, 1587554864, 3, 1),
(264, '::1', 'Google Chrome', 'windows', 1587556258, 1587556558, 3, 1),
(265, '::1', 'Google Chrome', 'windows', 1587556318, 1587556618, 3, 1),
(266, '::1', 'Google Chrome', 'windows', 1587527947, NULL, 3, 1),
(267, '::1', 'Google Chrome', 'windows', 1587528038, 1587528338, 1, 1),
(268, '::1', 'Google Chrome', 'windows', 1587533288, NULL, 1, 1),
(269, '::1', 'Google Chrome', 'windows', 1587533384, 1587533684, 2, 4),
(270, '::1', 'Google Chrome', 'windows', 1587535022, NULL, 2, 4),
(271, '::1', 'Google Chrome', 'windows', 1587536157, NULL, 3, 5),
(272, '31.205.226.144', 'Google Chrome', 'windows', 1587537263, NULL, 1, 1),
(273, '31.205.226.144', 'Google Chrome', 'windows', 1587537302, 1587537602, 2, 4),
(274, '31.205.226.144', 'Google Chrome', 'windows', 1587538521, NULL, 3, 5),
(275, '31.205.226.144', 'Google Chrome', 'windows', 1587542319, NULL, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pendingverification`
--

CREATE TABLE `pendingverification` (
  `vID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userTypeID` int(11) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `generated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `description` tinytext,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'index-agent', 'View agents', NULL, 1, NULL, NULL, NULL),
(2, 'admin-dashboard', 'dashboard', NULL, 1, NULL, NULL, NULL),
(3, 'index-user', 'View users', NULL, 1, NULL, NULL, NULL),
(4, 'get_agents-agent', 'List agents', NULL, 1, NULL, NULL, NULL),
(5, 'view-agent', 'View agent', NULL, 1, NULL, NULL, NULL),
(6, 'block-agent', 'Block agent', NULL, 1, NULL, NULL, NULL),
(7, 'unblock-agent', 'Unblock agent', NULL, 1, NULL, NULL, NULL),
(8, 'get_users-user', 'List users', NULL, 1, NULL, NULL, NULL),
(9, 'view-user', 'View user', NULL, 1, NULL, NULL, NULL),
(10, 'block-user', 'Block user', NULL, 1, NULL, NULL, NULL),
(11, 'unblock-user', 'Unblock user', NULL, 1, NULL, NULL, NULL),
(12, 'add-user', 'Add user', NULL, 1, NULL, NULL, NULL),
(13, 'get_appointments-dashboard', 'List Appointments', 'List Appointments', 1, '2020-04-16 23:00:00', NULL, NULL),
(14, 'book_appointment-dashboard', 'Book Appointment', NULL, 1, '2020-04-16 23:00:00', NULL, NULL),
(15, 'cancel_appointment-dashboard', 'Cancel Appointment', 'Cancel Appointment', 1, NULL, NULL, NULL),
(16, 'approve_appointment-dashboard', 'Approve Appointment', 'Approve Appointment', 1, '2020-04-16 23:00:00', NULL, NULL),
(17, 'get_agent_services-dashboard', 'Agent Services', 'List Agent Services', 1, '2020-04-23 23:00:00', NULL, NULL),
(18, 'update_service_information-dashboard', 'Update service information', 'Update service information', 1, '2020-04-16 23:00:00', NULL, NULL),
(19, 'delete_service-dashboard', 'Delete service', 'Delete service', 1, '2020-04-16 23:00:00', NULL, NULL),
(20, 'add_service-dashboard', 'Add Service', 'Add service', 1, '2020-04-16 23:00:00', NULL, NULL),
(21, 'delete_timing-dashboard', 'Delete timing', 'Delete timing', 1, '2020-04-16 23:00:00', NULL, NULL),
(22, 'save_timing-dashboard', 'Save Timing', 'Save timing', 1, '2020-04-16 23:00:00', NULL, NULL),
(23, 'save_extra_services-dashboard', 'Add Extra Services', 'Add Extra Services', 1, '2020-04-16 23:00:00', NULL, NULL),
(24, 'delete_extra_service-dashboard', 'Delete Extra Service', 'Delete Extra Service', 1, '2020-04-16 23:00:00', NULL, NULL),
(25, 'index-logview', 'View Logs', 'View Logs', 1, '2020-04-16 23:00:00', NULL, NULL),
(26, 'update_profile-agent', 'Agent update profile', 'Agent profile update', 1, '2020-04-16 23:00:00', NULL, NULL),
(27, 'change_password-agent', 'Agent Change Password', 'Agent Change Password', 1, '2020-04-16 23:00:00', NULL, NULL),
(28, 'change_password-user', 'User Change Password', 'User Change Password', 1, '2020-04-16 23:00:00', NULL, NULL),
(29, 'change_password-admin', 'Admin change profile', 'Admin change profile', 1, '2020-04-16 23:00:00', NULL, NULL),
(30, 'complete_appointment-dashboard', 'Complete Appointment', 'Complete Appointment', 1, '2020-04-16 23:00:00', NULL, NULL),
(31, 'index-dashboard', 'View dashboard', NULL, 1, '2020-04-20 23:00:00', NULL, NULL),
(32, 'get_grouped_services-dashboard', 'Get grouped services', NULL, 1, '2020-04-20 23:00:00', NULL, NULL),
(33, 'sendMessage-dashboard', 'Contact Send Message', 'Contact Send Message', 1, '2020-04-21 23:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `prID` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`prID`, `role_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 2, 13),
(15, 3, 13),
(16, 3, 14),
(17, 2, 15),
(18, 3, 15),
(19, 2, 16),
(20, 2, 17),
(21, 2, 18),
(22, 2, 19),
(23, 2, 20),
(24, 2, 21),
(25, 2, 22),
(26, 2, 23),
(27, 2, 24),
(28, 1, 25),
(29, 2, 26),
(30, 2, 27),
(31, 3, 28),
(32, 1, 29),
(33, 2, 30),
(34, 1, 31),
(35, 2, 31),
(36, 3, 31),
(37, 3, 32),
(38, 2, 33),
(39, 3, 33);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(30) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin', 1, NULL, NULL, NULL),
(2, 'agent', 'agent', 'agent', 1, '2020-03-18 23:00:00', '2020-03-18 23:00:00', NULL),
(3, 'user', 'user', 'user', 1, '2020-03-18 23:00:00', '2020-03-18 23:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `ruserID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `usertypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`ruserID`, `user_id`, `role_id`, `usertypeID`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 3),
(3, 5, 3, 3),
(4, 1, 2, 2),
(5, 2, 2, 2),
(7, 4, 2, 2),
(8, 5, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `securityanswer`
--

CREATE TABLE `securityanswer` (
  `answerID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `securityanswer`
--

INSERT INTO `securityanswer` (`answerID`, `questionID`, `answer`, `userID`, `usertypeID`, `created_at`) VALUES
(1, 2, 'Nigeria', 4, 2, '2020-04-18 14:40:33'),
(2, 2, 'Nigeria', 1, 2, '2020-04-18 14:40:33'),
(3, 2, 'Nigeria', 5, 2, '2020-04-22 18:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `securityquestion`
--

CREATE TABLE `securityquestion` (
  `questionID` int(11) NOT NULL,
  `question` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `securityquestion`
--

INSERT INTO `securityquestion` (`questionID`, `question`, `created_at`) VALUES
(1, 'What was your childhood nickname?', '2020-04-18 00:00:00'),
(2, 'In what city did you meet your spouse/significant other?', '2020-04-18 00:00:00'),
(3, 'What is the name of your favorite childhood friend?', '2020-04-18 00:00:00'),
(4, 'What street did you live on in third grade?', '2020-04-18 00:00:00'),
(5, 'What is your oldest sibling’s birthday month and year?', '2020-04-18 00:00:00'),
(6, 'What is the middle name of your youngest child?', '2020-04-18 00:00:00'),
(7, 'What is your oldest sibling\'s middle name?', '2020-04-18 00:00:00'),
(8, 'What school did you attend for sixth grade?', '2020-04-18 00:00:00'),
(9, 'What was your childhood phone number including area code? ', '2020-04-18 00:00:00'),
(10, 'What is your oldest cousin\'s first and last name?', '2020-04-18 00:00:00'),
(11, 'What was the name of your first stuffed animal?', '2020-04-18 00:00:00'),
(12, 'In what city or town did your mother and father meet?', '2020-04-18 00:00:00'),
(13, 'Where were you when you had your first kiss?', '2020-04-18 00:00:00'),
(14, 'What is the first name of the boy or girl that you first kissed?', '2020-04-18 00:00:00'),
(15, 'What was the last name of your third grade teacher?\r\nIn what city does your nearest sibling live?', '2020-04-18 00:00:00'),
(16, 'In what city does your nearest sibling live?', '2020-04-18 00:00:00'),
(17, 'What is your youngest brother’s birthday month and year?', '2020-04-18 00:00:00'),
(18, 'What is your maternal grandmother\'s maiden name', '2020-04-18 00:00:00'),
(19, 'In what city or town was your first job?', '2020-04-18 00:00:00'),
(20, 'What is the name of the place your wedding reception was held?', '2020-04-18 00:00:00'),
(21, 'What is the name of a college you applied to but didn\'t attend?', '2020-04-18 00:00:00'),
(22, 'Where were you when you first heard about 9/11?', '2020-04-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceID` int(11) NOT NULL,
  `serviceCategoryID` int(11) NOT NULL,
  `agentID` int(11) NOT NULL,
  `serviceName` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceID`, `serviceCategoryID`, `agentID`, `serviceName`, `cost`, `status`, `created_at`, `deleted_at`) VALUES
(1, 8, 1, 'Baby Sitting', 10, 0, '2020-03-20 00:00:00', NULL),
(2, 8, 2, 'Baby sitting', 10, 1, '2020-03-20 00:00:00', NULL),
(5, 8, 1, 'Nanny', 40, 1, '2020-04-16 22:46:00', '2020-04-16 23:27:52'),
(6, 8, 1, 'Nanny', 70, 1, '2020-04-16 23:41:19', NULL),
(7, 8, 1, 'Nanny II', 20, 1, '2020-04-16 23:46:19', '2020-04-16 23:51:55'),
(8, 8, 1, 'Nanny II', 60, 1, '2020-04-16 23:53:31', '2020-04-16 23:55:25'),
(9, 8, 1, 'Nanny II', 60, 1, '2020-04-16 23:55:40', NULL),
(10, 7, 1, 'Cooking', 40, 1, '2020-04-17 00:50:20', '2020-04-17 01:04:27'),
(11, 3, 1, 'Painter', 30, 1, '2020-04-17 01:05:06', '2020-04-17 01:08:53'),
(12, 3, 1, 'Painter', 40, 1, '2020-04-17 01:09:08', '2020-04-17 01:14:47'),
(13, 3, 1, 'Painter', 50, 1, '2020-04-17 01:15:01', NULL),
(14, 7, 4, 'Cooking Expert', 20, 1, '2020-04-19 20:29:01', '2020-04-19 20:29:38'),
(15, 7, 4, 'Cooking Expert', 30, 1, '2020-04-19 20:30:06', '2020-04-19 20:39:20'),
(16, 7, 4, 'Cooking Expert', 50, 1, '2020-04-19 20:39:49', '2020-04-22 14:52:31'),
(17, 7, 4, 'Cooking', 30, 1, '2020-04-22 14:52:53', NULL),
(18, 8, 4, 'Something', 10, 1, '2020-04-22 14:54:15', '2020-04-22 14:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `servicecategory`
--

CREATE TABLE `servicecategory` (
  `serviceCategoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicecategory`
--

INSERT INTO `servicecategory` (`serviceCategoryID`, `categoryName`, `created_at`, `deleted_at`) VALUES
(1, 'Academic', '2020-02-12', NULL),
(2, 'Accountancy / Finance', '2020-02-12', NULL),
(3, 'Architecture / Design', '2020-02-12', NULL),
(4, 'Banking / Insurance', '2020-02-12', NULL),
(5, 'Big Data / Business Analysis', '2020-02-12', NULL),
(6, 'Call-Centre / Customer Service', '2020-02-12', NULL),
(7, 'Chef', '2020-02-12', NULL),
(8, 'Childcare', '2020-02-12', NULL),
(9, 'Construction / Engineering', '2020-02-12', NULL),
(10, 'Drivers', '2020-02-12', NULL),
(11, 'Education / Training', '2020-02-12', NULL),
(12, 'Energy / Renewable Energy', '2020-02-12', NULL),
(13, 'Financial Services', '2020-02-12', NULL),
(14, 'Fitness and Leisure', '2020-02-12', NULL),
(15, 'Franchise / Business Opportunity', '2020-02-12', NULL),
(16, 'Hair and Beauty', '2020-02-12', NULL),
(17, 'Healthcare / Medical / Nursing', '2020-02-12', NULL),
(18, 'Hotels', '2020-02-12', NULL),
(19, 'IT', '2020-02-12', NULL),
(20, 'Legal', '2020-02-12', NULL),
(21, 'Managers / Supervisors', '2020-02-12', NULL),
(22, 'Manufacturing / Engineering', '2020-02-12', NULL),
(23, 'Marketing / Market Research', '2020-02-12', NULL),
(24, 'Miscellaneous', '2020-02-12', NULL),
(25, 'Motors', '2020-02-12', NULL),
(26, 'Online / Digital Media', '2020-02-12', NULL),
(27, 'Pharmaceutical / Science / Agricultural', '2020-02-12', NULL),
(28, 'Promotions / Merchandising', '2020-02-12', NULL),
(29, 'Property / Facilities Management', '2020-02-12', NULL),
(30, 'Restaurants / Catering', '2020-02-12', NULL),
(31, 'Sales', '2020-02-12', NULL),
(32, 'Security', '2020-02-12', NULL),
(33, 'Telecoms / Tech Support', '2020-02-12', NULL),
(34, 'Trades / Operative / Manual', '2020-02-12', NULL),
(35, 'Travel / Tourism', '2020-02-12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servicetiming`
--

CREATE TABLE `servicetiming` (
  `timingID` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `appday` varchar(50) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `slots` int(11) NOT NULL DEFAULT '1',
  `created_at` date NOT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicetiming`
--

INSERT INTO `servicetiming` (`timingID`, `serviceID`, `appday`, `starttime`, `endtime`, `status`, `slots`, `created_at`, `deleted_at`) VALUES
(1, 1, 'mon', '09:30', '11:30', 1, 4, '2020-04-14', NULL),
(2, 1, 'tue', '09:30', '11:30', 1, 4, '2020-04-14', NULL),
(3, 1, 'wed', '09:30', '12:30', 1, 4, '2020-04-14', NULL),
(4, 1, 'mon', '01:30', '03:30', 1, 1, '2020-04-15', NULL),
(5, 1, 'mon', '12:10', '13:30', 1, 1, '2020-04-16', '2020-04-16'),
(6, 1, 'mon', '10:10', '12:30', 1, 1, '2020-04-16', '2020-04-16'),
(7, 1, 'mon', '11:10', '15:30', 0, 1, '2020-04-16', NULL),
(8, 1, 'mon', '12:25', '22:30', 1, 1, '2020-04-16', '2020-04-16'),
(9, 1, 'mon', '12:00', '14:00', 1, 1, '2020-04-16', '2020-04-16'),
(10, 9, 'mon', '12:30', '18:30', 1, 1, '2020-04-17', NULL),
(11, 16, 'mon', '12:30', '13:30', 1, 1, '2020-04-22', '2020-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`fieldoption`, `value`) VALUES
('address', 'Abuja'),
('backend_theme', 'default'),
('captcha_status', '1'),
('currency_code', 'NGN'),
('currency_symbol', 'N'),
('email', 'alesonyeagwa@gmail.com'),
('fontend_theme', 'default'),
('fontorbackend', '0'),
('footer', 'Copyright &copy; iTest'),
('google_analytics', ''),
('language', 'english'),
('language_status', '1'),
('note', '1'),
('phone', '08146034864'),
('photo', 'site.png'),
('purchase_code', ''),
('purchase_username', ''),
('recaptcha_secret_key', ''),
('recaptcha_site_key', ''),
('school_type', 'classbase'),
('school_year', '1'),
('sname', 'iTest'),
('updateversion', '1.0');

-- --------------------------------------------------------

--
-- Table structure for table `systemadmin`
--

CREATE TABLE `systemadmin` (
  `systemadminID` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `jod` date NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL,
  `active` int(11) NOT NULL,
  `systemadminextra1` varchar(128) DEFAULT NULL,
  `systemadminextra2` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemadmin`
--

INSERT INTO `systemadmin` (`systemadminID`, `name`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`, `systemadminextra1`, `systemadminextra2`) VALUES
(1, 'Alex', '2019-05-28', 'Male', 'Unknown', 'x19122934@spwproject.xyz', '', '', '2019-05-28', 'defualt.png', 'admin', '$2y$11$rLIRTl83nne/vVP40D.ZsuxjA0h3mZIhTV3FJ.DcsRxV14gmMxNeG', 1, '2019-05-28 01:24:20', '2019-05-28 01:24:20', 0, 'admin', 'Admin', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `uuid` varchar(50) NOT NULL DEFAULT 'uuid()'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `uuid`) VALUES
(1, 'uuid()');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `usertypeID` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `name`, `username`, `email`, `phone`, `address`, `password`, `photo`, `active`, `usertypeID`, `created`) VALUES
(1, 'James Bons', 'user', 'user@email.com', '0265243315', '', '$2y$11$rLIRTl83nne/vVP40D.ZsuxjA0h3mZIhTV3FJ.DcsRxV14gmMxNeG', '', 1, 3, '2020-02-12 00:00:00'),
(5, 'Will Smith', '', 'will.smith@gmail.com', '0253214578', '', '$2y$11$rLIRTl83nne/vVP40D.ZsuxjA0h3mZIhTV3FJ.DcsRxV14gmMxNeG', '', 1, 3, '2020-03-19 21:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `usertypeID` int(11) UNSIGNED NOT NULL,
  `usertype` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(40) NOT NULL,
  `create_usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertypeID`, `usertype`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Admin', '2019-05-27 00:00:00', '2019-05-27 00:00:00', 1, 'admin', '1'),
(2, 'Agent', '2019-05-27 00:00:00', '2019-05-27 00:00:00', 1, 'admin', '1'),
(3, 'Users', '2019-05-27 00:00:00', '2019-05-27 00:00:00', 1, 'admin', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agentID`),
  ADD KEY `usertypeID` (`usertypeID`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointmentID`);

--
-- Indexes for table `emailtoken`
--
ALTER TABLE `emailtoken`
  ADD PRIMARY KEY (`tokenID`);

--
-- Indexes for table `extraservice`
--
ALTER TABLE `extraservice`
  ADD PRIMARY KEY (`esID`);

--
-- Indexes for table `loginfailure`
--
ALTER TABLE `loginfailure`
  ADD PRIMARY KEY (`failureID`);

--
-- Indexes for table `loginlog`
--
ALTER TABLE `loginlog`
  ADD PRIMARY KEY (`loginlogID`);

--
-- Indexes for table `pendingverification`
--
ALTER TABLE `pendingverification`
  ADD PRIMARY KEY (`vID`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`prID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_user_roles_role_Name` (`name`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`ruserID`);

--
-- Indexes for table `securityanswer`
--
ALTER TABLE `securityanswer`
  ADD PRIMARY KEY (`answerID`);

--
-- Indexes for table `securityquestion`
--
ALTER TABLE `securityquestion`
  ADD PRIMARY KEY (`questionID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceID`);

--
-- Indexes for table `servicecategory`
--
ALTER TABLE `servicecategory`
  ADD PRIMARY KEY (`serviceCategoryID`);

--
-- Indexes for table `servicetiming`
--
ALTER TABLE `servicetiming`
  ADD PRIMARY KEY (`timingID`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`fieldoption`);

--
-- Indexes for table `systemadmin`
--
ALTER TABLE `systemadmin`
  ADD PRIMARY KEY (`systemadminID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`usertypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `emailtoken`
--
ALTER TABLE `emailtoken`
  MODIFY `tokenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `extraservice`
--
ALTER TABLE `extraservice`
  MODIFY `esID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `loginfailure`
--
ALTER TABLE `loginfailure`
  MODIFY `failureID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `loginlog`
--
ALTER TABLE `loginlog`
  MODIFY `loginlogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `pendingverification`
--
ALTER TABLE `pendingverification`
  MODIFY `vID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `prID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles_users`
--
ALTER TABLE `roles_users`
  MODIFY `ruserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `securityanswer`
--
ALTER TABLE `securityanswer`
  MODIFY `answerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `securityquestion`
--
ALTER TABLE `securityquestion`
  MODIFY `questionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `servicecategory`
--
ALTER TABLE `servicecategory`
  MODIFY `serviceCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `servicetiming`
--
ALTER TABLE `servicetiming`
  MODIFY `timingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `systemadmin`
--
ALTER TABLE `systemadmin`
  MODIFY `systemadminID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `usertypeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `timeinby_ecomdb`
--
CREATE DATABASE IF NOT EXISTS `timeinby_ecomdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `timeinby_ecomdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `adv_id` int(11) NOT NULL,
  `adv_location` varchar(255) NOT NULL,
  `adv_type` varchar(100) NOT NULL,
  `adv_photo` varchar(255) NOT NULL,
  `adv_url` varchar(255) NOT NULL,
  `adv_adsense_code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`adv_id`, `adv_location`, `adv_type`, `adv_photo`, `adv_url`, `adv_adsense_code`) VALUES
(1, 'Above Welcome Section', 'Image Advertisement', 'ad-1.png', '', ''),
(2, 'Above Featured Product', 'Image Advertisement', 'ad-2.png', '', ''),
(3, 'Above Latest Product', 'Image Advertisement', 'ad-3.png', '', ''),
(4, 'Above Popular Product', 'Image Advertisement', 'ad-4.png', '', ''),
(5, 'Above Testimonial Section', 'Image Advertisement', 'ad-5.png', '', ''),
(6, 'Category Page Sidebar', 'Image Advertisement', 'ad-6.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Commercial', 'commercial', 'Commercial', '', ''),
(2, 'Residential', 'residential', 'Residential', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(11, 'alex', 'programmer', 'georgemicheals080@gmail.com', '07035254678', 104, 'parkgate highlight', 'dublin', 'dublin', '353', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '67e92c8765a9bc7fb2d335c459de9eb5', '', '2020-04-20 03:04:18', '1587391458', 1),
(12, 'bassey', 'bass', 'johnpaulezisiabana@yahoo.com', 'o70898596666', 104, 'jjhhb', 'dublin', 'dublin', '353', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '67e92c8765a9bc7fb2d335c459de9eb5', '60527841ea7e949135c26b7903e4072c', '2020-04-20 03:07:07', '1587409028', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'T-Shirt', 1),
(3, 'Jeans', 1),
(4, 'Sandals', 2),
(6, 'Tops', 3),
(7, 'T-Shirt', 3),
(11, 'Sports Shoes', 2),
(12, 'Flats & Sandals', 6),
(13, 'Heels', 6),
(18, 'Digital Watches', 9),
(19, 'Smart Watches', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'My package is prepaid. Do I need to show any document when collecting it?', '<p><span style=\"color: rgb(102, 102, 102); font-size: 12px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Yes. </font><font style=\"vertical-align: inherit;\">Please show your ID to the Associate delivery / pick up station. </font><font style=\"vertical-align: inherit;\">It can be yours Voters Card, driver\'s license, work ID or your passport.</font></font></span><br></p>\r\n'),
(2, 'Can someone collect my prepaid package on my behalf?', '<p><span style=\"color: rgb(102, 102, 102); font-size: 12px;\">Yes. Please ensure your representative has your product tracking number.</span><br></p>\r\n'),
(3, 'If I prepaid for my item, can I still return it?', '<p><span style=\"color: rgb(102, 102, 102); font-size: 12px;\">Yes. We will refund you 100% of the cost of the item plus your shipping fee.&nbsp;</span><br></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact an administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration or wait till an administrator activates you.\r\nNote: Check your spam if message not seen in inbox'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Western Clothing', 1),
(2, 'Men\'s Shoes', 1),
(3, 'Western Clothing', 2),
(6, 'Women Shoes', 2),
(9, 'Men\'s Watches', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'About Us', '<p style=\"box-sizing: inherit; text-rendering: geometricprecision; margin-bottom: 0px; font-size: 11pt; font-family: Arial; white-space: pre-wrap;\">Welcome to Royale online store, your number one source for all products. We\'re dedicated to providing you the very best of all products, with an emphasis on Men\'s, Women\'s clothing, etc.</p><p><br style=\"box-sizing: inherit; text-rendering: geometricprecision; color: rgb(55, 71, 79); font-family: GalanoGrotesqueAlt-Regular, Helvetica, sans-serif; font-size: 16px; white-space: pre-wrap;\"></p><p style=\"box-sizing: inherit; text-rendering: geometricprecision; margin-bottom: 0px; font-size: 11pt; font-family: Arial; white-space: pre-wrap;\">Founded in 2020 by Ezisi-Abana, Royale online store has come a long way from its beginnings in Ireland. When Ezisi-Abana first started out, his passion for essential products drove him to start his own business.</p><p><br style=\"box-sizing: inherit; text-rendering: geometricprecision; color: rgb(55, 71, 79); font-family: GalanoGrotesqueAlt-Regular, Helvetica, sans-serif; font-size: 16px; white-space: pre-wrap;\"></p><p style=\"box-sizing: inherit; text-rendering: geometricprecision; margin-bottom: 0px; font-size: 11pt; font-family: Arial; white-space: pre-wrap;\">We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don\'t hesitate to contact us.</p><p><br style=\"box-sizing: inherit; text-rendering: geometricprecision; color: rgb(55, 71, 79); font-family: GalanoGrotesqueAlt-Regular, Helvetica, sans-serif; font-size: 16px; white-space: pre-wrap;\"></p><p style=\"box-sizing: inherit; text-rendering: geometricprecision; margin-bottom: 0px; font-size: 11pt; font-family: Arial; white-space: pre-wrap;\">Sincerely,</p><p style=\"box-sizing: inherit; text-rendering: geometricprecision; margin-bottom: 0px; font-size: 11pt; font-family: Arial; white-space: pre-wrap;\">[Ezisi-Abana JohnPaul.C]</p>\r\n', 'about-banner.png', 'Ecommerce - About Us', 'about, about us, about team, about company', 'This is a page where we have described details about us.', 'FAQ', 'faq-banner.png', 'Ecommerce - FAQ', '', '', 'Blog', 'blog-banner.png', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.png', 'Ecommerce - Contact', '', '', 'Photo Gallery', 'pgallery-banner.png', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.png', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.png'),
(2, 'pic', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.png'),
(4, 'Photo 4', 'photo-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(10, '6 Blog Topic Ideas for Property Managers', '6-blog-topic-ideas-for-property-managers', '<div class=\"post-header\" style=\"-webkit-font-smoothing: antialiased; margin-bottom: 30px; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 18px;\"><h2 class=\"post-title\" style=\"margin: 0px 0px 20px; padding: 0px 10px 0px 0px; border: 0px; font-weight: 700; font-size: 40px; line-height: 44px; font-family: inherit; -webkit-font-smoothing: antialiased; color: rgb(51, 51, 51); word-break: break-word; letter-spacing: -0.04em;\">6 Blog Topic Ideas for Property Managers</h2></div><div class=\"post-content\" style=\"-webkit-font-smoothing: antialiased; font-family: &quot;Crimson Text&quot;, serif; font-size: 1.2em; color: rgb(68, 68, 68);\"><div class=\"at-above-post addthis_tool\" data-url=\"https://www.appfolio.com/blog/2011/01/6-blog-topic-ideas-for-property-managers/\" style=\"-webkit-font-smoothing: antialiased; margin-top: 0px; clear: both;\"><div id=\"atstbx\" class=\"at-share-tbx-element addthis-smartlayers addthis-animated at4-show\" aria-labelledby=\"at-c1c6d1fc-c097-4343-817d-4360374518ae\" role=\"region\" style=\"-webkit-font-smoothing: antialiased; position: relative; margin: 0px; color: rgb(255, 255, 255); font-size: 0px; font-family: &quot;helvetica neue&quot;, helvetica, arial, sans-serif; padding: 0px; line-height: 0; animation-fill-mode: both; animation-timing-function: ease-out; animation-duration: 0.3s; opacity: 1 !important;\"><span id=\"at-c1c6d1fc-c097-4343-817d-4360374518ae\" class=\"at4-visually-hidden\" style=\"-webkit-font-smoothing: antialiased; position: absolute; clip: rect(1px, 1px, 1px, 1px); padding: 0px; border: 0px; overflow: hidden;\"></span><div class=\"at-share-btn-elements\" style=\"-webkit-font-smoothing: antialiased; margin-bottom: 0px;\"><a role=\"button\" tabindex=\"0\" class=\"at-icon-wrapper at-share-btn at-svc-facebook\" style=\"outline: none; -webkit-font-smoothing: antialiased; color: inherit; transition: all 0.2s ease-in-out 0s; display: inline-block; overflow: hidden; border: 0px; box-shadow: none; padding: 0px; line-height: 0; margin: 0px 5px 5px 0px; background-color: rgb(59, 89, 152); vertical-align: middle; border-radius: 0%;\"><span class=\"at4-visually-hidden\" style=\"-webkit-font-smoothing: antialiased; position: absolute; clip: rect(1px, 1px, 1px, 1px); padding: 0px; border: 0px; overflow: hidden;\"></span><span class=\"at-icon-wrapper\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; overflow: hidden; cursor: pointer; margin-bottom: 0px; vertical-align: middle; line-height: 32px; height: 32px; width: 32px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" viewBox=\"0 0 32 32\" version=\"1.1\" role=\"img\" aria-labelledby=\"at-svg-facebook-1\" class=\"at-icon at-icon-facebook\" style=\"width: 32px; height: 32px;\"><g><path d=\"M22 5.16c-.406-.054-1.806-.16-3.43-.16-3.4 0-5.733 1.825-5.733 5.17v2.882H9v3.913h3.837V27h4.604V16.965h3.823l.587-3.913h-4.41v-2.5c0-1.123.347-1.903 2.198-1.903H22V5.16z\" fill-rule=\"evenodd\"></path></g></svg></span></a><a role=\"button\" tabindex=\"0\" class=\"at-icon-wrapper at-share-btn at-svc-twitter\" style=\"outline: none; -webkit-font-smoothing: antialiased; color: inherit; transition: all 0.2s ease-in-out 0s; display: inline-block; overflow: hidden; border: 0px; box-shadow: none; padding: 0px; line-height: 0; margin: 0px 5px 5px 0px; background-color: rgb(29, 161, 242); vertical-align: middle; border-radius: 0%;\"><span class=\"at4-visually-hidden\" style=\"-webkit-font-smoothing: antialiased; position: absolute; clip: rect(1px, 1px, 1px, 1px); padding: 0px; border: 0px; overflow: hidden;\"></span><span class=\"at-icon-wrapper\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; overflow: hidden; cursor: pointer; margin-bottom: 0px; vertical-align: middle; line-height: 32px; height: 32px; width: 32px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" viewBox=\"0 0 32 32\" version=\"1.1\" role=\"img\" aria-labelledby=\"at-svg-twitter-2\" class=\"at-icon at-icon-twitter\" style=\"width: 32px; height: 32px;\"><g><path d=\"M27.996 10.116c-.81.36-1.68.602-2.592.71a4.526 4.526 0 0 0 1.984-2.496 9.037 9.037 0 0 1-2.866 1.095 4.513 4.513 0 0 0-7.69 4.116 12.81 12.81 0 0 1-9.3-4.715 4.49 4.49 0 0 0-.612 2.27 4.51 4.51 0 0 0 2.008 3.755 4.495 4.495 0 0 1-2.044-.564v.057a4.515 4.515 0 0 0 3.62 4.425 4.52 4.52 0 0 1-2.04.077 4.517 4.517 0 0 0 4.217 3.134 9.055 9.055 0 0 1-5.604 1.93A9.18 9.18 0 0 1 6 23.85a12.773 12.773 0 0 0 6.918 2.027c8.3 0 12.84-6.876 12.84-12.84 0-.195-.005-.39-.014-.583a9.172 9.172 0 0 0 2.252-2.336\" fill-rule=\"evenodd\"></path></g></svg></span></a><a role=\"button\" tabindex=\"0\" class=\"at-icon-wrapper at-share-btn at-svc-linkedin\" style=\"outline: none; -webkit-font-smoothing: antialiased; color: inherit; transition: all 0.2s ease-in-out 0s; display: inline-block; overflow: hidden; border: 0px; box-shadow: none; padding: 0px; line-height: 0; margin: 0px 5px 5px 0px; background-color: rgb(0, 119, 181); vertical-align: middle; border-radius: 0%;\"><span class=\"at4-visually-hidden\" style=\"-webkit-font-smoothing: antialiased; position: absolute; clip: rect(1px, 1px, 1px, 1px); padding: 0px; border: 0px; overflow: hidden;\"></span><span class=\"at-icon-wrapper\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; overflow: hidden; cursor: pointer; margin-bottom: 0px; vertical-align: middle; line-height: 32px; height: 32px; width: 32px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" viewBox=\"0 0 32 32\" version=\"1.1\" role=\"img\" aria-labelledby=\"at-svg-linkedin-3\" class=\"at-icon at-icon-linkedin\" style=\"width: 32px; height: 32px;\"><g><path d=\"M26 25.963h-4.185v-6.55c0-1.56-.027-3.57-2.175-3.57-2.18 0-2.51 1.7-2.51 3.46v6.66h-4.182V12.495h4.012v1.84h.058c.558-1.058 1.924-2.174 3.96-2.174 4.24 0 5.022 2.79 5.022 6.417v7.386zM8.23 10.655a2.426 2.426 0 0 1 0-4.855 2.427 2.427 0 0 1 0 4.855zm-2.098 1.84h4.19v13.468h-4.19V12.495z\" fill-rule=\"evenodd\"></path></g></svg></span></a><a role=\"button\" tabindex=\"0\" class=\"at-icon-wrapper at-share-btn at-svc-buffer\" style=\"outline: none; -webkit-font-smoothing: antialiased; color: inherit; transition: all 0.2s ease-in-out 0s; display: inline-block; overflow: hidden; border: 0px; box-shadow: none; padding: 0px; line-height: 0; margin: 0px 5px 5px 0px; background-color: rgb(0, 0, 0); vertical-align: middle; border-radius: 0%;\"><span class=\"at4-visually-hidden\" style=\"-webkit-font-smoothing: antialiased; position: absolute; clip: rect(1px, 1px, 1px, 1px); padding: 0px; border: 0px; overflow: hidden;\"></span><span class=\"at-icon-wrapper\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; overflow: hidden; cursor: pointer; margin-bottom: 0px; vertical-align: middle; line-height: 32px; height: 32px; width: 32px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" viewBox=\"0 0 32 32\" version=\"1.1\" role=\"img\" aria-labelledby=\"at-svg-buffer-4\" class=\"at-icon at-icon-buffer\" style=\"width: 32px; height: 32px;\"><g><path d=\"M5.264 10.393c-.352-.163-.352-.428 0-.59l10.1-4.68c.35-.164.92-.164 1.273 0l10.1 4.68c.35.162.35.427 0 .59l-10.1 4.68c-.352.163-.922.163-1.274 0l-10.1-4.68zm0 5.323c-.352.163-.352.427 0 .59l10.1 4.68c.35.163.92.163 1.273 0l10.1-4.68c.35-.163.35-.427 0-.59l-2.01-.93c-.35-.164-.92-.164-1.273 0l-6.818 3.158c-.35.163-.92.163-1.273 0l-6.817-3.16c-.352-.162-.922-.162-1.273 0l-2.01.932zm0 5.89c-.352.164-.352.43 0 .592l10.1 4.68c.35.163.92.163 1.273 0l10.1-4.68c.35-.163.35-.428 0-.59l-2.01-.932c-.35-.163-.92-.163-1.273 0l-6.818 3.16c-.35.163-.92.163-1.273 0l-6.817-3.16c-.352-.163-.922-.163-1.273 0l-2.01.93z\" fill-rule=\"evenodd\"></path></g></svg></span></a><a role=\"button\" tabindex=\"0\" class=\"at-icon-wrapper at-share-btn at-svc-compact\" style=\"outline: none; -webkit-font-smoothing: antialiased; color: inherit; transition: all 0.2s ease-in-out 0s; display: inline-block; overflow: hidden; border: 0px; box-shadow: none; padding: 0px; line-height: 0; margin: 0px 5px 5px 0px; background-color: rgb(255, 101, 80); vertical-align: middle; border-radius: 0%;\"><span class=\"at4-visually-hidden\" style=\"-webkit-font-smoothing: antialiased; position: absolute; clip: rect(1px, 1px, 1px, 1px); padding: 0px; border: 0px; overflow: hidden;\"></span><span class=\"at-icon-wrapper\" style=\"-webkit-font-smoothing: antialiased; display: inline-block; overflow: hidden; cursor: pointer; margin-bottom: 0px; vertical-align: middle; line-height: 32px; height: 32px; width: 32px;\"><svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" viewBox=\"0 0 32 32\" version=\"1.1\" role=\"img\" aria-labelledby=\"at-svg-addthis-5\" class=\"at-icon at-icon-addthis\" style=\"width: 32px; height: 32px;\"><g><path d=\"M18 14V8h-4v6H8v4h6v6h4v-6h6v-4h-6z\" fill-rule=\"evenodd\"></path></g></svg></span></a><span class=\"at_flat_counter\" style=\"-webkit-font-smoothing: antialiased; cursor: pointer; font-family: helvetica, arial, sans-serif; font-weight: 700; text-transform: uppercase; display: inline-block; position: relative; vertical-align: top; height: auto; margin: 0px 5px; padding: 0px 6px; left: -1px; background: rgb(235, 235, 235); color: rgb(50, 54, 59); transition: all 0.2s ease 0s; line-height: 32px; font-size: 11.4px;\">21</span></div></div></div><p style=\"margin-bottom: 1.1em; padding: 0px; border: 0px; font-size: 21.6px; line-height: 1.6; font-family: inherit; -webkit-font-smoothing: antialiased;\">Blogging is such a great way to connect with your community and when you include relevant search terms you are investing in generating more visitors to your&nbsp;<a title=\"Jumpstart Your Marketing with an AppFolio Website \" href=\"https://www.appfolio.com/features/marketing#property-management-websites\" target=\"_self\" style=\"outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 174, 219); transition: all 0.1s ease-in-out 0s; margin-bottom: 0px;\">property management website</a>. OK, you’re sold! So now the harder part – coming up with ideas on what to actually blog about (details, details).</p><p style=\"margin-bottom: 1.1em; padding: 0px; border: 0px; font-size: 21.6px; line-height: 1.6; font-family: inherit; -webkit-font-smoothing: antialiased;\"><strong style=\"-webkit-font-smoothing: antialiased; margin-bottom: 0px;\">Here are 6 ideas for blog topics designed for residential property managers.</strong></p><ol style=\"margin-right: 0px; margin-bottom: 1.1em; margin-left: 1.5em; padding: 0px; border: 0px; font-size: 21.6px; line-height: 1.6; font-family: inherit; list-style-position: initial; list-style-image: initial; -webkit-font-smoothing: antialiased;\"><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font-size: 21.6px; line-height: 32.4px; font-family: inherit; text-align: left; -webkit-font-smoothing: antialiased;\">Review local neighborhood restaurants and pick your top 5 favorites. Everyone needs to eat and knowing what’s close to where you live is always interesting. Make sure to mention your city and you can even link out to the local restaurant menus. If you want to get more advanced, post it on your Facebook page and ask your community to weigh in too.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font-size: 21.6px; line-height: 32.4px; font-family: inherit; text-align: left; -webkit-font-smoothing: antialiased;\">Talk about housing prices and trends in your local area. It is interesting to know what’s going on with housing – depending on the audience it can be good news if prices are going up or if they’re going down. Bottom line – when you show that you are knowledgeable about the area and paying attention to the trends you’re building trust with your future potential customers.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font-size: 21.6px; line-height: 32.4px; font-family: inherit; text-align: left; -webkit-font-smoothing: antialiased;\">Create a list of the top 5 local activities to do this time of year. You can do this blog post once a season (that’s 4 times in a year!) and it gives you a chance to showcase your local community / city. Include photos of actual people enjoying the activities…and post to your property management Facebook page, too.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font-size: 21.6px; line-height: 32.4px; font-family: inherit; text-align: left; -webkit-font-smoothing: antialiased;\">Write a recap of a recent community get-together. Over the holidays you probably hosted some fun events and activities for residents – recap them with some photos too. Even if you’ve posted on Facebook, this is an opportunity to really show the benefits of living at your community.</li><li style=\"margin: 0px 0px 0.5em; padding: 0px; border: 0px; font-size: 21.6px; line-height: 32.4px; font-family: inherit; text-align: left; -webkit-font-smoothing: antialiased;\">Talk about the technology you’re using to make residents’ lives easier. AppFolio customers who offer the ability for residents to&nbsp;<a href=\"https://www.appfolio.com/blog/2018/10/paying-rent-online/\" style=\"outline: none; -webkit-font-smoothing: antialiased; color: rgb(0, 174, 219); transition: all 0.1s ease-in-out 0s; margin-bottom: 0px;\">pay rent online</a>&nbsp;can write about how easy it is to set-up and get started. You can write about the benefits of paying online vs. sending a check and even launch a fun contest to get more of your residents paying rent online.</li><li style=\"margin: 0px; padding: 0px; border: 0px; font-size: 21.6px; line-height: 32.4px; font-family: inherit; text-align: left; -webkit-font-smoothing: antialiased;\">Give ideas on what residents can do to beautify their rental. You can write so many blog posts on this topic and it is a great way for your residents to feel even more connected to their home.</li></ol></div>\r\n', '05-09-2017', 'post-10.jpg', 2, 4, '', '', '');
INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(11, 'How to Create a Content Editorial Calendar', 'how-to-create-a-content-editorial-calendar', '<div id=\"mntl-sc-block_1-0\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Gone are the days when you could simply run ads to generate interest in your business. Today consumers want information about the products and services they buy, and the companies that sell them. Businesses are able to do provide this through content marketing.</p></div><div id=\"mntl-sc-block_1-0-1\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><div id=\"mntl-block_2-0\" class=\"comp mntl-block\" style=\"margin: 0px; padding: 0px;\"><div id=\"billboard1-sticky-dynamic_1-0\" class=\"comp scads-to-load right-rail__item billboard-sticky billboard1-sticky-dynamic billboard-sticky--sc scads-stick-in-parent scads-ad-placed scads-stuck-bottom\" data-height=\"1050\" style=\"margin: 0px; padding: 0px; position: absolute; right: -312px; top: 134px; height: 1050px;\"><div class=\"spacer\" style=\"margin: 0px; padding: 0px; position: static; width: 300px; height: 304px; vertical-align: baseline; float: none;\"><div id=\"billboard1-dynamic_1-0\" class=\"comp billboard1-dynamic mntl-gpt-dynamic-adunit mntl-gpt-adunit gpt billboard dynamic\" data-ad-width=\"300\" data-ad-height=\"250\" style=\"margin: 0px; padding: 0px; text-align: center; max-width: none; min-width: 300px; min-height: 250px; position: absolute; bottom: 0px; width: 300px;\"><div id=\"billboard\" class=\"wrapper\" data-type=\"billboard\" data-pos=\"atf\" data-priority=\"2\" data-sizes=\"[[300, 250], [300, 600], [160, 600], [300, 1050], [1, 2], &quot;fluid&quot;]\" data-rtb=\"true\" data-targeting=\"{}\" data-auction-floor-id=\"3bd3f410f0f24094bfd884a7691b57e5\" data-auction-floor-value=\"25\" data-google-query-id=\"CMituKf93ugCFZCeGwodm3cLXQ\" style=\"margin: 0px auto; padding: 0px; width: 300px;\"><div id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard_0\" width=\"300\" height=\"250\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" data-google-container-id=\"2\" data-load-complete=\"true\" style=\"margin: 0px auto; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div></div></div></div></div><div id=\"mntl-sc-block_1-0-2\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Like other forms of marketing, content marketing is all about attracting potential customers and clients to your business. It does this by:</p></div><div id=\"mntl-sc-block_1-0-3\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><div id=\"mntl-block_3-0\" class=\"comp mntl-block\" style=\"margin: 0px; padding: 0px;\"><div id=\"billboard2-sticky-dynamic_1-0\" class=\"comp scads-to-load right-rail__item billboard-sticky billboard2-sticky-dynamic billboard-sticky--sc scads-stick-in-parent scads-ad-placed\" data-height=\"600\" style=\"margin: 0px; padding: 0px; position: absolute; right: -312px; top: 1284px;\"><div class=\"spacer\" style=\"margin: 0px; padding: 0px;\"><div id=\"billboard2-dynamic_1-0\" class=\"comp billboard2-dynamic mntl-gpt-dynamic-adunit mntl-gpt-adunit gpt billboard dynamic\" data-ad-width=\"300\" data-ad-height=\"600\" style=\"margin: 0px; padding: 0px; text-align: center; max-width: none; min-width: 300px; min-height: 250px;\"><div id=\"billboard2\" class=\"wrapper\" data-type=\"billboard\" data-pos=\"btf1\" data-priority=\"3\" data-sizes=\"[[300, 250], [300, 600], [300, 601], [160, 600], [300, 251], [2, 1], &quot;fluid&quot;]\" data-rtb=\"true\" data-targeting=\"null\" data-auction-floor-id=\"c576ea9adcaf44bfbabaa91b4190c8c7\" data-auction-floor-value=\"25\" data-google-query-id=\"CJaR1Kf93ugCFU5sGwodCmwFqw\" style=\"margin: 0px auto; padding: 0px; width: 300px;\"><div id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard2_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard2_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard2_0\" width=\"300\" height=\"600\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" data-google-container-id=\"3\" data-load-complete=\"true\" style=\"margin: 0px auto; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div></div></div></div></div><div id=\"mntl-sc-block_1-0-4\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><ul style=\"margin: 1.25rem 0px; padding: 0px 1.5em; list-style: none; z-index: 1;\"><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\">Showing off your expertise</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\">Providing valuable information or resources</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\">Increasing your visibility through other resources that target your market, SEO, and social sharing</li></ul></div><div id=\"mntl-sc-block_1-0-5\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><div id=\"mntl-block_4-0\" class=\"comp mntl-block\" style=\"margin: 0px; padding: 0px;\"><div id=\"billboard3-sticky-dynamic_1-0\" class=\"comp scads-to-load right-rail__item billboard-sticky billboard3-sticky-dynamic billboard-sticky--sc scads-stick-in-parent scads-ad-placed scads-stuck-bottom\" data-height=\"600\" style=\"margin: 0px; padding: 0px; position: absolute; right: -312px; top: 1984px; height: 600px;\"><div class=\"spacer\" style=\"margin: 0px; padding: 0px; position: static; width: 300px; height: 304px; vertical-align: baseline; float: none;\"><div id=\"billboard3-dynamic_1-0\" class=\"comp billboard3-dynamic mntl-gpt-dynamic-adunit mntl-gpt-adunit gpt billboard dynamic\" data-ad-width=\"300\" data-ad-height=\"250\" style=\"margin: 0px; padding: 0px; text-align: center; max-width: none; min-width: 300px; min-height: 250px; position: absolute; bottom: 0px; width: 300px;\"><div id=\"billboard3\" class=\"wrapper\" data-type=\"billboard\" data-pos=\"btf2\" data-priority=\"5\" data-sizes=\"[[300, 250], [300, 252], [3, 1], &quot;fluid&quot;]\" data-rtb=\"true\" data-targeting=\"null\" data-auction-floor-id=\"33d99ae4cb6940b0b67ff5e22c3822a4\" data-auction-floor-value=\"25\" data-google-query-id=\"CPj57Kf93ugCFcVFGwodOGUAjw\" style=\"margin: 0px auto; padding: 0px; width: 300px;\"><div id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard3_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard3_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard3_0\" width=\"300\" height=\"250\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" data-google-container-id=\"4\" data-load-complete=\"true\" style=\"margin: 0px auto; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div></div></div></div></div><div id=\"mntl-sc-block_1-0-6\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">The challenge of content marketing is that it takes time to create and distribute. Many new home business owners begin to use content marketing but quickly run out of time or ideas. The solution to having regular content is through a plan and editorial calendar.</p></div><div id=\"mntl-sc-block_1-0-7\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><h2 id=\"mntl-sc-block_1-0-8\" class=\"comp mntl-sc-block mntl-sc-block-heading\" style=\"margin: 2rem 0px 0px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-size: 1.25rem; line-height: 1.2; font-family: Publico, Georgia, serif;\"><span class=\"mntl-sc-block-heading__text\">Developing Your Content Marketing Plan</span></h2><div id=\"mntl-sc-block_1-0-9\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Before creating your editorial calendar, you need to have an idea about the types of content you want to create. To do that, you need to answer the following questions:</p></div><div id=\"mntl-sc-block_1-0-10\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><div id=\"mntl-sc-block_1-0-11\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><ul style=\"margin: 1.25rem 0px; padding: 0px 1.5em; list-style: none; z-index: 1;\"><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><strong>Who is your&nbsp;<a href=\"https://www.thebalancesmb.com/target-market-defined-1794389\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"1\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">target market</a>?</strong>&nbsp;Like all other forms of marketing, content marketing should be focused on attracting your most likely buyer.</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><strong>What value will your content provide?&nbsp;</strong>People buy because they have a problem. Through your content, you can offer a solution that entices them to learn more about you.</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><strong>What is your&nbsp;<a href=\"https://www.thebalancesmb.com/stand-out-from-your-competition-1794592\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"2\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">USP</a>?</strong>&nbsp;How are your content and business overall different from all the other businesses providing the same service or products?</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><strong>What is the best way to deliver the information?</strong>&nbsp;Depending on your topic, you can do how-to content, reviews, lists, opinion pieces, etc.</li><span class=\"mntl-sc-block-adslot mntl-sc-block-adslot-inline\"><div id=\"native-placeholder_2-0\" class=\"comp native-placeholder mntl-block\" style=\"margin: 0px; padding: 0px;\"></div></span><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><strong>What are the best formats for reaching your target market?</strong>&nbsp;This is where you decide the types of content you’ll provide. Options include articles, videos, infographics, short reports, etc.</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><strong>Where are the best places to publish your content?</strong>&nbsp;In many cases, you’ll post content on your own website; however, you can also create content for other sites, social media, YouTube, and more.</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style-type: none;\"><strong>What frequency will you post new content?</strong>&nbsp;This is where you decide what you’ll create and how often. In many cases, you may have a plan for several types of content. For example, you might create a schedule of writing two blog posts, creating one video, and syndicating one article a week.</li><span class=\"mntl-sc-block-adslot mntl-sc-block-adslot-inline\"><div id=\"mntl-block_6-0\" class=\"comp mntl-block\" style=\"margin: 0px; padding: 0px; display: inline;\"><div id=\"billboard4-sticky-dynamic_2-0\" class=\"comp scads-to-load right-rail__item billboard-sticky billboard4-sticky-dynamic billboard-sticky--sc scads-stick-in-parent scads-ad-placed scads-stuck-bottom\" data-height=\"600\" style=\"margin: 0px; padding: 0px; position: absolute; right: -312px; top: 2684px; height: 600px;\"><div class=\"spacer\" style=\"margin: 0px; padding: 0px; position: static; width: 300px; height: 304px; vertical-align: baseline; float: none;\"><div id=\"billboard4-dynamic_2-0\" class=\"comp billboard4-dynamic mntl-gpt-dynamic-adunit mntl-gpt-adunit gpt billboard dynamic\" data-ad-width=\"300\" data-ad-height=\"250\" style=\"margin: 0px; padding: 0px; text-align: center; max-width: none; min-width: 300px; min-height: 250px; position: absolute; bottom: 0px; width: 300px;\"><div id=\"billboard4\" class=\"wrapper\" data-type=\"billboard\" data-pos=\"btf3\" data-priority=\"6\" data-sizes=\"[[300, 250], [300, 253], [4, 1], &quot;fluid&quot;]\" data-rtb=\"true\" data-targeting=\"null\" data-auction-floor-id=\"7d138dac2cd04f79b70ccf988cfa4880\" data-auction-floor-value=\"25\" data-google-query-id=\"CPT33bD93ugCFcjcGwodUvwLZg\" style=\"margin: 0px auto; padding: 0px; width: 300px;\"><div id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard4_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard4_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard4_0\" width=\"300\" height=\"250\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" data-google-container-id=\"6\" data-load-complete=\"true\" style=\"margin: 0px auto; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div></div></div></div></span></ul></div><div id=\"mntl-sc-block_1-0-12\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><div id=\"mntl-block_7-0\" class=\"comp mntl-block\" style=\"margin: 0px; padding: 0px;\"><div id=\"billboard5-sticky-dynamic_2-0\" class=\"comp scads-to-load right-rail__item billboard-sticky billboard5-sticky-dynamic billboard-sticky--sc scads-stick-in-parent scads-ad-placed scads-stuck-bottom\" data-height=\"600\" style=\"margin: 0px; padding: 0px; position: absolute; right: -312px; top: 3384px; height: 600px;\"><div class=\"spacer\" style=\"margin: 0px; padding: 0px; position: static; width: 300px; height: 304px; vertical-align: baseline; float: none;\"><div id=\"billboard5-dynamic_2-0\" class=\"comp js-billboard-lazy billboard5-dynamic billboard-lazy mntl-lazy-ad mntl-gpt-dynamic-adunit mntl-gpt-adunit gpt billboard dynamic\" data-ad-width=\"300\" data-ad-height=\"250\" style=\"margin: 0px; padding: 0px; text-align: center; max-width: none; min-width: 300px; min-height: 250px; position: absolute; bottom: 0px; width: 300px;\"><div id=\"billboard5\" class=\"wrapper\" data-type=\"billboard\" data-pos=\"btf4\" data-priority=\"7\" data-sizes=\"[[300, 250], [300, 254], [6, 1], &quot;fluid&quot;]\" data-rtb=\"true\" data-targeting=\"null\" data-auction-floor-id=\"f74881159a694ed3a5ef4d7fdc098776\" data-auction-floor-value=\"25\" data-google-query-id=\"CKPlyrH93ugCFUhmGwod0AULjw\" style=\"margin: 0px auto; padding: 0px; width: 300px;\"><div id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard5_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard5_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard5_0\" width=\"300\" height=\"250\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" data-load-complete=\"true\" data-google-container-id=\"7\" style=\"margin: 0px auto; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div></div></div></div></div><h2 id=\"mntl-sc-block_1-0-13\" class=\"comp mntl-sc-block mntl-sc-block-heading\" style=\"margin: 2rem 0px 0px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-size: 1.25rem; line-height: 1.2; font-family: Publico, Georgia, serif;\"><span class=\"mntl-sc-block-heading__text\">Creating Your Editorial Calendar</span></h2><div id=\"mntl-sc-block_1-0-14\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Once you know the types of content you want to create, for whom and how often, it’s time to write your editorial calendar. The farther out you can create your calendar, the easier content creation will be. With that said, it can be difficult to plan content a year in advance. Further, you want some flexibility to create content related to what’s going on in the world at that moment.</p></div><div id=\"mntl-sc-block_1-0-15\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><div id=\"mntl-block_8-0\" class=\"comp mntl-block\" style=\"margin: 0px; padding: 0px;\"><div id=\"billboard6-sticky-dynamic_1-0\" class=\"comp scads-to-load right-rail__item billboard-sticky billboard6-sticky-dynamic billboard-sticky--sc scads-ad-placed\" data-height=\"600\" style=\"margin: 0px; padding: 0px; position: absolute; right: -312px; top: 4084px;\"><div class=\"spacer\" style=\"margin: 0px; padding: 0px;\"><div id=\"billboard6-dynamic_1-0\" class=\"comp js-billboard-lazy billboard6-dynamic billboard-lazy mntl-lazy-ad mntl-gpt-dynamic-adunit mntl-gpt-adunit gpt billboard dynamic\" data-ad-width=\"300\" data-ad-height=\"250\" style=\"margin: 0px; padding: 0px; text-align: center; max-width: none; min-width: 300px; min-height: 250px;\"><div id=\"billboard6\" class=\"wrapper\" data-type=\"billboard\" data-pos=\"btf5\" data-priority=\"8\" data-sizes=\"[[300,250],[300,255],[7,1],&quot;fluid&quot;]\" data-rtb=\"true\" data-targeting=\"{}\" data-auction-floor-id=\"ec3314ec6060403582b5d23c47cc7b18\" data-auction-floor-value=\"25\" data-google-query-id=\"CJyEprL93ugCFUKRGwodJu0GeQ\" style=\"margin: 0px auto; padding: 0px; width: 300px;\"><div id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard6_0__container__\" style=\"margin: 0px; padding: 0px; border: 0pt none;\"><iframe id=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard6_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/479/thebalancesmb/balsmb_home-business/billboard6_0\" width=\"300\" height=\"250\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" data-load-complete=\"true\" data-google-container-id=\"8\" style=\"margin: 0px auto; padding: 0px; border-width: 0px; border-style: initial; vertical-align: bottom;\"></iframe></div></div></div></div></div></div></div><h2 id=\"mntl-sc-block_1-0-16\" class=\"comp mntl-sc-block mntl-sc-block-heading\" style=\"margin: 2rem 0px 0px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-size: 1.25rem; line-height: 1.2; font-family: Publico, Georgia, serif;\"><span class=\"mntl-sc-block-heading__text\">Pre-Calendar To-Dos</span></h2><div id=\"mntl-sc-block_1-0-17\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Get a piece of paper to jot down notes and ideas that will eventually be added to your calendar. As you begin to add themes and events to your calendar, jot down any content ideas that you think of on this piece of paper. Later they’ll be added to the calendar.</p></div><div id=\"mntl-sc-block_1-0-18\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><div id=\"mntl-block_9-0\" class=\"comp mntl-block\" style=\"margin: 0px; padding: 0px;\"></div></div><div id=\"mntl-sc-block_1-0-19\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><ol style=\"margin: 1.25rem 0px 1.25rem 1.5em; padding: 0px 1.5em 0px 0px; counter-reset: none;\"><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">Make a list of the topics and niches you want to create content for. If you’re a blogger, these would be your categories. For other businesses, think about the types of information your target market would like.</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">Write down any content ideas you currently have. If you know a title you’d like to create, write that down.</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">Check your website stats to see what content has been popular on your site already and what your market is searching for related to your topic. Remember, the goal is to attract your target market, so you want to know what it is they’re interested in. It doesn’t hurt to check this data every few months as sometimes it can change.</li><span class=\"mntl-sc-block-adslot mntl-sc-block-adslot-inline\"></span><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">Add other ideas that come to you as you add the calendar themes and topics.</li></ol></div><div id=\"mntl-sc-block_1-0-20\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><h2 id=\"mntl-sc-block_1-0-21\" class=\"comp mntl-sc-block mntl-sc-block-heading\" style=\"margin: 2rem 0px 0px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-size: 1.25rem; line-height: 1.2; font-family: Publico, Georgia, serif;\"><span class=\"mntl-sc-block-heading__text\">Creating Seasonal Calendar\'s Topics</span></h2><div id=\"mntl-sc-block_1-0-22\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Pull out a calendar with all the months you’d like to plan content for. For example, if you’d like to plan for the next three months, pull out calendars for those three months. You can use any calendar you like, whether it’s paper, digital, or online.</p></div><div id=\"mntl-sc-block_1-0-23\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><div id=\"mntl-sc-block_1-0-24\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Write down seasonal information for each month. Most magazines have editorial calendars that go with a monthly theme. For example, January is usually about goals, February is about relationships, and August is back-to-school. As you do this for each month if a content idea is sparked, write it on your list (pre-calendar to dos) to be added to your calendar later. Right now, you’re just putting in the themes and structure of the calendar.</p></div><div id=\"mntl-sc-block_1-0-25\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><div id=\"mntl-sc-block_1-0-26\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Write down any holidays or other special dates in those months. For example, in April you’d write down Tax Day on the 15th. Don’t forget any dates related to your business, such as your business’ anniversary.</p></div><div id=\"mntl-sc-block_1-0-27\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><h2 id=\"mntl-sc-block_1-0-28\" class=\"comp mntl-sc-block mntl-sc-block-heading\" style=\"margin: 2rem 0px 0px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-size: 1.25rem; line-height: 1.2; font-family: Publico, Georgia, serif;\"><span class=\"mntl-sc-block-heading__text\">Event-Driven Themes</span></h2><div id=\"mntl-sc-block_1-0-29\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Look up other events that you can create content around. You can get a copy of Chase’s Calendar of Events or check any site that lists monthly, weekly, and daily events. For example, December is “National Write a Business Plan Month,” the first week of December is “Cookie Cutter Week,” and December 9<sup>th</sup>&nbsp;is “Gingerbread Decorating Day.” These resources can help you come up with content ideas. For example, if you’re a&nbsp;<a href=\"https://www.thebalancesmb.com/how-to-start-and-profit-from-a-food-blog-1794076\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"1\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">food blogger</a>, December has lots of cookie and cooking weeks and days. Again, as you go through these resources, write down any content ideas that pop in your mind on your idea sheet.</p></div><div id=\"mntl-sc-block_1-0-30\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><div id=\"mntl-sc-block_1-0-31\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Write down any sales or&nbsp;<a href=\"https://www.thebalancesmb.com/how-to-work-at-home-as-an-affiliate-marketer-1794707\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"1\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">affiliate specials</a>&nbsp;you’re aware of. Content can be used to help you sell as well. For example, you might add Black Friday and Cyber Monday to your calendar.</p></div><div id=\"mntl-sc-block_1-0-32\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><h2 id=\"mntl-sc-block_1-0-33\" class=\"comp mntl-sc-block mntl-sc-block-heading\" style=\"margin: 2rem 0px 0px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-size: 1.25rem; line-height: 1.2; font-family: Publico, Georgia, serif;\"><span class=\"mntl-sc-block-heading__text\">Evergreen Writing</span></h2><div id=\"mntl-sc-block_1-0-34\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Include evergreen content ideas. Attaching your content to seasons or events helps give your content relevance at the moment, but evergreen content is good all the time and can be easily used to fill in blank spots on your calendar.</p></div><div id=\"mntl-sc-block_1-0-35\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><h2 id=\"mntl-sc-block_1-0-36\" class=\"comp mntl-sc-block mntl-sc-block-heading\" style=\"margin: 2rem 0px 0px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-size: 1.25rem; line-height: 1.2; font-family: Publico, Georgia, serif;\"><span class=\"mntl-sc-block-heading__text\">Putting It All Together</span></h2><div id=\"mntl-sc-block_1-0-37\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">You have the themes and ideas, now it’s time to create your editorial calendar.</p></div><div id=\"mntl-sc-block_1-0-38\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><div id=\"mntl-sc-block_1-0-39\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><ol style=\"margin: 1.25rem 0px 1.25rem 1.5em; padding: 0px 1.5em 0px 0px; counter-reset: none;\"><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">Consider using monthly themes similar to how magazines organize their content, which can make coming up with ideas easier. They don’t have to be the same themes. In fact, it can make you stand out to come up with your own themes or variations on traditional themes.</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">Armed with your content schedule, begin filling in the calendar with your content plans. For example, if you’re a business coach, you might have a two-part blog post for “National Write a Business Plan Month” on how to write a business plan and a video tutorial on using a business plan template (that perhaps you sell). Be sure to check the month ahead to see what’s going on as often you can create content in anticipation of upcoming events. For example, March is a good time to write about tax preparation.</li><span class=\"mntl-sc-block-adslot mntl-sc-block-adslot-inline\"></span><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">Fill in as many dates as you can. For dates that you’re not sure what you’ll create, at least mark on the calendar that content is due based on your publishing schedule. For example, you might have placeholders of BP for blog posts and V for video.</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">For each piece of content you schedule, indicate who is responsible for creating it. If you’re a one-person home business, chances are you’re creating most of your content. However, you can use guest bloggers on your site, hire writers, or buy&nbsp;<a href=\"https://www.thebalancesmb.com/private-label-rights-for-home-business-1794347\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"1\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">private label right (PLR) content</a>, all of which reduce your time in creating content.</li><span class=\"mntl-sc-block-adslot mntl-sc-block-adslot-inline\"></span><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">If the content will be posted somewhere other than one of your properties (i.e. your blog or YouTube channel), indicate next to the content title where you’ll publish it. For example, if you’re writing a guest article for another website, write down the name of the site next to the title.</li><li style=\"margin: 0px 0px 0.625rem; padding: 0px; list-style: none; position: relative;\">Include your planned&nbsp;<a href=\"https://www.thebalancesmb.com/call-to-action-1794380\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"2\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">called-to-action (CTA)</a>. Every piece of content should have a CTA whether it’s telling people to sign up for your email list, take a survey, add a comment, or check out a product. A CTA can lead to sales, but also, it’s a great way to encourage engagement that can lead to building a relationship with the reader.</li><span class=\"mntl-sc-block-adslot mntl-sc-block-adslot-inline\"></span></ol></div><div id=\"mntl-sc-block_1-0-40\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><h2 id=\"mntl-sc-block_1-0-41\" class=\"comp mntl-sc-block mntl-sc-block-heading\" style=\"margin: 2rem 0px 0px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-size: 1.25rem; line-height: 1.2; font-family: Publico, Georgia, serif;\"><span class=\"mntl-sc-block-heading__text\">Review Your Calendar Regularly</span></h2><div id=\"mntl-sc-block_1-0-42\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Now that you’ve created your calendar, review it monthly. The editorial calendar is designed to help you know what to prepare and when, but it’s not a static tool. Something in the world might happen that can lead to new content ideas. Or something in your business might change. You can add, delete or move content around your calendar to best provide the content your market wants.</p></div><div id=\"mntl-sc-block_1-0-43\" class=\"comp mntl-sc-block mntl-sc-block-adslot mntl-block\" style=\"margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></div><p><a class=\"heading-toc\" id=\"developing-your-content-marketing-plan\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: color 0.15s ease-out 0s; font-family: Rubik, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\"></a><span style=\"color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></span><a class=\"heading-toc\" id=\"creating-your-editorial-calendar\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: color 0.15s ease-out 0s; font-family: Rubik, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\"></a><span style=\"color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></span><a class=\"heading-toc\" id=\"pre-calendar-to-dos\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: color 0.15s ease-out 0s; font-family: Rubik, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\"></a><span style=\"color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></span><a class=\"heading-toc\" id=\"creating-seasonal-calendars-topics\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: color 0.15s ease-out 0s; font-family: Rubik, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\"></a><span style=\"color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></span><a class=\"heading-toc\" id=\"event-driven-themes\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: color 0.15s ease-out 0s; font-family: Rubik, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\"></a><span style=\"color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></span><a class=\"heading-toc\" id=\"evergreen-writing\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: color 0.15s ease-out 0s; font-family: Rubik, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\"></a><span style=\"color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></span><a class=\"heading-toc\" id=\"putting-it-all-together\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: color 0.15s ease-out 0s; font-family: Rubik, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\"></a><span style=\"color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></span><a class=\"heading-toc\" id=\"review-your-calendar-regularly\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: color 0.15s ease-out 0s; font-family: Rubik, Arial, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255);\"></a><span style=\"color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"></span></p><div id=\"mntl-sc-block_1-0-44\" class=\"comp mntl-sc-block mntl-sc-block-html\" style=\"margin: 0px; padding: 0px; counter-reset: section 0; color: rgb(34, 34, 34); font-family: Rubik, Arial, sans-serif; font-size: 17px;\"><p style=\"margin-top: 0.875rem; margin-bottom: 0.875rem; padding: 0px;\">Content is an effective, free&nbsp;<a href=\"https://www.thebalancesmb.com/marketing-strategy-for-home-business-success-1794314\" data-component=\"link\" data-source=\"inlineLink\" data-type=\"internalLink\" data-ordinal=\"1\" style=\"color: rgb(36, 111, 200); outline: 0px; transition: all 0.15s ease-in-out 0s; box-shadow: rgb(140, 175, 211) 0px -1.5px 0px inset;\">marketing strategy</a>&nbsp;ideal for the home business owner. It works best when providing consistent, relevant, valuable information. But it takes a lot of time to think up ideas and create content several times a month, or even a week. An editorial calendar can give your content marketing structure so that you’ll never run out of ideas.&nbsp;</p></div>\r\n', '05-09-2017', 'post-11.png', 1, 18, 'How to Create a Content Editorial Calendar', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(9, 'Justice Print White T Shirt', '', '38', 44, 'product-featured-9.png', '<p><br></p><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">Product description</h2><div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"margin: 0.5em 0px 0em 25px; color: rgb(51, 51, 51); overflow-wrap: break-word; line-height: initial; font-family: \"Amazon Ember\", Arial, sans-serif;\"><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\">100% Official Metallica \'And Justice For All\' (Black) Long Sleeve Shirt printed on 100% cotton garment</p></div>\r\n', 'Metallica T-Shirt And Justice For All Band Logo Official Men\'s Long Sleeve', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% Cotton</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% Official</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Long Sleeve</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Unisex T-Shirt</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Machine Washable</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Quality Item</span></li></ul>', '', '', 17, 1, 1, 1),
(10, 'Teal Cotton T-Shirt for Men', '', '22', 56, 'product-featured-10.png', '<p><br></p><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">Product description</h2><div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"margin: 0.5em 0px 0em 25px; color: rgb(51, 51, 51); overflow-wrap: break-word; line-height: initial; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\">Gildan is a leading provider of everyday quality family apparel, including t-shirts, fleece, sport shirts, underwear, socks, hosiery, and shapewear.</p></div>\r\n', 'Gildan Men\'s G2000 Ultra Cotton Adult T-Shirt\r\n', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% Cotton; Sport Grey And Antique Heathers: 90% Cotton, 10% Polyester; Safety Colors And Heathers: 50% Cotton, 50% Polyester</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Pull-On closure</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Machine Wash</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">0.7\" high</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">14\" wide</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Seamless double-needle collar</span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 410.234px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Taped neck and shoulders for durability</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Double-needle sleeve and bottom hem</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Tubular fit for minimal torque</span></li></ul></div></div>', '', '', 4, 1, 1, 1),
(18, 'Apex Venturini Black Leather Sandal', '', '14', 44, 'product-featured-18.png', '<h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 21px; line-height: 1.3; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\">Product Description</h2><div class=\"aplus-v2 desktop celwidget weblabRtl\" cel_widget_id=\"aplus\" data-cel-widget=\"aplus\" style=\"display: table; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div class=\"celwidget aplus-module launchpad-company-logo\" cel_widget_id=\"aplus-launchpad-company-logo\" data-cel-widget=\"aplus-launchpad-company-logo\" style=\"min-width: 979px;\"><div class=\"a-section a-text-center launchpad-module launchpad-module-company-logo\" style=\"margin-bottom: 12px; max-width: 1000px; margin-left: auto; margin-right: auto; padding-top: 15px; padding-bottom: 15px; text-align: center !important;\"><img alt=\"harssidanzar\" src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/ATH4EQR1QKMJQ/6e6960c0-0116-4d69-861d-86a7d875b8b7._CR86,0,1530,459_PT0_SX600__.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/ATH4EQR1QKMJQ/6e6960c0-0116-4d69-861d-86a7d875b8b7._CR86,0,1530,459_PT0_SX600__.jpg\" style=\"max-width: 100%; vertical-align: top;\"></div></div><div class=\"celwidget aplus-module launchpad-brand-description-left\" cel_widget_id=\"aplus-launchpad-brand-description-left\" data-cel-widget=\"aplus-launchpad-brand-description-left\" style=\"min-width: 979px;\"><div class=\"a-section a-spacing-top-mini launchpad-module launchpad-module-brand-description-left\" style=\"margin-bottom: 12px; padding-top: 15px; max-width: 1000px; margin-left: auto; margin-right: auto; padding-bottom: 15px; margin-top: 0px !important;\"><div class=\"a-section launchpad-text-left-justify\" style=\"margin-bottom: 12px; text-align: justify; text-align-last: left;\"><p style=\"padding: 0px; margin-bottom: 14px;\">Step out into the world in vintage style and genuine leather with Harassidanzar. This pair of men’s leather open-toe sandals boast a classic vintage look with modern style and comfort in mind. The quality outshines other similar sandals on the market by using expert craftsmanship and attention to the key details that ensure the sandals last for many years.</p></div></div></div><div class=\"celwidget aplus-module module-3\" cel_widget_id=\"aplus-module-3\" data-cel-widget=\"aplus-module-3\" style=\"min-width: 979px; padding-bottom: 12px; margin-bottom: 12px;\"><div aria-live=\"polite\" data-a-expander-name=\"aplus-module-expander\" data-a-expander-collapsed-height=\"700\" class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" style=\"width: 1000px; overflow: hidden; position: relative; max-height: 700px;\"><div aria-expanded=\"false\" class=\"a-expander-content a-expander-partial-collapse-content\" style=\"overflow: hidden; position: relative;\"><div class=\"aplus-module-wrapper apm-floatnone\" style=\"text-align: inherit; display: inline-block; float: none;\"><div class=\"apm-sidemodule apm-spacing\" style=\"float: left; zoom: 1; text-align: inherit; margin: 0px auto; width: 970px; padding: 0px; position: relative;\"><div class=\"apm-sidemodule-imageright\" style=\"position: relative; float: right;\"><img alt=\"GM202\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/3740445a-d003-4a59-a37e-0c99795a5d97.__CR0,0,1100,1100_PT0_SX300_V1___.jpg\" class=\"a-spacing-mini\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/3740445a-d003-4a59-a37e-0c99795a5d97.__CR0,0,1100,1100_PT0_SX300_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; margin-bottom: 6px !important;\"></div><div class=\"apm-sidemodule-textleft\" style=\"width: 630px; position: relative; display: table-cell; vertical-align: middle; padding-left: 200px; height: 300px; max-height: 300px;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">Harassidanzar’s Genuine Leather</h3><p style=\"padding: 0px; margin-bottom: 14px;\">Leather quality in shoe matter. Each pair of sandals feature strong double stitching to endure long hours of wear without worry. The premium leather is colored only using natural vegetable-derived dye to help keep the leather’s natural look and durability. With an all-leather sole, you reap the benefits of the earth grounding your every step. Because this is premium genuine leather, each pair of sandals will withstand a lot of wear.</p></div></div></div><div style=\"clear: both;\"></div></div></div></div><div class=\"celwidget aplus-module module-2\" cel_widget_id=\"aplus-module-2\" data-cel-widget=\"aplus-module-2\" style=\"min-width: 979px; padding-bottom: 12px; margin-bottom: 12px;\"><div aria-live=\"polite\" data-a-expander-name=\"aplus-module-expander\" data-a-expander-collapsed-height=\"700\" class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" style=\"width: 1000px; overflow: hidden; position: relative; max-height: 700px;\"><div aria-expanded=\"false\" class=\"a-expander-content a-expander-partial-collapse-content\" style=\"overflow: hidden; position: relative;\"><div class=\"aplus-module-wrapper apm-floatnone\" style=\"text-align: inherit; display: inline-block; float: none;\"><div class=\"apm-sidemodule apm-spacing\" style=\"float: left; zoom: 1; text-align: inherit; margin: 0px auto; width: 970px; padding: 0px; position: relative;\"><div class=\"apm-sidemodule-imageleft\" style=\"position: relative; float: left;\"><img alt=\"GM202\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/3e5f1125-c939-4fe1-8062-ac33045f3243.__CR0,0,1100,1100_PT0_SX300_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/3e5f1125-c939-4fe1-8062-ac33045f3243.__CR0,0,1100,1100_PT0_SX300_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top;\"></div><div class=\"apm-sidemodule-textright\" style=\"width: 470px; position: relative; display: table-cell; vertical-align: middle; padding-left: 40px; height: 300px; max-height: 300px;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">Harassidanzar’s Design</h3><p style=\"padding: 0px; margin-bottom: 14px;\">You don’t need to worry about being stuck with “two left feet”. With an adjustable loophole strap and buckle on each sandal, you get the best comfort for each individual foot. The snug yet pleasant feel will keep your feet from enduring unnecessary strain, injury, or pain throughout your busy day. Your comfort is a top priority in the manufacturing process.</p></div></div></div><div style=\"clear: both;\"></div></div></div></div><div class=\"celwidget aplus-module module-3\" cel_widget_id=\"aplus-module-3\" data-cel-widget=\"aplus-module-3\" style=\"min-width: 979px; padding-bottom: 12px; margin-bottom: 12px;\"><div aria-live=\"polite\" data-a-expander-name=\"aplus-module-expander\" data-a-expander-collapsed-height=\"700\" class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" style=\"width: 1000px; overflow: hidden; position: relative; max-height: 700px;\"><div aria-expanded=\"false\" class=\"a-expander-content a-expander-partial-collapse-content\" style=\"overflow: hidden; position: relative;\"><div class=\"aplus-module-wrapper apm-floatnone\" style=\"text-align: inherit; display: inline-block; float: none;\"><div class=\"apm-sidemodule apm-spacing\" style=\"float: left; zoom: 1; text-align: inherit; margin: 0px auto; width: 970px; padding: 0px; position: relative;\"><div class=\"apm-sidemodule-imageright\" style=\"position: relative; float: right;\"><img alt=\"GM202\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/30626fcd-9ba9-4a45-96f6-6a8ad26273c6.__CR0,1,1100,1100_PT0_SX300_V1___.jpg\" class=\"a-spacing-mini\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/30626fcd-9ba9-4a45-96f6-6a8ad26273c6.__CR0,1,1100,1100_PT0_SX300_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; margin-bottom: 6px !important;\"></div><div class=\"apm-sidemodule-textleft\" style=\"width: 630px; position: relative; display: table-cell; vertical-align: middle; padding-left: 200px; height: 300px; max-height: 300px;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">Harassidanzar’s Style</h3><p style=\"padding: 0px; margin-bottom: 14px;\">Each pair of men’s genuine leather sandals are designed in a way to emphasize your own unique style while keeping up with every day men’s fashion trends. Being available in both black and tan as well as other common natural colors allows you to be able to pick which color profile works best for your clothing. Dress them up or keep them casual, all styles go great with these sandals.</p></div></div></div><div style=\"clear: both;\"></div></div></div></div><div class=\"celwidget aplus-module module-2\" cel_widget_id=\"aplus-module-2\" data-cel-widget=\"aplus-module-2\" style=\"min-width: 979px; padding-bottom: 12px; margin-bottom: 12px;\"><div aria-live=\"polite\" data-a-expander-name=\"aplus-module-expander\" data-a-expander-collapsed-height=\"700\" class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" style=\"width: 1000px; overflow: hidden; position: relative; max-height: 700px;\"><div aria-expanded=\"false\" class=\"a-expander-content a-expander-partial-collapse-content\" style=\"overflow: hidden; position: relative;\"><div class=\"aplus-module-wrapper apm-floatnone\" style=\"text-align: inherit; display: inline-block; float: none;\"><div class=\"apm-sidemodule apm-spacing\" style=\"float: left; zoom: 1; text-align: inherit; margin: 0px auto; width: 970px; padding: 0px; position: relative;\"><div class=\"apm-sidemodule-imageleft\" style=\"position: relative; float: left;\"><img alt=\"GM202\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/00ca4b83-f210-4672-a0ee-1496644abf88.__CR0,0,1100,1100_PT0_SX300_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/00ca4b83-f210-4672-a0ee-1496644abf88.__CR0,0,1100,1100_PT0_SX300_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top;\"></div><div class=\"apm-sidemodule-textright\" style=\"width: 470px; position: relative; display: table-cell; vertical-align: middle; padding-left: 40px; height: 300px; max-height: 300px;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">Harassidanzar’s Service</h3><p style=\"padding: 0px; margin-bottom: 14px;\">We are so sure you will love the look, feel, and design of our sandals that we offer a 100% service on every purchase. If you are not happy with your sandals, our friendly service will help you out!</p></div></div></div><div style=\"clear: both;\"></div></div></div></div><div class=\"celwidget aplus-module module-4\" cel_widget_id=\"aplus-module-4\" data-cel-widget=\"aplus-module-4\" style=\"min-width: 979px; padding-bottom: 12px; margin-bottom: 12px; border-bottom: none;\"><div aria-live=\"polite\" data-a-expander-name=\"aplus-module-expander\" data-a-expander-collapsed-height=\"700\" class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" style=\"width: 1000px; overflow: hidden; position: relative; max-height: 700px;\"><div aria-expanded=\"false\" class=\"a-expander-content a-expander-partial-collapse-content\" style=\"overflow: hidden; position: relative;\"><div class=\"aplus-module-wrapper\" style=\"text-align: inherit; display: inline-block;\"><div class=\"apm-spacing\" style=\"float: left; zoom: 1;\"><div class=\"apm-floatleft apm-fixed-width\" style=\"width: 969px; float: left;\"><h3 class=\"a-spacing-small\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: inherit;\">?Key Features:</h3><div class=\"a-spacing-extra-large\" style=\"margin-bottom: 26px !important;\"><div class=\"apm-spacing\" style=\"float: left; zoom: 1;\"><table class=\"apm-fixed-width a-spacing-mini apm-fourthcol-table\" style=\"width: 969px; margin-bottom: 6px !important;\"><tbody><tr><th class=\"apm-center\" style=\"vertical-align: middle; text-align: center; padding-right: 30px; height: 234px; width: 220px;\"><div class=\"apm-fourthcol\" style=\"width: 220px; float: left;\"><p style=\"padding: 0px; margin-bottom: 14px;\"><img alt=\"GM202\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/b540c200-d71b-41d8-8d78-5983f5453707.__CR0,1,1052,1052_PT0_SX220_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/b540c200-d71b-41d8-8d78-5983f5453707.__CR0,1,1052,1052_PT0_SX220_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; display: block; margin: 0px auto;\"></p></div></th><th class=\"apm-center\" style=\"vertical-align: middle; text-align: center; padding-right: 30px; height: 234px; width: 220px;\"><div class=\"apm-fourthcol\" style=\"width: 220px; float: left;\"><p style=\"padding: 0px; margin-bottom: 14px;\"><img alt=\"GM202\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/55af398c-15a3-476b-af97-89748b36dd2c.__CR0,0,1100,1100_PT0_SX220_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/55af398c-15a3-476b-af97-89748b36dd2c.__CR0,0,1100,1100_PT0_SX220_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; display: block; margin: 0px auto;\"></p></div></th><th class=\"apm-center\" style=\"vertical-align: middle; text-align: center; padding-right: 30px; height: 234px; width: 220px;\"><div class=\"apm-fourthcol\" style=\"width: 220px; float: left;\"><p style=\"padding: 0px; margin-bottom: 14px;\"><img alt=\"GM202\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/747360ee-d2ec-4bad-9d64-62845a83d7d1.__CR0,0,1100,1100_PT0_SX220_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/747360ee-d2ec-4bad-9d64-62845a83d7d1.__CR0,0,1100,1100_PT0_SX220_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; display: block; margin: 0px auto;\"></p></div></th><th class=\"apm-center\" style=\"vertical-align: middle; text-align: center; height: 234px; width: 220px;\"><div class=\"apm-fourthcol\" style=\"width: 220px; float: left;\"><p style=\"padding: 0px; margin-bottom: 14px;\"><img alt=\"GM202\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/3c8d0b66-7d1a-4cce-864c-f4c53415fe1f.__CR0,0,1164,1164_PT0_SX220_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/3c8d0b66-7d1a-4cce-864c-f4c53415fe1f.__CR0,0,1164,1164_PT0_SX220_V1___.jpg\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; display: block; margin: 0px auto;\"></p></div></th></tr><tr><td class=\"apm-top\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; height: 173px;\"><div class=\"apm-fourthcol\" style=\"width: 220px; float: left;\"><h4 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">TOUGH AND CHIC</h4><p class=\"a-size-small\" style=\"padding: 0px; margin-bottom: 14px; font-size: 12px !important; line-height: 1.5 !important;\">These men’s leather shoes were designed to emphasize your fashionable outfits.</p></div></td><td class=\"apm-top\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-left: 3px; height: 173px;\"><div class=\"apm-fourthcol\" style=\"width: 220px; float: left;\"><h4 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">PREMIUM GENUINE LEATHER</h4><p class=\"a-size-small\" style=\"padding: 0px; margin-bottom: 14px; font-size: 12px !important; line-height: 1.5 !important;\">Made of imported genuine leather which is renowned for its durability as well as its flexible properties which make it the ideal material for COMFORT. Made with strong and durable stitching to keep up with your busy lifestyle.</p></div></td><td class=\"apm-top\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-left: 3px; height: 173px;\"><div class=\"apm-fourthcol\" style=\"width: 220px; float: left;\"><h4 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">CRAFTED WITH YOUR COMFORT IN MIND</h4><p class=\"a-size-small\" style=\"padding: 0px; margin-bottom: 14px; font-size: 12px !important; line-height: 1.5 !important;\">Adjustable loophole straps and buckles ensure a snug and comfortable fit. For added comfort, we’ve added an anti-slip sole with soft and supple lining.</p></div></td><td class=\"apm-top\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; height: 173px;\"><div class=\"apm-fourthcol\" style=\"width: 220px; float: left;\"><h4 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">STROLL WITH CONFIDENCE</h4><p class=\"a-size-small\" style=\"padding: 0px; margin-bottom: 14px; font-size: 12px !important; line-height: 1.5 !important;\">Confidently stroll through the streets this summer with a new pair of leather walking sandals that match your tough-chic attitude. Order Now!</p></div></td></tr></tbody></table></div></div></div></div></div></div></div></div></div>\r\n', 'Harssidanzar Mens Comfortable Leather Footbed Sandals Suede Sole\r\n', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Leather sole</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Tough and chic – Harssidanzar men’s leather sandals were designed to emphasize your fashionable outfits. It comes in black and tan colors. Perfectly match any of your summer dresses or outfits with stylish variations to choose from.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Premium Original and Vintage Vegetable-tanned Leather – Made of imported genuine leather which is renowned for its durability as well as its flexible properties which make it the ideal material for COMFORT. Made with strong and durable stitching to keep up with your busy lifestyle.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Crafted with your comfort in mind – Adjustable loophole straps and buckles ensure a snug and comfortable fit. For added comfort, we’ve added an anti-slip suede sole with soft and supple lining.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Stroll with confidence – Confidently stroll through the streets this summer with a new pair of leather walking sandals that match your tough-chic attitude.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100%Satisfaction guarantee - Our Harssidanzar Men\'s Leather Sandals are backed with 100% lifetime warranty, 100% satisfaction guarantee or 100% money back terms. Shop with us and enjoy our friendliest Customer Service!</span></li></ul>', '', '', 0, 0, 1, 4),
(19, 'Lotto PVC Sandal - Navy Blue', '', '11', 34, 'product-featured-19.png', '<div id=\"dp_productDescription_container_div\" class=\"celwidget\" data-feature-name=\"productDescription\" data-cel-widget=\"dp_productDescription_container_div\" style=\"color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div id=\"productDescription_feature_div\" data-feature-name=\"productDescription\" data-template-name=\"productDescription\" class=\"a-row feature\" data-cel-widget=\"productDescription_feature_div\" style=\"width: 1313px;\"><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">Product description</h2><div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"margin: 0.5em 0px 0em 25px; color: rgb(51, 51, 51); overflow-wrap: break-word; font-size: small; line-height: initial;\"><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\">Men\'s Dockers, Newpage Sandal. The perfect sandal for a customized fit! This sporty style is the perfect weekend companion . Manmade upper with contrast stitching details Three adjustable hook and loop closure straps for a secure fit Fabric strap linings Fusion footbed with memory foam for added comfort 1-inch heel Rubber outsole for added traction. Heel Height of 1.00 inches</p></div></div></div><div id=\"detailBullets\" class=\"celwidget\" data-feature-name=\"detailBullets\" data-cel-widget=\"detailBullets\" style=\"color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div id=\"detailBulletsWrapper_feature_div\" data-feature-name=\"detailBullets\" data-template-name=\"detailBullets\" class=\"a-section a-spacing-none feature\" data-cel-widget=\"detailBulletsWrapper_feature_div\" style=\"margin-bottom: 0px;\"><div id=\"detailBullets_feature_div\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Product Dimensions: </span>10 x 15 x 6 inches</span></li></ul></div></div></div>\r\n', 'Dockers Men\'s Newpage Outdoor Sport Sandal Shoe\r\n', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Synthetic sole</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Manmade upper with contrast stitching details</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Three adjustable hook and loop closure straps for a secure fit</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Fabric strap linings</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Fusion footbed with memory foam for added comfort</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">1-inch heel</span></li></ul>', '', '', 0, 0, 1, 4),
(27, 'Sky Sea Gray and Black Fabric Sports Shoes', '', '28', 28, 'product-featured-27.png', '<p><br></p><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 21px=\"\" !important;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51)=\"\" !important;\"=\"\">Product description</h2><div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"margin: 0.5em 0px 0em 25px; color: rgb(51, 51, 51); overflow-wrap: break-word; line-height: initial; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;\"=\"\"><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\">Below it will help us choose the right size for shoes, compare the chart size with your feet length carefully before ordering. Thank you!<br>Size Chart:<br>EU38/6 D(M) US Men-Feet length: 9.65 Inches<br>EU39/6.5 D(M) US Men-Feet length: 9.84 Inches<br>EU40/7 D(M) US Men-Feet length: 10.04 Inches<br>EU41/8 D(M) US Men-Feet length: 10.24 Inches<br>EU42/8.5 D(M) US Men-Feet length: 10.43 Inches<br>EU43/9.5 D(M) US Men-Feet length: 10.63 Inches<br>EU44/10 D(M) US Men-Feet length: 10.84 Inches<br>EU45/11 D(M) US Men-Feet length: 11.05 Inches<br>EU46/12 D(M) US Men-Feet length: 11.22 Inches<br>EU47/13 D(M) US Men-Feet length: 11.41 Inches<br>If your foot is wider or fatter than the standard foot, we suggest that you consider increasing one size and order.<br><br>Contents<br>1 x Hetohec Sports Baseball Shoes Knitted Fashion Outdoor Sneakers Lightweight Gym Athletic Shoe for Men Trail Workout Sport Running Shoes</p></div>\r\n', 'Hetohec Sports Baseball Shoes Knitted Fashion Outdoor Sneakers Lightweight Gym Athletic Shoe for Men Trail Workout', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Knit</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">MD sole</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">fabric-and-synthetic</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Knit Uppers: Soft & Comfortable & Breathable. Knit upper material make it possible that your feet free breath when you run or walk. It\'s soft and protective to cushion your every step.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">MD Sole: Lightweight & Excellent bounce-back & Durability. Adapting to the ground for stability and working strategically to optimize the unique properties of every touch and push.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Fashion unique design. Comfortable and breathable gym shoes. Applications: Casual, Walking, Running, Outdoor, Travel, Exercise, Workout, Party</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Sport Running Shoes Knitted Fashion Outdoor Sneakers Lightweight Gym Athletic Shoe for Men Trail Workout …</span></li></ul>', '', '', 0, 0, 1, 11),
(28, 'New Balance Men\'s 520v5 Cushioning Running Shoe', '', '38', 38, 'product-featured-28.png', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% Synthetic</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Rubber sole</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Shaft measures approximately low-top from arch</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Injection Molded EVA</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Data Inspired Upper Design</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Rubber Outsole</span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 348.859px; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">NB Response 1.0 Performance Insert</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Synthetic/Mesh Upper with Comfort Collar       </span></li></ul><div><div id=\"dp_productDescription_container_div\" class=\"celwidget\" data-feature-name=\"productDescription\" data-cel-widget=\"dp_productDescription_container_div\"><div id=\"productDescription_feature_div\" data-feature-name=\"productDescription\" data-template-name=\"productDescription\" class=\"a-row feature\" data-cel-widget=\"productDescription_feature_div\" style=\"width: 1313px;\"><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-size: 21px !important; color: rgb(51, 51, 51) !important;\"><br></h2><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">Product description</h2><div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"margin: 0.5em 0px 0em 25px; color: rgb(51, 51, 51); overflow-wrap: break-word; font-size: small; line-height: initial;\"><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\">Inspired by fresh foam, designed for comfort, the 520v5 adds in underfoot flex grooves and new foam compound to enhance comfort running errands or miles</p><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\">New Balance, is dedicated to helping athletes achieve their goals. It\'s been their mission for more than a century. It\'s why they don\'t spend money on celebrity endorsements. They spend it on research and development. It\'s why they don\'t design products to fit an image. They design them to fit. New Balance is driven to make the finest shoes for the same reason athletes lace them up: to achieve the very best.</p></div></div></div><div id=\"detailBullets\" class=\"celwidget\" data-feature-name=\"detailBullets\" data-cel-widget=\"detailBullets\"><div id=\"detailBulletsWrapper_feature_div\" data-feature-name=\"detailBullets\" data-template-name=\"detailBullets\" class=\"a-section a-spacing-none feature\" data-cel-widget=\"detailBulletsWrapper_feature_div\" style=\"margin-bottom: 0px;\"><div id=\"detailBullets_feature_div\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Product Dimensions: </span>10 x 15 x 6 inches</span></li><li style=\"list-style: none; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Shipping Weight: </span>2 pounds (<a href=\"https://www.amazon.com/gp/help/seller/shipping.html/ref=dp_pd_shipping?_encoding=UTF8&seller=&asin=B07MB6WKM5\" style=\"color: rgb(0, 102, 192);\">View shipping rates and policies</a>)</span></li></ul></div></div></div></div></div></div>\r\n', 'New Balance Men\'s 520v5 Cushioning Running Shoe', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% Synthetic</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Rubber sole</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Shaft measures approximately low-top from arch</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Injection Molded EVA</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Data Inspired Upper Design</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Rubber Outsole</span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 348.859px; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">NB Response 1.0 Performance Insert</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Synthetic/Mesh Upper with Comfort Collar</span></li></ul></div></div>', '', '', 0, 0, 1, 11);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(31, 'Coreal Women Long Sleeve Sweater shirt Casual Tunic Tops with Pockets', '', '40', 40, 'product-featured-31.png', '<h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 21px; line-height: 1.3; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\">Product Description</h2><div class=\"aplus-v2 desktop celwidget weblabRtl\" cel_widget_id=\"aplus\" data-cel-widget=\"aplus\" style=\"display: table; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div class=\"celwidget aplus-module launchpad-company-logo\" cel_widget_id=\"aplus-launchpad-company-logo\" data-cel-widget=\"aplus-launchpad-company-logo\" style=\"min-width: 979px;\"><div class=\"a-section a-text-center launchpad-module launchpad-module-company-logo\" style=\"margin-bottom: 12px; max-width: 1000px; margin-left: auto; margin-right: auto; padding-top: 15px; padding-bottom: 15px; text-align: center !important;\"><img alt=\"Coreal\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/b312e814-46b6-4ffd-99b6-26a58017a5e6.__CR0,0,600,180_PT0_SX600_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/b312e814-46b6-4ffd-99b6-26a58017a5e6.__CR0,0,600,180_PT0_SX600_V1___.jpg\" style=\"max-width: 100%; vertical-align: top;\"></div></div><div class=\"celwidget aplus-module 3p-module-b\" cel_widget_id=\"aplus-3p-module-b\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px;\"><div class=\"aplus-3p-fixed-width\" style=\"width: 970px;\"><img alt=\"women tops\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/a0765acf-eec1-4264-b3fc-054430d517d2.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/a0765acf-eec1-4264-b3fc-054430d517d2.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span style=\"font-weight: 700;\">Size(Inch)</span><br></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Small-----Bust 34.5\"---Waist 34\"---Length 28\"</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Medium----Bust 36.5\"---Waist 36\"---Length 28.75\"</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Large-----Bust 39.5\"---Waist 38\"---Length 29.5\"</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">X-Large---Bust 42.5\"---Waist 40\"---Length 30.7\"</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">XX-Large--Bust 44.5\"---Waist 42\"---Length 31.1\"</span></p></div></div><div class=\"celwidget aplus-module module-9\" cel_widget_id=\"aplus-module-9\" data-cel-widget=\"aplus-module-9\" style=\"min-width: 979px; padding-bottom: 12px; margin-bottom: 12px;\"><div aria-live=\"polite\" data-a-expander-name=\"aplus-module-expander\" data-a-expander-collapsed-height=\"700\" class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" style=\"width: 979px; overflow: hidden; position: relative; max-height: 700px;\"><div aria-expanded=\"false\" class=\"a-expander-content a-expander-partial-collapse-content\" style=\"overflow: hidden; position: relative;\"><div class=\"aplus-module-wrapper\" style=\"text-align: inherit; display: inline-block;\"><div class=\"apm-spacing apm-fixed-width\" style=\"width: 969px; float: left; zoom: 1;\"><table class=\"apm-fixed-width a-size-base apm-eventhirdcol-table\" style=\"width: 969px; margin-bottom: 0px !important; line-height: 19px !important;\"><tbody><tr><th class=\"apm-center\" style=\"vertical-align: middle; text-align: center; padding-right: 35px; height: 320px; width: 300px;\"><div class=\"apm-eventhirdcol apm-floatleft\" style=\"float: left; width: 300px;\"><p style=\"padding: 0px; margin-bottom: 14px;\"><img alt=\"tops with pockets\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/920c6389-7638-44d1-bbf8-1a249cb9c68f.__CR0,0,303,303_PT0_SX300_V1___.png\" class=\"a-spacing-mini\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/920c6389-7638-44d1-bbf8-1a249cb9c68f.__CR0,0,303,303_PT0_SX300_V1___.png\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; margin-bottom: 6px !important;\"><br></p></div></th><th class=\"apm-center\" style=\"vertical-align: middle; text-align: center; padding-right: 35px; height: 320px; width: 300px;\"><div class=\"apm-eventhirdcol apm-floatleft\" style=\"float: left; width: 300px;\"><p style=\"padding: 0px; margin-bottom: 14px;\"><img alt=\"soft tops\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/a7d28e35-9fda-436a-98d2-56daaf125580.__CR0,0,300,300_PT0_SX300_V1___.png\" class=\"a-spacing-mini\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/a7d28e35-9fda-436a-98d2-56daaf125580.__CR0,0,300,300_PT0_SX300_V1___.png\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; margin-bottom: 6px !important;\"><br></p></div></th><th class=\"apm-center\" style=\"vertical-align: middle; text-align: center; height: 320px; width: 300px;\"><div class=\"apm-eventhirdcol apm-floatleft\" style=\"float: left; width: 300px;\"><p style=\"padding: 0px; margin-bottom: 14px;\"><img alt=\"crew neck tops\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/34d75622-1cb0-458d-a3bf-1dbefe0a18e6.__CR0,0,300,300_PT0_SX300_V1___.png\" class=\"a-spacing-mini\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/34d75622-1cb0-458d-a3bf-1dbefe0a18e6.__CR0,0,300,300_PT0_SX300_V1___.png\" style=\"max-width: 100%; border-width: initial; border-style: none; vertical-align: top; margin-bottom: 6px !important;\"><br></p></div></th></tr><tr><td class=\"apm-top\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; height: 3px;\"><div class=\"apm-eventhirdcol apm-floatleft\" style=\"float: left; width: 300px;\"></div></td><td class=\"apm-top\" style=\"vertical-align: top; padding-top: 3px; padding-right: 3px; padding-left: 3px; height: 3px;\"><div class=\"apm-eventhirdcol apm-floatleft\" style=\"float: left; width: 300px;\"></div></td><td class=\"apm-top\" style=\"vertical-align: top; padding-top: 3px; padding-left: 3px; height: 3px;\"><div class=\"apm-eventhirdcol apm-floatleft\" style=\"float: left; width: 300px;\"></div></td></tr></tbody></table></div></div><div style=\"clear: both;\"></div></div></div></div><div class=\"celwidget aplus-module launchpad-brand-description-left\" cel_widget_id=\"aplus-launchpad-brand-description-left\" data-cel-widget=\"aplus-launchpad-brand-description-left\" style=\"min-width: 979px;\"><div class=\"a-section a-spacing-top-mini launchpad-module launchpad-module-brand-description-left\" style=\"margin-bottom: 12px; padding-top: 15px; max-width: 1000px; margin-left: auto; margin-right: auto; padding-bottom: 15px; margin-top: 0px !important;\"><div class=\"a-section launchpad-text-left-justify\" style=\"margin-bottom: 12px; text-align: justify; text-align-last: left;\"><p style=\"padding: 0px; margin-bottom: 14px;\">Material:65% Polyester,30% Cotton,5% Spandex</p><p style=\"padding: 0px; margin-bottom: 14px;\">Lightweight fabric, silky smooth soft feel, skin-friendly and breathable.</p><p style=\"padding: 0px; margin-bottom: 14px;\">Scoop neck design with long sleeve works perfectly on its own or as a layer matching with cardigans, coats, jackets or sweaters</p><p style=\"padding: 0px; margin-bottom: 14px;\">Nice T-shirts for casual wear, going out, home, office or on any other occasion with leggings, jeans or casual pants. Multiple color options.</p><p style=\"padding: 0px; margin-bottom: 14px;\">Add this essential basic t-shirt to your wardrobe to mix and match effortlessly at all seasons.</p><p style=\"padding: 0px; margin-bottom: 14px;\">Hand wash or machine, do not bleach, steam iron or handheld steamer</p></div></div></div></div>\r\n', 'Coreal Women Long Sleeve Sweatershirt Casual Tunic Tops with Pockets\r\n', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">65% polyester</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Do Not Bleach</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">?65% Polyester,30% Cotton,5% Spandex,breathable crochet fabric</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">?Lightweight, crewneck, cute, simple, loose and casual, soft and comfortable</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">?These modern tops are perfect to match with jeans or casual pants, makes you beautiful and fashionable</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">?leisure / work / home / shopping/party/ vacation</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">?Please carefully refer to our size chart on the last picture before You Purchase</span></li></ul>', '', '', 12, 0, 1, 6),
(33, 'FACE N FACE Women\'s Cotton V Neck Solid Color Long Sleeve Casual Tops Tshirt', '', '46', 46, 'product-featured-33.png', '<p><br></p><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">Product description</h2><div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"margin: 0.5em 0px 0em 25px; color: rgb(51, 51, 51); overflow-wrap: break-word; line-height: initial; font-family: \"Amazon Ember\", Arial, sans-serif;\"><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\">Gender: Women<br>Item Type: Women T-Shirt<br>Pattern Type: Solid<br>Material: Cotton<br>Condition: New With Tags<br>Size:S,M,L,XL,XXL<br>Occasion: Causal Daily<br>Notice: The color displayed in photos may be showing slightly different on your computer monitor since monitors are not calibrated same. Please kindly think twice about the Color & Style, and confirm your Size before you buy the item<br>Note: Above size chart are for reference only,1%-2% error</p></div>\r\n', 'FACE N FACE Women\'s Cotton V Neck Solid Color Long Sleeve Casual Tops Tshirt', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Hand Wash Cold</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Slim Style, Long Sleeve, with elasticity</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Is CUSTOMER SATISFACTION GUARANTEED - Concerned about sizing? No worries, all our products are fulfilled by Amazon and therefore eligible for free returns if the sizing is not what you expected. Enjoy your absolutely RISK-FREE purchase for this special price today.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">SIZE CONCERNING - The item comes in Asia size tag, pls check the size details carefully before you purchase. If you have a problem with the size, pls feel free to contact us.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Fabric: Cotton+Polyester+Lace</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Machine Laundry / Hand Wash COLD /Low Iron / Lay Flat Dry</span></li></ul>', '', '', 1, 0, 1, 6),
(35, 'MIHOLL Womens Casual Tops Sleeveless Cute Twist Knot Waffle Knit Shirts Tank Tops', '', '24', 24, 'product-featured-35.png', '<div class=\"celwidget aplus-module launchpad-company-logo\" cel_widget_id=\"aplus-launchpad-company-logo\" data-cel-widget=\"aplus-launchpad-company-logo\" style=\"min-width: 979px; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div class=\"a-section a-text-center launchpad-module launchpad-module-company-logo\" style=\"margin-bottom: 12px; max-width: 1000px; margin-left: auto; margin-right: auto; padding-top: 15px; padding-bottom: 15px; text-align: center !important;\"><img alt=\"tank top\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/b617315c-b536-404e-bc6d-3c68e63cf466.__CR0,0,600,180_PT0_SX600_V1___.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/b617315c-b536-404e-bc6d-3c68e63cf466.__CR0,0,600,180_PT0_SX600_V1___.jpg\" style=\"max-width: 100%; vertical-align: top;\"></div></div><div class=\"celwidget aplus-module 3p-module-b\" cel_widget_id=\"aplus-3p-module-b\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div class=\"aplus-3p-fixed-width\" style=\"width: 970px;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">MIHOLL Women\'s Casual Tops Sleeveless Waffle Knit Shirts Twist Knot Front Loose Blouse Cute Tank Tops</h3><img alt=\"womens tops\" src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/ANARGS2F5PZRB/194b708c-1a36-4ae5-b1d3-d30590c54fa1._CR0,0,970,600_PT0_SX970__.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/ANARGS2F5PZRB/194b708c-1a36-4ae5-b1d3-d30590c54fa1._CR0,0,970,600_PT0_SX970__.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Material/ </span>Polyester+Spandex. Waffle knit Shirts, Super Soft and Comfy to wear</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Features/ </span>Round Neck, Sleeveless, High/low hem, Front permanent knot</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Relaxed Fit/ </span>Generous stretch</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Size/ </span>Small, Medium, Large, X-Large, XX-Large</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Washing Instructions/ </span>Hand wash cold; Lay flat to dry</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">Sleeveless and relaxed fit silhouette with trendy twist-knot front detail. Breathable and Lightweight fabric is great for any season, Cozy henley shirts</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Effortlessness at it\'s finest! An easy basic you will want and need in your closet year-round!</span></p></div></div><div class=\"celwidget aplus-module 3p-module-b\" cel_widget_id=\"aplus-3p-module-b\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div class=\"aplus-3p-fixed-width\" style=\"width: 970px;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">Summer Fashion Tank Tops</h3><img alt=\"summer tops\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/55535d8f-33ee-4b38-b1b9-1c08a75b808a.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/55535d8f-33ee-4b38-b1b9-1c08a75b808a.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">Customer questions & answers</h3><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Q: What size should I order?</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">A: Our size is US standard size. You can choose it according to your normal size.</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Q: What are this tops made out of?</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">A: The fabric is Waffle Knit, Polyester+Spandex.</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Q: What seasons are suitable?</span></p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">A: These tops fit for any season, you can wear it in Spring, Summer, Fall, Winter, Simple but stylish style tops.</p></div></div><div class=\"celwidget aplus-module 3p-module-b\" cel_widget_id=\"aplus-3p-module-b\" data-cel-widget=\"aplus-3p-module-b\" style=\"min-width: 979px; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div class=\"aplus-3p-fixed-width\" style=\"width: 970px;\"><h3 class=\"a-spacing-mini\" style=\"padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: bold; font-size: 17px; line-height: 1.255; font-family: inherit; margin-bottom: 6px !important;\">Customer Show--Sleeveless Trendy Twist Knot Tank Tops</h3><img alt=\"women tops\" src=\"https://m.media-amazon.com/images/S/aplus-media/sc/0b8dea90-2bcf-4738-b14e-9b5b03e5d118.__CR0,0,970,600_PT0_SX970_V1___.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-media/sc/0b8dea90-2bcf-4738-b14e-9b5b03e5d118.__CR0,0,970,600_PT0_SX970_V1___.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">Cute Knot Shirts</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">Fashion Twist Knot Front, It\'s very cute and simple but looks adorable on too. Grabbing this top ASAP!</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">Very Soft and Comfortable Fabric</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">Soft Waffle-Knit Tops, Comfy to wear</p><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">Such a flattering, lightweight summer tank tops!</p></div></div>\r\n', 'MIHOLL Women\'s Casual Tops Sleeveless Cute Twist Knot Waffle Knit Shirts Tank Tops\r\n', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Material: Polyester+Spandex. Soft and comfy tops</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Sleeveless, Long Sleeve, Trendy twist knot, Tie Knot, waffle knit fabric, Very cozy shirts</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Cute tank with cute twist knot makes it super stylish! Cute summer outfits</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Loose-fitting casual tops, Matches good with Jeans, Shorts or Leggings, easy to dress up or down</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Occasions: Casual, Daily wear, Outdoor, Dates, Parties, Travel, Basic and so on. Breathable and lightweight. This top would flatter any body type. Comfortable everyday top!</span></li></ul>', '', '', 0, 0, 1, 7),
(36, 'Charismatic Purple Cotton T-Shirt', '', '22', 22, 'product-featured-36.png', '<p><br></p><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">Product description</h2><div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"margin: 0.5em 0px 0em 25px; color: rgb(51, 51, 51); overflow-wrap: break-word; line-height: initial; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\">The product is Asian code, So we suggest you should take a bigger 1-2 size. This item may take 8-15 days after you place an order. Please wait for it patiently.<br><br>Style: Casual<br>Material: Polyester, Spandex, Cotton<br>Brand Name: Charismatic-Vibrators<br>Pattern Type: Solid<br>Clothing Length: REGULAR<br>Sleeve Length(cm):Short<br>Gender: Women<br>Fabric Type: Broadcloth<br>Sleeve Style: REGULAR<br>Item Type: Tops<br>Decoration: None<br>Model Number: M0001<br>Tops Type: Tees<br>Collar: O-Neck<br><br>Thank you for browsing our products.<br>Have a happy shopping experience and a nice day!</p></div>\r\n', 'Summer Plain T-Shirt Women Cotton Elastic Basic Tshirt Woman Casual Tops Short Sleeve T-Shirt\r\n', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Style:Casual,Sleeve Length(cm):Short,Decoration:None</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Material:Polyester,Spandex,Cotton,Gender:Women</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Fabric Type:Broadcloth,Tops Type:Tees</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Pattern Type: Solid, Sleeve Style: REGULAR, Collar: O-Neck</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Clothing Length: REGULAR, Item Type: Tops</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Features: casual style, short length, short sleeve, long sleeve, O-neck, soft and stretchy, Flowy dress, comfortable to wear.</span></li></ul>', '', '', 0, 0, 1, 7),
(53, 'Level 7 Men\'s Slim Straight Premium Jeans Blue Bleached Destroyed & Repaired', '', '18', 34, 'product-featured-53.png', '<h2 style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: 700; font-size: 21px; line-height: 1.3; color: rgb(17, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;\"=\"\"><br></h2><div class=\"aplus-v2 desktop celwidget weblabRtl\" cel_widget_id=\"aplus\" data-cel-widget=\"aplus\" style=\"display: table; margin-left: auto; margin-right: auto; color: rgb(17, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;\"=\"\"><div class=\"celwidget aplus-module 3p-module-b\" cel_widget_id=\"aplus-3p-module-b\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-3p-fixed-width\" style=\"width: 970px;\"><img alt=\"\" src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/A3P5XIWROX5K4G/B076662ZP1/Kl1bAMKT2mq._UX970_TTW__.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/A3P5XIWROX5K4G/B076662ZP1/Kl1bAMKT2mq._UX970_TTW__.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 14px !important;\">Model Measurements:</p><ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Height: 6\'3\"</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Weight: 215lb</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Waist: 33\"</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Chest: 43.5\"</span></li></ul>Model Size:<ul class=\"a-unordered-list a-vertical\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Jeans &amp; Pants-34/34</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Jogger-L</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Shorts-L</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\">Tops-L</span></li></ul><p style=\"padding: 0px; margin-top: -4px; margin-bottom: 0px;\"></p></div></div><div class=\"celwidget aplus-module 3p-module-b\" cel_widget_id=\"aplus-3p-module-b\" data-cel-widget=\"aplus-3p-module-b\"><div class=\"aplus-3p-fixed-width\" style=\"width: 970px;\"><img alt=\"\" src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/A3P5XIWROX5K4G/B076662ZP1/9rMDcpi8R7Wb._UX400_TTW__.jpg\" class=\"a-spacing-base\" data-src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/A3P5XIWROX5K4G/B076662ZP1/9rMDcpi8R7Wb._UX400_TTW__.jpg\" style=\"max-width: 100%; vertical-align: top; margin-bottom: 14px !important;\"><p class=\"a-spacing-base\" style=\"padding: 0px; margin-bottom: 0px;\">Level 7 is a men\'s denim brand providing high-quality denim crafted with custom washes, premium fabrics, and fashion-forward details. These distressed jeans are next-level innovative and not for the faint of heart. The carefully executed detailing is shown through the hand-sanding, fading, whiskering, and destruction. The hand-crafted distressing lets you show off your individuality and creativity. Revolutionize fashion in a pair of these authentic, artisan jeans.</p></div></div></div>\r\n', 'Level 7 Men\'s Slim Straight Premium Jeans Blue Bleached Destroyed & Repaired\r\n', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;\"=\"\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% Cotton</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Slim fit but straight from the heavens, destruction is creation in this hand-sanded premium denim. The sky blue bleach wash and artisan front patch pocket put them at the crossroads of evolution and revolution. Distressed and whiskered all in the name of elevated street sophistication.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Wash: 1612 Heavenly, bleached, destroyed, hand-sanded, and whiskered.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Fabric: Premium denim made with 100% cotton.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Available sizes: 30-32x30/32-44x32/34-38x34. Fit: Spencer - 5 pocket contemporary low-rise jean, comfortable slim fit to the thigh, knee, and calf, finishing at a 16.5\" straight bottom opening. Model Body: Height 6\', Weight 200lb, Waist 32\", Chest 40\" Size: 32x34</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Care Instructions: Machine washes cold. Do not bleach. Tumble dry low if needed. Light iron if needed.</span></li></ul>', '', '', 0, 0, 1, 3),
(55, 'Dickies Men\'s Regular-Fit 5-Pocket Jean', '', '15', 34, 'product-featured-55.png', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% Cotton</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Hook and Eye closure</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Machine Wash</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">DURABLE STYLE: Our authentic Dickies work jean is built of 100% heavyweight cotton denim twill with traditional 5-pocket styling. It has everything you want in a pair of jeans with a classic fit & straight leg. Engineered to last & priced to please.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">SUPERIOR CONSTRUCTION: These comfortable jeans feature 7 keystone belt loops that prevent bunching, deep front & back pockets plus a coin pocket large enough to hold a small pocketknife & signature stitching on the back pockets for timeless Dickies style.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">QUALITY DENIMWEAR: Our popular line of rugged jeans are ready to work or play in any situation with classic style featuring triple-stitched seams for extra durability, brass rivets that prevent rips at stress points, & fail-proof heavy duty brass zippers</span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 348.859px; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">TRUSTED NAME: The world\'s leading performance workwear brand, Dickies has been making quality workwear & apparel since 1922. All Dickies clothing offers superior craftsmanship & unmatched value to deliver classic style & long-lasting comfort every day.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">We make jeans, outerwear, school & work uniforms, sports shirts, kids wear, hats, socks, underwear, boots, gloves, belts, eyewear, backpacks, bags & much more.</span></li></ul><div><div id=\"dp_productDescription_container_div\" class=\"celwidget\" data-feature-name=\"productDescription\" data-cel-widget=\"dp_productDescription_container_div\"><div id=\"productDescription_feature_div\" data-feature-name=\"productDescription\" data-template-name=\"productDescription\" class=\"a-row feature\" data-cel-widget=\"productDescription_feature_div\" style=\"width: 1313px;\"><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-size: 21px !important; color: rgb(51, 51, 51) !important;\"><br></h2><h2 class=\"softlines\" style=\"padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-weight: bold; line-height: 1.3; font-size: 21px !important; color: rgb(51, 51, 51) !important;\">Product description</h2><div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"margin: 0.5em 0px 0em 25px; color: rgb(51, 51, 51); overflow-wrap: break-word; font-size: small; line-height: initial;\"><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\">Durable straight leg 5-pocket jean by Dickies is a great value. Garment-washed for comfort.</p></div></div></div><div id=\"detailBullets\" class=\"celwidget\" data-feature-name=\"detailBullets\" data-cel-widget=\"detailBullets\"><div id=\"detailBulletsWrapper_feature_div\" data-feature-name=\"detailBullets\" data-template-name=\"detailBullets\" class=\"a-section a-spacing-none feature\" data-cel-widget=\"detailBulletsWrapper_feature_div\" style=\"margin-bottom: 0px;\"><div id=\"detailBullets_feature_div\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li style=\"list-style: none; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Package Dimensions: </span>13.9 x 11.1 x 2.3 inches</span></li><li style=\"list-style: none; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\">Shipping Weight: </span>9.9 ounces (<a href=\"https://www.amazon.com/gp/help/seller/shipping.html/ref=dp_pd_shipping?_encoding=UTF8&seller=&asin=B000N8X86W\" style=\"color: rgb(0, 102, 192);\">View shipping rates and policies</a>)</span></li></ul></div></div></div></div></div></div>\r\n', 'Dickies Men\'s Regular-Fit 5-Pocket Jean', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% Cotton</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Hook and Eye closure</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Machine Wash</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">DURABLE STYLE: Our authentic Dickies work jean is built of 100% heavyweight cotton denim twill with traditional 5-pocket styling. It has everything you want in a pair of jeans with a classic fit & straight leg. Engineered to last & priced to please.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">SUPERIOR CONSTRUCTION: These comfortable jeans feature 7 keystone belt loops that prevent bunching, deep front & back pockets plus a coin pocket large enough to hold a small pocketknife & signature stitching on the back pockets for timeless Dickies style.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">QUALITY DENIMWEAR: Our popular line of rugged jeans are ready to work or play in any situation with classic style featuring triple-stitched seams for extra durability, brass rivets that prevent rips at stress points, & fail-proof heavy duty brass zippers</span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 348.859px; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">TRUSTED NAME: The world\'s leading performance workwear brand, Dickies has been making quality workwear & apparel since 1922. All Dickies clothing offers superior craftsmanship & unmatched value to deliver classic style & long-lasting comfort every day.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">We make jeans, outerwear, school & work uniforms, sports shirts, kids wear, hats, socks, underwear, boots, gloves, belts, eyewear, backpacks, bags & much more.</span></li></ul></div></div>', '', '', 0, 0, 1, 3),
(59, 'Iron Man Digital Wrist Watch', '', '16', 38, 'product-featured-59.png', '<div class=\"celwidget aplus-module launchpad-company-logo\" cel_widget_id=\"aplus-launchpad-company-logo\" data-cel-widget=\"aplus-launchpad-company-logo\" style=\"min-width: 979px; color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><div class=\"a-section a-text-center launchpad-module launchpad-module-company-logo\" style=\"margin-bottom: 12px; max-width: 1000px; margin-left: auto; margin-right: auto; padding-top: 15px; padding-bottom: 15px; text-align: center !important;\"><img alt=\"sports watches\" src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/A1GC53T9BV1MSY/c9beb9c0-d5c1-4c78-97eb-d11a7809dca1._CR0,0,600,180_PT0_SX600__.jpg\" class=\"\" data-src=\"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/A1GC53T9BV1MSY/c9beb9c0-d5c1-4c78-97eb-d11a7809dca1._CR0,0,600,180_PT0_SX600__.jpg\" style=\"max-width: 100%; vertical-align: top;\"></div></div><div class=\"celwidget aplus-module launchpad-brand-description-left\" cel_widget_id=\"aplus-launchpad-brand-description-left\" data-cel-widget=\"aplus-launchpad-brand-description-left\" style=\"min-width: 979px;\"><div class=\"a-section a-spacing-top-mini launchpad-module launchpad-module-brand-description-left\" style=\"margin-bottom: 12px; padding-top: 15px; max-width: 1000px; margin-left: auto; margin-right: auto; padding-bottom: 15px; margin-top: 0px !important;\"><div class=\"a-section launchpad-text-left-justify\" style=\"margin-bottom: 12px; text-align: justify; text-align-last: left;\"><p style=\"color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; padding: 0px; margin-bottom: 14px;\"><span class=\"a-text-bold\" style=\"font-weight: 700 !important;\"><span class=\"a-text-italic\" style=\"font-style: italic !important;\">Explore best yourself with MEGALITH Sports Collection 8051</span></span></p><p style=\"color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; padding: 0px; margin-bottom: 14px;\"><span class=\"a-text-italic\" style=\"font-style: italic !important;\">Combining high-quality japan movement and our MEGALITH bold design, the sports collection meets every possible in your business and daily life.</span></p><p style=\"padding: 0px; margin-bottom: 14px;\"><span class=\"a-text-italic\" style=\"\"><font color=\"#111111\" face=\"Amazon Ember, Arial, sans-serif\"><i>MEGALITH Men\'s Sports Watches Military Digital Gents Watch Chronograph Waterproof Wrist Watches for Man Boys Kids with Led Backlight Analog Quartz Multifunction Cool Watches Alarm Stopwatch Calendar</i></font><br></span></p></div></div></div>\r\n', 'MEGALITH Men\'s Sports Watches Military Digital Gents Watch Chronograph Waterproof Wrist Watches for Man Boys Kids with Led Backlight Analog Quartz Multifunction Cool Watches Alarm Stopwatch Calendar', '', '', '', 0, 0, 1, 18),
(62, 'Camera Zone Hidden Camera Watch - Silver', '', '34', 34, 'product-featured-62.png', '<p><br></p><h2 class=\"default\" style=\"padding: 0px 0px 4px; margin: 0px 0px 0.25em; text-rendering: optimizelegibility; font-weight: 700; font-size: medium; line-height: 1.3; color: rgb(204, 102, 0); font-family: \"Amazon Ember\", Arial, sans-serif;\">Product description</h2><div id=\"productDescription\" class=\"a-section a-spacing-small\" style=\"margin: 0.5em 0px 0em 25px; color: rgb(51, 51, 51); overflow-wrap: break-word; line-height: initial; font-family: \"Amazon Ember\", Arial, sans-serif;\"><div class=\"disclaim\" style=\"font-size: 10px; color: rgb(136, 136, 136); margin: 0px 0px 1em; font-family: verdana, arial, helvetica, sans-serif;\">Color: <span style=\"font-weight: 700;\">Silver</span></div><p style=\"padding: 0px; margin-top: 0em; margin-bottom: 1em; margin-left: 1em;\"><br>Product description<br>Brand; TICWRIS<br>Model; MAX<br>Watch Case Material; Metal<br>Watch Strap Material; Silicone<br>Operating system; Android7.1.1<br>Support system; above iOS 9.0 and Android 5.1<br>Touch Mode; Full touch screen (single point?<br>CPU; MTK6739 1.25GHZ<br>RAM;3GB<br>ROM;32GB<br>Face ID; Support<br>Camera; Front: 8.0MP(5MP software update)<br>Battery;2880mAh<br>Battery type; Polymer battery<br>Standby Time; Standby:5-7days Daily using time:about2-3Days<br>Waterproof; IP67 waterproof<br>Display and appearance<br>Display Size;2.86\"<br>Screen type; TFT IPS<br>Resolution;480*640<br>Connection<br>Band \"TDD LTE: B38?2600MHz?, B39?1900?, B40?2300?, B41?100?<br>FDD LTE:B1?2100?,B2?1900?,B3?1800?,B5?850?,B7?2600?,B12?700?,B20?800?<br>TD-SCDMA: B34?2100?, B39?1900?<br>WCDMA: B1?2100??B5?850??B2?1900?<br>GSM?B2?1900??B3?1800? ?B5?850??B8?900?\"<br>SIM card Nano SIM card<br>Wifi support;2.4GHz/5GHz 802.11 a/b/g/n<br>Bluetooth Ver 4.0<br>GPS;GPS/GLONASS/A-GPS<br>Support format<br>Audio File Format; Mp3?wma?flac<br>Video File Format; Mp4?rmvb?rm<br>Picture format Jpg?png?gif<br>Data transmission; Charger with dock<br>Software spec<br>Other features<br>Watch Dimensions Screen body?75.2mm*52mm Thickness?16.6mm Length: 295mm<br>Giftbox Dimensions 110(L)mmX95(W)mmX78?H?mm<br>Net weight;153g<br>Package Weight;290g<br><br>Package :<br>Smartwatch x 1<br>Charger with dock</p></div>\r\n', 'Full fun Ticwris Max2880mah Battery 286 Inch Display 3gb + 32gb Memory 8.0mp Front Camera With Face Unlock (Silver)', '', '', '', 0, 0, 1, 19),
(66, 'Gold Leather High Heel For Women', '', '21', 34, 'product-featured-66.png', '<div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: small;\">Stiletto heel sandal with criss-cross upper</span><font color=\"#111111\" face=\"Amazon Ember, Arial, sans-serif\"><br></font></div><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Leather</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Synthetic sole</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Heel measures approximately 4.25 inches\"</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Adjustable ankle strap</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Versatile silhouette</span></li></ul>\r\n', 'Stiletto heel sandal with criss-cross upper', '', '', '', 0, 0, 1, 13);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(68, ' Leather Heeled Sandal For Women', '', '30', 34, 'product-featured-68.png', '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">A strappy silhouette that still provides coverage, the devan Heidi is constructed of full-grain leather and a stacked heel to bring a chic flavor to any outfit. An easy buckle closure makes for quick on and off, and the rubber outsole gives supreme walkability. Inside, a moisture-wicking ortholite® footbed and cushion soft technology reduce impact and provide ultimate comfort. This versatile heel plays just as well with dresses or denim.</span></p><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: \"Amazon Ember\", Arial, sans-serif;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Leather</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Synthetic sole</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Heel measures approximately 2.5 inches\"</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">OrthoLite Molded footbed</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Cushion Soft padding</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Easy Buckle Closure</span></li></ul><div aria-live=\"polite\" class=\"a-row a-expander-container a-expander-inline-container\" style=\"width: 477.125px; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif;\"><div aria-expanded=\"true\" class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" style=\"overflow: hidden;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; padding: 0px;\"><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Durable Rubber outsole</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Smooth Textile Lining</span></li></ul></div></div><p><br></p>\r\n', 'A strappy silhouette that still provides coverage, the devan Heidi is constructed of full-grain leather and a stacked heel to bring a chic flavor to any outfit. An easy buckle closure makes for quick on and off, and the rubber outsole gives supreme walkability. Inside, a moisture-wicking ortholite® footbed and cushion soft technology reduce impact and provide ultimate comfort. This versatile heel plays just as well with dresses or denim.\r\n', '', '', '', 3, 0, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(155, 2, 68),
(156, 10, 68),
(159, 16, 66),
(162, 2, 62),
(163, 20, 62),
(164, 2, 59),
(165, 17, 59),
(168, 2, 28),
(169, 6, 28),
(172, 3, 55),
(176, 3, 53),
(177, 3, 36),
(179, 1, 35),
(181, 15, 33),
(183, 11, 31),
(186, 2, 27),
(187, 17, 27),
(189, 3, 19),
(190, 2, 18),
(191, 8, 18),
(192, 3, 10),
(195, 2, 9),
(196, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(103, '103.jpg', 68),
(104, '103.png', 66),
(105, '103.jpg', 62),
(106, '103.png', 59),
(107, '107.png', 28),
(108, '107.png', 55),
(109, '107.jpg', 53),
(110, '107.png', 36),
(111, '107.png', 35),
(112, '107.png', 33),
(113, '107.png', 31),
(114, '108.png', 31),
(115, '107.png', 27),
(116, '108.png', 27),
(117, '107.png', 19),
(118, '107.png', 18),
(119, '108.png', 18),
(120, '107.png', 10),
(121, '108.png', 10),
(122, '107.png', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(224, 10, 68),
(225, 11, 68),
(226, 12, 68),
(235, 12, 66),
(236, 13, 66),
(237, 14, 66),
(238, 15, 66),
(240, 26, 62),
(241, 26, 59),
(245, 19, 28),
(246, 20, 28),
(247, 21, 28),
(258, 8, 55),
(259, 9, 55),
(260, 10, 55),
(261, 11, 55),
(262, 12, 55),
(272, 9, 53),
(273, 11, 53),
(274, 13, 53),
(275, 2, 36),
(276, 3, 36),
(278, 2, 35),
(282, 15, 33),
(283, 17, 33),
(284, 19, 33),
(286, 23, 31),
(291, 19, 27),
(292, 20, 27),
(293, 21, 27),
(294, 22, 27),
(298, 15, 19),
(299, 16, 19),
(300, 17, 19),
(301, 14, 18),
(302, 15, 18),
(303, 16, 18),
(304, 17, 18),
(305, 3, 10),
(306, 4, 10),
(307, 5, 10),
(308, 6, 10),
(311, 3, 9),
(312, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Easy Returns', 'We accept returns after 5 days of delivery. after that, you will be required to pay extra for the return fee', 'service-5.png'),
(6, 'Free Shipping', 'We offer Free shipping for goods worth 500$ upwards', 'service-6.png'),
(7, 'Quality Products', 'All Goods are of High Grade and Quality. ', 'service-7.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`, `color`) VALUES
(1, 'logo.jpg', 'favicon.jpg', '<p>An Ecommerce Website to fully serve you in all categories you need or require</p>\r\n', 'Copyright ï¿½ royal4JP2020. All Rights Reserved.', 'National College of Ireland', 'johnpaulezisiabana@gmail.com', '+353874293418', '+353874293418', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2381.673209648713!2d-6.245000784818824!3d53.349105782206486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48670e8cd86e97e7%3A0x6d51b774ee7fa935!2sNational%20College%20of%20Ireland!5e0!3m2!1sen!2sng!4v1587475516650!5m2!1sen!2sng\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'johnpaulezisiabana@gmail.com', 'Visitor Email Message from Ecommerce Website', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 10, 10, 10, 'Ecommerce', 'ecommerce, cart, checkout, payment, paypal, shop, online shopping, online payment, payment gateway, products, shirt, jeans, t-shirt', 'This is an eCommerce store for all your needs', 'banner_login.png', 'banner_registration.png', 'banner_forget_password.png', 'banner_reset_password.png', 'banner_search.png', 'banner_cart.png', 'banner_checkout.png', 'banner_product_category.png', 'banner_blog.png', 'Welcome To Our Ecommerce Website', 'royale your number one online shopping site in Ireland. We are an online store where you can purchase all your electronics, as well as books, home appliances, kiddies items, fashion items for men, women, and children; cool gadgets, computers, groceries, automobile parts, and more on the go. What more? You can have them delivered directly to you. Shop online with great ease as you pay with PayPal or credit card which guarantees you the safest online shopping payment method, allowing you to make stress free payments. Whatever it is you wish to buy, royale offers you all and lots more at prices which you can trust. royale has payment options for everyone irrespective of taste, class, and preferences. Shopping online in Ireland is easy and convenient with royale. We provide you with a wide range of products you can trust. Take part in the deals of the day and discover the best prices on a wide range of products.', 'Read More', '#', 'cta.png', 'Featured Products', 'See all our featured products from here', 'Latest Products', 'See all our latest products from here', 'Popular Products', 'See all our popular products from here', 'Testimonials', 'See what our clients tell about us', 'testimonial.png', 'Latest Blog', 'See all our latest articles and news from below', 'all Updated Newsletter can be found here', 'biz111@shop.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: AIB Bank\r\nAccount Number: 1222320234444\r\nBranch Name: DUBLIN Branch\r\nCountry: Ireland', '<script async src=\"https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'GA_TRACKING_ID\');\r\n</script>', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<script>\r\n  function initFreshChat() {\r\n    window.fcWidget.init({\r\n      token: \"878cd40e-a05f-4e27-bbee-6f307fa06933\",\r\n      host: \"https://wchat.eu.freshchat.com\"\r\n    });\r\n  }\r\n  function initialize(i,t){var e;i.getElementById(t)?initFreshChat():((e=i.createElement(\"script\")).id=t,e.async=!0,e.src=\"https://wchat.eu.freshchat.com/js/widget.js\",e.onload=initFreshChat,i.head.appendChild(e))}function initiateCall(){initialize(document,\"freshchat-js-sdk\")}window.addEventListener?window.addEventListener(\"load\",initiateCall,!1):window.attachEvent(\"load\",initiateCall,!1);\r\n</script>', 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'E4144D');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 230, '10'),
(2, 18, '0'),
(3, 13, '8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.png', 'Ecommerce Solutions', 'All you need at your Finger Tips', 'Read More', '#', 'Left'),
(3, 'slider-3.png', '24 Hours Customer Support', 'Always a call away to reply to you.', 'Read More', '#', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', '#', 'fa fa-facebook'),
(2, 'Twitter', '#', 'fa fa-twitter'),
(3, 'LinkedIn', '#', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '#', 'fa fa-pinterest'),
(6, 'YouTube', '#', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(4, 'jbbr.1990@gmail.com', '2017-08-10', '2017-08-10 07:44:23', '', 1),
(5, 'abc@gmail.com', '2018-02-04', '2018-02-04 07:36:40', 'c1acf1f202e2df2b2afaa53e39f53677', 0),
(6, 'asdf@das.asd', '2018-02-05', '2018-02-05 07:07:08', 'ca71f3d85c8c51e2605b726791479de0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `designation`, `company`, `photo`, `comment`) VALUES
(1, 'John Doe', 'Managing Director', 'ABC Inc.', 'testimonial-1.png', 'A nice online website to get all you need from. quality and time-effective. a sure recommendation'),
(5, 'Prince Charles', 'C.E.O', 'Mobiles.Inc', 'testimonial-5.jpg', 'A highly recommended website');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Men', 1),
(2, 'Women', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(13, 'Ezisi-Abana JohnPaul Chigozie', 'johnpaulezisiabana@yahoo.com', '', '50c5a2c17fdedf0f41fd43705fa99089', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `timeinby_timeind`
--
CREATE DATABASE IF NOT EXISTS `timeinby_timeind` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `timeinby_timeind`;

-- --------------------------------------------------------

--
-- Table structure for table `calendarevents`
--

CREATE TABLE `calendarevents` (
  `eventId` int(5) NOT NULL,
  `empId` int(5) NOT NULL DEFAULT '0',
  `isAdmin` int(1) NOT NULL DEFAULT '0',
  `isShared` int(1) NOT NULL DEFAULT '0',
  `isPublic` int(1) NOT NULL DEFAULT '0',
  `startDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `eventTitle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `eventDesc` text COLLATE utf8_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `calendarevents`
--

INSERT INTO `calendarevents` (`eventId`, `empId`, `isAdmin`, `isShared`, `isPublic`, `startDate`, `endDate`, `eventTitle`, `eventDesc`) VALUES
(1, 3, 0, 0, 0, '2020-03-30 23:00:00', '2020-03-30 23:00:00', 'Task: signing files', 'sign it '),
(2, 10, 0, 0, 0, '2020-04-11 00:00:00', '2020-04-11 21:00:00', 'Task: Signing the files', 'signing the pps files '),
(4, 4, 1, 0, 0, '2020-04-29 23:00:00', '2020-04-29 23:00:00', 'Task: signing files', 'Complete the signing of Cyber-security students files.');

-- --------------------------------------------------------

--
-- Table structure for table `compiled`
--

CREATE TABLE `compiled` (
  `compileId` int(5) NOT NULL,
  `compliedBy` int(5) NOT NULL,
  `weekNo` int(2) UNSIGNED ZEROFILL NOT NULL,
  `clockYear` int(4) NOT NULL,
  `dateComplied` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `compiled`
--

INSERT INTO `compiled` (`compileId`, `compliedBy`, `weekNo`, `clockYear`, `dateComplied`) VALUES
(1, 2, 14, 2020, '2020-04-10 21:14:37'),
(2, 2, 16, 2020, '2020-04-16 21:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `docId` int(5) NOT NULL,
  `empId` int(5) NOT NULL,
  `docName` varchar(255) COLLATE utf8_bin NOT NULL,
  `docDesc` longtext COLLATE utf8_bin NOT NULL,
  `docUrl` varchar(255) COLLATE utf8_bin NOT NULL,
  `docDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`docId`, `empId`, `docName`, `docDesc`, `docUrl`, `docDate`) VALUES
(1, 2, 'report', 'report', 'report-d6963a7b.docx', '2020-04-10 21:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empId` int(5) NOT NULL,
  `isAdmin` int(1) NOT NULL DEFAULT '0',
  `isMgr` int(1) NOT NULL DEFAULT '0',
  `empEmail` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `empFirst` varchar(255) CHARACTER SET utf8 NOT NULL,
  `empMiddleInt` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `empLast` varchar(255) CHARACTER SET utf8 NOT NULL,
  `empDob` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `empSsn` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `empAvatar` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'empAvatar.png',
  `empPhone1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `empPhone2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `empPhone3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `empAddress1` text COLLATE utf8_bin,
  `empAddress2` text COLLATE utf8_bin,
  `empPosition` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `empPayGrade` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `empStartSalery` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `empStartHourly` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `empCurrSalery` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `empCurrHourly` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `empSalaryTerm` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'Year',
  `leaveHours` int(3) NOT NULL DEFAULT '0',
  `empHireDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isActive` int(1) NOT NULL DEFAULT '0',
  `empLastVisited` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `empTerminationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `terminationReason` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empId`, `isAdmin`, `isMgr`, `empEmail`, `password`, `empFirst`, `empMiddleInt`, `empLast`, `empDob`, `empSsn`, `empAvatar`, `empPhone1`, `empPhone2`, `empPhone3`, `empAddress1`, `empAddress2`, `empPosition`, `empPayGrade`, `empStartSalery`, `empStartHourly`, `empCurrSalery`, `empCurrHourly`, `empSalaryTerm`, `leaveHours`, `empHireDate`, `isActive`, `empLastVisited`, `empTerminationDate`, `terminationReason`) VALUES
(10, 0, 0, 'udy@gmail.com', '$2y$10$2O1IAr43JyUNKEBwuLc6ZuK4dzJFTbYpPWG4H2HgkAQG2cxekgXVi', 'udy', '', 'mag', '0000-00-00 00:00:00', NULL, 'udy_mag_816545.jpg', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Year', 0, '2020-03-31 23:00:00', 1, '2020-04-16 21:31:51', '0000-00-00 00:00:00', NULL),
(4, 0, 1, 'jp123@gmail.com', '$2y$10$nyqrz7RU.Iy0c0GKLQzi/.1CnsHsxVic9FwgwtWPoCDPdH8rE7mUi', 'john', '', 'paul', '0000-00-00 00:00:00', NULL, 'john_paul_160301.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Year', 0, '2020-03-31 23:00:00', 1, '2020-04-18 05:18:57', '0000-00-00 00:00:00', NULL),
(14, 0, 0, 'johnchigozie37@yahoo.com', '$2y$10$GIgJFQgxMHTZjgiZxejl8OSxlJxWCaQXP.3QVXGWppmWBtgHF6pzm', 'alex', '', 'cooks', '0000-00-00 00:00:00', NULL, 'empAvatar.png', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Year', 0, '2020-04-01 04:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(18, 1, 1, 'piblaze1988@gmail.com', '$2y$10$93N/ODigoJVeqLAZsQS8SuGogtJ32zF3Uio4eguRTeA9zMZq4B5c2', 'Bassey', '', 'Bassey', '0000-00-00 00:00:00', NULL, 'bassey_bassey_151987.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Year', 0, '2020-04-30 04:00:00', 1, '2020-04-22 20:44:07', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emptasks`
--

CREATE TABLE `emptasks` (
  `empTaskId` int(5) NOT NULL,
  `assignedTo` int(5) NOT NULL DEFAULT '0',
  `createdBy` int(5) NOT NULL DEFAULT '0',
  `taskTitle` varchar(50) COLLATE utf8_bin NOT NULL,
  `taskDesc` longtext COLLATE utf8_bin NOT NULL,
  `taskNotes` longtext COLLATE utf8_bin,
  `taskPriority` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `taskStatus` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `taskStart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `taskDue` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isClosed` int(1) NOT NULL DEFAULT '0',
  `dateClosed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `emptasks`
--

INSERT INTO `emptasks` (`empTaskId`, `assignedTo`, `createdBy`, `taskTitle`, `taskDesc`, `taskNotes`, `taskPriority`, `taskStatus`, `taskStart`, `taskDue`, `isClosed`, `dateClosed`) VALUES
(1, 3, 3, 'signing files', 'sign it ', NULL, 'high', 'Closed', '2020-03-31 14:37:22', '2020-03-30 23:00:00', 1, '2020-03-31 14:39:51'),
(2, 10, 10, 'Signing the files', 'signing the pps files ', '', 'High', 'Closed', '2020-04-10 20:56:05', '2020-04-10 23:00:00', 1, '2020-04-10 21:04:53'),
(3, 4, 4, 'signing files', 'Complete the signing of Cyber-security students files.', NULL, 'high', 'undone', '2020-04-16 21:48:32', '2020-04-29 23:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leaveearned`
--

CREATE TABLE `leaveearned` (
  `earnedId` int(5) NOT NULL,
  `empId` int(5) NOT NULL DEFAULT '0',
  `weekNo` int(2) UNSIGNED ZEROFILL NOT NULL,
  `clockYear` int(4) NOT NULL,
  `leaveHours` decimal(3,1) NOT NULL DEFAULT '0.0',
  `dateEntered` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `leaveearned`
--

INSERT INTO `leaveearned` (`earnedId`, `empId`, `weekNo`, `clockYear`, `leaveHours`, `dateEntered`) VALUES
(1, 3, 01, 2020, 2.0, '2020-04-01 11:34:05'),
(2, 4, 02, 2020, 60.0, '2020-04-10 20:50:28'),
(3, 2, 14, 2020, 0.0, '2020-04-10 21:14:37'),
(4, 10, 14, 2020, 0.0, '2020-04-10 21:14:37'),
(5, 4, 14, 2020, 0.0, '2020-04-10 21:14:37'),
(6, 2, 16, 2020, 0.0, '2020-04-16 21:40:28'),
(7, 10, 16, 2020, 0.0, '2020-04-16 21:40:28'),
(8, 4, 16, 2020, 0.0, '2020-04-16 21:40:28'),
(9, 4, 16, 2020, 2.0, '2020-04-16 21:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `leavetaken`
--

CREATE TABLE `leavetaken` (
  `takenId` int(5) NOT NULL,
  `empId` int(5) NOT NULL DEFAULT '0',
  `clockYear` int(4) NOT NULL,
  `hoursTaken` decimal(3,1) NOT NULL DEFAULT '0.0',
  `dateEntered` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `leavetaken`
--

INSERT INTO `leavetaken` (`takenId`, `empId`, `clockYear`, `hoursTaken`, `dateEntered`) VALUES
(1, 4, 2020, 12.0, '2020-04-10 20:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `noticeId` int(5) NOT NULL,
  `createdBy` int(5) NOT NULL DEFAULT '0',
  `isActive` int(1) NOT NULL DEFAULT '1',
  `noticeTitle` varchar(255) COLLATE utf8_bin NOT NULL,
  `noticeText` longtext COLLATE utf8_bin NOT NULL,
  `noticeDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `noticeStart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `noticeExpires` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `privatemessages`
--

CREATE TABLE `privatemessages` (
  `messageId` int(5) NOT NULL,
  `fromId` int(5) NOT NULL DEFAULT '0',
  `toId` int(5) NOT NULL,
  `origId` int(5) NOT NULL DEFAULT '0',
  `messageTitle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `messageText` text COLLATE utf8_bin,
  `messageDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `toRead` int(1) NOT NULL DEFAULT '0',
  `toArchived` int(1) NOT NULL DEFAULT '0',
  `toDeleted` int(1) NOT NULL DEFAULT '0',
  `fromDeleted` int(1) NOT NULL DEFAULT '0',
  `lastUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `privatemessages`
--

INSERT INTO `privatemessages` (`messageId`, `fromId`, `toId`, `origId`, `messageTitle`, `messageText`, `messageDate`, `toRead`, `toArchived`, `toDeleted`, `fromDeleted`, `lastUpdated`) VALUES
(1, 3, 2, 0, 'system error', 'hi check my system', '2020-03-31 14:41:10', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(2, 3, 2, 0, 'system error', 'system failure', '2020-03-31 14:41:51', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(3, 2, 3, 1, 're: system error', 'PHP is easy to learn and use language. Programmers can go through multiple PHP tutorials available online. Many people learn PHP due to the immense number of websites that use the language. Over 75 percent of the top 10 million websites use PHP, making it a must-learn a language for web developers. Moreover, PHP has a large community online that can help you take your skills to the next level. PHP has the third-largest StackOverflow Community, the fifth-largest Meetup Community and it is the fifth most popular language on GitHub. The interest in PHP is still alive, and its pool of features are inspiring more and more people to learn PHP.', '2020-03-31 14:54:02', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(4, 2, 10, 0, 'dddd', 'ddd', '2020-04-16 21:00:29', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(5, 2, 4, 0, 'ddd', 'ddd', '2020-04-16 21:00:42', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(6, 2, 4, 0, 'ddd', 'ddd', '2020-04-16 21:00:48', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(7, 2, 11, 0, 'Welcome!', 'Welcome to timeIn please log in and change your password', '2020-04-17 17:15:19', 0, 0, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE `sitesettings` (
  `installUrl` varchar(100) COLLATE utf8_bin NOT NULL,
  `localization` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'en',
  `siteName` varchar(255) COLLATE utf8_bin NOT NULL,
  `businessName` varchar(255) COLLATE utf8_bin NOT NULL,
  `businessAddress` longtext COLLATE utf8_bin,
  `businessEmail` varchar(255) COLLATE utf8_bin NOT NULL,
  `businessPhone1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `businessPhone2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uploadPath` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'uploads/',
  `businessDocs` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'documents/',
  `fileTypesAllowed` varchar(255) COLLATE utf8_bin NOT NULL,
  `avatarFolder` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'avatars/',
  `avatarTypes` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'jpg,png,svg',
  `allowRegistrations` int(1) NOT NULL DEFAULT '0',
  `enableTimeEdits` int(1) NOT NULL DEFAULT '0',
  `enablePii` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`installUrl`, `localization`, `siteName`, `businessName`, `businessAddress`, `businessEmail`, `businessPhone1`, `businessPhone2`, `uploadPath`, `businessDocs`, `fileTypesAllowed`, `avatarFolder`, `avatarTypes`, `allowRegistrations`, `enableTimeEdits`, `enablePii`) VALUES
('http://localhost/timein/', 'en', 'bbtimein', 'bb', 'parkgate', 'piblaze1988@gmail.com', '', '', 'uploads/', 'documents/', 'gif,jpg,jpeg,png,tiff,tif,zip,rar,pdf,doc,docx,txt,xls,csv', 'avatars/', 'jpg,jpeg,png,svg', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `timeclock`
--

CREATE TABLE `timeclock` (
  `clockId` int(5) NOT NULL,
  `empId` int(5) NOT NULL DEFAULT '0',
  `weekNo` int(2) UNSIGNED ZEROFILL NOT NULL,
  `clockYear` int(4) NOT NULL,
  `running` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `timeclock`
--

INSERT INTO `timeclock` (`clockId`, `empId`, `weekNo`, `clockYear`, `running`) VALUES
(1, 2, 14, 2020, 0),
(2, 3, 14, 2020, 1),
(3, 4, 16, 2020, 0),
(4, 10, 16, 2020, 1);

-- --------------------------------------------------------

--
-- Table structure for table `timeedits`
--

CREATE TABLE `timeedits` (
  `editId` int(5) NOT NULL,
  `entryId` int(5) NOT NULL,
  `editedBy` int(5) NOT NULL,
  `editedDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `origStartTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `origEndTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editedStartTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editedEndTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editReason` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `timeentry`
--

CREATE TABLE `timeentry` (
  `entryId` int(5) NOT NULL,
  `clockId` int(5) NOT NULL,
  `empId` int(5) NOT NULL DEFAULT '0',
  `entryDate` date NOT NULL DEFAULT '0000-00-00',
  `startTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entryType` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `timeentry`
--

INSERT INTO `timeentry` (`entryId`, `clockId`, `empId`, `entryDate`, `startTime`, `endTime`, `entryType`) VALUES
(1, 1, 2, '2020-03-31', '2020-03-31 14:15:50', '2020-03-31 14:33:57', 1),
(2, 2, 3, '2020-03-31', '2020-03-31 14:37:42', '2020-03-31 14:56:40', 1),
(3, 2, 3, '2020-03-31', '2020-03-31 14:56:57', '2020-03-31 14:57:01', 1),
(4, 2, 3, '2020-03-31', '2020-03-31 14:57:04', '2020-03-31 14:57:08', 1),
(5, 2, 3, '2020-04-01', '2020-04-01 11:29:17', '0000-00-00 00:00:00', 1),
(6, 3, 4, '2020-04-15', '2020-04-15 14:52:59', '2020-04-15 14:53:00', 1),
(7, 4, 10, '2020-04-15', '2020-04-15 14:53:09', '2020-04-15 14:53:10', 1),
(8, 3, 4, '2020-04-16', '2020-04-16 21:16:16', '2020-04-16 21:21:59', 1),
(9, 3, 4, '2020-04-16', '2020-04-16 21:27:27', '2020-04-16 21:29:21', 1),
(10, 4, 10, '2020-04-16', '2020-04-16 21:31:53', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendarevents`
--
ALTER TABLE `calendarevents`
  ADD PRIMARY KEY (`eventId`);

--
-- Indexes for table `compiled`
--
ALTER TABLE `compiled`
  ADD PRIMARY KEY (`compileId`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`docId`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `emptasks`
--
ALTER TABLE `emptasks`
  ADD PRIMARY KEY (`empTaskId`);

--
-- Indexes for table `leaveearned`
--
ALTER TABLE `leaveearned`
  ADD PRIMARY KEY (`earnedId`);

--
-- Indexes for table `leavetaken`
--
ALTER TABLE `leavetaken`
  ADD PRIMARY KEY (`takenId`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`noticeId`);

--
-- Indexes for table `privatemessages`
--
ALTER TABLE `privatemessages`
  ADD PRIMARY KEY (`messageId`);

--
-- Indexes for table `sitesettings`
--
ALTER TABLE `sitesettings`
  ADD PRIMARY KEY (`installUrl`);

--
-- Indexes for table `timeclock`
--
ALTER TABLE `timeclock`
  ADD PRIMARY KEY (`clockId`);

--
-- Indexes for table `timeedits`
--
ALTER TABLE `timeedits`
  ADD PRIMARY KEY (`editId`);

--
-- Indexes for table `timeentry`
--
ALTER TABLE `timeentry`
  ADD PRIMARY KEY (`entryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendarevents`
--
ALTER TABLE `calendarevents`
  MODIFY `eventId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `compiled`
--
ALTER TABLE `compiled`
  MODIFY `compileId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `docId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `emptasks`
--
ALTER TABLE `emptasks`
  MODIFY `empTaskId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leaveearned`
--
ALTER TABLE `leaveearned`
  MODIFY `earnedId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `leavetaken`
--
ALTER TABLE `leavetaken`
  MODIFY `takenId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `noticeId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privatemessages`
--
ALTER TABLE `privatemessages`
  MODIFY `messageId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `timeclock`
--
ALTER TABLE `timeclock`
  MODIFY `clockId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `timeedits`
--
ALTER TABLE `timeedits`
  MODIFY `editId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timeentry`
--
ALTER TABLE `timeentry`
  MODIFY `entryId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
