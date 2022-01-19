-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 09:13 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sars`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(1, 'admin', 'admin', 'Private', '', 'Administrator'),
(2, 'ninja', 'ninja', 'Hatori', '', 'shrestha'),
(3, 'prashantpokhare', '12345', 'prashant', '', 'pokharel'),
(4, 'Aaron', 'Aaron', 'Aaron', '', 'Maskey');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_no` int(6) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `course` varchar(10) NOT NULL,
  `section` varchar(8) NOT NULL,
  `attendance` int(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_no`, `firstname`, `middlename`, `lastname`, `course`, `section`, `attendance`) VALUES
(2, 2, 'sumit', '', 'shah', 'BCA-I', 'A', 0),
(3, 3, 'aashna', '', 'karki', 'BCA', '2021', 1),
(4, 123456, 'Rishuv', '', 'Khatiwoda', 'BCA-II', '2021', 1),
(5, 1234567, 'Laxmi', '', 'shah', 'BCA', '2021', 1),
(7, 1, 'Niruta', '', 'k.c', 'BCA-I', '2021', 1),
(8, 4, 'prashant', '', 'pokharel', 'BCA', '2021', 1),
(9, 7319, 'ashmita', '', 'rajbanshi', 'BCA-I', '2021', 0),
(10, 7, 'Badrul', '', 'rajbanshi', 'bit', '2021', 1),
(11, 3, 'ram', '', 'karki', 'BCA', '2021', 0),
(12, 7, '1234', '', '456', 'BCA', '2021', 0);

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(11) NOT NULL,
  `student_no` int(6) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `student_no`, `student_name`, `time`, `date`) VALUES
(10, 13, 'Niruta kc', '01:12:00', '2021-03-22'),
(11, 12, 'Niru kc', '01:12:00', '2021-03-22'),
(12, 12, 'Niru kc', '02:05:00', '2021-03-22'),
(13, 13, 'Niruta kc', '02:05:00', '2021-03-22'),
(14, 12, 'Niru kc', '11:06:00', '2021-03-24'),
(15, 13, 'Niruta kc', '11:06:00', '2021-03-24'),
(16, 123456, 'Rishuv Khatiwoda', '11:11:00', '2021-03-24'),
(17, 12, 'Niru kc', '19:33:00', '2021-03-24'),
(18, 1234567, 'Laxmi shah', '19:33:00', '2021-03-24'),
(19, 123456, 'Rishuv Khatiwoda', '19:33:00', '2021-03-24'),
(20, 12, 'Niru kc', '04:47:00', '2021-04-04'),
(21, 12, 'Niru kc', '12:14:00', '2021-04-04'),
(22, 12, 'Niru kc', '12:14:00', '2021-04-04'),
(24, 123456, 'Rishuv Khatiwoda', '02:12:00', '2021-04-08'),
(28, 3, 'sumit shah', '18:05:00', '2021-04-11'),
(29, 123456, 'Rishuv Khatiwoda', '18:07:00', '2021-04-11'),
(30, 1234567, 'Laxmi shah', '20:21:00', '2021-04-11'),
(31, 12, 'Niru kc', '20:38:00', '2021-04-11'),
(32, 1234567, 'Laxmi shah', '21:02:00', '2021-04-11'),
(33, 1234567, 'Laxmi shah', '21:03:00', '2021-04-11'),
(34, 1234567, 'Laxmi shah', '21:06:00', '2021-04-11'),
(35, 1234567, 'Laxmi shah', '21:08:00', '2021-04-11'),
(36, 1234567, 'Laxmi shah', '21:08:00', '2021-04-11'),
(37, 1234567, 'Laxmi shah', '21:09:00', '2021-04-11'),
(39, 0, ' ', '20:03:00', '2021-09-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
