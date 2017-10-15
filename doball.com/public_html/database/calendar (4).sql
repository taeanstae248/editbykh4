-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2016 at 04:25 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_address`
--

CREATE TABLE `data_address` (
  `id` int(10) NOT NULL,
  `Emp_address` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_country` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_zipcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_resume` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_Contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_address`
--

INSERT INTO `data_address` (`id`, `Emp_address`, `Emp_country`, `Emp_zipcode`, `Emp_resume`, `Emp_Contact`, `Emp_phone`) VALUES
(1, 'ืา่สส', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_ emp`
--

CREATE TABLE `data_ emp` (
  `id` int(10) NOT NULL,
  `Emp_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_Position` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_department` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_Salary` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_work` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_bank` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_money` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_social` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_tax` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_ personal`
--

CREATE TABLE `data_ personal` (
  `id` int(10) NOT NULL,
  `Emp_name` varchar(20) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `Emp_sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_post` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_age` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_nationality` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_race` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_religion` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emp_child` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_ personal`
--

INSERT INTO `data_ personal` (`id`, `Emp_name`, `Emp_sex`, `Emp_post`, `Emp_age`, `Emp_status`, `Emp_nationality`, `Emp_race`, `Emp_religion`, `Emp_phone`, `Emp_child`) VALUES
(4, 'ดพีี', '', '', '', '', '', '', '', '', ''),
(5, '$Dname', '$Dsex', '$Dpost', '$Dage', '$Dstatus', '$Dnationality', '$Drace', '$Dreligion', '$Dphone', '$Dchild');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `num_emp` int(20) NOT NULL,
  `name_emp` varchar(50) NOT NULL,
  `Type_le` varchar(50) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `num_emp`, `name_emp`, `Type_le`, `start`, `end`) VALUES
(1, 1025, 'แสนดี', 'ลาบวช', '2016-01-01 00:00:00', '0000-00-00 00:00:00'),
(2, 1026, 'อุดม', 'ลาป่วย', '2016-01-07 00:00:00', '2016-01-10 00:00:00'),
(3, 1027, 'ใจดี', 'ลากิจ', '2016-01-09 16:00:00', '0000-00-00 00:00:00'),
(6, 1028, 'สุภา', 'ลากิจ', '2016-01-12 12:00:00', '0000-00-00 00:00:00'),
(7, 1029, 'วาสนา', 'ลาป่วย', '2016-01-12 17:30:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `useradmin_login`
--

CREATE TABLE `useradmin_login` (
  `id` int(100) NOT NULL,
  `useradmin` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `userpass` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `useradmin_login`
--

INSERT INTO `useradmin_login` (`id`, `useradmin`, `userpass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(50) NOT NULL,
  `user_log` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_log`, `user_pass`) VALUES
(2, 'admincat', 'admincat'),
(3, '363', '353'),
(6, 'one', '123'),
(7, 'Pilin', 'Pilin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_address`
--
ALTER TABLE `data_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_ emp`
--
ALTER TABLE `data_ emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_ personal`
--
ALTER TABLE `data_ personal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useradmin_login`
--
ALTER TABLE `useradmin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_address`
--
ALTER TABLE `data_address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `data_ emp`
--
ALTER TABLE `data_ emp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_ personal`
--
ALTER TABLE `data_ personal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `useradmin_login`
--
ALTER TABLE `useradmin_login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
