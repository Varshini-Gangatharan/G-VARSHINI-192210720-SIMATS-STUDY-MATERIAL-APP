-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2025 at 06:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `StudyMaterial`
--

-- --------------------------------------------------------

--
-- Table structure for table `cse_core`
--

CREATE TABLE `cse_core` (
  `id` int(11) NOT NULL,
  `subcode` varchar(250) NOT NULL,
  `subname` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cse_core`
--

INSERT INTO `cse_core` (`id`, `subcode`, `subname`) VALUES
(1, 'UBA01', 'Engineering Mathematics - 1'),
(2, 'UBA04', 'Discrete Mathematics'),
(3, 'UBA09', 'Probability and Statistics'),
(4, 'UBA20', 'Engineering Chemistry'),
(5, 'UBA21', 'Applied Physics'),
(6, 'UBA28', 'Professional Ethics and Legal Practices'),
(7, 'UBA29', 'Technical English'),
(8, 'UBA10', 'Numerical Methods'),
(9, 'UBA05', 'Engineering Mathematics II'),
(10, 'BTA01', 'Biology and Environmental Science for Engineers'),
(11, 'DSA01', 'Object Oriented Programming using C++'),
(12, 'EEA01', 'Basic Electrical and Electronics Engineering'),
(13, 'ECA47', 'Principles of Digital System Design'),
(14, 'CSA02', 'C Programming'),
(15, 'CSA03', 'Data Structures'),
(16, 'CSA04', 'Operating Systems'),
(17, 'CSA05', 'Database Management Systems'),
(18, 'CSA06', 'Design and Analysis of Algorithms'),
(19, 'CSA07', 'Computer Networks'),
(20, 'CSA08', 'Python Programming'),
(21, 'CSA09', 'Programming in Java'),
(22, 'CSA10', 'Software Engineering'),
(23, 'CSA11', 'Object Oriented Analysis and Design'),
(24, 'CSA12', 'Computer Architecture'),
(25, 'CSA13', 'Theory of Computation'),
(26, 'CSA14', 'Compiler Design'),
(27, 'CSA15', 'Cloud Computing and Big Data Analytics'),
(28, 'CSA16', 'Data Warehousing and Data Mining'),
(29, 'CSA17', 'Artificial Intelligence'),
(30, 'ECA14', 'Embedded System'),
(31, 'CSA43', 'Internet Programming'),
(32, 'CSA51', 'Cryptography and Network Security'),
(33, 'SPIC11', 'Product Development'),
(34, 'SPIC12', 'Research Project'),
(35, 'SPIC1', 'Industrial Internship-1'),
(36, 'SPIC2', 'Industrial Internship - II'),
(37, 'UBA30', 'Soft Skill');

-- --------------------------------------------------------

--
-- Table structure for table `cse_elect`
--

CREATE TABLE `cse_elect` (
  `id` int(11) NOT NULL,
  `subcode` varchar(250) NOT NULL DEFAULT '',
  `subname` varchar(300) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cse_elect`
--

INSERT INTO `cse_elect` (`id`, `subcode`, `subname`) VALUES
(1, 'CSA18', 'Human Computer Interaction'),
(2, 'CSA19', 'High Performance Networks'),
(3, 'CSA20', 'Graphics and Animation'),
(4, 'CSA21', 'Human Centered Design'),
(5, 'CSA22', 'Applied Medical Image Processing'),
(6, 'CSA23', 'Information Centric Networking'),
(7, 'CSA24', 'Data Modelling and Processing'),
(8, 'CSA25', 'Social Computing'),
(9, 'CSA26', 'Content Based Image Retrieval'),
(10, 'CSA27', 'Health Care Analytics'),
(11, 'CSA28', 'Multimedia Databases'),
(12, 'CSA29', 'Programming Usable Interface'),
(13, 'CSA30', 'Digital watermarking and steganalysis'),
(14, 'CSA31', 'Cloud storage and security'),
(15, 'CSA32', 'Multimedia Security'),
(16, 'CSA33', 'C# and .Net Framework'),
(17, 'CSA34', 'XML and Web Services'),
(18, 'CSA35', 'Advanced Databases'),
(19, 'CSA36', 'Advanced Java'),
(20, 'CSA37', 'Software Testing'),
(21, 'CSA38', 'Software Quality Assurance and Management'),
(22, 'CSA39', 'Mobile Commerce'),
(23, 'CSA40', 'Management Information Systems'),
(24, 'CSA41', 'Internet of Things'),
(25, 'CSA42', 'Parallel computing'),
(26, 'CSA43', 'Internet Programming'),
(27, 'CSA44', 'Distributed Systems'),
(28, 'CSA45', 'Neural Networks and Fuzzy Logic'),
(29, 'CSA46', 'Soft Computing'),
(30, 'CSA47', 'Deep Learning'),
(31, 'CSA48', 'Exploratory data Analysis'),
(32, 'CSA49', 'Text Analytics'),
(33, 'CSA50', 'Video Analytics'),
(34, 'CSA52', 'Cyber Forensics'),
(35, 'CSA53', 'Mobile and Wireless Security'),
(36, 'CSA54', 'Computer and Internet Security'),
(37, 'CSA55', 'Business Analytics and Intelligence'),
(38, 'CSA56', 'Secure Coding Principles'),
(39, 'ITA03', 'Mobile computing'),
(40, 'ITA04', 'Statistics with R Programming'),
(41, 'ITA05', 'Computer Vision'),
(42, 'ITA06', 'Machine Learning'),
(43, 'ITA14', 'Ethical Hacking'),
(44, 'ITA15', 'Block chain Technology');

-- --------------------------------------------------------

--
-- Table structure for table `cse_open_elect`
--

CREATE TABLE `cse_open_elect` (
  `id` int(11) NOT NULL,
  `subcode` varchar(250) NOT NULL,
  `subname` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cse_open_elect`
--

INSERT INTO `cse_open_elect` (`id`, `subcode`, `subname`) VALUES
(1, 'UBA30', 'Aptitude and Competency Skills'),
(2, 'UBA31', 'Foreign Language'),
(3, 'UBA32', 'Intellectual Property Rights'),
(4, 'UBA33', 'Principles of Management'),
(5, 'UBA34', 'Total Quality Management'),
(6, 'UBA35', 'Cyber Law'),
(7, 'UBA36', 'Organizational Behaviour'),
(8, 'UBA37', 'Multi Cuisine Cooking'),
(9, 'UBA38', 'Indian Music System'),
(10, 'UBA39', 'Short Film Making'),
(11, 'UBA40', 'Introduction to Art and Aesthetics'),
(12, 'UBA41', 'Classical and Western Dance'),
(13, 'UBA42', 'Art and Creativity'),
(14, 'UBA43', 'Economic Policies of India'),
(15, 'UBA44', 'ICT for Development'),
(16, 'UBA45', 'Life Science'),
(17, 'UBA46', 'Operations Research');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `title` varchar(250) NOT NULL DEFAULT '""',
  `subtitle` varchar(300) NOT NULL DEFAULT '""',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`title`, `subtitle`, `id`) VALUES
('CSE', 'Explore software development and computing systems', 1),
('ECE', 'Study electronic systems and communication tech', 2),
('EEE', 'Master electrical systems and power electronics', 3),
('MECHANICAL', 'Design and analyse mechanical systems', 4),
('CIVIL', 'Create infrastructure and structural design', 5),
('AUTOMOBILE', 'Innovative in automobile engineering', 6),
('ENERGY AND ENVIRONMENT ', 'Focus on sustainable energy solutions', 7),
('BIOMEDICAL ', 'Combine medicine with engineering', 8),
('BIOINFORMATICS', 'Merge biology with information tech', 9),
('IT', 'Study data and information tech', 10),
('CSE', 'Explore computing,programming & software development', 23),
('CSE', 'Explore computing,programming & software development', 24);

-- --------------------------------------------------------

--
-- Table structure for table `forgetpassword`
--

CREATE TABLE `forgetpassword` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `new_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT '""',
  `password` varchar(250) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT '""',
  `email` varchar(100) NOT NULL DEFAULT '""',
  `password` varchar(100) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `password`) VALUES
(1, 'John Doe', 'john@example.com', '$2y$10$Sff8EaOpyG5LnK9i9pjF6eSNaJgphC1v7fQ7BhasZrPTUlNgCvHuy'),
(2, 'John Doe', 'john@example.com', '$2y$10$slvRuyPQCWz1dr93iVIWUeOw7.rpE09cqgUsSAuOtgEYJknyqM9se'),
(4, 'raja', 'raja@gmail.com', '$2y$10$tcbn7yOrptXN6lCp5HENwuFvhFWtGc0TxSyOp35tZbHYKqBYXZnkK'),
(5, 'sri', 'sri@example.com', '$2y$10$ihiqEWbsanB4ZVKnzFrIrOnE7PUDb5ESCUAmwELGOwDSRCFi.yWZi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cse_core`
--
ALTER TABLE `cse_core`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcode` (`subcode`);

--
-- Indexes for table `cse_elect`
--
ALTER TABLE `cse_elect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_open_elect`
--
ALTER TABLE `cse_open_elect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgetpassword`
--
ALTER TABLE `forgetpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cse_core`
--
ALTER TABLE `cse_core`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cse_elect`
--
ALTER TABLE `cse_elect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cse_open_elect`
--
ALTER TABLE `cse_open_elect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `forgetpassword`
--
ALTER TABLE `forgetpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
