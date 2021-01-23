-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 02:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocate`
--

CREATE TABLE `allocate` (
  `classRooms` varchar(255) DEFAULT NULL,
  `First_Period` varchar(255) DEFAULT NULL,
  `SEcond_Period` varchar(255) DEFAULT NULL,
  `Third_Period` varchar(255) DEFAULT NULL,
  `Fourth_Period` varchar(255) DEFAULT NULL,
  `Day` varchar(255) DEFAULT NULL,
  `course_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allocate`
--

INSERT INTO `allocate` (`classRooms`, `First_Period`, `SEcond_Period`, `Third_Period`, `Fourth_Period`, `Day`, `course_code`) VALUES
('1001', 'Null', 'Allocated', 'Null', 'Allocated', 'Sunday', 1103),
('1002', 'Allocated', 'Null', 'Allocated', 'Null', 'Monday', NULL),
('1004', 'Allocated', 'Allocated', 'Null', 'Null', 'Tuesday', 1101),
('1002', 'Allocated', 'Allocated', 'Null', 'Null', 'Tuesday', 1109),
('1003', 'Null', 'Allocated', 'Null', 'Null', 'Thursday', 1106),
('1004', 'Null', 'Null', 'Allocated', 'Allocated', 'Wednesday', 1109),
('1001', 'Null', 'Null', 'Allocated', 'Allocated', 'Thursday', 1108),
('1001', 'Null', 'Allocated', 'Null', 'Allocated', 'Monday', 1102),
('1001', 'Allocated', 'Allocated', 'Null', 'Allocated', 'Wednesday', 1103),
('1002', 'Allocated', 'Allocated', 'Null', 'Null', 'Sunday', 1101),
('1002', 'Null', 'Allocated', 'Null', 'Null', 'Tuesday', 1105),
('1003', 'Allocated', 'Null', 'Null', 'Allocated', 'Sunday', 1106),
('1003', 'Null', 'Allocated', 'Allocated', 'Allocated', 'Monday', 1107),
('1003', 'Allocated', 'Null', 'Null', 'Allocated', 'Sunday', 1106),
('1003', 'Null', 'Allocated', 'Allocated', 'Allocated', 'Monday', 1107),
('1004', 'Allocated', 'Allocated', 'Allocated', 'Null', 'Wednesday', 1108);

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `building_name` varchar(255) NOT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `classRooms` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`building_name`, `dept_name`, `classRooms`) VALUES
('Annex', 'ICT', '1002'),
('East pole', 'ICT', '1003'),
('Main Building', 'ICT', '1003'),
('North pole', 'ICT', '1001'),
('South pole', 'ICT', '1004'),
('West pole', 'ICT', '1001');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `classrooms` varchar(255) NOT NULL,
  `capability` varchar(255) DEFAULT NULL,
  `computer` varchar(255) DEFAULT NULL,
  `airconditioning` varchar(255) DEFAULT NULL,
  `soundsystem` varchar(255) DEFAULT NULL,
  `projector` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`classrooms`, `capability`, `computer`, `airconditioning`, `soundsystem`, `projector`) VALUES
('1001', '100', '100', '3', '2', '1'),
('1002', '100', '100', '3', '2', '1'),
('1003', '100', '100', '4', '2', '2'),
('1004', '100', '100', '4', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` int(11) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_credit` int(11) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_name`, `course_credit`, `dept_name`) VALUES
(1004, 'Operating System', 4, 'ICT'),
(1101, 'Database', 4, 'Ict'),
(1102, 'Physics', 4, 'ICt'),
(1103, 'Algorithm', 4, 'ICt'),
(1105, 'Data Structure', 4, 'ICt'),
(1106, 'Signal Processing', 4, 'ICT'),
(1107, 'Digital Signal Processing', 4, 'ICT'),
(1108, 'Digtal Logic and Design', 4, 'ICT'),
(1109, 'Mathematics', 4, 'ICT'),
(1110, 'Statistics', 4, 'ICT'),
(1201, 'Biology', 4, 'ES'),
(1202, 'Agriculture', 4, 'ES'),
(1203, 'Chemistry', 4, 'ES'),
(1204, 'Zoology', 4, 'ES'),
(1205, 'Botany', 4, 'ES'),
(1301, 'Literature', 4, 'Engish'),
(1302, 'Poems', 4, 'Engish');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_name` varchar(255) NOT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `building_name` varchar(255) DEFAULT NULL,
  `name_of_chairman` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_name`, `teacher_name`, `building_name`, `name_of_chairman`, `contact`) VALUES
('English', 'Mumin Rahman', 'West pole', 'Abdur Rahman', 988675),
('ES', 'Mahin', 'East pole', 'Sayem khan', 1928375),
('ICT', 'MD Rahman', 'Annex', 'Abdur Rob', 988675),
('Social Science', 'Mahin', 'South pole', 'Rafi khan', 1928375);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `teachers_designation` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `course_code` int(11) DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `teachers_designation`, `dept_name`, `course_code`, `contact_no`, `Email`) VALUES
(1001, 'adcd', 'lecturer', 'ICT', 1101, 393890, 'ab@gmail.com'),
(1002, 'adcd', 'lecturer', 'ICT', 1102, 393890, 'yug@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE `userdetail` (
  `name` varchar(256) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetail`
--

INSERT INTO `userdetail` (`name`, `password`) VALUES
('samia', 101),
('mehrab', 102),
('samia', 101),
('mehrab', 102);

-- --------------------------------------------------------

--
-- Table structure for table `userdetail2`
--

CREATE TABLE `userdetail2` (
  `name` varchar(256) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetail2`
--

INSERT INTO `userdetail2` (`name`, `password`) VALUES
('ismy', 0),
('piya', 11111),
('ismy', 0),
('piya', 11111),
('niya', 11),
('riya', 111);

-- --------------------------------------------------------

--
-- Table structure for table `userdetail3`
--

CREATE TABLE `userdetail3` (
  `name` varchar(256) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetail3`
--

INSERT INTO `userdetail3` (`name`, `password`) VALUES
('hiya', 1234),
('siya', 2345),
('hiya', 1234),
('siya', 2345),
('pinky', 3445),
('rinky', 12345);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allocate`
--
ALTER TABLE `allocate`
  ADD KEY `course_code` (`course_code`),
  ADD KEY `classRooms` (`classRooms`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`building_name`),
  ADD KEY `classRooms` (`classRooms`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`classrooms`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`),
  ADD KEY `building_name` (`building_name`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `dept_name` (`dept_name`),
  ADD KEY `course_code` (`course_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allocate`
--
ALTER TABLE `allocate`
  ADD CONSTRAINT `allocate_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`),
  ADD CONSTRAINT `allocate_ibfk_2` FOREIGN KEY (`classRooms`) REFERENCES `classroom` (`classrooms`);

--
-- Constraints for table `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `building_ibfk_1` FOREIGN KEY (`classRooms`) REFERENCES `classroom` (`classrooms`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`building_name`) REFERENCES `building` (`building_name`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`),
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
