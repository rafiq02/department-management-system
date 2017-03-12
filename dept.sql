-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2015 at 05:26 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b10_16310276_dept`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `co_id` int(11) NOT NULL,
  `course_id` text NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `year` text NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`co_id`, `course_id`, `name`, `type`, `year`, `credit`) VALUES
(1, 'ENG1111', 'Technical English', 'Theory', '1-1', 2),
(2, 'MATH1111', 'Algebra, Trigonometry and Vector', 'Theory', '1-1', 3),
(3, 'CHEM1111', 'Physical and Inorganic Chemistry', 'Theory', '1-1', 3),
(4, 'CSE1111', 'Computer Fundamentals', 'Theory', '1-1', 3),
(5, 'CSE1112', 'Computer Maintenance and Engineering Drawings Lab', 'Lab', '1-1', 1),
(6, 'APEE1131', 'Electrical Circuit and Electronics', 'Theory', '1-1', 3),
(7, 'APEE1132', 'Electrical Circuit and Electronics Lab', 'Lab', '1-1', 1),
(8, 'CSE1121', 'Computer Programming with C', 'Theory', '1-1', 3),
(9, 'CSE1122', 'Computer Programming with C Lab', 'Lab', '1-1', 2),
(10, 'ECON1211', 'Economics', 'Theory', '1-2', 2),
(11, 'STAT1211', 'Statistics for Engineers', 'Theory', '1-2', 2),
(12, 'MATH1211', 'Differential and Integral Calculus', 'Theory', '1-2', 3),
(13, 'PHY1221', 'Applied Electricity and Magnetism', 'Theory', '1-2', 3),
(14, 'CSE1211', 'Introduction to Digital Electronics', 'Theory', '1-2', 3),
(15, 'CSE1212', 'Introduction to Digital Electronics  Lab', 'Lab', '1-2', 1),
(16, 'CSE1221', 'Object Oriented Programming with C++', 'Theory', '1-2', 3),
(17, 'CSE1222', 'Object Oriented Programming with C++ Lab', 'Lab', '1-2', 2),
(18, 'ACCO2111', 'Industrial Management and Accountancy', 'Theory', '2-1', 2),
(19, 'STAT2111', 'Theory of Statistics', 'Theory', '2-1', 2),
(20, 'MATH2111', 'Matrices and Differential Equations', 'Theory', '2-1', 3),
(21, 'MATH2131', 'Discrete Mathematics', 'Theory', '2-1', 3),
(22, 'MATH2132', 'Discrete Mathematics Lab', 'Lab', '2-1', 1),
(23, 'CSE2111', 'Digital System Design', 'Theory', '2-1', 3),
(24, 'CSE2112', 'Digital System Design Lab', 'Lab', '2-1', 1),
(25, 'CSE2121', 'Object Oriented Programming with Java', 'Theory', '2-1', 3),
(26, 'CSE2122	', 'Object Oriented Programming with Java Lab', 'Lab', '2-1', 1),
(27, 'CSE2132	', 'Software Development Lab I', 'Lab', '2-1', 1),
(28, 'LAW2211	', 'Cyber and Intellectual Property Law', 'Theory', '2-2', 2),
(29, 'MATH2231	', 'Numerical Methods', 'Theory', '2-2', 2),
(30, 'MATH2232	', 'Numerical Methods Lab', 'Lab', '2-2', 1),
(31, 'MATH2241	', 'Linear Algebra', 'Theory', '2-2', 3),
(32, 'CSE2211 	', 'Data Structure', 'Theory', '2-2', 3),
(33, 'CSE2212 	', 'Data Structure Lab', 'Lab', '2-2', 1),
(34, 'CSE2221	', 'Design and Analysis of Algorithms', 'Theory', '2-2', 3),
(35, 'CSE2222	', 'Design and Analysis of Algorithms Lab', 'Lab', '2-2', 1),
(36, 'CSE2231 	', 'Software Engineering', 'Theory', '2-2', 3),
(37, 'CSE2232	', 'Software Engineering Lab', 'Lab', '2-2', 1),
(38, 'CSE3111', 'Computer Architecture and Organization', 'Theory', '3-1', 3),
(39, 'CSE3112', 'Computer Architecture and Organization Lab', 'Lab', '3-1', 1),
(40, 'CSE3121', 'Database Management Systems', 'Theory', '3-1', 3),
(41, 'CSE3122', 'Database Management Systems Lab', 'Lab', '3-1', 1),
(42, 'CSE3131', 'Digital Signal Processing', 'Theory', '3-1', 3),
(43, 'CSE3122', 'Database Management Systems Lab', 'Lab', '3-1', 1),
(44, 'CSE3131', 'Digital Signal Processing', 'Theory', '3-1', 3),
(45, 'CSE3132', 'Digital Signal Processing Lab', 'Lab', '3-1', 1),
(46, 'CSE3141', 'Automata Theory and Compiler Design ', 'Theory', '3-1', 3),
(47, 'CSE3142', 'Automata Theory and Compiler Design Lab', 'Lab', '3-1', 1),
(48, 'CSE3151', 'Computer Networks', 'Theory', '3-1', 3),
(49, 'CSE3152', 'Computer Networks Lab', 'Lab', '3-1', 1),
(50, 'CSE3162', 'Software Development Lab II', 'Lab', '3-1', 1),
(51, 'CSE3211', 'System Analysis and Design', 'Theory', '3-2', 3),
(52, 'CSE3221', 'Computer Graphics', 'Theory', '3-2', 3),
(53, 'CSE3222', 'Computer Graphics Lab', 'Lab', '3-2', 1),
(54, 'CSE3231', 'Microprocessor and Assembly Language', 'Theory', '3-2', 3),
(55, 'CSE3241', 'Operating System and System Programming', 'Theory', '3-2', 3),
(56, 'CSE3242', 'Operating System and System Programming Lab', 'Lab', '3-2', 1),
(57, 'ICE3261', 'Communication Engineering', 'Theory', '3-2', 3),
(58, 'ICE3262', 'Communication Engineering Lab', 'Lab', '3-2', 1),
(59, 'CSE4111', 'Parallel Processing and Distributed System', 'Theory', '4-1', 3),
(60, 'CSE4112', 'Parallel Processing and Distributed System Lab', 'Lab', '4-1', 1),
(61, 'CSE4121', 'Digital Image Processing', 'Theory', '4-1', 3),
(62, 'CSE4122', 'Digital Image Processing Lab', 'Lab', '4-1', 1),
(63, 'CSE4131', 'Computer Simulation and Modeling', 'Theory', '4-1', 3),
(64, 'CSE4132', 'Computer Simulation and Modeling Lab', 'Lab', '4-1', 1),
(65, 'CSE4141', 'Computer Peripherals and Interfacing', 'Theory', '4-1', 3),
(66, 'CSE4142', 'Computer Peripherals and Interfacing Lab', 'Lab', '4-1', 1),
(67, 'CSE4161', 'Management Information System', 'Theory', '4-1', 3),
(68, 'CSE4162', 'Management Information System Lab', 'Lab', '4-1', 1),
(69, 'CSE4211', 'Artificial Intelligence', 'Theory', '4-2', 3),
(70, 'CSE4212', 'Artificial Intelligence Lab', 'Lab', '4-2', 1),
(71, 'CSE4221', 'E-Commerce ', 'Theory', '4-2', 3),
(72, 'CSE4222', 'E-Commerce Lab', 'Lab', '4-2', 1),
(73, 'CSE4231', 'Cryptography and Network Security', 'Theory', '4-2', 3),
(74, 'CSE4232', 'Cryptography and Network Security Lab', 'Lab', '4-2', 1),
(75, 'CSE4261', 'Distributed Database Management System ', 'Theory', '4-2', 3),
(76, 'CSE4262', 'Distributed Database Management System Lab', 'Lab', '4-2', 1),
(77, 'CSE3232', 'Microprocessor and Assembly Language Lab', 'Lab', '3-2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `room_name` text NOT NULL,
  `room_type` text NOT NULL,
  `room_capacity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_no`, `room_name`, `room_type`, `room_capacity`) VALUES
(1, 120, 'Programming Lab', 'Lab', 50),
(2, 121, 'Microprocessor Lab', 'Lab', 50),
(3, 122, 'Teachers Room', 'Teachers Room', 10),
(4, 217, 'Software Engineering Lab', 'Lab', 50),
(5, 218, 'Incubetor', 'Lab', 50),
(6, 219, 'Database Management System Lab', 'Lab', 50),
(7, 220, 'Digital Logic and Electronics Lab', 'Lab', 50),
(8, 221, 'Network Lab', 'Lab', 50),
(9, 222, 'Communication Lab', 'Lab', 50),
(10, 223, 'Algorithm Lab', 'Lab', 50);

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE IF NOT EXISTS `routine` (
  `r_id` int(11) NOT NULL,
  `week` text NOT NULL,
  `year` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  `type` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `time` text NOT NULL,
  `teacher_id` text NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`r_id`, `week`, `year`, `session`, `type`, `course_id`, `time`, `teacher_id`, `room_no`) VALUES
(1, 'Saturday', '1-1', '2014-2015', 'Theory', 8, '8:15-9:15', '5', 10),
(2, 'Saturday', '1-1', '2014-2015', 'Theory', 6, '9:20-10:20', '7', 10),
(3, 'Saturday', '1-1', '2014-2015', 'Lab', 7, '10:25-12:30', '7,24,27', 9),
(4, 'Saturday', '2-2', '2012-2013', 'Theory', 34, '9:20-10:20', '20', 7),
(5, 'Saturday', '2-2', '2012-2013', 'Theory', 32, '10:25-11:25', '22', 7),
(6, 'Saturday', '2-2', '2012-2013', 'Lab', 33, '11:30-1:35', '22,10', 7),
(7, 'Saturday', '3-2', '2011-2012', 'Theory', 54, '9:20-10:20', '12', 4),
(8, 'Saturday', '3-2', '2011-2012', 'Theory', 57, '10:25-11:25', '21', 4),
(9, 'Saturday', '3-2', '2010-2011', 'Lab', 53, '11:30-1:35', '2,25', 4),
(10, 'Saturday', '4-2', '2010-2011', 'Theory', 69, '8:15-9:15', '26', 1),
(11, 'Saturday', '4-2', '2010-2011', 'Theory', 71, '9:20-10:20', '25', 1),
(12, 'Saturday', '4-2', '2010-2011', 'Lab', 70, '10:25-12:30', '26,5', 1),
(13, 'Sunday', '1-1', '2014-2015', 'Theory', 4, '9:20-10:20', '12', 10),
(14, 'Sunday', '1-1', '2014-2015', 'Theory', 1, '10:25-11:25', '2', 10),
(15, 'Sunday', '1-1', '2014-2015', 'Lab', 5, '11:30-1:35', '2', 9),
(16, 'Sunday', '2-2', '2012-2013', 'Theory', 34, '8:15-9:15', '20', 7),
(17, 'Sunday', '2-2', '2012-2013', 'Theory', 32, '10:25-11:25', '27', 7),
(18, 'Sunday', '2-2', '2012-2013', 'Lab', 37, '11:30-1:35', '4,20', 7),
(19, 'Sunday', '3-2', '2011-2012', 'Theory', 55, '9:20-10:20', '18', 4),
(20, 'Sunday', '3-2', '2011-2012', 'Lab', 77, '10:25-12:30', '12,26', 4),
(21, 'Sunday', '3-2', '2011-2012', 'Theory', 57, '12:35-1:35', '21', 4),
(22, 'Sunday', '4-2', '2010-2011', 'Theory', 73, '8:15-9:15', '15', 1),
(23, 'Sunday', '4-2', '2010-2011', 'Lab', 72, '9:20-11:25', '22,18', 1),
(24, 'Sunday', '4-2', '2010-2011', 'Theory', 75, '11:30-12:30', '3', 1),
(25, 'Monday', '1-1', '2014-2015', 'Theory', 6, '10:25-11:25', '7', 7),
(26, 'Monday', '1-1', '2014-2015', 'Theory', 1, '11:30-12:30', '2', 10),
(27, 'Monday', '2-2', '2012-2013', 'Theory', 32, '9:20-10:20', '4', 6),
(28, 'Monday', '2-2', '2012-2013', 'Theory', 36, '10:25-11:25', '1', 6),
(29, 'Monday', '2-2', '2012-2013', 'Theory', 29, '8:15-9:15', '22', 7),
(30, 'Monday', '3-2', '2011-2012', 'Theory', 52, '10:25-11:25', '2', 4),
(31, 'Monday', '3-2', '2011-2012', 'Theory', 57, '9:20-10:20', '21', 4),
(32, 'Monday', '3-2', '2011-2012', 'Lab', 56, '11:30-1:35', '11,18', 4),
(33, 'Monday', '4-2', '2010-2011', 'Theory', 71, '9:20-10:20', '25', 1),
(34, 'Monday', '4-2', '2010-2011', 'Theory', 69, '10:25-11:25', '26', 1),
(35, 'Tuesday', '1-1', '2014-2015', 'Theory', 4, '9:20-10:20', '12', 10),
(36, 'Tuesday', '1-1', '2014-2015', 'Theory', 8, '10:25-11:25', '5', 10),
(37, 'Tuesday', '1-1', '2014-2015', 'Lab', 9, '11:30-1:35', '5,25,24', 7),
(38, 'Tuesday', '2-2', '2012-2013', 'Theory', 28, '8:15-9:15', '27', 7),
(39, 'Tuesday', '2-2', '2012-2013', 'Theory', 29, '9:20-10:20', '4', 6),
(40, 'Tuesday', '2-2', '2012-2013', 'Lab', 35, '11:30-1:35', '15,20', 7),
(41, 'Tuesday', '3-2', '2011-2012', 'Theory', 54, '9:20-10:20', '12', 4),
(42, 'Tuesday', '3-2', '2011-2012', 'Theory', 51, '10:25-11:25', '10', 4),
(43, 'Tuesday', '3-2', '2011-2012', 'Lab', 58, '11:30-1:35', '7,21', 4),
(44, 'Tuesday', '4-2', '2010-2011', 'Theory', 73, '9:20-10:20', '15', 1),
(45, 'Tuesday', '4-2', '2010-2011', 'Theory', 75, '10:25-11:25', '3', 1),
(46, 'Tuesday', '4-2', '2010-2011', 'Lab', 74, '11:30-1:35', '1,15', 1),
(47, 'Wednesday', '1-1', '2014-2015', 'Theory', 6, '10:25-11:25', '7', 10),
(48, 'Wednesday', '1-1', '2014-2015', 'Theory', 1, '11:30-12:30', '2', 10),
(49, 'Wednesday', '2-2', '2012-2013', 'Theory', 32, '8:15-9:15', '22', 7),
(50, 'Wednesday', '2-2', '2012-2013', 'Lab', 30, '9:20-11:25', '1,27', 7),
(51, 'Wednesday', '3-2', '2011-2012', 'Theory', 57, '8:15-9:15', '21', 4),
(52, 'Wednesday', '3-2', '2011-2012', 'Theory', 54, '9:20-10:20', '12', 4),
(53, 'Wednesday', '3-2', '2011-2012', 'Theory', 52, '10:25-11:25', '2', 4),
(54, 'Wednesday', '3-2', '2011-2012', 'Theory', 55, '11:30-12:30', '18', 4),
(55, 'Wednesday', '3-2', '2011-2012', 'Theory', 51, '12:35-1:35', '10', 4),
(56, 'Wednesday', '4-2', '2010-2011', 'Theory', 69, '8:15-9:20', '26', 3),
(57, 'Wednesday', '4-2', '2010-2011', 'Lab', 76, '9:20-11:25', '3,11', 1),
(58, 'Thursday', '1-1', '2014-2015', 'Theory', 4, '9:20-10:20', '12', 10),
(59, 'Thursday', '1-1', '2014-2015', 'Theory', 8, '10:25-11:25', '5', 10),
(60, 'Thursday', '1-1', '2014-2015', 'Lab', 9, '11:30-1:35', '5,25,24', 7),
(61, 'Thursday', '2-2', '2012-2013', 'Theory', 29, '10:25-11:25', '1', 6),
(62, 'Thursday', '2-2', '2012-2013', 'Theory', 36, '11:30-12:30', '4', 6),
(63, 'Thursday', '2-2', '2012-2013', 'Theory', 34, '12:30-1:35', '20', 6),
(64, 'Thursday', '3-2', '2011-2012', 'Theory', 51, '9:20-10:20', '10', 4),
(65, 'Thursday', '3-2', '2011-2012', 'Theory', 55, '10:25-11:25', '18', 4),
(66, 'Thursday', '3-2', '2011-2012', 'Theory', 52, '11:30-12:30', '2', 4),
(67, 'Thursday', '4-2', '2010-2011', 'Theory', 71, '8:15-9:15', '25', 1),
(68, 'Thursday', '4-2', '2010-2011', 'Theory', 73, '9:20-10:20', '15', 1),
(69, 'Thursday', '4-2', '2010-2011', 'Theory', 75, '10:25-11:25', '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `s_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `roll` int(11) NOT NULL,
  `year` text NOT NULL,
  `session` varchar(20) NOT NULL,
  `hall` text NOT NULL,
  `gpa` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `name`, `roll`, `year`, `session`, `hall`, `gpa`) VALUES
(1, 'Zakia Khatun', 12015401, '4th', '2011-2012', 'Monnujan Hall', 3.98),
(2, 'Masum Morshed', 12055402, '4th', '2011-2012', 'Amir Ali Hall', 3.5),
(3, 'Rafiqul Islam', 12055404, '4th', '2011-2012', 'Amir Ali Hall', 3.25),
(4, 'Lima Khatun', 12015405, '4th', '2011-2012', 'Khaleda Zia Hall', 3.75),
(5, 'Golap Selim Reza', 12065406, '4th', '2011-2012', 'Habibur Rahman Hall', 3.25),
(6, 'Keya Khatun', 12025407, '4th', '2011-2012', 'Monnujan Hall', 3.5),
(7, 'Mokhlesur Rahman', 12045408, '4th', '2011-2012', 'Ziaur Rahman Hall', 3),
(8, 'Anu Khatun', 12035409, '4th', '2011-2012', 'Rokeya Hall', 3.75),
(9, 'Shakil Akter', 12035412, '4th', '2011-2012', 'Amir Ali Hall', 3.6),
(10, 'Tuly Khatun', 12035413, '4th', '2011-2012', 'Khaleda Zia Hall', 3.95),
(11, 'Shahabuddin Ahmed', 12105414, '4th', '2011-2012', 'Shohorawardi Hall', 3.5),
(12, 'Nayem Khan', 12115415, '4th', '2011-2012', 'Bongobondhu Hall', 3.75),
(13, 'Zayed Hasan', 12045416, '4th', '2011-2012', 'Amir Ali Hall', 3),
(14, 'Imran Hossein Joy', 12025417, '4th', '2011-2012', 'Habibur Rahman Hall', 3.25),
(15, 'Shahedur Rahman', 12015418, '4th', '2011-2012', 'Sher-e-Bangla Hall', 2.95),
(16, 'Azmol Huda Sharkar', 12045420, '4th', '2011-2012', 'Amir Ali Hall', 3.25),
(17, 'Zahid Mahmud', 12055426, '4th', '2011-2012', 'Latif Hall', 3.65),
(18, 'Arif Rahman', 12085429, '4th', '2011-2012', 'Latif Hall', 3.5),
(19, 'Sium Rahman', 12055430, '4th', '2011-2012', 'Latif Hall', 3.5),
(20, 'Aminul Islam', 12055432, '4th', '2011-2012', 'Latif Hall', 3.35),
(21, 'Shuvo', 12015434, '4th', '2011-2012', 'Sher-e-bangla Hall', 3.75),
(22, 'Olive Hasan', 12115435, '4th', '2011-2012', 'Bongobondhu Hall', 3),
(23, 'Mehedi Hasan', 11115437, '4th', '2010-2011', 'Bongobondhu Hall', 3.75),
(24, 'Rafi Hasan', 11115404, '4th', '2010-2011', 'Bongobondhu Hall', 3.25),
(25, 'Milon Kumar', 11015408, '4th', '2010-2011', 'Latif Hall', 3),
(26, 'Ashad', 11055414, '4th', '2010-2011', 'Latif Hall', 2.9),
(27, 'Rakibul Rahman', 11115434, '4th', '2010-2011', 'Bongobondhu Hall', 3),
(28, 'Gopal Roy', 11115412, '4th', '2010-2011', 'Bongobondhu Hall', 3.5),
(29, 'Thorbert Esco', 13015401, '3rd', '2012-2013', 'Sher-e-bangla Hall', 3.5),
(30, 'Keegan Romain', 13025402, '3rd', '2012-2013', 'Motihar Hall', 3.25),
(31, 'Shipley Duclos', 13035403, '3rd', '2012-2013', 'Habibur Rahman Hall', 3),
(32, 'Raff Petiot', 13045404, '3rd', '2012-2013', 'Shohorawardi Hall', 3.15),
(33, 'Cayden Le Gallo', 13115405, '3rd', '2012-2013', 'Bongobondhu Hall', 2.75),
(34, 'Gayle Butin', 13115406, '3rd', '2012-2013', 'Bongobondhu Hall', 3.25),
(35, 'Demie Biller', 13065407, '3rd', '2012-2013', 'Monnujan Hall', 3.5),
(36, 'Aldercy Le Moal', 13085408, '3rd', '2012-2013', 'Khaleda Zia Hall', 3.56),
(37, 'Juliette Bernier', 13085409, '3rd', '2012-2013', 'Rokeya Hall', 3.6),
(38, 'Celina Boniface', 13095410, '3rd', '2012-2013', 'Rohomotunnesa Hall', 3.95),
(39, 'Hardy Homewood', 14015401, '2nd', '2013-2014', 'Sher-e-bangla Hall', 3.56),
(40, 'Radcliff Couteau', 14025402, '2nd', '2013-2014', 'Motihar Hall', 3.89),
(41, 'Jerry Sarazin', 14035403, '2nd', '2013-2014', 'Amir Ali Hall', 3.25),
(42, 'Geoffrey Simkins', 14045404, '2nd', '2013-2014', 'Motihar Hall', 3.58),
(43, 'Radcliff Couteau', 14055405, '2nd', '2013-2014', 'Bongobondhu Hall', 2.85),
(44, 'Riya Nicolay', 14085406, '2nd', '2013-2014', 'Monnujan Hall', 3.89),
(45, 'Winifred Mermet', 14095407, '2nd', '2013-2014', 'Rokeya Hall', 3.45),
(46, 'Virginia Allsop', 14075408, '2nd', '2013-2014', 'Rohomotunnesa Hall', 3.56),
(47, 'Stacey Finck', 14075409, '2nd', '2013-2014', 'Rokeya Hall', 3.12),
(48, 'Virginia Allsop', 14065410, '2nd', '2013-2014', 'Khaleda Zia Hall', 3.58),
(49, 'Beldon Esham', 15015401, '1st', '2014-2015', 'Sher-e-bangla Hall', 3.56),
(50, 'Edmund Sauvage', 15025402, '1st', '2014-2015', 'Motihar Hall', 3.23),
(51, 'Paul Lebas', 15035403, '1st', '2014-2015', 'Amir Ali Hall', 3.45),
(52, 'Rohan Vrignaud', 15045404, '1st', '2014-2015', 'Latif Hall', 2.85),
(53, 'Welch Akehurst', 15055405, '1st', '2014-2015', 'Shah Mokhdum Hall', 3.89),
(54, 'Sofia Adley', 15065406, '1st', '2014-2015', 'Rohomotunnesa Hall', 3.38),
(55, 'Rylie Rodriguez', 15075407, '1st', '2014-2015', 'Rokeya Hall', 3.56),
(56, 'Yedda Le Foll', 15085408, '1st', '2014-2015', 'Rohomotunnesa Hall', 3.69),
(57, 'Alden Askin', 15095409, '1st', '2014-2015', 'Khaleda Zia Hall', 3.85),
(58, 'Angelique Louchart', 15105410, '1st', '2014-2015', 'Rokeya Hall', 3.56);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `t_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `qualification` text NOT NULL,
  `course` text NOT NULL,
  `research` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `name`, `type`, `qualification`, `course`, `research`, `status`) VALUES
(1, 'Dr.Somlal Das', 'Chairman', 'M.Sc. (Raj),Ph.D. (Raj)', 'Object Oriented Programming with Java&&\nDatabase Management Systems&&\nParallel Processing and Distributed System', 'Digital Signal Processing&&\r\nSpeech Enhancement\r\n', 'Present'),
(2, 'Dr. Abu Raihan Shoyeb Ahmed Siddique', 'Professor', 'M.Sc. (Raj). Ph.D. (Raj)', 'Computer Maintenance and Engineering Drawings Lab&&Computer Graphics&&Computer Graphics Lab&&Computer Simulation and Modeling&&Computer Simulation and Modeling Lab', 'N/A', 'Present'),
(3, 'Dr. A. K. M. Akhtar Hossain', 'Professor', 'M.Sc. (Raj), Ph.D. (Raj)', 'N/A', 'N/A', 'Present'),
(4, 'Dr. Md. Khademul Islam Molla', 'Professor', 'M.Sc. (Sylhet), Ph.D. (Japan)', 'Digital Signal Processing&&\r\nDigital Signal Processing Lab&&\r\nDigital Image Processing&&\r\nDigital Image Processing Lab', 'Theory and applications of signal processing.&&\r\nClimate data analysis.&&\r\nSignal processing for biomedical applications and computational neuroscience.', 'Present'),
(5, 'Dr. Shamim Ahmad', 'Professor', 'M.Sc. (Raj) D.Engg. (Japan)', 'Computer Programming With C&&\r\nComputer Networks&&\r\nDiscrete Mathematics', 'Embedded System&&\r\nImage Processing&&\r\nIntelligent Computing', 'Present'),
(6, 'Dr. Md. Ekramul Hamid', 'Professor', 'M.Sc. (Raj), M.C.S (India), Ph.D. (Japan)', 'Electrical Circuit and Electronics&&\r\nIntroduction to Digital Electronics', 'Speech Enhancement, Speech noise reduction, Speech feature extraction.&&\r\nDigital Signal Processing.&&\r\nImage Signal Processing and Computer Vision.', 'Leaved'),
(7, 'Bimal Kumar Pramanik', 'Associate Professor', 'M.Sc. (Raj), M.Sc. (Sweden)', 'Electrical Circuit and Electronics&&\r\nIntroduction to Digital Electronics', 'Microprocessor Based System&&\r\nVLSI Design&&\r\nMicro Fabrication&&', 'Leaved'),
(8, 'Dr.Altab Hossain', 'Associate Professor', 'M.Sc.(Raj)Ph.D (Japan)', 'N/A', 'N/A', 'Leaved'),
(9, 'Md. Anisuzzaman Siddique', 'Associate Professor', 'M.Sc. (Raj), Ph.D. (Japan)', 'N/A', 'Skyline Evaluation&&\r\nData Minig&&\r\nPrivacy Preserving Information retrieval', 'Leaved'),
(10, 'Subrata Pramanik', 'Associate Professor', 'M.Sc. (Raj), M.Sc. (Canada)', 'System Analysis and Design', 'Image Processing&&\r\nIntelligent Computing&&\r\nNatural Language Processing & Bioinformatics', 'Present'),
(11, 'Md. Rokanujjaman', 'Associate Professor', 'M.Sc. (Raj)', 'Computer Architecture and Organization&&\r\nDigital Image Processing', 'Computer Vision&&\r\nData Image Processing&&\r\nDigital Signal Processing', 'Present'),
(12, 'Md. Morshedul Arefin', 'Assistant Professor', 'M.Sc. (Raj)', 'Computer Fundamentals&&\r\nMicroprocessor and Assembly Language&&\r\nMicroprocessor and Assembly Language Lab&&\r\nComputer Peripherals and Interfacing&&\r\nComputer Peripherals and Interfacing Lab', 'Natural Language Processing&&\r\nImage Processing&&\r\nPattern Recognition', 'Present'),
(13, 'Md. Saiful Islam', 'Assistant Professor', 'M.Sc. (Raj)', 'Numerical Methods&&\r\nNumerical Methods Lab', 'Natural Language Processing&&\r\nImage Processing&&\r\nArtificial Intelligence', 'Present'),
(14, 'Muhd. Iqbal Aziz Khan', 'Assistant Professor', 'M.Sc. (Raj)', 'Parallel Processing and Distributed System&&\r\nParallel Processing and Distributed System Lab', 'N/A', 'Present'),
(15, 'Md. Tohidul Islam', 'Assistant Professor', 'M.Sc. (Raj)', 'Data Structure&&\r\nData Structure Lab&&\r\nParallel Processing and Distributed System Lab\r\n', 'Network Security&&\r\nDSP&&\r\nImage Processing', 'Present'),
(16, 'Md. Mahbubul Islam', 'Assistant Professor', 'M.Sc. (Raj)', 'N/A', 'N/A', 'Leaved'),
(17, 'Asif Zaman', 'Assistant Professor', 'M.Sc. (Raj)', 'N/A', 'Data mining&&\r\nComputer security / Computer Virus&&\r\nBiometrics', 'Leaved'),
(18, 'Kazi Jahidur Rahman', 'Assistant Professor', 'M.Sc. (Raj)', 'Automata Theory and Compiler Design&&\r\nAutomata Theory and Compiler Design Lab&&\r\nOperating System and System Programming&&\r\nOperating System and System Programming Lab', 'N/A', 'Present'),
(19, 'Sujan Kumar Roy', 'Assistant Professor', 'M.Sc. (Raj)', 'N/A', 'N/A', 'Leaved'),
(20, 'Mahboob Qaosar', 'Assistant Professor', 'M.Sc. (Raj)', 'Design and Analysis of Algorithms&&\r\nDesign and Analysis of Algorithms Lab', 'Embedded System&&\r\nSignal Processing&&', 'Present'),
(21, 'Md. Humayun Kabir', 'Assistant Professor', 'BSc and MSc(CSE, Raj)', 'Software Engineering&&\r\nSoftware Engineering Lab&&\r\nCommunication Engineering&&\r\nCommunication Engineering Lab', 'Software Defined Networking(SDN)&&\r\nAdhoc Network, Vehicular Adhoc Network&&\r\nWireless Sensor Network', 'Leaved'),
(22, 'A.F.M. Mahbubur Rahman', 'Assistant Professor', 'M.Sc. (Raj)', 'N/A', 'Data mining&&\r\nWeb engineering&&\r\nArtificial Intelligence', 'Present'),
(23, 'Md. Omar Faruqe', 'Assistant Professor', 'BSc and MSc(CSE, Raj)', 'Object Oriented Programming with C++&&\r\nObject Oriented Programming with C++ Lab', 'N/A', 'Leaved'),
(24, 'Sanjoy Kumar Chakravarty', 'Assistant Professor', 'BSc and MSc(CSE, Raj)', 'Introduction to Digital Electronics&&\r\nIntroduction to Digital Electronics Lab&&\r\nDigital System Design&&\r\nDigital System Design Lab', 'Signal Processing&&\r\nImage Processing', 'Present'),
(25, 'Sangeeta Biswas', 'Assistant Professor', 'M.Sc. (Raj)', 'Digital Image Processing Lab&&\r\nComputer Networks Lab&&\r\nSoftware Development Lab II', 'N/A', 'Present'),
(26, 'Md.Rashed-Al-Mahfuz', 'Lecturer', 'BSc and MSc(CSE, Raj)', 'Digital Signal Processing&&\r\nDigital Signal Processing lab', 'Brain Compuer Interfacing(BCI), Neurocomputing&&\r\nImage and Signal Processing&&\r\nMultimodal Interfacing', 'Present'),
(27, 'Utpalananda Chowdhury', 'Lecturer', 'BSc and MSc(CSE, Raj)', 'Management Information System&&\r\nManagement Information System Lab', 'Data Mining&&\r\nImage and Signal Processing', 'Present');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `roll` (`roll`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
