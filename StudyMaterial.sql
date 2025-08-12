-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2025 at 12:19 PM
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
-- Table structure for table `academic_portal`
--

CREATE TABLE `academic_portal` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `route` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_portal`
--

INSERT INTO `academic_portal` (`id`, `title`, `description`, `icon`, `route`) VALUES
(1, 'Concept Map', 'Visualize and understand key', 'concept_map_icon.png', '/pdf'),
(2, 'Textbook', 'Access your digital course', 'textbook_icon.png', '/pdf'),
(3, 'Previous Papers', 'Review past exam questions', 'previous_papers_icon.png', '/pdf'),
(4, 'Practicals', 'Lab manuals & experiments', 'practicals_icon.png', '/pdf'),
(5, 'MCQ Questions', 'Create practice quizzes', 'mcq_icon.png', '/pdf'),
(6, 'Submit Query', 'Ask questions & get help', 'submit_query_icon.png', '/pdf');

-- --------------------------------------------------------

--
-- Table structure for table `addbkpdf`
--

CREATE TABLE `addbkpdf` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `pdf_path` varchar(300) NOT NULL,
  `subcode` varchar(250) NOT NULL,
  `image` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addbkpdf`
--

INSERT INTO `addbkpdf` (`id`, `title`, `author`, `pdf_path`, `subcode`, `image`) VALUES
(1, 'Maths 1', 'HS Gangwar', 'pdf/1753847585_UBA01.pdf', 'UBA01', NULL),
(2, 'Engineering Maths 1', 'Kumar', 'uploads/CSE/cm/1753847585_UBA01.pdf', 'UBA01', NULL),
(3, 'EM 1', 'BV Ramana', 'pdf/1754335024_EM_1.pdf', 'UBA01', NULL),
(4, 'DM', 'T Veerarajan', 'pdf/1754335072_DM.pdf', 'UBA04', NULL),
(5, 'Numerical Methods', 'BS Grewal', 'pdf/1754335885_NM_BOOK_compressed.pdf', 'UBA05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addcmpdf`
--

CREATE TABLE `addcmpdf` (
  `id` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `subcode` varchar(50) NOT NULL,
  `pdf_path` varchar(255) NOT NULL,
  `subname` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `size` varchar(20) NOT NULL DEFAULT '0 B'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addcmpdf`
--

INSERT INTO `addcmpdf` (`id`, `department`, `subcode`, `pdf_path`, `subname`, `updated_at`, `size`) VALUES
(1, 'CSE', 'UBA01', 'pdf/1751280444_UBA01.pdf', 'Engineering Mathematics - 1', '2025-07-31 18:30:00', ''),
(2, 'CSE', 'UBA04', 'pdf/1751280612_UBA04.pdf', 'Discrete Mathematics', '2025-08-01 18:30:00', ''),
(3, 'CSE', 'UBA09', 'pdf/1754386724_P_S_UBA09.pdf', 'Probability and Statistics', '2025-08-05 09:38:44', '3.27 MB');

-- --------------------------------------------------------

--
-- Table structure for table `addmcqpdf`
--

CREATE TABLE `addmcqpdf` (
  `id` int(11) NOT NULL,
  `pdf_path` varchar(255) NOT NULL,
  `subcode` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addmcqpdf`
--

INSERT INTO `addmcqpdf` (`id`, `pdf_path`, `subcode`, `department`) VALUES
(1, 'pdf/1754336222_UNIT1_MCQ__1_.pdf', 'ECA14', 'CSE'),
(2, 'pdf/1754336577_UNIT-2_MCQ__1_.pdf', 'ECA14', 'CSE'),
(3, 'pdf/1754336663_Unit-3_-mcq.pdf', 'ECA14', 'CSE'),
(4, 'pdf/1754336705_Unit-4-mcq.pdf', 'ECA14', 'CSE'),
(5, 'pdf/1754967715_MCQ_-_Unit_5.pdf', 'ECA14', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `addpqpdf`
--

CREATE TABLE `addpqpdf` (
  `id` int(11) NOT NULL,
  `department` varchar(100) NOT NULL DEFAULT '',
  `subcode` varchar(50) NOT NULL DEFAULT '',
  `subname` varchar(255) NOT NULL DEFAULT '',
  `pdf_path` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addpqpdf`
--

INSERT INTO `addpqpdf` (`id`, `department`, `subcode`, `subname`, `pdf_path`) VALUES
(1, 'CSE', 'UBA01', 'Engineering Mathematics', 'pdf/1754639194_EM_1_MODEL_EXAM_QUES.pdf'),
(2, 'CSE', 'UBA02', 'Discrete Mathematics', 'pdf/1754640029_DM_MODEL_EXAM_QUES.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `addpracpdf`
--

CREATE TABLE `addpracpdf` (
  `id` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `subcode` varchar(50) NOT NULL,
  `subname` varchar(255) NOT NULL,
  `pdf_path` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addpracpdf`
--

INSERT INTO `addpracpdf` (`id`, `department`, `subcode`, `subname`, `pdf_path`) VALUES
(1, 'CSE', 'UBA01', 'Engineering Mathematics 1', 'pdf/1754450434_EM_1-_TUTORIAL_BOOK_UBA01_2022_A4_size.pdf'),
(2, 'CSE', 'UBA04', 'Discrete Mathematics', 'pdf/1754450665_DM_-_TUTORIAL_BOOK_UBA04_-_2024__1_.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Varsha', 'varsha@gmail.com', 'varsha@1506'),
(2, 'Karthi', 'Karthi@gmail.com', 'karthi@1205');

-- --------------------------------------------------------

--
-- Table structure for table `core`
--

CREATE TABLE `core` (
  `id` int(11) NOT NULL,
  `subcode` varchar(250) NOT NULL,
  `subname` varchar(300) NOT NULL,
  `department` varchar(300) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core`
--

INSERT INTO `core` (`id`, `subcode`, `subname`, `department`) VALUES
(1, 'UBA01', 'Engineering Mathematics - 1', 'CSE'),
(2, 'UBA04', 'Discrete Mathematics', 'CSE'),
(3, 'UBA09', 'Probability and Statistics', 'CSE'),
(4, 'UBA20', 'Engineering Chemistry', 'CSE'),
(5, 'UBA21', 'Applied Physics', 'CSE'),
(6, 'UBA28', 'Professional Ethics and Legal Practices', 'CSE'),
(7, 'UBA29', 'Technical English', 'CSE'),
(8, 'UBA10', 'Numerical Methods', 'CSE'),
(9, 'UBA05', 'Engineering Mathematics II', 'CSE'),
(10, 'BTA01', 'Biology and Environmental Science for Engineers', 'CSE'),
(11, 'DSA01', 'Object Oriented Programming using C++', 'CSE'),
(12, 'EEA01', 'Basic Electrical and Electronics Engineering', 'CSE'),
(13, 'ECA47', 'Principles of Digital System Design', 'CSE'),
(14, 'CSA02', 'C Programming', 'CSE'),
(15, 'CSA03', 'Data Structures', 'CSE'),
(16, 'CSA04', 'Operating Systems', 'CSE'),
(17, 'CSA05', 'Database Management Systems', 'CSE'),
(18, 'CSA06', 'Design and Analysis of Algorithms', 'CSE'),
(19, 'CSA07', 'Computer Networks', 'CSE'),
(20, 'CSA08', 'Python Programming', 'CSE'),
(21, 'CSA09', 'Programming in Java', 'CSE'),
(22, 'CSA10', 'Software Engineering', 'CSE'),
(23, 'CSA11', 'Object Oriented Analysis and Design', 'CSE'),
(24, 'CSA12', 'Computer Architecture', 'CSE'),
(25, 'CSA13', 'Theory of Computation', 'CSE'),
(26, 'CSA14', 'Compiler Design', 'CSE'),
(27, 'CSA15', 'Cloud Computing and Big Data Analytics', 'CSE'),
(28, 'CSA16', 'Data Warehousing and Data Mining', 'CSE'),
(29, 'CSA17', 'Artificial Intelligence', 'CSE'),
(30, 'ECA14', 'Embedded System', 'CSE'),
(31, 'CSA43', 'Internet Programming', 'CSE'),
(32, 'CSA51', 'Cryptography and Network Security', 'CSE'),
(33, 'SPIC11', 'Product Development', 'CSE'),
(34, 'SPIC12', 'Research Project', 'CSE'),
(35, 'SPIC1', 'Industrial Internship-1', 'CSE'),
(36, 'SPIC2', 'Industrial Internship - II', 'CSE'),
(37, 'UBA30', 'Soft Skill', 'CSE'),
(38, 'UBA01', 'Engineering Mathematics', 'ECE'),
(39, 'UBA06', 'Applied Mathematics', 'ECE'),
(40, 'UBA11', 'Probability and Random Processes', 'ECE'),
(41, 'UBA49', 'Engineering Chemistry', 'ECE'),
(42, 'UBA48', 'Engineering Physics', 'ECE'),
(43, 'UBA28', 'Professional Ethics and Legal Practices', 'ECE'),
(44, 'UBA29', 'Technical English', 'ECE'),
(45, 'BTA01', 'Biology and Environmental Science for Engineers', 'ECE'),
(46, 'EEA01', 'Basic Electrical and Electronics Engineering', 'ECE'),
(47, 'ECA01', 'Semiconductor Devices', 'ECE'),
(48, 'ECA02', 'Digital Circuits', 'ECE'),
(49, 'ECA03', 'Signals and Systems', 'ECE'),
(50, 'ECA04', 'Analog Circuits', 'ECE'),
(51, 'ECA05', 'Engineering Electromagnetics', 'ECE'),
(52, 'ECA06', 'Integrated Circuits', 'ECE'),
(53, 'EEA05', 'Control Systems', 'ECE'),
(54, 'ECA07', 'Transducers and Sensors', 'ECE'),
(55, 'ECA08', 'Analog and Digital Communication', 'ECE'),
(56, 'ECA09', 'Digital Signal Processing', 'ECE'),
(57, 'ECA10', 'Microprocessors and Microcontrollers', 'ECE'),
(58, 'CSA02', 'C Programming', 'ECE'),
(59, 'CSA07', 'Computer Networks', 'ECE'),
(60, 'CSA12', 'Computer Architecture', 'ECE'),
(61, 'ECA15', 'Transmission Lines and Waveguides', 'ECE'),
(62, 'ECA11', 'VLSI Design', 'ECE'),
(63, 'ECA12', 'Antennas and Wave Propagation', 'ECE'),
(64, 'ECA13', 'Microwave Engineering', 'ECE'),
(65, 'ECA14', 'Embedded Systems', 'ECE'),
(66, 'ECA18', 'Optoelectronics and Optical Communication', 'ECE'),
(67, 'ECA31', 'Nano Electronics', 'ECE'),
(68, 'SPIC3', 'Mini Project', 'ECE'),
(69, 'SPIC4', 'Project', 'ECE'),
(70, 'SPIC5', 'Internship', 'ECE'),
(128, 'UBA01', 'Engineering Mathematics I', 'EEE'),
(129, 'UBA06', 'Applied Mathematics', 'EEE'),
(130, 'UBA10', 'Numerical Methods', 'EEE'),
(131, 'UBA16', 'Materials Chemistry', 'EEE'),
(132, 'UBA23', 'Engineering Physics', 'EEE'),
(133, 'UBA28', 'Professional Ethics and Legal Practices', 'EEE'),
(134, 'UBA29', 'Technical English', 'EEE'),
(135, 'BTA01', 'Biology and Environmental Science for Engineers', 'EEE'),
(136, 'ENA01', 'Renewable Energy Sources', 'EEE'),
(137, 'ECA01', 'Semiconductor Devices', 'EEE'),
(138, 'MEA01', 'Engineering Graphics', 'EEE'),
(139, 'MEA02', 'Engineering Workshop', 'EEE'),
(140, 'CEA02', 'Engineering Mechanics', 'EEE'),
(141, 'EEA02', 'Electric Circuit Analysis', 'EEE'),
(142, 'CSA02', 'C Programming', 'EEE'),
(143, 'EEA03', 'Electrical Machines – I', 'EEE'),
(144, 'EEA04', 'Electrical Machines – II', 'EEE'),
(145, 'ECA02', 'Digital Circuits', 'EEE'),
(146, 'ECA04', 'Analog Circuits', 'EEE'),
(147, 'EEA05', 'Control Systems', 'EEE'),
(148, 'ECA05', 'Engineering Electromagnetics', 'EEE'),
(149, 'ECA06', 'Measurements and Instrumentation', 'EEE'),
(150, 'EEA07', 'Power Electronics', 'EEE'),
(151, 'EEA08', 'Power Systems –I', 'EEE'),
(152, 'ECA10', 'Microprocessors and Microcontrollers', 'EEE'),
(153, 'EEA09', 'Power Systems – II', 'EEE'),
(154, 'EEA10', 'Transmission and Distribution', 'EEE'),
(155, 'EEA11', 'Protection and Switch Gear', 'EEE'),
(156, 'ECA13', 'Electronic Circuits and Fabrication', 'EEE'),
(157, 'EEA25', 'Electrical Machine Design', 'EEE'),
(158, 'SPIC3', 'Mini Project', 'EEE'),
(159, 'SPIC4', 'Core Project', 'EEE'),
(160, 'SPIC5', 'Industrial Internship', 'EEE'),
(161, 'UBA01', 'Engineering Mathematics I', 'MECH'),
(162, 'UBA05', 'Engineering Mathematics II', 'MECH'),
(163, 'UBA10', 'Numerical Methods', 'MECH'),
(164, 'UBA17', 'Industrial Chemistry', 'MECH'),
(165, 'UBA24', 'Materials Physics', 'MECH'),
(166, 'UBA28', 'Professional Ethics and Legal Practices', 'MECH'),
(167, 'UBA29', 'Technical English', 'MECH'),
(168, 'BTA01', 'Biology and Environmental Science for Engineers', 'MECH'),
(169, 'CSA02', 'C Programming', 'MECH'),
(170, 'EEA01', 'Basic Electrical and Electronics Engineering', 'MECH'),
(171, 'MEA01', 'Engineering Graphics', 'MECH'),
(172, 'MEA02', 'Engineering Workshop', 'MECH'),
(173, 'CEA02', 'Engineering Mechanics', 'MECH'),
(174, 'MEA03', 'Basic Mechanical Engineering', 'MECH'),
(175, 'CEA06', 'Fluid Mechanics and Machinery', 'MECH'),
(176, 'MEA04', 'Materials Engineering and Technology', 'MECH'),
(177, 'MEA05', 'Engineering Thermodynamics', 'MECH'),
(178, 'MEA06', 'Fundamentals of Manufacturing Processes', 'MECH'),
(179, 'MEA07', 'Thermal Engineering', 'MECH'),
(180, 'MEA08', 'Theory of Machines', 'MECH'),
(181, 'CEA07', 'Strength of Materials', 'MECH'),
(182, 'MEA09', 'Machining Processes and Metrology', 'MECH'),
(183, 'MEA10', 'Heat and Mass Transfer', 'MECH'),
(184, 'MEA11', 'Design of Machine Elements', 'MECH'),
(185, 'MEA12', 'Finite Element Analysis', 'MECH'),
(186, 'MEA13', 'Design of Transmission System', 'MECH'),
(187, 'MEA37', 'Automobile Engineering', 'MECH'),
(188, 'MEA14', 'Industrial Engineering and Management', 'MECH'),
(189, 'MEA15', 'Automation in Manufacturing', 'MECH'),
(190, 'MEA16', 'Process planning and Cost Estimation', 'MECH'),
(191, 'SPIC3', 'Mini Project', 'MECH'),
(192, 'SPIC4', 'Project', 'MECH'),
(193, 'SPIC5', 'Industrial Internship', 'MECH'),
(194, 'UBA01', 'Engineering Mathematics I', 'CIVIL'),
(195, 'UBA05', 'Engineering Mathematics II', 'CIVIL'),
(196, 'UBA10', 'Numerical Methods', 'CIVIL'),
(197, 'UBA48', 'Engineering Physics', 'CIVIL'),
(198, 'UBA49', 'Engineering Chemistry', 'CIVIL'),
(199, 'UBA28', 'Professional Ethics and Legal Practices', 'CIVIL'),
(200, 'UBA29', 'Technical English', 'CIVIL'),
(201, 'BTA01', 'Biology and Environmental Science for Engineers', 'CIVIL'),
(202, 'CSA01', 'Problem Solving Skills', 'CIVIL'),
(203, 'EEA01', 'Basic Electrical and Electronics Engineering', 'CIVIL'),
(204, 'MEA01', 'Engineering Graphics', 'CIVIL'),
(205, 'MEA02', 'Engineering Workshop', 'CIVIL'),
(206, 'CEA01', 'Introduction to Civil Engineering – Societal & Global Impact', 'CIVIL'),
(207, 'CEA02', 'Engineering Mechanics', 'CIVIL'),
(208, 'CEA03', 'Design of Concrete Structures', 'CIVIL'),
(209, 'CEA04', 'Geology and Disaster Mitigation', 'CIVIL'),
(210, 'CEA05', 'Surveying', 'CIVIL'),
(211, 'CEA06', 'Fluid Mechanics and Machinery', 'CIVIL'),
(212, 'CEA07', 'Strength of Materials', 'CIVIL'),
(213, 'CEA08', 'Soil Mechanics & Foundation Engineering', 'CIVIL'),
(214, 'CEA09', 'Transportation Engineering', 'CIVIL'),
(215, 'CEA10', 'Hydraulic Engineering', 'CIVIL'),
(216, 'CEA11', 'Hydrology and Water Resources Engineering', 'CIVIL'),
(217, 'CEA12', 'Structural Analysis', 'CIVIL'),
(218, 'CEA13', 'Design of Steel Structure', 'CIVIL'),
(219, 'CEA14', 'Environmental Engineering', 'CIVIL'),
(220, 'CEA15', 'Computer Aided Building Design and Drawing', 'CIVIL'),
(221, 'CEA16', 'Construction Engineering and Management', 'CIVIL'),
(222, 'CEA17', 'Remote Sensing and GIS', 'CIVIL'),
(223, 'CEA18', 'Estimation, Costing and Valuation', 'CIVIL'),
(224, 'SPIC3', 'Mini Project', 'CIVIL'),
(225, 'SPIC4', 'Core Project', 'CIVIL'),
(226, 'SPIC5', 'Industrial Internship', 'CIVIL'),
(227, 'UBA01', 'Engineering Mathematics I', 'AUTOMOBILE'),
(228, 'UBA05', 'Engineering Mathematics II', 'AUTOMOBILE'),
(229, 'UBA10', 'Numerical Methods', 'AUTOMOBILE'),
(230, 'UBA17', 'Industrial Chemistry', 'AUTOMOBILE'),
(231, 'UBA24', 'Materials Physics', 'AUTOMOBILE'),
(232, 'UBA28', 'Professional Ethics and Legal Practices', 'AUTOMOBILE'),
(233, 'UBA29', 'Technical English', 'AUTOMOBILE'),
(234, 'BTA01', 'Biology and Environmental Science for Engineers', 'AUTOMOBILE'),
(235, 'CSA01', 'Problem Solving Skills', 'AUTOMOBILE'),
(236, 'EEA01', 'Basic Electrical and Electronics Engineering', 'AUTOMOBILE'),
(237, 'MEA01', 'Engineering Graphics', 'AUTOMOBILE'),
(238, 'MEA02', 'Engineering Workshop', 'AUTOMOBILE'),
(239, 'CEA02', 'Engineering Mechanics', 'AUTOMOBILE'),
(240, 'AEA01', 'Materials Technology', 'AUTOMOBILE'),
(241, 'AEA02', 'Automotive Chassis', 'AUTOMOBILE'),
(242, 'AEA03', 'Automotive Engines', 'AUTOMOBILE'),
(243, 'AEA04', 'Two and Three Wheeler Engineering', 'AUTOMOBILE'),
(244, 'AEA05', 'Automotive Electrical and Electronics System', 'AUTOMOBILE'),
(245, 'AEA06', 'Design of Automobile Components', 'AUTOMOBILE'),
(246, 'AEA07', 'Vehicle Dynamics', 'AUTOMOBILE'),
(247, 'AEA08', 'Vehicle Design and Data Characteristics', 'AUTOMOBILE'),
(248, 'AEA09', 'Vehicle Maintenance', 'AUTOMOBILE'),
(249, 'AEA10', 'Automotive Fuels and Lubricants', 'AUTOMOBILE'),
(250, 'AEA11', 'Vehicle Body Engineering', 'AUTOMOBILE'),
(251, 'CEA06', 'Fluid Mechanics and Machinery', 'AUTOMOBILE'),
(252, 'CEA07', 'Strength of Materials', 'AUTOMOBILE'),
(253, 'MEA05', 'Engineering Thermodynamics', 'AUTOMOBILE'),
(254, 'MEA08', 'Theory of Machines', 'AUTOMOBILE'),
(255, 'MEA11', 'Design of Machine Elements', 'AUTOMOBILE'),
(256, 'MEA12', 'Finite Element Analysis', 'AUTOMOBILE'),
(257, 'SPIC3', 'Mini Project', 'AUTOMOBILE'),
(258, 'SPIC4', 'Project', 'AUTOMOBILE'),
(259, 'SPIC5', 'Industrial Internship', 'AUTOMOBILE'),
(260, 'UBA01', 'Engineering Mathematics I', 'ENERGY AND ENVIRONMENT'),
(261, 'UBA06', 'Applied Mathematics', 'ENERGY AND ENVIRONMENT'),
(262, 'UBA10', 'Numerical Methods', 'ENERGY AND ENVIRONMENT'),
(263, 'UBA48', 'Engineering Physics', 'ENERGY AND ENVIRONMENT'),
(264, 'UBA49', 'Engineering Chemistry', 'ENERGY AND ENVIRONMENT'),
(265, 'UBA28', 'Professional Ethics and Legal Practices', 'ENERGY AND ENVIRONMENT'),
(266, 'UBA29', 'Technical English', 'ENERGY AND ENVIRONMENT'),
(267, 'BTA01', 'Biology and Environmental Science for Engineers', 'ENERGY AND ENVIRONMENT'),
(268, 'ENA18', 'Power Plant Engineering', 'ENERGY AND ENVIRONMENT'),
(269, 'EEA01', 'Basic Electrical and Electronics Engineering', 'ENERGY AND ENVIRONMENT'),
(270, 'MEA01', 'Engineering Graphics', 'ENERGY AND ENVIRONMENT'),
(271, 'MEA02', 'Engineering Workshop', 'ENERGY AND ENVIRONMENT'),
(272, 'CEA02', 'Engineering Mechanics', 'ENERGY AND ENVIRONMENT'),
(273, 'CEA14', 'Environmental Engineering', 'ENERGY AND ENVIRONMENT'),
(274, 'MEA05', 'Engineering Thermodynamics', 'ENERGY AND ENVIRONMENT'),
(275, 'CEA06', 'Fluid Mechanics and Machinery', 'ENERGY AND ENVIRONMENT'),
(276, 'ENA01', 'Renewable Energy Sources', 'ENERGY AND ENVIRONMENT'),
(277, 'ENA02', 'Environmental Instrumentation', 'ENERGY AND ENVIRONMENT'),
(278, 'MEA10', 'Heat and Mass Transfer', 'ENERGY AND ENVIRONMENT'),
(279, 'CEA17', 'Remote Sensing and GIS', 'ENERGY AND ENVIRONMENT'),
(280, 'ENA03', 'Environmental Engineering and Pollution Control', 'ENERGY AND ENVIRONMENT'),
(281, 'MEA42', 'Industrial Safety & Environment', 'ENERGY AND ENVIRONMENT'),
(282, 'ENA04', 'Bio Mass and its Conservation Technologies', 'ENERGY AND ENVIRONMENT'),
(283, 'ENA05', 'Energy Auditing and Regulations', 'ENERGY AND ENVIRONMENT'),
(284, 'CEA25', 'Environmental Impact Assessment', 'ENERGY AND ENVIRONMENT'),
(285, 'ENA07', 'Air Pollution and Control', 'ENERGY AND ENVIRONMENT'),
(286, 'CEA06', 'Measurements and Instrumentation', 'ENERGY AND ENVIRONMENT'),
(287, 'ENA08', 'Hydrogen and Fuel Cell', 'ENERGY AND ENVIRONMENT'),
(288, 'ENA09', 'Waste to Energy Conversion', 'ENERGY AND ENVIRONMENT'),
(289, 'BTA17', 'Water Pollution and Management', 'ENERGY AND ENVIRONMENT'),
(290, 'SPIC3', 'Mini Project', 'ENERGY AND ENVIRONMENT'),
(291, 'SPIC4', 'Core Project', 'ENERGY AND ENVIRONMENT'),
(292, 'SPIC5', 'Industrial Internship', 'ENERGY AND ENVIRONMENT'),
(293, 'UBA02', 'Applications of Mathematics', 'BIOMEDICAL'),
(294, 'UBA07', 'Applied Statistics', 'BIOMEDICAL'),
(295, 'UBA12', 'Applied Probability', 'BIOMEDICAL'),
(296, 'UBA27', 'Bio Physics', 'BIOMEDICAL'),
(297, 'UBA28', 'Professional Ethics and Legal Practices', 'BIOMEDICAL'),
(298, 'UBA29', 'Technical English', 'BIOMEDICAL'),
(299, 'BIA01', 'Biochemistry', 'BIOMEDICAL'),
(300, 'BTA01', 'Biology and Environmental Science for Engineers', 'BIOMEDICAL'),
(301, 'BMA10', 'Virtual Instrumentation design for medical systems', 'BIOMEDICAL'),
(302, 'EEA01', 'Basic Electrical and Electronics Engineering', 'BIOMEDICAL'),
(303, 'ECA03', 'Signals and Systems', 'BIOMEDICAL'),
(304, 'EEA05', 'Control Systems', 'BIOMEDICAL'),
(305, 'BMA01', 'Analog and Digital ICs', 'BIOMEDICAL'),
(306, 'BMA13', 'Electronic Devices and Circuits', 'BIOMEDICAL'),
(307, 'ECA10', 'Microprocessors and Microcontrollers', 'BIOMEDICAL'),
(308, 'BMA03', 'Biomedical Instrumentation', 'BIOMEDICAL'),
(309, 'BMA04', 'Biosensors', 'BIOMEDICAL'),
(310, 'BMA07', 'Radiological Equipment', 'BIOMEDICAL'),
(311, 'BMA09', 'Diagnostic and Therapeutic Equipment', 'BIOMEDICAL'),
(312, 'ECA04', 'Analog Circuits', 'BIOMEDICAL'),
(313, 'BMA02', 'Anatomy and Human Physiology', 'BIOMEDICAL'),
(314, 'BTA02', 'Microbiology', 'BIOMEDICAL'),
(315, 'BMA12', 'Introduction to rehabilitation engineering', 'BIOMEDICAL'),
(316, 'BMA08', 'Bio Materials and Artificial Organs', 'BIOMEDICAL'),
(317, 'BMA11', 'Body Area Networks', 'BIOMEDICAL'),
(318, 'CSA08', 'Python Programming', 'BIOMEDICAL'),
(319, 'ECA36', 'Digital Image Processing', 'BIOMEDICAL'),
(320, 'ECA09', 'Digital Signal processing', 'BIOMEDICAL'),
(321, 'ECA08', 'Analog and Digital Communication', 'BIOMEDICAL'),
(322, 'BMA16', 'Biomechanics', 'BIOMEDICAL'),
(323, 'SPIC3', 'Miniproject', 'BIOMEDICAL'),
(324, 'SPIC4', 'Project', 'BIOMEDICAL'),
(325, 'SPIC5', 'Industrial Internship', 'BIOMEDICAL'),
(326, 'UBA01', 'Engineering Mathematics I', 'BIOINFORMATICS'),
(327, 'UBA07', 'Applied Statistics', 'BIOINFORMATICS'),
(328, 'UBA48', 'Engineering Physics', 'BIOINFORMATICS'),
(329, 'UBA49', 'Engineering Chemistry', 'BIOINFORMATICS'),
(330, 'UBA12', 'Applied Probability', 'BIOINFORMATICS'),
(331, 'UBA27', 'Bio Physics', 'BIOINFORMATICS'),
(332, 'UBA28', 'Professional Ethics and Legal Practices', 'BIOINFORMATICS'),
(333, 'UBA29', 'Technical English', 'BIOINFORMATICS'),
(334, 'BIA01', 'Biochemistry', 'BIOINFORMATICS'),
(335, 'BTA01', 'Biology and Environmental Science for Engineers', 'BIOINFORMATICS'),
(336, 'BIA28', 'Cheminformatics', 'BIOINFORMATICS'),
(337, 'BIA29', 'Microarray and Gene Sequencing Technology', 'BIOINFORMATICS'),
(338, 'BIA15', 'Systems Biology', 'BIOINFORMATICS'),
(339, 'BIA02', 'Cell Biology', 'BIOINFORMATICS'),
(340, 'BTA02', 'Microbiology', 'BIOINFORMATICS'),
(341, 'BIA03', 'Basic Bioinformatics', 'BIOINFORMATICS'),
(342, 'CSA02', 'C Programming', 'BIOINFORMATICS'),
(343, 'CSA11', 'Object Oriented Analysis and Design', 'BIOINFORMATICS'),
(344, 'BTA08', 'Plant Biotechnology', 'BIOINFORMATICS'),
(345, 'BIA04', 'Immunology', 'BIOINFORMATICS'),
(346, 'BIA05', 'Genetics', 'BIOINFORMATICS'),
(347, 'BTA05', 'Molecular Biology', 'BIOINFORMATICS'),
(348, 'BIA06', 'Genomics and Proteomics', 'BIOINFORMATICS'),
(349, 'CSA08', 'Python Programming', 'BIOINFORMATICS'),
(350, 'BIA07', 'PERL Programming and BIOPERL', 'BIOINFORMATICS'),
(351, 'ITA04', 'Statistics with R Programming', 'BIOINFORMATICS'),
(352, 'BIA08', 'Recombinant DNA Technology', 'BIOINFORMATICS'),
(353, 'CSA05', 'Database Management Systems', 'BIOINFORMATICS'),
(354, 'BIA09', 'Molecular Modeling and Drug designing', 'BIOINFORMATICS'),
(355, 'BIA10', 'Protein Engineering', 'BIOINFORMATICS'),
(356, 'SPIC3', 'Mini Project', 'BIOINFORMATICS'),
(357, 'SPIC4', 'Core Project', 'BIOINFORMATICS'),
(358, 'SPIC5', 'Industrial Internship', 'BIOINFORMATICS'),
(359, 'UBA01', 'Engineering Mathematics I', 'IT'),
(360, 'UBA04', 'Discrete Mathematics', 'IT'),
(361, 'UBA09', 'Probability and Statistics', 'IT'),
(362, 'UBA49', 'Engineering Chemistry', 'IT'),
(363, 'UBA48', 'Engineering Physics', 'IT'),
(364, 'UBA28', 'Professional Ethics and Legal Practices', 'IT'),
(365, 'UBA29', 'Technical English', 'IT'),
(366, 'BTA01', 'Biology and Environmental Science for Engineers', 'IT'),
(367, 'CSA57', 'Fundamentals of Computing', 'IT'),
(368, 'DSA01', 'Object Oriented Programming using C++', 'IT'),
(369, 'CSA51', 'Cryptography and Network Security', 'IT'),
(370, 'CSA37', 'Software Testing', 'IT'),
(371, 'ECA47', 'Principles of Digital System Design', 'IT'),
(372, 'CSA02', 'C Programming', 'IT'),
(373, 'CSA03', 'Data Structures', 'IT'),
(374, 'CSA04', 'Operating Systems', 'IT'),
(375, 'CSA05', 'Database Management Systems', 'IT'),
(376, 'CSA07', 'Computer Networks', 'IT'),
(377, 'CSA08', 'Python Programming', 'IT'),
(378, 'CSA10', 'Software Engineering', 'IT'),
(379, 'CSA12', 'Computer Architecture', 'IT'),
(380, 'CSA09', 'Programming in Java', 'IT'),
(381, 'ITA02', 'Web Technology', 'IT'),
(382, 'ITA03', 'Mobile computing', 'IT'),
(383, 'CSA11', 'Object Oriented Analysis and Design', 'IT'),
(384, 'ITA04', 'Statistics with R Programming', 'IT'),
(385, 'CSA14', 'Compiler Design', 'IT'),
(386, 'ITA05', 'Computer Vision', 'IT'),
(387, 'ITA06', 'Machine Learning', 'IT'),
(388, 'CSA15', 'Cloud computing and Big Data Analytics', 'IT'),
(389, 'SPIC3', 'Mini Project', 'IT'),
(390, 'SPIC4', 'Core Project', 'IT'),
(391, 'SPIC5', 'Industrial Internship', 'IT'),
(392, 'UBA06', 'APPLIED MATHEMATICS', 'ECE');

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
('ENERGY AND ENVIRONMENT', 'Focus on sustainable energy solutions', 7),
('BIOMEDICAL', 'Combine medicine with engineering', 8),
('BIOINFORMATICS', 'Merge biology with information tech', 9),
('IT', 'Study data and information tech', 10);

-- --------------------------------------------------------

--
-- Table structure for table `elect`
--

CREATE TABLE `elect` (
  `id` int(11) NOT NULL,
  `subcode` varchar(250) NOT NULL DEFAULT '',
  `subname` varchar(300) NOT NULL DEFAULT '',
  `department` varchar(300) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elect`
--

INSERT INTO `elect` (`id`, `subcode`, `subname`, `department`) VALUES
(1, 'CSA18', 'Human Computer Interaction', 'CSE'),
(2, 'CSA19', 'High Performance Networks', 'CSE'),
(3, 'CSA20', 'Graphics and Animation', 'CSE'),
(4, 'CSA21', 'Human Centered Design', 'CSE'),
(5, 'CSA22', 'Applied Medical Image Processing', 'CSE'),
(6, 'CSA23', 'Information Centric Networking', 'CSE'),
(7, 'CSA24', 'Data Modelling and Processing', 'CSE'),
(8, 'CSA25', 'Social Computing', 'CSE'),
(9, 'CSA26', 'Content Based Image Retrieval', 'CSE'),
(10, 'CSA27', 'Health Care Analytics', 'CSE'),
(11, 'CSA28', 'Multimedia Databases', 'CSE'),
(12, 'CSA29', 'Programming Usable Interface', 'CSE'),
(13, 'CSA30', 'Digital watermarking and steganalysis', 'CSE'),
(14, 'CSA31', 'Cloud storage and security', 'CSE'),
(15, 'CSA32', 'Multimedia Security', 'CSE'),
(16, 'CSA33', 'C# and .Net Framework', 'CSE'),
(17, 'CSA34', 'XML and Web Services', 'CSE'),
(18, 'CSA35', 'Advanced Databases', 'CSE'),
(19, 'CSA36', 'Advanced Java', 'CSE'),
(20, 'CSA37', 'Software Testing', 'CSE'),
(21, 'CSA38', 'Software Quality Assurance and Management', 'CSE'),
(22, 'CSA39', 'Mobile Commerce', 'CSE'),
(23, 'CSA40', 'Management Information Systems', 'CSE'),
(24, 'CSA41', 'Internet of Things', 'CSE'),
(25, 'CSA42', 'Parallel computing', 'CSE'),
(26, 'CSA43', 'Internet Programming', 'CSE'),
(27, 'CSA44', 'Distributed Systems', 'CSE'),
(28, 'CSA45', 'Neural Networks and Fuzzy Logic', 'CSE'),
(29, 'CSA46', 'Soft Computing', 'CSE'),
(30, 'CSA47', 'Deep Learning', 'CSE'),
(31, 'CSA48', 'Exploratory data Analysis', 'CSE'),
(32, 'CSA49', 'Text Analytics', 'CSE'),
(33, 'CSA50', 'Video Analytics', 'CSE'),
(34, 'CSA52', 'Cyber Forensics', 'CSE'),
(35, 'CSA53', 'Mobile and Wireless Security', 'CSE'),
(36, 'CSA54', 'Computer and Internet Security', 'CSE'),
(37, 'CSA55', 'Business Analytics and Intelligence', 'CSE'),
(38, 'CSA56', 'Secure Coding Principles', 'CSE'),
(39, 'ITA03', 'Mobile computing', 'CSE'),
(40, 'ITA04', 'Statistics with R Programming', 'CSE'),
(41, 'ITA05', 'Computer Vision', 'CSE'),
(42, 'ITA06', 'Machine Learning', 'CSE'),
(43, 'ITA14', 'Ethical Hacking', 'CSE'),
(44, 'ITA15', 'Block chain Technology', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `open_elect`
--

CREATE TABLE `open_elect` (
  `id` int(11) NOT NULL,
  `subcode` varchar(250) NOT NULL,
  `subname` varchar(300) NOT NULL,
  `department` varchar(300) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `open_elect`
--

INSERT INTO `open_elect` (`id`, `subcode`, `subname`, `department`) VALUES
(1, 'UBA30', 'Aptitude and Competency Skills', 'CSE'),
(2, 'UBA31', 'Foreign Language', 'CSE'),
(3, 'UBA32', 'Intellectual Property Rights', 'CSE'),
(4, 'UBA33', 'Principles of Management', 'CSE'),
(5, 'UBA34', 'Total Quality Management', 'CSE'),
(6, 'UBA35', 'Cyber Law', 'CSE'),
(7, 'UBA36', 'Organizational Behaviour', 'CSE'),
(8, 'UBA37', 'Multi Cuisine Cooking', 'CSE'),
(9, 'UBA38', 'Indian Music System', 'CSE'),
(10, 'UBA39', 'Short Film Making', 'CSE'),
(11, 'UBA40', 'Introduction to Art and Aesthetics', 'CSE'),
(12, 'UBA41', 'Classical and Western Dance', 'CSE'),
(13, 'UBA42', 'Art and Creativity', 'CSE'),
(14, 'UBA43', 'Economic Policies of India', 'CSE'),
(15, 'UBA44', 'ICT for Development', 'CSE'),
(16, 'UBA45', 'Life Science', 'CSE'),
(17, 'UBA46', 'Operations Research', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `praclinks`
--

CREATE TABLE `praclinks` (
  `id` int(11) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_types`
--

CREATE TABLE `subject_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_types`
--

INSERT INTO `subject_types` (`id`, `type_name`, `description`) VALUES
(1, 'Core Subjects', 'Fundamental subjects required for your program'),
(2, 'Elective Subjects', 'Specialized subjects within your field of study'),
(3, 'Open Elective Subjects', 'Subjects from other departments to broaden your knowledge');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'varsha', 'varsha@gmail.com', 'varsha@6153'),
(2, 'varsha', 'varsha1@gmail.com', 'varsha@12345'),
(3, 'Kiruthika', 'kiru123@gmail.com', 'varsha@123'),
(4, 'Gangatharan', 'mibganga2@gmail.com', 'Ganga@750'),
(5, 'Suguna', 'suguna6153@gmail.com', 'Sugu@6153'),
(6, 'Suguna', 'suguna6s@gmail.com', 'sugu@123'),
(7, 'raja', 'raja@gmail.com', '123456'),
(8, 'Kiruthika', 'kiruthika6153@gmail.com', 'kiru@123'),
(9, 'Testing', 'testingapi1@gmail.com', 'testing123'),
(10, 'Karthi', 'Karthi@gmail.com', 'karthi1205'),
(11, 'Were', 'Were@gmail.com', '147852'),
(12, 'Rindhya', 'rindhyag9077.sse@saveetha.com', 'Ammu1982'),
(13, 'Suguna', 'sugunaganga@gmail.com', 'sugu@123'),
(14, 'Kiru', 'Kiru@gmail.com', '123456'),
(15, '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `id` int(11) NOT NULL,
  `query_text` text NOT NULL,
  `admin_response` text DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`id`, `query_text`, `admin_response`) VALUES
(1, 'Need operational research textbooks', 'Textbook uploaded for Operational Research Subject'),
(2, 'C bn', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_portal`
--
ALTER TABLE `academic_portal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addbkpdf`
--
ALTER TABLE `addbkpdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addcmpdf`
--
ALTER TABLE `addcmpdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addmcqpdf`
--
ALTER TABLE `addmcqpdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addpqpdf`
--
ALTER TABLE `addpqpdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addpracpdf`
--
ALTER TABLE `addpracpdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core`
--
ALTER TABLE `core`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elect`
--
ALTER TABLE `elect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `open_elect`
--
ALTER TABLE `open_elect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `praclinks`
--
ALTER TABLE `praclinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_types`
--
ALTER TABLE `subject_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_portal`
--
ALTER TABLE `academic_portal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `addbkpdf`
--
ALTER TABLE `addbkpdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `addcmpdf`
--
ALTER TABLE `addcmpdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `addpqpdf`
--
ALTER TABLE `addpqpdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addpracpdf`
--
ALTER TABLE `addpracpdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core`
--
ALTER TABLE `core`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `elect`
--
ALTER TABLE `elect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `open_elect`
--
ALTER TABLE `open_elect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subject_types`
--
ALTER TABLE `subject_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
