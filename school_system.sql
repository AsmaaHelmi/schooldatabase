-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2026 at 08:59 PM
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
-- Database: `school_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `instractor_id` int(11) DEFAULT NULL,
  `duration` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `instractor_id`, `duration`) VALUES
(1, 'Data Base', 2, '14:50:00'),
(2, 'PHP', 3, '10:45:00'),
(3, '.net', 1, '20:40:00'),
(4, 'Flutter', 4, '16:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `enrollment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `student_id`, `phone`, `course_id`, `enrollment_date`) VALUES
(1, 5, '0102654893', 2, '2026-03-27'),
(2, 2, '0102365418', 1, '2026-03-21'),
(3, 4, '012456398', 1, '2026-03-20'),
(4, 1, '01090360968', 3, '2026-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `instractorss`
--

CREATE TABLE `instractorss` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instractorss`
--

INSERT INTO `instractorss` (`id`, `name`, `phone`, `student_id`) VALUES
(1, 'Mr.ahmed saleh', '01045623987', 8),
(2, 'Mr.mohamed ahmed', '01125631489', 2),
(3, 'Ms.alia ahmed', '0125612438', 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `phone`, `birthdate`, `grade`, `course_id`) VALUES
(1, 'asmaa helmi', '01090360968', '2000-11-09', 6, 2),
(2, 'salma mohamed', '0102365418', '2000-12-25', 6, 4),
(3, 'ali ahmed', '015642895', '2005-08-08', 3, 1),
(4, 'eman ezz', '012456398', '2000-07-27', 6, 2),
(5, 'ahmed mohamed', '0108194482', '1996-08-17', 10, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `instractorss`
--
ALTER TABLE `instractorss`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
