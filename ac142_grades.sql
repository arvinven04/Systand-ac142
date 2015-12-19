-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2015 at 12:00 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `142_grade`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_code` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `course_code`) VALUES
(1, 'BS Accountancy', 'BSA'),
(2, 'BS Computer Science - Systems Software', 'BSCS-SS'),
(3, 'BS Computer Science - Computer Networks', 'BSCS-CN'),
(4, 'BS Computer Science-Security and Digital Forensics', 'BSCS-DF'),
(5, 'BSIT - Mobile and Internet Technology', 'BSIT-MI'),
(6, 'BSIT - Game Design and Development', 'BSIT-GD'),
(7, 'BS Entertainment and Multimedia Computing', 'BSEMC'),
(8, 'Bachelor of Science in Computer Engineering', 'BSCPE'),
(9, 'BS Electronics and Communication Engineering', 'BSECE'),
(10, 'BSBA Business Management', 'BSBA-BM'),
(11, 'BSBA Marketing & Advertising', 'BSBA-MA'),
(12, 'Bachelor of Science in Tourism Management', 'BSTM'),
(13, 'Bachelor of Arts in Multimedia Arts', 'ABMA'),
(14, 'Bachelor of Arts in Psychology', 'ABSPY');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL,
  `student_id` decimal(5,2) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `grade` int(11) NOT NULL,
  `status` char(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `student_id`, `subject`, `grade`, `status`) VALUES
(1, '1.00', '1', 95, 'PASS'),
(2, '2.00', '2', 95, 'PASS'),
(3, '3.00', '76', 60, 'FAIL');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(10) NOT NULL,
  `section` varchar(10) NOT NULL,
  `student_year` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `course`, `section`, `student_year`) VALUES
(1, 'Patricia Cho', '1', 'AC142', 2015),
(2, 'Arvin Aguilar', '9', 'ECE142', 2014),
(3, 'Nina Medalla', '6', 'GD132', 2013);

-- --------------------------------------------------------

--
-- Table structure for table `subject_list`
--

CREATE TABLE IF NOT EXISTS `subject_list` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `units` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_list`
--

INSERT INTO `subject_list` (`id`, `subject_name`, `subject_code`, `units`) VALUES
(1, 'ADVANCED ACCOUNTING 2	', 'ADVACC2', 3),
(2, 'ADVERTISING AND PUBLIC RELATIONS	', 'ADVEPUB', 3),
(3, 'ADVANCED ENGINEERING MATH	', 'ADVMATH', 3),
(4, 'COLLEGE ALGEBRA	', 'ALGEBRA', 3),
(5, 'APPLIED PROJECT 1	', 'APPROJ1', 3),
(6, 'APPLIED PROJECT 2	', 'APPROJ2', 3),
(7, 'ART APPRECIATION	', 'ARTAPRE', 3),
(8, 'AS COBOL	', 'ASCOBOL', 3),
(9, 'FUNDAMENTALS OF DESCRIPTIVE ANALYTICS	', 'BAFDESC', 3),
(10, 'BEHAVIORAL SCIENCE	', 'BEHASCI', 3),
(11, 'GENERAL BIOLOGY	', 'BIOLOGY', 3),
(12, 'FUNDAMENTALS OF ACCOUNTING 2 FOR BUSINESS ADMINISTRATION	', 'BUSACT2', 3),
(13, 'BUSINESS LAW	', 'BUSINLA', 3),
(14, 'BUSINESS LAW 3	', 'BUSLAW3', 3),
(15, 'BUSINESS MATHEMATICS	', 'BUSMATH', 3),
(16, 'BUSINESS PROCESS	', 'BUSPROS', 3),
(17, 'CIRCUITS 2	', 'CIRCKT2', 3),
(18, 'CIRCUITS 2 LAB	', 'CIRLAB2', 3),
(19, 'CLOUD PROGRAMMING	', 'CLDPROG', 3),
(20, 'COMPUTER SYSTEMS ARCHITECTURE LEC	', 'COMPARC', 3),
(21, 'COMPUTER SYSTEMS ARCHITECTURE LAB	', 'COMPARL', 3),
(22, 'COMPUTER FUNDAMENTALS AND PROGRAMMING 1	', 'COMPRG1', 3),
(23, 'COMPUTER FUNDAMENTALS AND PROGRAMMING 2	', 'COMPRG2', 3),
(24, 'PRINCIPLES OF COMMUNICATION	', 'COMSYST', 3),
(25, 'CONTROL SYSTEM LAB	', 'CONTLAB', 3),
(26, 'CONTROL SYSTEM LEC	', 'CONTSYS', 3),
(27, 'COST ACCOUNTING AND COST MANAGEMENT 1	', 'COSTAC1', 3),
(28, 'METHODS OF RESEARCH	', 'CPEMETH', 3),
(29, 'APPLIED PROJECT 2	', 'CSPROJ2', 3),
(30, 'CULTURAL ANTHROPOLOGY	', 'CULANTH', 3),
(31, 'DATA STRUCTURES	', 'DASTRUC', 3),
(32, 'DATABASE MANAGEMENT 2	', 'DATAMA2', 3),
(33, 'DATA NETWORKS	', 'DATANET', 3),
(34, 'DESKTOP PUBLISHING	', 'DESKPUB', 3),
(35, 'DIGITAL SOUND FOR MULTIMEDIA	', 'DGSOUND', 3),
(36, 'DIFFERENTIAL CALCULUS	', 'DICALCU', 3),
(37, 'DIFFERENTIAL EQUATION	', 'DIFEQUA', 3),
(38, 'DISCRETE MATHEMATICS	', 'DISCRET', 3),
(39, 'ENGINEERING DRAWING 1	', 'DRAWNG1', 3),
(40, 'ART DRAW WITH GRAPHIC DESIGN	', 'DRWGDES', 3),
(41, 'ECE LAWS, CONTRACTS AND ETHICS', 'ECELAWS', 3),
(42, 'ECONOMICS, TAXATION AND LAND REFORM	', 'ECONTAX', 3),
(43, 'MACRO ECONOMICS	', 'ECONTWO', 3),
(44, 'ECOTOURISM	', 'ECOTOUR', 3),
(45, 'ENGLISH ENRICHMENT PROGRAM	', 'EEPENG1', 3),
(46, 'EXPOSITORY WRITING	', 'EEXWRIT', 3),
(47, 'GRAMMAR AND COMPOSITION DEVELOPMENT	', 'EGRAMCM', 3),
(48, 'ELECTRONIC CIRCUIT ANALYSIS AND DESIGN L	', 'ELEX2LB', 3),
(49, 'ELECTRONIC CIRCUIT ANALYSIS AND DESIGN L	', 'ELEX2LC', 3),
(50, 'ENERGY CONVERSION LEC	', 'ENERCON', 3),
(51, 'ENERGY CONVERSION LAB	', 'ENERLAB', 3),
(52, 'ENGINEERING ECONOMY	', 'ENGECON', 3),
(53, 'ENTREPRENEURSHIP	', 'ENTREPS', 3),
(54, 'ENVIRONMENTAL ENGINEERING	', 'ENVENGG', 3),
(55, 'ENVIRONMENTAL SCIENCE	', 'ENVISCI', 3),
(56, 'ORAL COMMUNICATION IN ENGLISH	', 'EPUBSP1', 3),
(57, 'SPEECH COMMUNICATION	', 'EPUBSP2', 3),
(58, 'RESEARCH WRITING	', 'ERESWRT', 3),
(59, 'INTENSIVE ELECTRONIC SYSTEMS AND TECHNOLOGY	', 'ESAT-1', 3),
(60, 'TECHNICAL WRITING	', 'ETECWRT', 3),
(61, 'EVENTS MANAGEMENT 2	', 'EVENTS2', 3),
(62, 'EVIDENCE HANDLING	', 'EVIDENC', 3),
(63, 'WORLD LITERATURE	', 'EWORLIT', 3),
(64, 'SINING NG PAKIKIPAGTALASTASAN / COMMUNIK	', 'FILIONE', 3),
(65, 'PANITIKANG PILIPINO	', 'FILITWO', 3),
(66, 'FINANCIAL ACCOUNTING 3	', 'FINACC3', 3),
(67, 'FINANCIAL MANAGEMENT 1	', 'FINAMA1', 3),
(68, 'FUNDAMENTALS OF ACCOUNTING	', 'FUNDAC1', 6),
(69, 'FUNDAMENTALS OF ACCOUNTING 2	', 'FUNDAC2', 6),
(70, 'GAME AUTHORING	', 'GAMEAUT', 3),
(71, 'GAME CONCEPT	', 'GAMECON', 3),
(72, 'GRAPHIC ART VISUALIZATION	', 'GDESIGN', 3),
(73, 'SOLID ANALYTIC GEOMETRY WITH TRIGONOMETR	', 'GEOMTRI', 3),
(74, 'ANALYTIC AND SOLID GEOMETRY	', 'GEOMTRY', 3),
(75, 'GRAPHICAL SYSTEM DESIGN LAB 1	', 'GRAPHD1', 3),
(76, 'PHILIPPINE HISTORY	', 'HISTORY', 3),
(77, 'HUMAN COMPUTER INTERACTION	', 'HUCOMIN', 3),
(78, 'HUMAN BEHAVIOR ORGANIZATION	', 'HUMBORG', 3),
(79, 'DESCRIPTIVE ANALYTICS	', 'IBMDESC', 3),
(80, 'INTENSIVE MATH PROGRAM 4	', 'IMP-4', 3),
(81, 'INTENSIVE MATH PROGRAM 6	', 'IMP-6', 3),
(82, 'INTENSIVE MATH PROGRAM 7	', 'IMP-7', 3),
(83, 'INDUSTRIAL PSYCHOLOGY	', 'INDPSYC', 3),
(84, 'INFORMATION SYSTEMS SECURITY	', 'INFOSEC', 3),
(85, 'INTRODUCTION TO PROGRAMMING LANGUAGES	', 'INPROLA', 3),
(86, 'INTRODUCTION TO CALCULUS	', 'INTCALC', 3),
(87, 'INTERNSHIP 1	', 'INTERN1', 3),
(88, 'INTERNSHIP 2	', 'INTERN2', 3),
(89, 'INTRODUCTION TO FINANCE	', 'INTFINA', 3),
(90, 'INFORMATION TECHNOLOGY CONCEPTS	', 'ITCONCE', 3),
(91, 'BUSINESS LAW 2 FOR BUSINESS ADMINISTRATION	', 'LAWCOM2', 3),
(92, 'LIFE DRAWING	', 'LDRAWNG', 3),
(93, 'LOGIC CIRCUITS AND SWITCHING THEORY LEC	', 'LOGCIST', 3),
(94, 'LOGIC CIRCUITS AND SWITCHING THEORY LAB	', 'LOGLAB1', 3),
(95, 'MANAGEMENT ACCOUNTING 3	', 'MANACC3', 3),
(96, 'MANAGEMENT PRINCIPLES	', 'MANPRIN', 3),
(97, 'MULTIMEDIA PRODUCTION 2	', 'MAPROD2', 3),
(98, 'MARKETING COMMUNICATIONS	', 'MARKCOM', 3),
(99, 'ENGINEERING MECHANICS	', 'MECHAN1', 3),
(100, 'ENGINEERING MECHANICS 2	', 'MECHAN2', 3),
(101, 'MIS IN TOURISM & HOSPITALITY	', 'MINSYTH', 3),
(102, 'INTRODUCTION TO SYSTEMS AND DESIGN FOR I	', 'MNTSDEV', 3),
(103, 'NATURAL PHYSICS	', 'NATSCI1', 3),
(104, 'CHEMISTRY	', 'NATSCI2', 3),
(105, 'NATIONAL SERVICE 1	', 'NATSER1', 3),
(106, 'NATIONAL SERVICE 2	', 'NATSER2', 3),
(107, 'OBJECT ORIENTED PROGRAMMING LAB	', 'OBJECLB', 3),
(108, 'OBJECT ORIENTED PROGRAMMING LEC	', 'OBJECLC', 3),
(109, 'OPERATIONS MANAGEMENT	', 'OPEMANA', 3),
(110, 'OPERATING SYSTEMS 2	', 'OPESYS2', 3),
(111, 'ORGANIZATIONAL DEVELOPMENT	', 'ORGDEVT', 3),
(112, 'PAINTING	', 'PAINTIN', 3),
(113, 'PHYSICAL EDUCATION 3	', 'PEDUTRI', 2),
(114, 'PHYSICAL EDUCATION 2	', 'PEDUTWO', 2),
(115, 'PROFESSIONAL ELECTIVE 2	', 'PELECT2', 3),
(116, 'PROFESSIONAL ELECTIVE 3	', 'PELECT3', 3),
(117, 'PROGRAMMING EMBEDDED SYSTEMS	', 'PEMBEDS', 3),
(118, 'PHILIPPINE LITERATURE	', 'PHILLIT', 3),
(119, 'PHILOSOPHY OF MAN	', 'PHILMAN', 3),
(120, 'NATURAL PHYSICS 1	', 'PHYSIC1	3', 3),
(121, 'PHYSICS	', 'PHYSICS', 3),
(122, 'PRINCIPLES OF MARKETING	', 'PRINMAR', 3),
(123, 'PROGRAMMING CONCEPTS AND LOGIC	', 'PROGCON', 3),
(124, 'IT PROJECT MANAGEMENT	', 'PROJMAN', 3),
(125, 'PSYCHOLOGY ELECTIVE 2	', 'PSYELE2', 3),
(126, 'PSYCHOLOGICAL STATISTICS	', 'PSYSTAT', 3),
(127, 'SOFTWARE QUALITY MANAGEMENT	', 'QUALITY', 3),
(128, 'PROBABILITY AND STATISTICS	', 'QUAMET1', 3),
(129, 'OPERATIONS RESEARCH	', 'QUAMET2', 3),
(130, 'METHODS OF RESEARCH	', 'RESMETH', 3),
(131, 'RETAIL MANAGEMENT	', 'RETMANA', 3),
(132, 'LIFE AND WORKS OF RIZAL	', 'RIZLIFE', 3),
(133, 'SALES MANAGEMENT	', 'SALEMAN', 3),
(134, 'SERVICE CULTURE	', 'SERVCUL', 3),
(135, 'SIGNAL PROCESSING LAB	', 'SIGPLAB', 3),
(136, 'SIGNAL PROCESSING LEC	', 'SIGPROC', 3),
(137, 'INTRODUCTION TO SYSTEMS AND DESIGN FOR C	', 'SNTSDEV', 3),
(138, 'SOCIAL PSYCHOLOGY	', 'SOCPSYC', 3),
(139, 'SOFTWARE DEVELOPMENT	', 'SOFTDEV', 3),
(140, 'STRATEGIC MANAGEMENT	', 'STRAMAN', 3),
(141, 'STUDIO ELECTIVE 3	', 'STUDIO3', 3),
(142, 'SYSTEMS ANALYSIS & DESIGN	', 'SYSTADD', 3),
(143, 'TAXATION 2	', 'TAXATWO', 3),
(144, 'TOTAL QUALITY MANAGEMENT	', 'TOQMANA', 3),
(145, 'PRINCIPLES OF TOURISM 1	', 'TOURIS1', 3),
(146, 'TOURISM MARKETING	', 'TOURMAR', 3),
(147, 'TOURISM RESEARCH METHODS AND TECHNIQUES	', 'TOURRES', 3),
(148, 'TRANSMISSION MEDIA AND ANTENNA SYSTEMS L	', 'TRANSAT', 3),
(149, 'TRANSMISSION MEDIA AND ANTENNA SYSTEMS L	', 'TRANSLA', 3),
(150, 'TRAVEL AGENCY MGMT & OPERATIONS	', 'TRAVMAN', 3),
(151, 'PLANE TRIGONOMETRY	', 'TRIGONO', 3),
(152, 'VIDEO PRODUCTION FUNDAMENTALS	', 'VIDPROD', 3),
(153, 'WINDOWS SERVER	', 'WINSERV', 3),
(154, 'WORLD TOURISM	', 'WORTOUR', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`), ADD KEY `course_name` (`course_name`), ADD KEY `course_code` (`course_code`), ADD KEY `course_name_2` (`course_name`), ADD KEY `course_code_2` (`course_code`), ADD KEY `id` (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`), ADD KEY `student_id` (`student_id`), ADD KEY `grade` (`grade`), ADD KEY `status` (`status`), ADD KEY `subject` (`subject`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`), ADD KEY `course` (`course`);

--
-- Indexes for table `subject_list`
--
ALTER TABLE `subject_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subject_list`
--
ALTER TABLE `subject_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=155;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
