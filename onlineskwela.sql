-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2022 at 03:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineskwela`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `date` varchar(100) CHARACTER SET latin1 NOT NULL,
  `action` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, '', '2021-10-25 22:59:06', 'Add Subject Eng1'),
(2, '', '2021-10-25 23:01:53', 'Add Subject Eng2'),
(3, '', '2021-10-25 23:02:59', 'Add Subject Eng3'),
(4, '', '2021-10-25 23:14:01', 'Add Subject Math1'),
(5, '', '2021-10-29 23:00:53', 'Add Subject aaa'),
(6, '', '2021-11-13 13:50:13', 'Add Subject NEW ADD1'),
(7, '', '2021-11-13 16:24:19', 'Add User quimsonio'),
(8, '', '2021-11-13 23:44:22', 'Add Subject aaaa'),
(9, '', '2021-11-13 23:47:32', 'Add User xxx'),
(10, '', '2021-11-16 10:37:02', 'Add School Year 2021-2022'),
(11, '', '2021-11-16 10:37:06', 'Add School Year 2020-2021'),
(12, '', '2021-11-16 11:32:36', 'Add Subject 1201'),
(13, '', '2021-11-16 23:41:16', 'Add User lolo'),
(14, '', '2021-12-18 16:37:36', 'Add Subject 1002'),
(15, '', '2021-12-31 21:42:40', 'Add User joseldona'),
(16, '', '2022-01-04 10:46:15', 'Add User ianreloza'),
(17, '', '2022-01-04 11:05:43', 'Add Subject 1007'),
(18, '', '2022-01-16 01:26:08', 'Add School Year 2019-2020'),
(19, '', '2022-01-16 01:53:41', 'Add School Year 2012-2013'),
(20, '', '2022-01-16 02:00:07', 'Add Subject Theology'),
(21, '', '2022-01-16 02:00:31', 'Add Subject zxc'),
(22, '', '2022-01-16 02:00:50', 'Add Subject sfdasf'),
(23, '', '2022-01-16 02:01:16', 'Add Subject saf'),
(24, '', '2022-01-16 02:04:11', 'Add Subject fdsbb'),
(25, '', '2022-01-16 02:05:34', 'Add Subject zfd'),
(26, '', '2022-01-16 02:06:22', 'Add Subject 3232'),
(27, '', '2022-01-16 17:51:30', 'Add School Year 2018-2020'),
(28, '', '2022-01-16 18:10:01', 'Add Subject Science 1'),
(29, '', '2022-01-16 18:19:15', 'Add User markaquino'),
(30, '', '2022-01-16 18:20:44', 'Add User ivanbuena'),
(31, 'joseldona', '2022-01-17 01:34:30', 'Edit Subject Eng101'),
(32, 'joseldona', '2022-01-17 15:48:56', 'Edit Subject English for Grammar'),
(33, 'joseldona', '2022-01-17 17:04:53', 'Edit Subject English for Grammar'),
(34, 'joseldona', '2022-01-17 17:05:42', 'Edit Subject Eng3'),
(35, 'joseldona', '2022-01-18 20:03:56', 'Add Subject aaa'),
(36, 'joseldona', '2022-01-18 20:04:13', 'Edit Subject aaa'),
(37, 'joseldona', '2022-01-19 11:59:34', 'Edit User joseldona'),
(38, 'joseldona', '2022-01-19 12:31:48', 'Edit User quimsonio'),
(39, 'joseldona', '2022-01-19 12:32:36', 'Edit User quimsonio'),
(40, 'markaquino', '2022-01-20 00:07:28', 'Edit Subject English for Grammar'),
(41, 'markaquino', '2022-01-20 00:07:39', 'Edit User quimsonio'),
(42, 'quimsonio', '2022-01-20 13:46:01', 'Edit Subject English for Grammar'),
(43, 'quimsonio', '2022-01-20 13:47:15', 'Edit User quimsonio'),
(44, 'quimsonio', '2022-01-20 13:47:18', 'Edit User joseldona'),
(45, 'joseldona', '2022-01-25 14:02:18', 'Add Subject Math101'),
(46, 'joseldona', '2022-01-25 15:38:43', 'Add Subject Science201'),
(47, 'joseldona', '2022-01-25 15:59:18', 'Add Subject Religion'),
(61, 'joseldona', '2022-02-06 18:15:37', 'Add Subject Math 201'),
(62, 'joseldona', '2022-02-06 18:15:59', 'Edit Subject Math101'),
(63, 'joseldona', '2022-02-06 18:16:48', 'Add Subject Math 301'),
(64, 'joseldona', '2022-02-06 18:17:18', 'Add Subject Math 401'),
(65, 'joseldona', '2022-02-06 18:17:47', 'Add Subject Math 501'),
(66, 'joseldona', '2022-02-06 18:17:58', 'Edit Subject Math101'),
(67, 'joseldona', '2022-02-06 18:18:26', 'Add Subject Math 601'),
(68, 'joseldona', '2022-02-07 14:06:28', 'Edit Subject Math101');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(1, 124, '1', '0'),
(2, 124, '2', '0'),
(3, 124, '3', '0'),
(4, 124, '4', '0'),
(5, 125, '1', '0'),
(6, 125, '2', '0'),
(7, 125, '3', '0'),
(8, 125, '4', '0'),
(9, 126, '1', '0'),
(10, 126, '2', '0'),
(11, 126, '3', '0'),
(12, 126, '4', '0'),
(13, 127, '0', '0'),
(14, 127, '0', '0'),
(15, 127, '0', '0'),
(16, 127, '0', '0'),
(17, 128, '0', '0'),
(18, 128, '0', '0'),
(19, 128, '0', '0'),
(20, 128, '0', '0'),
(21, 129, '0', '0'),
(22, 129, '0', '0'),
(23, 129, '0', '0'),
(24, 129, '0', '0'),
(25, 130, '1', '0'),
(26, 130, '2', '0'),
(27, 130, '3', '0'),
(28, 130, '4', '0'),
(29, 132, '0', '0'),
(30, 132, '0', '0'),
(31, 132, '0', '0'),
(32, 132, '0', '0'),
(33, 133, '1', '0'),
(34, 133, '2', '0'),
(35, 133, '3', '0'),
(36, 133, '4', '0'),
(37, 134, '1', '0'),
(38, 134, '2', '0'),
(39, 134, '3', '0'),
(40, 134, '4', '0'),
(41, 135, '1', '0'),
(42, 135, '2', '0'),
(43, 135, '3', '0'),
(44, 135, '4', '0'),
(45, 137, '2', '0'),
(46, 137, '3', '0'),
(47, 137, '4', '0'),
(48, 137, '1', '0'),
(49, 140, '1', '0'),
(50, 140, '2', '0'),
(51, 140, '3', '0'),
(52, 140, '4', '0'),
(53, 142, '4', 'A'),
(54, 142, '5', 'B'),
(55, 142, '6', 'C'),
(56, 142, '7', 'D'),
(57, 143, '1', 'A'),
(58, 143, '2', 'B'),
(59, 143, '3', 'C'),
(60, 143, '4', 'D'),
(61, 145, '1', 'A'),
(62, 145, '2', 'B'),
(63, 145, '3', 'C'),
(64, 145, '4', 'D'),
(65, 148, '1', 'A'),
(66, 148, '2', 'B'),
(67, 148, '3', 'C'),
(68, 148, '4', 'D'),
(69, 150, '1', 'A'),
(70, 150, '2', 'B'),
(71, 150, '3', 'C'),
(72, 150, '4', 'D'),
(73, 151, 'yes', 'A'),
(74, 151, 'no', 'B'),
(75, 151, 'maybe', 'C'),
(76, 151, 'pwede ', 'D'),
(77, 154, 'a', 'A'),
(78, 154, 'b', 'B'),
(79, 154, ' v', 'C'),
(80, 154, 'dsf', 'D'),
(81, 156, '5', 'A'),
(82, 156, '190', 'B'),
(83, 156, '15', 'C'),
(84, 156, '2', 'D'),
(85, 158, '1', 'A'),
(86, 158, '2', 'B'),
(87, 158, '3', 'C'),
(88, 158, '4', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(1, 'admin/uploads/9061_File_defense lines.txt', '2147483647', '0', 24, 38, 'Assignment24'),
(4, 'admin/uploads/7960_File_defense lines.txt', '2022-01-26 11:48:26', 'aaa', 24, 38, 'Josel Mae Dona'),
(5, 'admin/uploads/6120_File_defense lines.txt', '2022-01-26 14:52:48', 'Josel', 24, 39, 'Josel'),
(6, 'admin/uploads/4878_File_Documentation.docx', '2022-01-26 14:53:10', 'lol', 24, 39, 'Mike D'),
(7, 'admin/uploads/8702_File_Mikeden.pdf', '2022-01-26 15:10:25', 'aaaa', 24, 39, 'resume ni mike'),
(8, 'admin/uploads/1071_File_defense lines.txt', '2022-01-27 20:07:31', 'aaaa', 24, 36, 'aaaa'),
(12, '../Admin/uploads/3085_File_defense lines.txt', '2022-01-27 20:34:35', 'ass', 24, 37, 'Assignment24'),
(13, '../Admin/uploads/7999_File_defense against.png', '2022-02-02 14:02:08', 'This is a sample', 24, 36, 'sample 2'),
(15, '../Admin/uploads/6744_File_defense lines.txt', '2022-02-07 13:57:35', 'Instructions to', 24, 42, 'Assignment24'),
(19, '../Admin/uploads/1462_File_241154456_1616864558666872_4550939384755739633_n.jpg', '2022-02-07 22:22:17', 'View the picture and define it in a sentence', 25, 45, 'Assignment24'),
(31, '../Admin/uploads/9462_File_WINDOWSCARD.jpg', '2022-02-14 12:58:28', 'Answers only. ', 24, 43, 'Answer the Following '),
(33, '../Admin/uploads/7591_File_lyle.docx', '2022-03-09 23:38:03', 'Description', 24, 62, 'Assign');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(25, 'Grade 1-A'),
(26, 'GRADE 2-A'),
(27, 'GRADE 3-B'),
(31, 'Grade 4-A'),
(32, 'Grade 5-A');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_id`) VALUES
(37, 42, 52),
(38, 43, 52);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(7, 6, 'hi'),
(24, 43, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(17, 'Start of Class', 43, '12/15/2021', '12/17/2021'),
(20, 'Exam week', 43, '12/15/2021', '12/17/2021'),
(21, 'Exam Day', 0, '03/20/2022', '03/21/22'),
(22, 'EXAM WEEK', 66, '11/12/2021', '11/13/2021');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(6896, '../Admin/uploads/2124_File_bir.docx', '2022-03-07 20:13:52', 'Read during weekends.', 24, 43, 'READ`', 'BrianSamiano'),
(6897, '../Admin/uploads/8196_File_lyle.docx', '2022-03-09 20:07:38', 'aw', 24, 62, 'images', 'BrianSamiano'),
(6898, '../Admin/uploads/3136_File_To BHC Administration.docx', '2022-03-09 20:12:19', 'dd', 24, 63, 'aaa', 'BrianSamiano'),
(6899, '../Admin/uploads/4661_File_php_tutorial.pdf', '2022-03-09 20:12:27', 'aa', 24, 63, 'Josel Mae Dona', 'BrianSamiano');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(17, 23, 'test', '2022-03-02 20:18:45', 24, 'Angela Cruz', 'Brian Samiano', ''),
(20, 25, 'hi', '2022-03-02 21:04:35', 24, 'Giovanni Caronan', 'Brian Samiano', ''),
(23, 25, 'test ', '2022-03-02 21:09:17', 24, 'Giovanni Caronan', 'Brian Samiano', ''),
(25, 25, 'test 2', '2022-03-02 22:28:12', 24, 'Giovanni Caronan', 'Brian Samiano', ''),
(27, 23, 'test', '2022-03-02 22:30:03', 24, 'Angela Cruz', 'Brian Samiano', ''),
(29, 23, 'Hello this is a message. JOSEL TESTING MESSAGE!!!', '2022-03-02 22:43:24', 24, 'Angela Cruz', 'Brian Samiano', ''),
(30, 25, 'This is another message! TEST TEST', '2022-03-02 22:51:57', 24, 'Giovanni Caronan', 'Brian Samiano', ''),
(31, 33, 'test', '2022-03-02 23:34:15', 24, 'Lyle Mejia', 'Brian Samiano', ''),
(32, 31, 'test student message', '2022-03-02 23:47:13', 24, 'Sean Francisco', 'Brian Samiano', ''),
(34, 19, 'test', '2022-03-02 23:48:32', 24, 'Marie Perello', 'Brian Samiano', ''),
(38, 31, 'test', '2022-03-03 00:21:12', 24, 'Sean Francisco', 'Brian Samiano', ''),
(41, 0, '', '2022-03-03 15:25:34', 24, '<br /><b>Notice</b>:  Undefined variable: sender_n', '<br />\r\n<b>Notice</b>:  Undefined variable: reciever_name in <b>C:xampphtdocsOnlineskwela2.0Teacher\reply_inbox_message.php</b> on line <b>39</b><br />\r\n', ''),
(43, 0, 'dfgh', '2022-03-03 22:27:03', 24, '<br /><b>Notice</b>:  Undefined variable: sender_n', '<br />\r\n<b>Notice</b>:  Undefined variable: reciever_name in <b>C:xampphtdocsOnlineskwela2.0Teacher\reply_inbox_message.php</b> on line <b>40</b><br />\r\n', ''),
(44, 0, ' xcvvs', '2022-03-03 22:28:08', 24, '<br /><b>Notice</b>:  Undefined variable: sender_n', '<br />\r\n<b>Notice</b>:  Undefined variable: reciever_name in <b>C:xampphtdocsOnlineskwela2.0Teacher\reply_inbox_message.php</b> on line <b>40</b><br />\r\n', ''),
(61, 44, 'test', '2022-03-03 23:39:11', 24, 'DelosReyes John  Francis', 'Brian Samiano', ''),
(63, 23, 'SAMPLE MESSAGE JOSEL ', '2022-03-07 20:15:30', 24, 'Angela Cruz', 'Brian Samiano', ''),
(64, 23, 'TEST', '2022-03-09 17:44:33', 24, 'Angela Cruz', 'Brian Samiano', ''),
(65, 23, 'NOTIF TEST', '2022-03-09 17:48:45', 24, 'Angela Cruz', 'Brian Samiano', ''),
(66, 41, 'lolo', '2022-03-09 17:54:29', 23, 'Josephine Bugay', 'Angela Cruz', 'read'),
(70, 23, 'hi', '2022-03-16 00:53:02', 35, 'Angela Cruz', 'Alvin Nunez', ''),
(74, 33, 'test student test\r\n', '2022-03-16 12:59:27', 24, 'Lyle Mejia', 'Brian Samiano', ''),
(80, 24, 'hi\r\n', '2022-03-20 22:51:12', 24, 'Brian Samiano', 'Brian Samiano', ''),
(81, 24, 'test', '2022-03-20 23:08:05', 35, 'Brian Samiano', 'Alvin Nunez', ''),
(82, 24, 'hi', '2022-04-02 14:48:13', 26, 'Brian Samiano', 'Alpha Arnedo', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(54, 24, 'TEST BRIAN TEST', '2022-03-03 23:26:17', 23, 'Brian Samiano', 'Angela Cruz'),
(66, 41, 'lolo', '2022-03-09 17:54:29', 23, 'Josephine Bugay', 'Angela Cruz'),
(67, 24, 'testtt', '2022-03-09 20:01:53', 41, 'Brian Samiano', 'Josephine Bugay'),
(74, 33, 'test student test\r\n', '2022-03-16 12:59:27', 24, 'Lyle Mejia', 'Brian Samiano'),
(79, 35, 'Alvinnn', '2022-03-16 20:31:19', 24, 'Alvin Nunez', 'Brian Samiano'),
(80, 24, 'hi\r\n', '2022-03-20 22:51:12', 24, 'Brian Samiano', 'Brian Samiano'),
(81, 24, 'test', '2022-03-20 23:08:06', 35, 'Brian Samiano', 'Alvin Nunez'),
(82, 24, 'hi', '2022-04-02 14:48:13', 26, 'Brian Samiano', 'Alpha Arnedo');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 35, 'yes', 29),
(2, 35, 'yes', 28),
(3, 35, 'yes', 30),
(4, 35, 'yes', 30),
(5, 35, 'yes', 29),
(6, 35, 'yes', 30),
(7, 35, 'yes', 29),
(8, 35, 'yes', 28),
(9, 35, 'yes', 32),
(10, 35, 'yes', 34),
(11, 35, 'yes', 34),
(12, 35, 'yes', 32),
(13, 35, 'yes', 35),
(14, 35, 'yes', 36),
(15, 35, 'yes', 37),
(16, 35, 'yes', 38),
(17, 35, 'yes', 39),
(18, 35, 'yes', 51),
(19, 35, 'yes', 50),
(20, 35, 'yes', 49),
(21, 35, 'yes', 48),
(22, 35, 'yes', 47),
(23, 35, 'yes', 46),
(24, 35, 'yes', 45),
(25, 35, 'yes', 44),
(26, 35, 'yes', 43),
(27, 35, 'yes', 42),
(28, 35, 'yes', 41),
(29, 35, 'yes', 40),
(30, 35, 'yes', 60),
(31, 35, 'yes', 59),
(32, 35, 'yes', 58),
(33, 35, 'yes', 56),
(34, 35, 'yes', 54),
(35, 35, 'yes', 53),
(36, 35, 'yes', 52),
(37, 35, 'yes', 62),
(38, 35, 'yes', 61),
(39, 35, 'yes', 63),
(40, 35, 'yes', 70),
(41, 35, 'yes', 69),
(42, 35, 'yes', 68),
(43, 35, 'yes', 67),
(44, 35, 'yes', 66),
(45, 35, 'yes', 65),
(46, 35, 'yes', 64),
(47, 35, 'yes', 100),
(48, 35, 'yes', 99);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(12, 24, 'yes', 1),
(13, 24, 'yes', 2),
(14, 24, 'yes', 3),
(15, 24, 'yes', 4),
(16, 24, 'yes', 5),
(17, 24, 'yes', 6),
(18, 24, 'yes', 7),
(19, 24, 'yes', 8),
(20, 24, 'yes', 9),
(21, 24, 'yes', 10),
(22, 24, 'yes', 11),
(23, 24, 'yes', 12),
(24, 24, 'yes', 13),
(25, 24, 'yes', 14),
(26, 24, 'yes', 15),
(27, 24, 'yes', 17),
(28, 24, 'yes', 18),
(29, 24, 'yes', 20),
(30, 24, 'yes', 19),
(31, 24, 'yes', 21);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(52, 'Quiz 1', 'Addition', '2022-02-16 21:04:52', 24);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(121, 1, '12', 1, 1, '', '2'),
(122, 0, 'What is an apple', 1, 0, '2022-02-04 14:38:50', 'A'),
(125, 29, '1 + 1 ', 1, 0, '2022-02-04 22:35:17', 'B'),
(126, 29, '2+ 2', 1, 0, '2022-02-04 22:35:50', 'D'),
(130, 31, '1 +1', 1, 0, '2022-02-07 14:20:27', 'B'),
(131, 31, 'Apple is 3 pcs?', 2, 0, '2022-02-07 14:21:17', 'True'),
(132, 32, 'Apelido ko?', 1, 0, '2022-02-07 16:46:32', 'A'),
(133, 35, '1 + 1', 1, 0, '2022-02-11 20:31:09', 'B'),
(134, 38, '1 / 1', 1, 0, '2022-02-13 21:50:44', 'A'),
(135, 38, '1 / 2', 1, 0, '2022-02-13 21:51:05', 'B'),
(136, 38, '10 / 2 = 5', 2, 0, '2022-02-13 21:51:31', 'True'),
(137, 39, '1/2 + 1/2', 1, 0, '2022-02-13 21:54:17', 'A'),
(138, 39, '3/4 is a fraction ', 2, 0, '2022-02-13 21:54:43', 'True'),
(139, 40, 'test ', 2, 0, '2022-02-13 22:07:43', 'False'),
(140, 40, 'test1', 1, 0, '2022-02-13 22:08:00', 'A'),
(141, 41, '1+1 = 2', 2, 0, '2022-02-13 22:23:33', 'True'),
(142, 41, '2+2', 1, 0, '2022-02-13 22:23:54', 'A'),
(143, 41, '1+5', 1, 0, '2022-02-13 22:24:23', 'D'),
(144, 41, '11 +2 = 4', 2, 0, '2022-02-13 22:24:38', 'False'),
(145, 42, '1+ 1', 1, 0, '2022-02-13 22:27:19', 'B'),
(146, 42, '2 + 2 = 5', 2, 0, '2022-02-13 22:27:29', 'False'),
(147, 42, '3 +3 = 6', 2, 0, '2022-02-13 22:27:47', 'True'),
(148, 43, 'test', 1, 0, '2022-02-13 22:35:49', 'A'),
(149, 43, 'test 2', 2, 0, '2022-02-13 22:35:57', 'False'),
(150, 43, 'test 3', 1, 0, '2022-02-13 22:36:09', 'C'),
(151, 44, 'Love ba ko ni Mike?', 1, 0, '2022-02-16 00:02:50', 'D'),
(152, 44, 'panget ba si mickey', 2, 0, '2022-02-16 00:03:06', 'True'),
(153, 44, 'test question', 2, 0, '2022-02-16 01:47:29', 'True'),
(154, 50, 'q1', 1, 0, '2022-02-16 16:41:59', 'C'),
(155, 51, '1/ 2 =3', 2, 0, '2022-02-16 17:12:06', 'False'),
(156, 51, '10 / 5', 1, 0, '2022-02-16 17:12:48', 'D'),
(157, 51, '200/ 2 = 20', 2, 0, '2022-02-16 20:23:20', 'True'),
(158, 52, '1 + 1', 1, 0, '2022-02-16 21:05:12', 'B'),
(159, 52, '1+3 = 4', 2, 0, '2022-02-16 21:07:58', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(2, '2020-2021'),
(3, '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(19, 'Marie', 'Perello', 25, '2001203', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(26, 'Alpha', 'Arnedo', 25, '2001201', 'alpha', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(27, 'Hazelyn', 'Marabe', 25, '2001202', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(28, 'Arnold', 'Campomanes', 25, '2001204', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(29, 'Coleen', 'Ylagan', 25, '2001205', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(30, 'Arthur', 'Clores', 26, '2001206', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(31, 'Sean', 'Francisco', 26, '2001207', 'sean', '../Admin/uploads/pic3.png', 'Registered'),
(32, 'Gabriella', 'Cabubas', 26, '2001208', 'gab', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(33, 'Lyle', 'Mejia', 26, '2001209', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(35, 'Alvin', 'Nunez', 26, '2001210', 'alvin', '../Admin/uploads/pic5.png', 'Registered'),
(36, 'John Michael', 'Tadipa', 27, '2001211', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(37, 'De Guzman', 'Levi', 27, '2001212', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(38, 'Jedh', 'Salodares', 27, '2001213', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(39, 'Maureen', 'Mau', 27, '2001214', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(40, 'Rod', 'Ednalaga', 27, '2001215', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(41, 'Josephine', 'Bugay', 31, '2001216', 'josephine', '../Admin/uploads/125883036_414517456341067_3567169727180059260_n.jpg', 'Registered'),
(42, 'Lloyd', 'Eleazar', 31, '2001217', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(43, 'Arnel', 'Sauza', 31, '2001218', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(44, 'John Francis', 'Delos Reyes', 31, '2001219', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(45, 'Alfred', 'Aquino', 31, '2001220', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(1, 30, '../Admin/uploads/4133_File_WIN_20210908_20_07_25_Pro.jpg', '2022-02-14 12:42:32', 'aaa', 'Assignment send', 35, ''),
(2, 30, '../Admin/uploads/9890_File_IMG_6146.jpg', '2022-02-14 12:49:53', 'test2 desc', 'test2', 35, ''),
(3, 30, '../Admin/uploads/7923_File_IMG_6146.jpg', '2022-02-14 12:49:54', 'test2 desc', 'test2', 35, ''),
(4, 30, '../Admin/uploads/6532_File_IMG_6146.jpg', '2022-02-14 12:49:55', 'test2 desc', 'test2', 35, ''),
(5, 30, '../Admin/uploads/1560_File_IMG_6146.jpg', '2022-02-14 12:49:57', 'test2 desc', 'test2', 35, ''),
(6, 30, '../Admin/uploads/6873_File_IMG_6146.jpg', '2022-02-14 12:49:58', 'test2 desc', 'test2', 35, ''),
(7, 30, '../Admin/uploads/6191_File_IMG_6146.jpg', '2022-02-14 12:49:58', 'test2 desc', 'test2', 35, ''),
(8, 30, '../Admin/uploads/9316_File_IMG_6146.jpg', '2022-02-14 12:49:59', 'test2 desc', 'test2', 35, ''),
(9, 30, '../Admin/uploads/1993_File_IMG_6146.jpg', '2022-02-14 12:49:59', 'test2 desc', 'test2', 35, ''),
(10, 30, '../Admin/uploads/6124_File_IMG_6146.jpg', '2022-02-14 12:49:59', 'test2 desc', 'test2', 35, ''),
(11, 30, '../Admin/uploads/2735_File_IMG_6146.jpg', '2022-02-14 12:49:59', 'test2 desc', 'test2', 35, ''),
(12, 29, '../Admin/uploads/2573_File_241154456_1616864558666872_4550939384755739633_n.jpg', '2022-02-14 12:52:55', 'ME', 'meME', 35, ''),
(13, 30, '../Admin/uploads/3977_File_241154456_1616864558666872_4550939384755739633_n.jpg', '2022-02-14 12:53:37', 'AAA', 'AAA', 35, ''),
(14, 31, '../Admin/uploads/9502_File_myassignment.txt', '2022-02-14 13:07:51', 'My assignment', 'Alvin Nunez', 35, '20'),
(15, 31, '../Admin/uploads/4309_File_My Grades.docx', '2022-02-14 13:30:34', 'assignment resubmit', 'Alvin Nunez', 35, '20'),
(16, 31, '../Admin/uploads/4578_File_JoselDonaCV.pdf', '2022-02-14 13:33:17', 'try 3', 'Assignment send', 35, '40'),
(17, 31, '../Admin/uploads/1083_File_2by2josel.png', '2022-02-14 13:36:03', 'send', 'try4', 35, '40'),
(18, 31, '../Admin/uploads/2032_File_2by2josel.png', '2022-02-14 14:07:44', 'asnswer', 'test5', 35, '20'),
(19, 32, '../Admin/uploads/7696_File_2by2josel.png', '2022-02-15 13:35:32', 'Assignment 1 Submitted by Aklvin', 'The picrture is  pretty', 35, '40'),
(20, 32, '../Admin/uploads/4533_File_2by2josel.png', '2022-02-15 13:35:33', 'Assignment 1 Submitted by Aklvin', 'The picrture is  pretty', 35, '20'),
(21, 33, '../Admin/uploads/4029_File_7591_File_lyle.docx', '2022-03-09 23:39:08', 'desc', 'Assignment send', 41, ''),
(22, 33, '../Admin/uploads/3574_File_7591_File_lyle.docx', '2022-03-09 23:39:11', 'desc', 'Assignment send', 41, '40');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(6895, '../Admin/uploads/2124_File_bir.docx', '2022-03-07 20:14:12', 'Read during weekends.', 35, 'READ`');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `Student_ID` int(50) NOT NULL,
  `Fullname` varchar(50) NOT NULL,
  `Grade` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `EmailAdd` varchar(50) NOT NULL,
  `PasswordEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`Student_ID`, `Fullname`, `Grade`, `Gender`, `EmailAdd`, `PasswordEmail`) VALUES
(1, 'saf', 'grade2', 'genderF', 'sdf', 'sdf'),
(2, 'josellllll', 'grade2', 'genderF', 'cvxsddsfdsf', 'dsfd'),
(3, 'josellllllsasd', 'grade2', 'genderF', 'cvxsddsfdsf', 'dsfd'),
(4, 'arthur', 'grade6', 'genderM', 'arthurclores', 'dsfd'),
(5, 'Ian Reloza', 'grade1', 'genderM', 'ian@reloza.com', 'qqq'),
(6, 'josel', 'grade1', 'genderM', 'dsffg', 'dfhh'),
(7, 'MIke Deniega', 'grade7', 'genderM', 'mikedeniega', 'mikepanget'),
(8, 'Quim Sonio', 'grade1', 'genderM', 'quimpoy@', '123'),
(9, 'Ian Reloza', 'grade5', 'genderM', 'Ianreloza@gmail.com', 'ianrelozaaa'),
(10, 'Josel', 'grade1', 'genderM', 'sdad', 'sfa'),
(11, 'Christian Reloza', 'grade3', 'genderM', 'ianreloza@gmail.com', 'lalala'),
(12, 'Christian Reloza', 'grade3', 'genderM', 'ianreloza@gmail.com', 'lalala'),
(13, 'Christian Reloza', 'grade3', 'genderM', 'ianreloza@gmail.com', 'lalala'),
(14, 'Christian Reloza', 'grade3', 'genderM', 'ianreloza@gmail.com', 'lalala'),
(15, 'Josel', 'grade1', 'genderM', 'sad', 'sad'),
(16, 'Josel', 'grade1', 'genderM', 'sad', 'sad'),
(20, 'Josel', 'grade1', 'genderM', 'sad', 'sad'),
(23, 'ian', 'grade1', 'Male', 'panget', 'panget'),
(24, 'ian', 'grade1', 'Male', 'panget', 'panget'),
(25, 'ian ian', 'grade3', 'Male', 'sfadaa', 'xxx'),
(26, 'Quim D. Sonio', 'grade7', 'Male', 'quin', 'popo'),
(27, 'JOSEL GANDA', 'grade6', 'Female', 'sad', 'qqq'),
(28, 'Ivan Buena', 'grade8', 'Female', 'ivanbuena@@@', 'sss'),
(29, 'gds', 'grade1', 'Male', 'zdf', 'dsf'),
(30, 'stud1', 'grade1', 'Male', 'stud1', '111'),
(31, 'aaa', 'grade3', 'Female', 'aaa', 'aaa'),
(32, '123', 'grade1', 'Male', '123', '123'),
(33, '123', 'grade1', 'Male', '123', '123'),
(34, 'QUIMMMMMMMMMMMMM', 'grade1', 'Male', 'QUIMMMMMMMMMMMMMMM', 'lolololo'),
(35, 'QUIMMMMMMMMMMMMM', 'grade1', 'Male', 'QUIMMMMMMMMMMMMMMM', 'lolololo'),
(36, 'test99', 'grade3', 'Male', '99', '99'),
(37, 'test99', 'grade8', 'Male', '99', '99'),
(38, 'test99', 'grade8', 'Male', '99', '99'),
(39, 'test99', 'grade8', 'Male', '99', '99'),
(40, 'test99', 'grade8', 'Male', '99', '99'),
(41, 'test99', 'grade7', 'Male', '99', '99'),
(42, 'test99', 'grade1', 'Male', '999', '999'),
(43, 'test99', 'grade4', 'Male', 'sdasds', 'sdadd'),
(44, 'aaaaa', 'grade1', 'Male', 'aaaaa', 'aaaa'),
(45, 'bbbbbbbbb', 'grade3', 'Female', 'bbbbbbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbb'),
(46, 'wwwwwwww', 'grade1', 'Male', '21100555', '123'),
(47, 'wwwwwwwwww', 'grade1', 'Male', '21100555', '123'),
(48, 'wwwwwwwwwwwwwwwwwwwwwwwwwww', 'grade1', 'Male', 'wwwwwwwwwwwwwwwwww', 'wwwwwwwwwwwwwwwwwwwwwwwwwwwww'),
(49, 'bbbbbbbbb', 'grade3', 'Female', 'bbbbbbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbb'),
(50, 'zzzzzzzzzz', 'grade1', 'Male', 'zzzzzzzzzzzzzzzzz', 'zzzzzzzzzzzzzzzzzzz'),
(51, 'zzzzzzzzzz', 'grade1', 'Male', 'zzzzzzzzzzzzzzzzz', 'zzzzzzzzzzzzzzzzzzz'),
(52, 'aaaaaaaaaaaaaaaaaa', 'grade1', 'genderM', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaa'),
(53, 'aaaaaaaaaaaaaaaaaa', 'grade1', 'genderM', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaa'),
(54, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'grade1', 'Male', 'aaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(55, 'test99', 'grade1', 'Male', 'ssssssssss', 'ssssssssssss'),
(56, 'SEAB', 'grade1', 'Male', 'seabseab', 'oyyyy'),
(57, 'SEAB', 'grade1', 'Male', 'seabseab', 'oyyyy'),
(58, 'ad', 'grade1', 'Male', 'sad', 'sad'),
(59, 'zzz', 'grade1', 'Male', 'zzz', 'zzz'),
(60, 'test99', 'grade2', 'Female', '000', '000'),
(61, 'test99', 'grade2', 'Female', '000', '000'),
(62, 'tadipaaa', 'grade1', 'Male', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(63, 'tadipaaa', 'grade1', 'Male', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(64, 'dddd', 'grade1', 'Male', 'dddd', 'dddd'),
(65, '', '', '', '', ''),
(66, '', '', '', '', ''),
(67, 'dddd', 'grade1', 'Male', 'dddd', 'dddd'),
(68, 'dddd', 'grade1', 'Male', 'dddd', 'dddd'),
(69, 'test99', 'grade1', 'Male', '99', '99'),
(70, 'test99', 'grade1', 'Male', '99', '99'),
(71, 'test99', 'grade1', 'Male', '99', '99999999'),
(72, 'v', 'grade1', 'Male', 'v', 'v'),
(73, 's', 'grade1', 'Male', 's', 's'),
(74, 'ss', 'grade1', 'Male', 'ss', 'ss'),
(75, 'ssssss', 'grade1', 'Male', 'ssssssssss', 'sssssssssssssss'),
(76, 'aaa', 'grade1', 'Male', 'bbb', 'ccc');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) CHARACTER SET latin1 NOT NULL,
  `subject_title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`) VALUES
(21, 'Math101', 'Math for Grade 1', '', '																										Additon, Subtraction																										'),
(24, 'Math 201', 'Math for Grade 2', '', 'Multiplication, Division'),
(25, 'Math 301', 'Math for Grade 3', '', 'Fractions'),
(26, 'Math 401', 'Math for Grade 4', '', 'Decimals'),
(27, 'Math 501', 'Math for Grade 5', '', 'Fractions and Decimals'),
(28, 'Math 601', 'Math for Grade 6', '', 'Word Problems');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `firstname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `employeeID` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `employeeID`, `location`, `teacher_status`, `teacher_stat`) VALUES
(23, 'angelacruz', 'angela', 'Angela', 'Cruz', 101, '', 'Registered', ''),
(24, 'briansamiano', 'brian', 'Brian', 'Samiano', 102, '../Admin/uploads/teacher3.jpg', 'Registered', ''),
(25, 'giocaronan', 'gio', 'Giovanni', 'Caronan', 103, '../Admin/uploads/IMG_6146.jpg', 'Registered', ''),
(26, 'janette@gmail.com', 'janette', 'Janette', 'Ambito', 104, '', 'Registered', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_backpack`
--

INSERT INTO `teacher_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `fname`) VALUES
(12, '../Admin/uploads/8196_File_lyle.docx', '2022-03-09 20:10:29', 'aw', 24, 'images'),
(13, '../Admin/uploads/4661_File_php_tutorial.pdf', '2022-03-09 20:12:32', 'aa', 24, 'Josel Mae Dona'),
(14, '../Admin/uploads/8196_File_lyle.docx', '2022-03-09 20:30:43', 'aw', 24, 'images');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(45, 25, 31, 26, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(53, 25, 26, 24, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(66, 24, 26, 24, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(67, 24, 25, 25, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(68, 24, 31, 25, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(69, 26, 25, 25, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(70, 23, 26, 26, 'admin/uploads/thumbnails.jpg', '2020-2021');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(9, 27, 19, 24),
(10, 28, 33, 24),
(11, 28, 31, 24),
(12, 28, 32, 24),
(13, 35, 30, 24),
(14, 35, 31, 24),
(15, 35, 32, 24),
(16, 35, 33, 24),
(17, 35, 35, 24),
(56, 45, 41, 25),
(57, 45, 42, 25),
(58, 45, 43, 25),
(59, 45, 44, 25),
(86, 45, 45, 25),
(87, 53, 30, 25),
(88, 53, 31, 25),
(89, 53, 32, 25),
(90, 53, 33, 25),
(91, 53, 35, 25),
(138, 66, 30, 24),
(139, 66, 31, 24),
(140, 66, 32, 24),
(141, 66, 33, 24),
(142, 66, 35, 24),
(143, 67, 19, 24),
(144, 67, 26, 24),
(145, 67, 27, 24),
(146, 67, 28, 24),
(147, 67, 29, 24),
(148, 68, 41, 24),
(149, 68, 42, 24),
(150, 68, 43, 24),
(151, 68, 44, 24),
(152, 68, 45, 24),
(153, 69, 19, 26),
(154, 69, 26, 26),
(155, 69, 27, 26),
(156, 69, 28, 26),
(157, 69, 29, 26),
(158, 70, 30, 23),
(159, 70, 31, 23),
(160, 70, 32, 23),
(161, 70, 33, 23),
(162, 70, 35, 23);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `firstname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(2, 'quimsonio', 'quim', 'Quim', 'Sonio'),
(5, 'joseldona', 'josel', 'Josel', 'Dona'),
(6, 'ianreloza', 'ian', 'Ian', 'Reloza'),
(7, 'markaquino', 'mark', 'Mark', 'Aquino'),
(8, 'ivanbuena', 'ivan', 'Ivan', 'Buena');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `user_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`user_id`, `Name`, `Email`, `Password`) VALUES
(1, 'Josel Dona', '21100555', 123),
(2, 'Sean', 'sean@yahoo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(5, 'joseldona', '2022-01-16 19:44:06', '2022-04-14 21:25:17', 5),
(6, 'markaquino', '2022-01-16 19:45:39', '2022-01-16 21:34:53', 7),
(7, 'markaquino', '2022-01-16 19:51:38', '2022-01-16 21:34:53', 7),
(8, 'markaquino', '2022-01-16 21:17:41', '2022-01-16 21:34:53', 7),
(9, 'markaquino', '2022-01-16 21:18:15', '2022-01-16 21:34:53', 7),
(10, 'markaquino', '2022-01-16 21:18:27', '2022-01-16 21:34:53', 7),
(11, 'joseldona', '2022-01-16 21:19:33', '2022-04-14 21:25:17', 5),
(12, 'ianreloza', '2022-01-16 21:20:34', '2022-01-16 22:45:02', 6),
(13, 'markaquino', '2022-01-16 21:22:16', '2022-01-16 21:34:53', 7),
(14, 'ianreloza', '2022-01-16 21:29:49', '2022-01-16 22:45:02', 6),
(15, 'joseldona', '2022-01-16 22:18:58', '2022-04-14 21:25:17', 5),
(16, 'ianreloza', '2022-01-16 22:19:28', '2022-01-16 22:45:02', 6),
(17, 'joseldona', '2022-01-16 22:43:10', '2022-04-14 21:25:17', 5),
(18, 'quimsonio', '2022-01-16 22:43:50', '2022-01-19 13:58:00', 2),
(19, 'ianreloza', '2022-01-16 22:44:07', '2022-01-16 22:45:02', 6),
(20, 'joseldona', '2022-01-16 22:45:07', '2022-04-14 21:25:17', 5),
(21, 'quimsonio', '2022-01-16 22:45:16', '2022-01-19 13:58:00', 2),
(22, 'markaquino', '2022-01-16 22:45:29', '', 7),
(23, 'ivanbuena', '2022-01-16 22:46:37', '2022-02-07 17:02:36', 8),
(24, 'joseldona', '2022-01-16 23:24:03', '2022-04-14 21:25:17', 5),
(25, 'ianreloza', '2022-01-16 23:43:13', '', 6),
(26, 'joseldona', '2022-01-16 23:49:06', '2022-04-14 21:25:17', 5),
(27, 'ianreloza', '2022-01-16 23:49:47', '', 6),
(28, 'ivanbuena', '2022-01-16 23:50:54', '2022-02-07 17:02:36', 8),
(29, 'joseldona', '2022-01-16 23:55:59', '2022-04-14 21:25:17', 5),
(30, 'joseldona', '2022-01-17 00:00:34', '2022-04-14 21:25:17', 5),
(31, 'joseldona', '2022-01-17 00:15:48', '2022-04-14 21:25:17', 5),
(32, 'joseldona', '2022-01-17 00:17:27', '2022-04-14 21:25:17', 5),
(33, 'joseldona', '2022-01-17 00:17:27', '2022-04-14 21:25:17', 5),
(34, 'markaquino', '2022-01-17 00:17:54', '', 7),
(35, 'markaquino', '2022-01-17 00:20:47', '', 7),
(36, 'joseldona', '2022-01-17 01:05:01', '2022-04-14 21:25:17', 5),
(37, 'joseldona', '2022-01-17 01:21:34', '2022-04-14 21:25:17', 5),
(38, 'markaquino', '2022-01-17 12:12:45', '', 7),
(39, 'joseldona', '2022-01-17 12:37:15', '2022-04-14 21:25:17', 5),
(40, 'joseldona', '2022-01-17 12:39:49', '2022-04-14 21:25:17', 5),
(41, 'markaquino', '2022-01-17 13:09:52', '', 7),
(42, 'joseldona', '2022-01-17 13:18:24', '2022-04-14 21:25:17', 5),
(43, 'joseldona', '2022-01-17 13:27:55', '2022-04-14 21:25:17', 5),
(44, 'joseldona', '2022-01-17 13:38:09', '2022-04-14 21:25:17', 5),
(45, 'joseldona', '2022-01-17 13:40:12', '2022-04-14 21:25:17', 5),
(46, 'joseldona', '2022-01-17 14:04:00', '2022-04-14 21:25:17', 5),
(47, 'joseldona', '2022-01-18 20:03:27', '2022-04-14 21:25:17', 5),
(48, 'quimsonio', '2022-01-19 13:44:41', '2022-01-19 13:58:00', 2),
(49, 'joseldona', '2022-01-19 13:58:04', '2022-04-14 21:25:17', 5),
(50, 'ivanbuena', '2022-01-19 13:58:42', '2022-02-07 17:02:36', 8),
(51, 'quimsonio', '2022-01-19 14:12:39', '', 2),
(52, 'joseldona', '2022-01-19 14:26:00', '2022-04-14 21:25:17', 5),
(53, 'joseldona', '2022-01-19 20:48:09', '2022-04-14 21:25:17', 5),
(54, 'joseldona', '2022-01-19 23:12:40', '2022-04-14 21:25:17', 5),
(55, 'markaquino', '2022-01-20 00:05:20', '', 7),
(56, 'joseldona', '2022-01-20 00:12:21', '2022-04-14 21:25:17', 5),
(57, 'joseldona', '2022-01-20 11:12:18', '2022-04-14 21:25:17', 5),
(58, 'joseldona', '2022-01-20 11:18:26', '2022-04-14 21:25:17', 5),
(59, 'joseldona', '2022-01-20 13:01:31', '2022-04-14 21:25:17', 5),
(60, 'quimsonio', '2022-01-20 13:45:33', '', 2),
(61, 'joseldona', '2022-01-23 11:36:32', '2022-04-14 21:25:17', 5),
(62, 'ianreloza', '2022-01-24 01:24:59', '', 6),
(63, 'joseldona', '2022-01-24 12:23:53', '2022-04-14 21:25:17', 5),
(64, 'joseldona', '2022-01-24 22:07:10', '2022-04-14 21:25:17', 5),
(65, 'joseldona', '2022-01-27 21:33:34', '2022-04-14 21:25:17', 5),
(66, 'joseldona', '2022-02-05 23:24:44', '2022-04-14 21:25:17', 5),
(67, 'joseldona', '2022-02-06 18:05:58', '2022-04-14 21:25:17', 5),
(68, 'joseldona', '2022-02-07 13:58:56', '2022-04-14 21:25:17', 5),
(69, 'ivanbuena', '2022-02-07 15:45:40', '2022-02-07 17:02:36', 8),
(70, 'ianreloza', '2022-02-07 17:08:59', '', 6),
(71, 'joseldona', '2022-02-07 22:23:11', '2022-04-14 21:25:17', 5),
(72, 'joseldona', '2022-02-09 19:24:55', '2022-04-14 21:25:17', 5),
(73, 'markaquino', '2022-02-15 13:27:53', '', 7),
(74, 'joseldona', '2022-02-16 00:48:42', '2022-04-14 21:25:17', 5),
(75, 'joseldona', '2022-02-18 00:10:52', '2022-04-14 21:25:17', 5),
(76, 'joseldona', '2022-02-22 11:28:04', '2022-04-14 21:25:17', 5),
(77, 'joseldona', '2022-02-26 23:19:13', '2022-04-14 21:25:17', 5),
(78, 'joseldona', '2022-03-08 19:15:37', '2022-04-14 21:25:17', 5),
(79, 'joseldona', '2022-03-21 20:02:34', '2022-04-14 21:25:17', 5),
(80, 'joseldona', '2022-04-02 11:56:50', '2022-04-14 21:25:17', 5),
(81, 'joseldona', '2022-04-04 21:07:12', '2022-04-14 21:25:17', 5),
(82, 'joseldona', '2022-04-14 21:19:33', '2022-04-14 21:25:17', 5),
(83, 'joseldona', '2022-04-15 00:49:22', '', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6900;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6900;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `Student_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
