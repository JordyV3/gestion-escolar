-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-09-2022 a las 02:44:42
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activities`
--

CREATE TABLE `activities` (
  `activitiesID` int(11) NOT NULL,
  `activitiescategoryID` int(11) NOT NULL,
  `description` text NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `time_to` varchar(40) DEFAULT NULL,
  `time_from` varchar(40) DEFAULT NULL,
  `time_at` varchar(40) DEFAULT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activitiescategory`
--

CREATE TABLE `activitiescategory` (
  `activitiescategoryID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fa_icon` varchar(40) DEFAULT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activitiescomment`
--

CREATE TABLE `activitiescomment` (
  `activitiescommentID` int(11) NOT NULL,
  `activitiesID` int(11) NOT NULL,
  `comment` text NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activitiesmedia`
--

CREATE TABLE `activitiesmedia` (
  `activitiesmediaID` int(11) NOT NULL,
  `activitiesID` int(11) NOT NULL,
  `attachment` text NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activitiesstudent`
--

CREATE TABLE `activitiesstudent` (
  `activitiesstudentID` int(11) NOT NULL,
  `activitiesID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alert`
--

CREATE TABLE `alert` (
  `alertID` int(11) UNSIGNED NOT NULL,
  `itemID` int(128) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `itemname` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alert`
--

INSERT INTO `alert` (`alertID`, `itemID`, `userID`, `usertypeID`, `itemname`) VALUES
(1, 1, 1, 1, 'message'),
(2, 2, 1, 1, 'message'),
(3, 3, 1, 1, 'message'),
(4, 4, 1, 1, 'message'),
(5, 1, 1, 1, 'notice'),
(6, 1, 1, 1, 'holiday'),
(7, 1, 1, 1, 'event'),
(8, 2, 1, 1, 'event'),
(9, 3, 1, 1, 'event'),
(10, 1, 1, 1, 'mark'),
(11, 2, 1, 1, 'mark'),
(12, 3, 1, 1, 'mark'),
(13, 4, 1, 1, 'mark'),
(14, 5, 1, 1, 'mark'),
(15, 6, 1, 1, 'mark'),
(16, 7, 1, 1, 'mark'),
(17, 8, 1, 1, 'mark'),
(18, 9, 1, 1, 'mark'),
(19, 10, 1, 1, 'mark'),
(20, 11, 1, 1, 'mark'),
(21, 12, 1, 1, 'mark'),
(22, 13, 1, 1, 'mark'),
(23, 14, 1, 1, 'mark'),
(24, 15, 1, 1, 'mark'),
(25, 16, 1, 1, 'mark'),
(26, 17, 1, 1, 'mark'),
(27, 18, 1, 1, 'mark');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asset`
--

CREATE TABLE `asset` (
  `assetID` int(11) NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `description` text COMMENT 'Title',
  `manufacturer` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `asset_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `asset_condition` int(11) DEFAULT NULL,
  `attachment` text,
  `originalfile` text,
  `asset_categoryID` int(11) DEFAULT NULL,
  `asset_locationID` int(11) DEFAULT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asset_assignment`
--

CREATE TABLE `asset_assignment` (
  `asset_assignmentID` int(11) NOT NULL,
  `assetID` int(11) NOT NULL COMMENT 'Description and title',
  `usertypeID` int(11) DEFAULT NULL,
  `check_out_to` int(11) NOT NULL,
  `due_date` date DEFAULT NULL,
  `note` text,
  `assigned_quantity` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `asset_locationID` int(11) DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asset_category`
--

CREATE TABLE `asset_category` (
  `asset_categoryID` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assignment`
--

CREATE TABLE `assignment` (
  `assignmentID` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `deadlinedate` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text NOT NULL,
  `classesID` longtext NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `sectionID` longtext,
  `subjectID` longtext,
  `assignusertypeID` int(11) DEFAULT NULL,
  `assignuserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `assignment`
--

INSERT INTO `assignment` (`assignmentID`, `title`, `description`, `deadlinedate`, `usertypeID`, `userID`, `originalfile`, `file`, `classesID`, `schoolyearID`, `sectionID`, `subjectID`, `assignusertypeID`, `assignuserID`) VALUES
(1, 'Prácticas de matemáticas', 'Sumas y Restas', '2022-08-16', 1, 1, '', '', '2', 1, 'null', '18', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assignmentanswer`
--

CREATE TABLE `assignmentanswer` (
  `assignmentanswerID` int(11) NOT NULL,
  `assignmentID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `uploaderID` int(11) NOT NULL,
  `uploadertypeID` int(11) NOT NULL,
  `answerfile` text NOT NULL,
  `answerfileoriginal` text NOT NULL,
  `answerdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance`
--

CREATE TABLE `attendance` (
  `attendanceID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(60) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `attendance`
--

INSERT INTO `attendance` (`attendanceID`, `schoolyearID`, `studentID`, `classesID`, `sectionID`, `userID`, `usertype`, `monthyear`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `a11`, `a12`, `a13`, `a14`, `a15`, `a16`, `a17`, `a18`, `a19`, `a20`, `a21`, `a22`, `a23`, `a24`, `a25`, `a26`, `a27`, `a28`, `a29`, `a30`, `a31`) VALUES
(1, 1, 2, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'LE', 'L', 'A', NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(2, 1, 4, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, 'P', NULL, NULL, 'LE', 'L', 'P', NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(3, 1, 1, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, 'LE', NULL, NULL, 'LE', 'L', 'P', NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(4, 1, 3, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, 'L', NULL, NULL, 'LE', 'L', 'P', NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, NULL),
(5, 1, 5, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(6, 1, 6, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(7, 1, 8, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(8, 1, 9, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(9, 1, 10, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(10, 1, 11, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(11, 1, 12, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(12, 1, 13, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(13, 1, 14, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(14, 1, 15, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(15, 1, 16, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(16, 1, 17, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, NULL),
(17, 1, 18, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL),
(18, 1, 7, 2, 1, 1, 'Admin', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(19, 1, 2, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, 4, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1, 5, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, 6, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1, 8, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, 9, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 1, 10, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 1, 11, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 1, 1, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 1, 12, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 1, 13, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 1, 14, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 1, 15, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 1, 16, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 1, 17, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 1, 18, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 1, 3, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 1, 7, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 1, 19, 2, 1, 8, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 1, 21, 2, 7, 20, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 1, 23, 2, 7, 20, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 1, 22, 2, 7, 20, 'Docente', '09-2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automation_rec`
--

CREATE TABLE `automation_rec` (
  `automation_recID` int(11) UNSIGNED NOT NULL,
  `studentID` int(11) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL,
  `nofmodule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automation_shudulu`
--

CREATE TABLE `automation_shudulu` (
  `automation_shuduluID` int(11) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `day` varchar(3) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `automation_shudulu`
--

INSERT INTO `automation_shudulu` (`automation_shuduluID`, `date`, `day`, `month`, `year`) VALUES
(1, '0000-00-00', '03', '09', 2022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book`
--

CREATE TABLE `book` (
  `bookID` int(11) UNSIGNED NOT NULL,
  `book` varchar(60) NOT NULL,
  `subject_code` tinytext NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `due_quantity` int(11) NOT NULL,
  `rack` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) UNSIGNED NOT NULL,
  `hostelID` int(11) NOT NULL,
  `class_type` varchar(60) NOT NULL,
  `hbalance` varchar(20) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificate_template`
--

CREATE TABLE `certificate_template` (
  `certificate_templateID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `theme` int(11) NOT NULL,
  `top_heading_title` text,
  `top_heading_left` text,
  `top_heading_right` text,
  `top_heading_middle` text,
  `main_middle_text` text NOT NULL,
  `template` text NOT NULL,
  `footer_left_text` text,
  `footer_right_text` text,
  `footer_middle_text` text,
  `background_image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `childcare`
--

CREATE TABLE `childcare` (
  `childcareID` int(11) NOT NULL,
  `dropped_at` datetime DEFAULT NULL,
  `received_at` datetime DEFAULT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `parentID` int(11) NOT NULL,
  `signature` text,
  `classesID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `comment` text,
  `received_status` int(11) NOT NULL DEFAULT '0',
  `receiver_name` varchar(40) NOT NULL,
  `phone` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classes`
--

CREATE TABLE `classes` (
  `classesID` int(11) UNSIGNED NOT NULL,
  `classes` varchar(60) NOT NULL,
  `classes_numeric` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `studentmaxID` int(11) DEFAULT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `classes`
--

INSERT INTO `classes` (`classesID`, `classes`, `classes_numeric`, `teacherID`, `studentmaxID`, `note`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(2, 'PRIMERO PRIMARIA', 1, 20, 999999999, '', '2022-08-03 02:29:15', '2022-08-19 04:40:03', 1, 'admin', 'Admin'),
(3, 'SEGUNDO PRIMARIA', 2, 8, 999999999, '', '2022-08-03 02:29:15', '2022-08-16 10:53:26', 1, 'admin', 'Admin'),
(4, 'TERCERO PRIMARIA', 3, 8, 999999999, '', '2022-08-03 02:29:15', '2022-08-16 10:56:14', 1, 'admin', 'Admin'),
(5, 'CUARTO DE PRIMARIA', 4, 8, 999999999, '', '2022-08-03 02:29:15', '2022-08-16 10:57:57', 1, 'admin', 'Admin'),
(8, 'QUINTO PRIMARIA', 5, 4, 999999999, '', '2022-08-03 02:29:15', '2022-08-16 10:58:13', 1, 'admin', 'Admin'),
(9, 'SEXTO PRIMARIA', 6, 8, 999999999, '', '2022-08-03 02:29:15', '2022-08-16 10:58:23', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complain`
--

CREATE TABLE `complain` (
  `complainID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `schoolyearID` int(11) DEFAULT NULL,
  `description` text,
  `attachment` text,
  `originalfile` text,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversation_message_info`
--

CREATE TABLE `conversation_message_info` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  `draft` int(11) DEFAULT '0',
  `fav_status` int(11) DEFAULT '0',
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversation_msg`
--

CREATE TABLE `conversation_msg` (
  `msg_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `msg` text NOT NULL,
  `attach` text,
  `attach_file_name` text,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `start` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversation_user`
--

CREATE TABLE `conversation_user` (
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `is_sender` int(11) DEFAULT '0',
  `trash` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document`
--

CREATE TABLE `document` (
  `documentID` int(11) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 NOT NULL,
  `file` varchar(200) CHARACTER SET utf8 NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eattendance`
--

CREATE TABLE `eattendance` (
  `eattendanceID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `date` date NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `eattendance` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `eextra` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ebooks`
--

CREATE TABLE `ebooks` (
  `ebooksID` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 NOT NULL,
  `classesID` int(11) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT '0',
  `cover_photo` varchar(200) CHARACTER SET utf8 NOT NULL,
  `file` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emailsetting`
--

CREATE TABLE `emailsetting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `emailsetting`
--

INSERT INTO `emailsetting` (`fieldoption`, `value`) VALUES
('email_engine', 'sendmail'),
('smtp_password', ''),
('smtp_port', ''),
('smtp_security', ''),
('smtp_server', ''),
('smtp_username', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event`
--

CREATE TABLE `event` (
  `eventID` int(11) UNSIGNED NOT NULL,
  `fdate` date NOT NULL,
  `ftime` time NOT NULL,
  `tdate` date NOT NULL,
  `ttime` time NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventcounter`
--

CREATE TABLE `eventcounter` (
  `eventcounterID` int(11) UNSIGNED NOT NULL,
  `eventID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exam`
--

CREATE TABLE `exam` (
  `examID` int(11) UNSIGNED NOT NULL,
  `exam` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examschedule`
--

CREATE TABLE `examschedule` (
  `examscheduleID` int(11) UNSIGNED NOT NULL,
  `examID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `edate` date NOT NULL,
  `examfrom` varchar(10) NOT NULL,
  `examto` varchar(10) NOT NULL,
  `room` tinytext,
  `schoolyearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expense`
--

CREATE TABLE `expense` (
  `expenseID` int(11) UNSIGNED NOT NULL,
  `create_date` date NOT NULL,
  `date` date NOT NULL,
  `expenseday` varchar(11) NOT NULL,
  `expensemonth` varchar(11) NOT NULL,
  `expenseyear` year(4) NOT NULL,
  `expense` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `file` varchar(200) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feetypes`
--

CREATE TABLE `feetypes` (
  `feetypesID` int(11) UNSIGNED NOT NULL,
  `feetypes` varchar(60) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fmenu`
--

CREATE TABLE `fmenu` (
  `fmenuID` int(11) NOT NULL,
  `menu_name` varchar(128) NOT NULL,
  `status` int(11) NOT NULL COMMENT 'Only for active',
  `topbar` int(11) NOT NULL,
  `social` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fmenu`
--

INSERT INTO `fmenu` (`fmenuID`, `menu_name`, `status`, `topbar`, `social`) VALUES
(1, 'header', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fmenu_relation`
--

CREATE TABLE `fmenu_relation` (
  `fmenu_relationID` int(11) NOT NULL,
  `fmenuID` int(11) DEFAULT NULL,
  `menu_typeID` int(11) DEFAULT NULL COMMENT '1 => Pages, 2 => Post, 3 => Links',
  `menu_parentID` varchar(128) DEFAULT NULL,
  `menu_orderID` int(11) DEFAULT NULL,
  `menu_pagesID` int(11) DEFAULT NULL,
  `menu_label` varchar(254) DEFAULT NULL,
  `menu_link` text NOT NULL,
  `menu_rand` varchar(128) DEFAULT NULL,
  `menu_rand_parentID` varchar(128) DEFAULT NULL,
  `menu_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fmenu_relation`
--

INSERT INTO `fmenu_relation` (`fmenu_relationID`, `fmenuID`, `menu_typeID`, `menu_parentID`, `menu_orderID`, `menu_pagesID`, `menu_label`, `menu_link`, `menu_rand`, `menu_rand_parentID`, `menu_status`) VALUES
(77, 1, 1, '0', 1, 1, 'Inicio', '#', 'f01522cd1db3a1cb1ebc1a45517cf8ad', '0', 1),
(78, 1, 1, '0', 2, 9, 'Blog', '#', '045696bc8e7d2fc782c1253aa99bcd4b', '0', 1),
(79, 1, 1, '0', 3, 5, 'Evento', '#', 'e63b0d31559914103de5701935c52374', '0', 1),
(80, 1, 1, '0', 4, 6, 'Profesor', '#', '3bf7c73f58c87af6ca250ecf71de99e5', '0', 1),
(81, 1, 1, '0', 5, 3, 'Contacto', '#', '6be641d77b2683c11cea869df581e0af', '0', 1),
(82, 1, 1, '0', 6, 4, 'Acerca De', '#', 'd56b948dc0a3ef8803b66a51e8d66ef9', '0', 1),
(83, 1, 3, '0', 7, 25304163, 'Login', 'http://192.168.0.108/gestion-escolar/signin/index', '00f250f01906373db32586f8b9dd6bcf', '0', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frontend_setting`
--

CREATE TABLE `frontend_setting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `frontend_setting`
--

INSERT INTO `frontend_setting` (`fieldoption`, `value`) VALUES
('description', ''),
('facebook', 'https://facebook.com/'),
('linkedin', ''),
('login_menu_status', '1'),
('online_admission_status', '0'),
('pinterest', 'https://pinterest.com/'),
('teacher_email_status', '0'),
('teacher_phone_status', '0'),
('twitter', 'https://twitter.com/'),
('youtube', 'https://youtube.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frontend_template`
--

CREATE TABLE `frontend_template` (
  `frontend_templateID` int(11) NOT NULL,
  `template_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `frontend_template`
--

INSERT INTO `frontend_template` (`frontend_templateID`, `template_name`) VALUES
(1, 'home'),
(2, 'about'),
(3, 'event'),
(4, 'teacher'),
(5, 'gallery'),
(6, 'notice'),
(7, 'blog'),
(8, 'contact'),
(9, 'admission');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `globalpayment`
--

CREATE TABLE `globalpayment` (
  `globalpaymentID` int(11) NOT NULL,
  `classesID` int(11) DEFAULT NULL,
  `sectionID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `clearancetype` varchar(40) NOT NULL,
  `invoicename` varchar(128) NOT NULL,
  `invoicedescription` varchar(128) NOT NULL,
  `paymentyear` varchar(5) NOT NULL,
  `schoolyearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grade`
--

CREATE TABLE `grade` (
  `gradeID` int(11) UNSIGNED NOT NULL,
  `grade` varchar(60) NOT NULL,
  `point` varchar(11) NOT NULL,
  `gradefrom` int(11) NOT NULL,
  `gradeupto` int(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grade`
--

INSERT INTO `grade` (`gradeID`, `grade`, `point`, `gradefrom`, `gradeupto`, `note`) VALUES
(1, 'APROBADO', '0', 51, 100, ''),
(2, 'NORMAL', '0.5', 11, 50, ''),
(3, 'REPROBADO', '5', 5, 10, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hmember`
--

CREATE TABLE `hmember` (
  `hmemberID` int(11) UNSIGNED NOT NULL,
  `hostelID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `hbalance` varchar(20) DEFAULT NULL,
  `hjoindate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `holiday`
--

CREATE TABLE `holiday` (
  `holidayID` int(11) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` text NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `holiday`
--

INSERT INTO `holiday` (`holidayID`, `schoolyearID`, `fdate`, `tdate`, `title`, `details`, `photo`, `create_date`, `create_userID`, `create_usertypeID`) VALUES
(1, 1, '2022-10-01', '2019-11-06', 'VACACIONES DE FIN DE AÑO', 'VACACIONES PARA TODOS<br>', 'holiday.png', '2022-04-06 19:03:27', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hostel`
--

CREATE TABLE `hostel` (
  `hostelID` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `htype` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hourly_template`
--

CREATE TABLE `hourly_template` (
  `hourly_templateID` int(11) NOT NULL,
  `hourly_grades` varchar(128) NOT NULL,
  `hourly_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idmanager`
--

CREATE TABLE `idmanager` (
  `idmanagerID` int(11) NOT NULL,
  `schooltype` varchar(20) NOT NULL,
  `idtitle` varchar(128) NOT NULL,
  `idtype` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `idmanager`
--

INSERT INTO `idmanager` (`idmanagerID`, `schooltype`, `idtitle`, `idtype`) VALUES
(1, 'semesterbase', 'Year+Semester Code+Department Code+Student Max ID', 'schoolyear+semestercode+classes_numeric+studentmaxID'),
(2, 'semesterbase', 'Year+Department Code+Semester Code+Student Max ID', 'schoolyear+classes_numeric+semestercode+studentmaxID'),
(3, 'semesterbase', 'Year+Semester Code+Student Max ID', 'schoolyear+semestercode+studentmaxID'),
(4, 'semesterbase', 'Year+Department Code+Student Max ID', 'schoolyear+classes_numeric+studentmaxID'),
(5, 'semesterbase', 'Student Max ID+Year+Semester Code+Department Code', 'studentmaxID+schoolyear+semestercode+classes_numeric'),
(6, 'semesterbase', 'Student Max ID+Semester Code+Department Code+Year', 'studentmaxID+semestercode+classes_numeric+schoolyear'),
(7, 'semesterbase', 'Student Max ID+Semester Code+Department Code', 'studentmaxID+semestercode+classes_numeric'),
(8, 'semesterbase', 'Student Max ID+Department Code+Semester Code', 'studentmaxID+classes_numeric+semestercode'),
(9, 'semesterbase', 'Semester Code+Department Code+Student Max ID', 'semestercode+classes_numeric+studentmaxID'),
(10, 'semesterbase', 'Department Code+Semester Code+Student Max ID', 'classes_numeric+semestercode+studentmaxID'),
(11, 'semesterbase', 'Semester Code+Student Max ID', 'semestercode+studentmaxID'),
(12, 'semesterbase', 'Department Code+Student Max ID', 'classes_numeric+studentmaxID'),
(13, 'semesterbase', 'Student Max ID', 'studentmaxID'),
(14, 'classbase', 'Year+Class Numeric+Student Max ID', 'schoolyear+classes_numeric+studentmaxID'),
(15, 'Classbase', 'Class Numeric+Year+Student Max ID', 'classes_numeric+schoolyear+studentmaxID'),
(16, 'classbase', 'Year+Student Max ID', 'schoolyear+studentmaxID'),
(17, 'classbase', 'Class Numeric+Student Max ID', 'classes_numeric+studentmaxID'),
(18, 'classbase', 'Student Max ID', 'studentmaxID'),
(19, 'semesterbase', 'None', 'none'),
(20, 'classbase', 'None', 'none');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `income`
--

CREATE TABLE `income` (
  `incomeID` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `incomeday` varchar(11) NOT NULL,
  `incomemonth` varchar(11) NOT NULL,
  `incomeyear` year(4) NOT NULL,
  `amount` double NOT NULL,
  `file` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ini_config`
--

CREATE TABLE `ini_config` (
  `configID` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `config_key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ini_config`
--

INSERT INTO `ini_config` (`configID`, `type`, `config_key`, `value`) VALUES
(1, 'paypal', 'paypal_api_username', ''),
(2, 'paypal', 'paypal_api_password', ''),
(3, 'paypal', 'paypal_api_signature', ''),
(4, 'paypal', 'paypal_email', ''),
(5, 'paypal', 'paypal_demo', ''),
(6, 'stripe', 'stripe_secret', ''),
(8, 'stripe', 'stripe_demo', ''),
(9, 'payumoney', 'payumoney_key', ''),
(10, 'payumoney', 'payumoney_salt', ''),
(11, 'payumoney', 'payumoney_demo', ''),
(12, 'paypal', 'paypal_status', ''),
(13, 'stripe', 'stripe_status', ''),
(14, 'payumoney', 'payumoney_status', ''),
(15, 'voguepay', 'voguepay_merchant_id', ''),
(16, 'voguepay', 'voguepay_merchant_ref', ''),
(17, 'voguepay', 'voguepay_developer_code', ''),
(18, 'voguepay', 'voguepay_demo', ''),
(19, 'voguepay', 'voguepay_status', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instruction`
--

CREATE TABLE `instruction` (
  `instructionID` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instruction`
--

INSERT INTO `instruction` (`instructionID`, `title`, `content`) VALUES
(1, 'evaluaciones para clasificar en las olimpiadas de conocimiento', 'solo los que obtengan mejores calificaciones<br>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` int(11) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `feetypeID` int(11) DEFAULT NULL,
  `feetype` varchar(128) NOT NULL,
  `amount` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `userID` int(11) DEFAULT NULL,
  `usertypeID` int(11) DEFAULT NULL,
  `uname` varchar(60) DEFAULT NULL,
  `date` date NOT NULL,
  `create_date` date NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `paidstatus` int(11) DEFAULT NULL,
  `deleted_at` int(11) NOT NULL DEFAULT '1',
  `maininvoiceID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `issue`
--

CREATE TABLE `issue` (
  `issueID` int(11) UNSIGNED NOT NULL,
  `lID` varchar(128) NOT NULL,
  `bookID` int(11) NOT NULL,
  `serial_no` varchar(40) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leaveapplications`
--

CREATE TABLE `leaveapplications` (
  `leaveapplicationID` int(10) UNSIGNED NOT NULL,
  `leavecategoryID` int(10) UNSIGNED NOT NULL,
  `apply_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `od_status` tinyint(1) NOT NULL DEFAULT '0',
  `from_date` date NOT NULL,
  `from_time` time DEFAULT NULL,
  `to_date` date NOT NULL,
  `to_time` time DEFAULT NULL,
  `leave_days` int(11) NOT NULL,
  `reason` text,
  `attachment` varchar(200) DEFAULT NULL,
  `attachmentorginalname` varchar(200) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) UNSIGNED NOT NULL,
  `applicationto_userID` int(11) UNSIGNED DEFAULT NULL,
  `applicationto_usertypeID` int(11) UNSIGNED DEFAULT NULL,
  `approver_userID` int(11) UNSIGNED DEFAULT NULL,
  `approver_usertypeID` int(11) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `schoolyearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leaveassign`
--

CREATE TABLE `leaveassign` (
  `leaveassignID` int(10) UNSIGNED NOT NULL,
  `leavecategoryID` int(10) UNSIGNED NOT NULL,
  `usertypeID` int(11) UNSIGNED NOT NULL,
  `leaveassignday` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leavecategory`
--

CREATE TABLE `leavecategory` (
  `leavecategoryID` int(10) UNSIGNED NOT NULL,
  `leavecategory` varchar(255) NOT NULL,
  `leavegender` int(11) DEFAULT '0' COMMENT '1 = General, 2 = Male, 3 = Femele',
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `leavecategory`
--

INSERT INTO `leavecategory` (`leavecategoryID`, `leavecategory`, `leavegender`, `create_date`, `modify_date`, `create_userID`, `create_usertypeID`) VALUES
(1, 'salud', 1, '2022-08-26 18:21:38', '2022-08-27 18:21:38', 1, 1),
(2, 'trabajo', 1, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 1),
(3, 'vacación', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 1),
(4, 'actividades', 2, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lmember`
--

CREATE TABLE `lmember` (
  `lmemberID` int(11) UNSIGNED NOT NULL,
  `lID` varchar(40) NOT NULL,
  `studentID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `lbalance` varchar(20) DEFAULT NULL,
  `ljoindate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `locationID` int(11) UNSIGNED NOT NULL,
  `location` varchar(128) NOT NULL,
  `description` text,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `location`
--

INSERT INTO `location` (`locationID`, `location`, `description`, `create_date`, `modify_date`, `create_userID`, `create_usertypeID`, `active`) VALUES
(1, 'Avenida Principal #1204', '', '2019-04-26', '2019-04-26', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginlog`
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
-- Volcado de datos para la tabla `loginlog`
--

INSERT INTO `loginlog` (`loginlogID`, `ip`, `browser`, `operatingsystem`, `login`, `logout`, `usertypeID`, `userID`) VALUES
(1, '192.168.0.108', 'Google Chrome', 'mac', 1662293694, 1662293755, 1, 1),
(235, '192.168.0.108', 'Google Chrome', 'mac', 1662293765, 1662294158, 1, 1),
(236, '192.168.0.108', 'Google Chrome', 'mac', 1662294164, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mailandsms`
--

CREATE TABLE `mailandsms` (
  `mailandsmsID` int(11) UNSIGNED NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `users` text NOT NULL,
  `type` varchar(16) NOT NULL,
  `senderusertypeID` int(11) NOT NULL,
  `senderID` int(11) NOT NULL,
  `message` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mailandsmstemplate`
--

CREATE TABLE `mailandsmstemplate` (
  `mailandsmstemplateID` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `template` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mailandsmstemplatetag`
--

CREATE TABLE `mailandsmstemplatetag` (
  `mailandsmstemplatetagID` int(11) UNSIGNED NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `tagname` varchar(128) NOT NULL,
  `mailandsmstemplatetag_extra` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mailandsmstemplatetag`
--

INSERT INTO `mailandsmstemplatetag` (`mailandsmstemplatetagID`, `usertypeID`, `tagname`, `mailandsmstemplatetag_extra`, `create_date`) VALUES
(1, 1, '[name]', NULL, '2016-12-11 02:36:33'),
(2, 1, '[dob]', NULL, '2016-12-11 02:37:31'),
(3, 1, '[gender]', NULL, '2016-12-11 02:37:31'),
(4, 1, '[religion]', NULL, '2016-12-11 02:39:51'),
(5, 1, '[email]', NULL, '2016-12-11 02:39:51'),
(6, 1, '[phone]', NULL, '2016-12-11 02:39:51'),
(7, 1, '[address]', NULL, '2016-12-11 02:39:51'),
(8, 1, '[jod]', NULL, '2016-12-11 02:39:51'),
(9, 1, '[username]', NULL, '2016-12-11 02:39:51'),
(10, 2, '[name]', NULL, '2016-12-11 02:40:50'),
(11, 2, '[designation]', NULL, '2016-12-11 02:43:27'),
(12, 2, '[dob]', NULL, '2016-12-11 02:46:21'),
(13, 2, '[gender]', NULL, '2016-12-11 02:46:21'),
(14, 2, '[religion]', NULL, '2016-12-11 02:46:21'),
(15, 2, '[email]', NULL, '2016-12-11 02:46:21'),
(16, 2, '[phone]', NULL, '2016-12-11 02:46:21'),
(17, 2, '[address]', NULL, '2016-12-11 02:46:21'),
(18, 2, '[jod]', NULL, '2016-12-11 02:46:21'),
(19, 2, '[username]', NULL, '2016-12-11 02:46:21'),
(20, 3, '[name]', NULL, '2016-12-11 02:47:09'),
(21, 3, '[dob]', NULL, '2016-12-11 02:55:54'),
(22, 3, '[gender]', NULL, '2016-12-11 02:55:54'),
(23, 3, '[blood_group]', NULL, '2016-12-11 02:55:54'),
(24, 3, '[religion]', NULL, '2016-12-11 02:55:54'),
(25, 3, '[email]', NULL, '2016-12-11 02:55:54'),
(26, 3, '[phone]', NULL, '2016-12-11 02:55:54'),
(27, 3, '[address]', NULL, '2016-12-11 02:55:54'),
(28, 3, '[state]', NULL, '2017-02-12 00:21:49'),
(29, 3, '[country]', NULL, '2017-02-12 00:21:27'),
(30, 3, '[class]', NULL, '2016-12-19 03:34:20'),
(31, 3, '[section]', NULL, '2016-12-11 02:55:54'),
(32, 3, '[group]', NULL, '2016-12-11 02:55:54'),
(33, 3, '[optional_subject]', NULL, '2016-12-11 02:55:54'),
(34, 3, '[register_no]', NULL, '2017-02-12 00:21:27'),
(35, 3, '[roll]', NULL, '2017-02-12 00:22:56'),
(36, 3, '[extra_curricular_activities]', NULL, '2017-02-12 00:22:56'),
(37, 3, '[remarks]', NULL, '2017-02-12 00:22:56'),
(38, 3, '[username]', NULL, '2016-12-11 02:55:54'),
(39, 3, '[result_table]', NULL, '2016-12-11 02:55:54'),
(40, 4, '[name]', NULL, '2016-12-11 02:57:31'),
(41, 4, '[father\'s_name]', NULL, '2016-12-11 03:04:19'),
(42, 4, '[mother\'s_name]', NULL, '2016-12-11 03:04:19'),
(43, 4, '[father\'s_profession]', NULL, '2016-12-11 03:04:19'),
(44, 4, '[mother\'s_profession]', NULL, '2016-12-11 03:04:19'),
(45, 4, '[email]', NULL, '2016-12-11 03:04:19'),
(46, 4, '[phone]', NULL, '2016-12-11 03:04:19'),
(47, 4, '[address]', NULL, '2016-12-11 03:04:19'),
(48, 4, '[username]', NULL, '2016-12-11 03:04:19'),
(49, 1, '[date]', NULL, '2018-05-11 16:12:12'),
(50, 2, '[date]', NULL, '2018-05-11 16:12:27'),
(51, 3, '[date]', NULL, '2018-05-11 16:12:36'),
(52, 4, '[date]', NULL, '2018-05-11 16:12:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maininvoice`
--

CREATE TABLE `maininvoice` (
  `maininvoiceID` int(11) UNSIGNED NOT NULL,
  `maininvoiceschoolyearID` int(11) NOT NULL,
  `maininvoiceclassesID` int(11) NOT NULL,
  `maininvoicestudentID` int(11) NOT NULL,
  `maininvoiceuserID` int(11) DEFAULT NULL,
  `maininvoiceusertypeID` int(11) DEFAULT NULL,
  `maininvoiceuname` varchar(60) DEFAULT NULL,
  `maininvoicedate` date NOT NULL,
  `maininvoicecreate_date` date NOT NULL,
  `maininvoiceday` varchar(20) DEFAULT NULL,
  `maininvoicemonth` varchar(20) DEFAULT NULL,
  `maininvoiceyear` year(4) NOT NULL,
  `maininvoicestatus` int(11) DEFAULT NULL,
  `maininvoicedeleted_at` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `make_payment`
--

CREATE TABLE `make_payment` (
  `make_paymentID` int(11) NOT NULL,
  `month` text NOT NULL,
  `gross_salary` text NOT NULL,
  `total_deduction` text NOT NULL,
  `net_salary` text NOT NULL,
  `payment_amount` text NOT NULL,
  `payment_method` int(11) NOT NULL,
  `comments` text,
  `templateID` int(11) NOT NULL,
  `salaryID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `schoolyearID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `total_hours` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manage_salary`
--

CREATE TABLE `manage_salary` (
  `manage_salaryID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `template` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mark`
--

CREATE TABLE `mark` (
  `markID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `examID` int(11) NOT NULL,
  `exam` varchar(60) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `year` year(4) NOT NULL,
  `create_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `markpercentage`
--

CREATE TABLE `markpercentage` (
  `markpercentageID` int(11) NOT NULL,
  `markpercentagetype` varchar(100) NOT NULL,
  `percentage` double NOT NULL,
  `examID` int(11) DEFAULT NULL,
  `classesID` int(11) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `markrelation`
--

CREATE TABLE `markrelation` (
  `markrelationID` int(11) UNSIGNED NOT NULL,
  `markID` int(11) NOT NULL,
  `markpercentageID` int(11) NOT NULL,
  `mark` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `markrelation`
--

INSERT INTO `markrelation` (`markrelationID`, `markID`, `markpercentageID`, `mark`) VALUES
(1, 1, 1, '45'),
(2, 2, 1, '50'),
(3, 3, 1, '70'),
(4, 4, 1, '80'),
(5, 5, 1, '77'),
(6, 6, 1, '43'),
(7, 7, 1, '65'),
(8, 8, 1, '98'),
(9, 9, 1, '100'),
(10, 10, 1, '38'),
(11, 11, 1, '19'),
(12, 12, 1, '44'),
(13, 13, 1, '77'),
(14, 14, 1, '54'),
(15, 15, 1, '76'),
(16, 16, 1, '63'),
(17, 17, 1, '53'),
(18, 18, 1, '54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `mediaID` int(11) UNSIGNED NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `mcategoryID` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL,
  `file_name_display` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`mediaID`, `userID`, `usertypeID`, `mcategoryID`, `file_name`, `file_name_display`) VALUES
(1, 1, 1, 0, '5255729350953545471.jpg', 'castillo1.jpg'),
(2, 1, 1, 0, '8707805256358259758.jpg', '500x_froyo.jpg'),
(3, 1, 1, 0, '2263484908964581077.pdf', '00-Contenido.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_category`
--

CREATE TABLE `media_category` (
  `mcategoryID` int(11) UNSIGNED NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_gallery`
--

CREATE TABLE `media_gallery` (
  `media_galleryID` int(11) NOT NULL,
  `media_gallery_type` int(11) NOT NULL,
  `file_type` varchar(40) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_original_name` varchar(255) DEFAULT NULL,
  `file_title` text NOT NULL,
  `file_size` varchar(40) DEFAULT NULL,
  `file_width_height` varchar(40) DEFAULT NULL,
  `file_upload_date` datetime DEFAULT NULL,
  `file_caption` text,
  `file_alt_text` varchar(255) DEFAULT NULL,
  `file_description` text,
  `file_length` varchar(128) DEFAULT NULL,
  `file_artist` varchar(128) DEFAULT NULL,
  `file_album` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `media_gallery`
--

INSERT INTO `media_gallery` (`media_galleryID`, `media_gallery_type`, `file_type`, `file_name`, `file_original_name`, `file_title`, `file_size`, `file_width_height`, `file_upload_date`, `file_caption`, `file_alt_text`, `file_description`, `file_length`, `file_artist`, `file_album`) VALUES
(14, 1, 'jpg', 'd16f2512e3454936ecf0ff75e79579f21b743f3ff8443a288c562aa92acdeea3a7d254d0cfe2bdbe7efff6ea23a8a763583a4d1c000e52114b950c369034c2a7.jpg', 'AnyConv.com__2.jpg', 'Escuela huite', '210.86 KB', '1152 x 864', '2022-08-16 09:49:42', '', '', '', NULL, '', ''),
(15, 1, 'jpg', 'eb442695d215e8fa1f634254224c166400fb0e667ec5cd7be2ac4dd3c7a80b4b26316200eab73ac1a0b6e713316eae5d5399715d516f95942fa2034a458aa0b2.jpg', 'AnyConv.com__1.jpg', 'HUITE ZACAPA', '101.19 KB', '800 x 445', '2022-08-16 09:50:25', '', '', '', NULL, '', ''),
(16, 1, 'jpg', 'f9e74f24deed2f4eac588b4eb08e9424562683c17bebe8873f74ed2279484eba3b5341f8f3144c2a9728d5f1b75642964f4054f27c06b75cb7fae7c0fce07ecc.jpg', 'AnyConv.com__escuela.jpg', 'HUITE ZACAPA', '33.59 KB', '480 x 320', '2022-08-16 09:50:33', '', '', '', NULL, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media_share`
--

CREATE TABLE `media_share` (
  `shareID` int(11) UNSIGNED NOT NULL,
  `classesID` int(11) NOT NULL DEFAULT '0',
  `public` int(11) NOT NULL,
  `file_or_folder` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `menuID` int(11) NOT NULL,
  `menuName` varchar(128) NOT NULL,
  `link` varchar(512) NOT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `pullRight` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `parentID` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '1000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`menuID`, `menuName`, `link`, `icon`, `pullRight`, `status`, `parentID`, `priority`) VALUES
(1, 'dashboard', 'dashboard', 'fa-laptop', '', 1, 0, 10000),
(2, 'student', 'student', 'icon-student', NULL, 1, 0, 1000),
(3, 'parents', 'parents', 'fa-user', NULL, 1, 0, 1000),
(4, 'teacher', 'teacher', 'icon-teacher', NULL, 1, 0, 1000),
(5, 'user', 'user', 'fa-users', NULL, 1, 0, 1000),
(6, 'main_academic', '#', 'icon-academicmain', '', 1, 0, 1000),
(7, 'main_attendance', '#', 'icon-attendance', NULL, 1, 0, 1000),
(8, 'main_exam', '#', 'icon-exam', NULL, 1, 0, 1000),
(9, 'main_mark', '#', 'icon-markmain', NULL, 1, 0, 1000),
(13, 'main_library', '#', 'icon-library', '', 1, 0, 390),
(14, 'main_transport', '#', 'icon-bus', '', 1, 0, 350),
(15, 'main_hostel', '#', 'icon-hhostel', '', 1, 0, 320),
(16, 'main_account', '#', 'icon-account', '', 1, 0, 280),
(17, 'main_announcement', '#', 'icon-noticemain', '', 1, 0, 230),
(18, 'main_report', '#', 'fa-clipboard', '', 1, 0, 190),
(19, 'visitorinfo', 'visitorinfo', 'icon-visitorinfo', '', 1, 0, 150),
(20, 'main_administrator', '#', 'icon-administrator', '', 1, 0, 140),
(21, 'main_settings', '#', 'fa-gavel', '', 1, 0, 30),
(22, 'classes', 'classes', 'fa-sitemap', NULL, 1, 6, 5000),
(23, 'section', 'section', 'fa-star', '', 1, 6, 4500),
(24, 'subject', 'subject', 'icon-subject', '', 1, 6, 4000),
(25, 'routine', 'routine', 'icon-routine', NULL, 1, 6, 1000),
(26, 'syllabus', 'syllabus', 'icon-syllabus', NULL, 1, 6, 3500),
(27, 'assignment', 'assignment', 'icon-assignment', NULL, 1, 6, 3000),
(28, 'sattendance', 'sattendance', 'icon-sattendance', NULL, 1, 7, 1000),
(29, 'tattendance', 'tattendance', 'icon-tattendance', NULL, 1, 7, 1000),
(40, 'classreport', 'classesreport', 'icon-classreport', '', 1, 18, 1000),
(41, 'attendancereport', 'attendancereport', 'icon-attendancereport', '', 1, 18, 940),
(42, 'studentreport', 'studentreport', 'icon-studentreport', '', 1, 18, 990),
(43, 'schoolyear', 'schoolyear', 'fa fa-calendar-plus-o', '', 1, 20, 130),
(46, 'backup', 'backup', 'fa-download', '', 1, 20, 80),
(47, 'systemadmin', 'systemadmin', 'icon-systemadmin', '', 1, 20, 120),
(48, 'resetpassword', 'resetpassword', 'icon-reset_password', '', 1, 20, 110),
(49, 'permission', 'permission', 'icon-permission', '', 1, 20, 60),
(50, 'usertype', 'usertype', 'icon-role', '', 1, 20, 70),
(51, 'setting', 'setting', 'fa-gears', '', 1, 21, 30),
(69, 'import', 'bulkimport', 'fa-upload', '', 1, 20, 90),
(70, 'update', 'update', 'fa-refresh', '', 1, 20, 50),
(75, 'uattendance', 'uattendance', 'fa-user-secret', NULL, 1, 7, 1000),
(76, 'studentgroup', 'studentgroup', 'fa-object-group', '', 1, 20, 129),
(91, 'main_payroll', '#', 'fa-usd', NULL, 1, 0, 1000),
(96, 'main_asset_management', '#', 'fa-archive', NULL, 1, 0, 1000),
(99, 'main_frontend', '#', 'fa-home', '', 1, 0, 40),
(100, 'pages', 'pages', 'fa-connectdevelop', '', 1, 99, 1000),
(101, 'frontend_setting', 'frontend_setting', 'fa-asterisk', '', 1, 21, 25),
(102, 'routinereport', 'routinereport', 'iniicon-routinereport', '', 1, 18, 960),
(109, 'idcardreport', 'idcardreport', 'iniicon-idcardreport', '', 1, 18, 980),
(112, 'attendanceoverviewreport', 'attendanceoverviewreport', 'iniicon-attendanceoverviewreport', '', 1, 18, 930),
(121, 'main_inventory', '#', 'iniicon-maininventory', '', 1, 0, 1000),
(122, 'productcategory', 'productcategory', 'iniicon-productcategory', '', 1, 121, 1000),
(123, 'product', 'product', 'iniicon-product', '', 1, 121, 1000),
(124, 'productwarehouse', 'productwarehouse', 'iniicon-productwarehouse', '', 1, 121, 1000),
(125, 'productsupplier', 'productsupplier', 'iniicon-productsupplier', '', 1, 121, 1000),
(126, 'productpurchase', 'productpurchase', 'iniicon-productpurchase', '', 1, 121, 1000),
(128, 'main_leaveapplication', '#', 'iniicon-mainleaveapplication', '', 1, 0, 1000),
(129, 'leavecategory', 'leavecategory', 'iniicon-leavecategory', '', 1, 128, 1000),
(130, 'leaveassign', 'leaveassign', 'iniicon-leaveassign', '', 1, 128, 1000),
(131, 'leaveapply', 'leaveapply', 'iniicon-leaveapply', '', 1, 128, 1000),
(132, 'leaveapplication', 'leaveapplication', 'iniicon-leaveapplication', '', 1, 128, 1000),
(136, 'productpurchasereport', 'productpurchasereport', 'iniicon-productpurchasereport', '', 1, 18, 854),
(138, 'leaveapplicationreport', 'leaveapplicationreport', 'iniicon-leaveapplicationreport', '', 1, 18, 855),
(139, 'posts', 'posts', 'fa-thumb-tack', '', 1, 99, 1005),
(140, 'posts_categories', 'posts_categories', 'fa-anchor', NULL, 1, 99, 1010),
(141, 'menu', 'frontendmenu', 'iniicon-fmenu', '', 1, 99, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notice`
--

CREATE TABLE `notice` (
  `noticeID` int(11) UNSIGNED NOT NULL,
  `title` varchar(128) NOT NULL,
  `notice` text NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_userID` int(11) NOT NULL DEFAULT '0',
  `create_usertypeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `onlineadmission`
--

CREATE TABLE `onlineadmission` (
  `onlineadmissionID` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` varchar(200) DEFAULT NULL,
  `classesID` int(11) DEFAULT NULL,
  `bloodgroup` varchar(5) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `schoolyearID` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `studentID` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0' COMMENT '0 = New, 1=Approved, 2 = Waiting, 3 = Declined'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `online_exam`
--

CREATE TABLE `online_exam` (
  `onlineExamID` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` text,
  `classID` int(11) DEFAULT '0',
  `sectionID` int(11) DEFAULT '0',
  `studentGroupID` int(11) DEFAULT '0',
  `subjectID` int(11) DEFAULT '0',
  `userTypeID` int(11) DEFAULT '0',
  `instructionID` int(11) DEFAULT '0',
  `examStatus` varchar(11) NOT NULL,
  `schoolYearID` int(11) NOT NULL,
  `examTypeNumber` int(11) DEFAULT NULL,
  `startDateTime` datetime DEFAULT NULL,
  `endDateTime` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT '0',
  `random` int(11) DEFAULT '0',
  `public` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `markType` int(11) NOT NULL,
  `negativeMark` int(11) DEFAULT '0',
  `bonusMark` int(11) DEFAULT '0',
  `point` int(11) DEFAULT '0',
  `percentage` int(11) DEFAULT '0',
  `showMarkAfterExam` int(11) DEFAULT '0',
  `judge` int(11) DEFAULT '1' COMMENT 'Auto Judge = 1, Manually Judge = 0',
  `paid` int(11) DEFAULT '0' COMMENT '0 = Unpaid, 1 = Paid',
  `validDays` int(11) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `img` varchar(512) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL,
  `published` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `online_exam_question`
--

CREATE TABLE `online_exam_question` (
  `onlineExamQuestionID` int(11) NOT NULL,
  `onlineExamID` int(11) NOT NULL,
  `questionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `online_exam_type`
--

CREATE TABLE `online_exam_type` (
  `onlineExamTypeID` int(11) NOT NULL,
  `title` varchar(512) DEFAULT NULL,
  `examTypeNumber` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `online_exam_type`
--

INSERT INTO `online_exam_type` (`onlineExamTypeID`, `title`, `examTypeNumber`, `status`) VALUES
(1, 'La fecha, la hora y la duración', 5, 1),
(2, 'La fecha y la duración', 4, 1),
(3, 'Solo la fecha', 3, 0),
(4, 'Solo la duración', 2, 1),
(5, 'Ninguno', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `online_exam_user_answer`
--

CREATE TABLE `online_exam_user_answer` (
  `onlineExamUserAnswerID` int(11) NOT NULL,
  `onlineExamQuestionID` int(11) NOT NULL,
  `onlineExamRegisteredUserID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `online_exam_user_answer`
--

INSERT INTO `online_exam_user_answer` (`onlineExamUserAnswerID`, `onlineExamQuestionID`, `onlineExamRegisteredUserID`, `userID`) VALUES
(1, 1, NULL, 2),
(2, 1, NULL, 2),
(3, 1, NULL, 2),
(4, 1, NULL, 2),
(5, 1, NULL, 2),
(6, 1, NULL, 2),
(7, 1, NULL, 2),
(8, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `online_exam_user_answer_option`
--

CREATE TABLE `online_exam_user_answer_option` (
  `onlineExamUserAnswerOptionID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `optionID` int(11) DEFAULT NULL,
  `typeID` int(11) NOT NULL,
  `text` text,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `online_exam_user_answer_option`
--

INSERT INTO `online_exam_user_answer_option` (`onlineExamUserAnswerOptionID`, `questionID`, `optionID`, `typeID`, `text`, `time`) VALUES
(1, 1, 1, 1, NULL, '2022-08-04 16:55:34'),
(2, 1, 1, 1, NULL, '2022-08-03 02:29:15'),
(3, 1, 1, 1, NULL, '2022-08-03 02:29:15'),
(4, 1, 3, 1, NULL, '2022-08-03 02:29:15'),
(5, 1, 1, 1, NULL, '2022-08-03 02:29:15'),
(6, 1, 2, 1, NULL, '2022-08-03 02:29:15'),
(7, 1, 2, 1, NULL, '2022-08-03 02:29:15'),
(8, 1, 3, 1, NULL, '2022-08-03 02:29:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `online_exam_user_status`
--

CREATE TABLE `online_exam_user_status` (
  `onlineExamUserStatus` int(11) NOT NULL,
  `onlineExamID` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `totalQuestion` int(11) NOT NULL,
  `totalAnswer` int(11) NOT NULL,
  `nagetiveMark` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  `classesID` int(11) DEFAULT NULL,
  `sectionID` int(11) DEFAULT NULL,
  `examtimeID` int(11) DEFAULT NULL,
  `totalCurrectAnswer` int(11) DEFAULT NULL,
  `totalMark` varchar(40) DEFAULT NULL,
  `totalObtainedMark` int(11) DEFAULT NULL,
  `totalPercentage` double DEFAULT NULL,
  `statusID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `online_exam_user_status`
--

INSERT INTO `online_exam_user_status` (`onlineExamUserStatus`, `onlineExamID`, `duration`, `score`, `totalQuestion`, `totalAnswer`, `nagetiveMark`, `time`, `userID`, `classesID`, `sectionID`, `examtimeID`, `totalCurrectAnswer`, `totalMark`, `totalObtainedMark`, `totalPercentage`, `statusID`) VALUES
(1, 1, 20, 1, 1, 1, 50, '2022-08-03 02:29:15', 2, 2, 1, 1, 1, '100', 100, 100, 5),
(2, 1, 20, 1, 1, 1, 50, '2022-08-03 02:29:15', 2, 2, 1, 2, 1, '100', 100, 100, 5),
(3, 1, 20, 1, 1, 1, 50, '2022-08-03 02:29:15', 2, 2, 1, 2, 1, '100', 100, 100, 5),
(4, 1, 20, 0, 1, 0, 50, '2022-08-03 02:29:15', 2, 2, 1, 2, 0, '100', 0, 0, 10),
(5, 1, 20, 0, 1, 1, 50, '2022-08-03 02:29:15', 2, 2, 1, 2, 0, '100', 0, 0, 10),
(6, 1, 1, 1, 1, 1, 50, '2022-08-03 02:29:15', 2, 2, 1, 2, 1, '100', 100, 100, 5),
(7, 1, 1, 0, 1, 1, 50, '2022-08-03 02:29:15', 2, 2, 1, 2, 0, '100', 0, 0, 10),
(8, 1, 1, 0, 1, 1, 50, '2022-08-03 02:29:15', 2, 2, 1, 2, 0, '100', 0, 0, 10),
(9, 1, 1, 0, 1, 1, 50, '2022-08-03 02:29:15', 2, 2, 1, 2, 0, '100', 0, 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `pagesID` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL COMMENT '1 => active, 2 => draft, 3 => trash, 4 => review  ',
  `visibility` int(11) DEFAULT NULL COMMENT '1 => public 2 => protected 3 => private ',
  `publish_date` datetime DEFAULT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `pageorder` int(11) NOT NULL DEFAULT '0',
  `template` varchar(250) DEFAULT NULL,
  `featured_image` varchar(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `create_userID` int(11) DEFAULT NULL,
  `create_username` varchar(60) DEFAULT NULL,
  `create_usertypeID` int(11) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`pagesID`, `title`, `url`, `content`, `status`, `visibility`, `publish_date`, `parentID`, `pageorder`, `template`, `featured_image`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertypeID`, `password`) VALUES
(1, 'Inicio', 'home', '<p><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores atque alias est distinctio expedita beatae consequuntur repudiandae dolor incidunt cumque eos nihil cupiditate dignissimos inventore, minima hic aliquam consectetur, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Veniam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.Et soluta dignissimos in numquam enim! Veniam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.</p><p> <br><br></p><br><p></p>', 1, 1, '2019-03-29 09:12:01', 0, 0, 'home', '14', '2019-03-29 09:13:41', '2022-08-16 09:51:21', 1, 'admin', 1, '12345678'),
(3, 'Contacto', 'contacto', '', 1, 1, '2019-04-04 17:29:01', 0, 0, 'contact', '', '2019-04-04 05:29:40', '2019-05-03 04:43:03', 1, 'admin', 1, NULL),
(4, 'Acerca De', 'acerca-de', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores atque alias est distinctio expedita beatae consequuntur repudiandae dolor incidunt cumque eos nihil cupiditate dignissimos inventore, minima hic aliquam consectetur, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Veniam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.Lorem <b>ipsum </b>dolor sit amet, consectetur adipisicing elit. Dolores atque alias est distinctio expedita beatae consequuntur repudiandae dolor incidunt cumque eos nihil cupiditate dignissimos inventore, minima hic aliquam consectetur, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Veniam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores atque alias est distinctio expedita beatae consequuntur repudiandae dolor incidunt cumque eos <b>nihil </b>cupiditate dignissimos inventore, minima hic aliquam consectetur, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Veniam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.<b>Lorem </b>ipsum dolor sit amet, consectetur adipisicing elit. Dolores atque alias est distinctio expedita beatae consequuntur repudiandae </p><p>dolor incidunt cumque eos nihil cupiditate dignissimos inventore, minima hic aliquam <b>consectetur</b>, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Veniam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores atque alias est distinctio expedita beatae consequuntur repudiandae dolor incidunt cumque eos nihil cupiditate dignissimos inventore, minima hic aliquam consectetur, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Veniam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores atque alias est distincti<u>o expedita beatae consequuntur repudiandae dolor incidunt cumque eos nihil </u>cupiditate dignissimos inventore, minima hic aliquam consectetur, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Ve</p><ul><li><b>niam aliquam commodi optio blanditiis aut impedit</b></li><li><b>niam aliquam commodi optio blanditiis aut impedit</b></li><li><b>niam aliquam commodi optio blanditiis aut impedit</b></li><li><b>niam aliquam commodi optio blanditiis aut impedit</b></li><li><b><br></b><br></li></ul><p>niam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.Lorem ipsum dolor sit amet, consectetur adipisicing elit. <b>Dolores </b>atque alias est distinctio expedita beatae consequuntur repudiandae dolor incidunt cumque eos nihil cupiditate dignissimos inventore, minima hic aliquam consectetur, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Veniam <b>aliquam commodi optio blanditiis aut impedit incidunt, duci</b>mus quos vel, ut.Lorem ipsum dolor sit amet, consectetur adipisicing<b> elit. Dolores atque alias est </b>distinctio expedita beatae consequuntur repudiandae dolor incidunt cumque eos nihil cupiditate dignissimos inventore<b>, </b>minima hic aliquam consectetur, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Veniam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores atque alias est distinctio expedita beatae consequuntur repudiandae dolor incidunt cumque eos nihil cupiditate dignissimos inventore, minima hic aliquam consectetur, debitis voluptates saepe. Et soluta dignissimos in numquam enim! Veniam aliquam commodi optio blanditiis aut impedit incidunt, ducimus quos vel, ut.<br></p>', 1, 1, '2019-04-04 17:29:01', 0, 0, 'about', '', '2019-04-04 05:30:06', '2019-04-10 10:17:21', 1, 'admin', 1, NULL),
(5, 'Evento', 'evento', '', 1, 1, '2019-04-04 17:30:01', 0, 0, 'event', '', '2019-04-04 05:30:18', '2019-04-06 05:50:04', 1, 'admin', 1, NULL),
(6, 'Profesor', 'profesor', '', 1, 1, '2019-04-04 17:30:01', 0, 0, 'teacher', '', '2019-04-04 05:30:33', '2019-04-06 06:14:58', 1, 'admin', 1, NULL),
(7, 'Galeria', 'galeria', '', 1, 1, '2019-04-04 17:30:01', 0, 0, 'gallery', '', '2019-04-04 05:30:46', '2019-04-04 05:32:38', 1, 'admin', 1, NULL),
(8, 'Noticias', 'noticias', '', 1, 1, '2019-04-04 17:30:01', 0, 0, 'notice', '', '2019-04-04 05:30:58', '2019-04-04 05:32:48', 1, 'admin', 1, NULL),
(9, 'Blog', 'blog', '', 1, 1, '2019-04-04 17:31:01', 0, 0, 'blog', '', '2019-04-04 05:31:21', '2019-04-04 05:32:57', 1, 'admin', 1, NULL),
(10, 'Admisión', 'admision', '', 1, 1, '2019-04-04 17:31:01', 0, 0, 'admission', '', '2019-04-04 05:31:32', '2019-04-10 11:29:13', 1, 'admin', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parents`
--

CREATE TABLE `parents` (
  `parentsID` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `father_name` varchar(60) NOT NULL,
  `mother_name` varchar(60) NOT NULL,
  `father_profession` varchar(40) NOT NULL,
  `mother_profession` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parents`
--

INSERT INTO `parents` (`parentsID`, `name`, `father_name`, `mother_name`, `father_profession`, `mother_profession`, `email`, `phone`, `address`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`) VALUES
(1, 'OMAR FERREIRA', 'OMAR FERREIRA', 'ESTELA LOPEZ', 'ARQUITECTO', 'ARTISTA', 'OMAR@FERREIRA.COM', '546789555', 'Huite', 'default.png', 'omar', '754b760db57636cdd76823849f7c411d3de4903a50417cd546a23532f514d1dd05498dcf91e3905a4cf762f7524b2e83864cc9b32a823d1b1fb02b120a5ac7bd', 4, '2019-03-25 02:40:04', '2022-08-16 11:10:03', 1, 'admin', 'Admin', 1),
(2, 'PERCY ROJAS', 'PERCY ROJAS', 'MONICA LUNA', 'CHEF', 'MECANICO', 'PERCY@GMAIL.COM', '23523536', 'CALLE TORTUGA', 'default.png', 'percy', '1a65efd78baa7aa51785b4091776a288b9423ab1d1cda3ceb41de52d4c1aef52026073318e74ad34d234adc41af09e3c907845286bda23c42a43c317cba1b19a', 4, '2019-03-25 06:32:12', '2019-03-25 06:32:12', 1, 'admin', 'Admin', 1),
(3, 'JAIME FLORES', 'JAIME FLORES', 'TEREZA VASQUEZ', 'AGRICULTOR', 'ARQUEOLOGO', 'JAIME@GMAIL.COM', '466345523', 'CALLE SOLAR', 'default.png', 'jaime', '51f3b4e91cbbbe0934de7ca0b9d32781675969fc275a176d33c046a1fe6f9662195af270e681aae0f73283bb62b59e799d230d3ee5033f05a082fd67f6111351', 4, '2019-03-25 06:34:45', '2019-03-25 06:34:45', 1, 'admin', 'Admin', 1),
(4, 'JULIA VALENCIA', 'FELIPE LOZA', 'JULIA VALENCIA', 'ELECTRICISTA', 'PROFESOR', 'JULIA@GMAIL.COM', '534645457', 'CALLE LIMON', 'default.png', 'julia', '365e58f194fa1940811a6c0b61a6aabbfbaf2001e48f753d46d273f1cf71ea285cf2d3f795a82cc038a7a2b7390c29c41641ce9f388104129382a40cba92d450', 4, '2019-03-25 06:36:36', '2019-03-25 06:36:36', 1, 'admin', 'Admin', 1),
(5, 'ROSMERY DOMINGO', 'TOMAS PLACIDO', 'ROSMERY DOMINGO', 'ANALISTA EN SISTEMAS', 'PERIODISTA', 'ROSMERY@GMAIL.COM', '235256252', '', 'default.png', 'rosmery', 'da5547db6c197c375b83ed3181e4e0561eff89ceaeb119837daf91e1796cd781a2039d35d025e016acdbcadaa306c7ef5ce84a7d0656b1353fe72a4d72d386c8', 4, '2019-03-25 06:38:16', '2019-03-25 06:38:16', 1, 'admin', 'Admin', 1),
(6, 'FRANCISO FONTANER', 'FRANCISO FONTANER', 'ANA DALAS', 'SECRETARIA', '', 'FRANCISCO@GMAIL.COM', '4243525235', 'CALLE MANZANA', 'default.png', 'francisco', '520cd95397e8442f60f2cbe2a50e3e8c5644286d5f1e85b032d7f7c0bf3f0f29d0069d606281c35e9fde600930770abe789a60a274cd69bac299851d1a183e48', 4, '2019-03-25 06:40:14', '2019-03-25 06:40:14', 1, 'admin', 'Admin', 1),
(7, 'LUCAS GONZALES', 'LUCAS GONZALES', 'VERONICA BARRAGAN', '', '', 'LUCAS@GMAIL.COM', '', '', 'default.png', 'lucas', '8178781b5e6575f3dbfa3c76d76a7fb8ac1652b14be40234cc9eb3ba1b762fca72ae1fee83068d0e53c31977963d5aedc6b2748052b60c24a72aedcd483d99a2', 4, '2019-03-25 06:41:08', '2019-03-25 06:43:14', 1, 'admin', 'Admin', 1),
(8, 'JORGE RESTREPO', 'JORGE RESTREPO', 'ROXANA GOMEZ', 'MUSICO', '', 'JORGE@GMAIL.COM', '', '', 'default.png', 'jorge', '989ca0579e9f12f4a1f2700ec29b0b71b2d90c8ccf201256b9dbfc9e40e2bae7a2de32294bd8d57394689ad39ecbf2b7f34d2316c7b82ee062ebf5fe8a74681f', 4, '2019-03-25 06:42:41', '2019-03-25 06:43:34', 1, 'admin', 'Admin', 1),
(9, 'ALVARO MENDOZA', 'ALVARO MENDOZA', 'LIDIA TAMBO', '', '', 'ALVARO@GMAIL.COM', '', '', 'default.png', 'alvaro', '66bc195b2111a799e176f65af7854b7ef1a47dc4b58a2a6b5d038b588123a7fb9a3ff65dfb8978387cf3c590ea1def81ea090d78c82a4e2b940c11ad292a7b48', 4, '2019-03-25 06:44:24', '2019-03-25 06:44:24', 1, 'admin', 'Admin', 1),
(19, 'Adrian Montes', 'Adrian Montes', '', 'ARQUITECTO', '', 'ADRIAN@GMAIL.COM', '586786790', 'CALLE INDEPENDENCIA', 'default.png', 'padres', 'fe961c391c311e4e14fe6c8360f47c3bba093399bd46cfe20698d4bc814fb295a2a9d947ea85c6e1f9f85b8a0ec40832775475b4e6a9b633f63f48f4d97f52c1', 4, '2019-05-03 11:30:03', '2019-05-03 11:30:03', 1, 'admin', 'Admin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `paymentamount` double DEFAULT NULL,
  `paymenttype` varchar(128) NOT NULL,
  `paymentdate` date NOT NULL,
  `paymentday` varchar(11) NOT NULL,
  `paymentmonth` varchar(10) NOT NULL,
  `paymentyear` year(4) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `transactionID` text,
  `globalpaymentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`permissionID`, `description`, `name`, `active`) VALUES
(501, 'Dashboard', 'dashboard', 'yes'),
(502, 'Estudiante', 'student', 'yes'),
(503, 'Agregar estudiate', 'student_add', 'yes'),
(504, 'Editar estudiante', 'student_edit', 'yes'),
(505, 'Borrar estudiante', 'student_delete', 'yes'),
(506, 'Ver estudiante', 'student_view', 'yes'),
(507, 'Padres', 'parents', 'yes'),
(508, 'Agregar padres', 'parents_add', 'yes'),
(509, 'Editar padres', 'parents_edit', 'yes'),
(510, 'Borrar padres', 'parents_delete', 'yes'),
(511, 'Ver padres', 'parents_view', 'yes'),
(512, 'Docentes', 'teacher', 'yes'),
(513, 'Agregar docentes', 'teacher_add', 'yes'),
(514, 'Editar docentes', 'teacher_edit', 'yes'),
(515, 'Borrar docentes', 'teacher_delete', 'yes'),
(516, 'Ver docente', 'teacher_view', 'yes'),
(517, 'Usuario', 'user', 'yes'),
(518, 'Agregar usuario', 'user_add', 'yes'),
(519, 'Editar usuario', 'user_edit', 'yes'),
(520, 'Borrar usuario', 'user_delete', 'yes'),
(521, 'Ver usuario', 'user_view', 'yes'),
(522, 'Clases', 'classes', 'yes'),
(523, 'Agregar clase', 'classes_add', 'yes'),
(524, 'Editar clase', 'classes_edit', 'yes'),
(525, 'Borrar clase', 'classes_delete', 'yes'),
(526, 'Sección', 'section', 'yes'),
(527, 'Agregar sección', 'section_add', 'yes'),
(528, 'Editar sección', 'section_edit', 'yes'),
(529, 'Borrar semestre', 'semester_delete', 'yes'),
(530, 'Borrar sección', 'section_delete', 'yes'),
(531, 'Asignatura', 'subject', 'yes'),
(532, 'Agregar asignatura', 'subject_add', 'yes'),
(533, 'Editar asignatura', 'subject_edit', 'yes'),
(534, 'Borrar asignatura', 'subject_delete', 'yes'),
(535, 'Plan de estudios', 'syllabus', 'yes'),
(536, 'Agregar plan de estudio', 'syllabus_add', 'yes'),
(537, 'Editar plan de estudio', 'syllabus_edit', 'yes'),
(538, 'Borrar plan de estudio', 'syllabus_delete', 'yes'),
(539, 'Tarea', 'assignment', 'yes'),
(540, 'Agregar tarea', 'assignment_add', 'yes'),
(541, 'Editar tarea', 'assignment_edit', 'yes'),
(542, 'Borrar tarea', 'assignment_delete', 'yes'),
(543, 'Ver tarea', 'assignment_view', 'yes'),
(544, 'Horario', 'routine', 'yes'),
(545, 'Agregar horario', 'routine_add', 'yes'),
(546, 'Editar horario', 'routine_edit', 'yes'),
(547, 'Borrar horario', 'routine_delete', 'yes'),
(548, 'Asistencia estudiante', 'sattendance', 'yes'),
(549, 'Agregar asistencia estudiante', 'sattendance_add', 'yes'),
(550, 'Ver asistencia estudiante', 'sattendance_view', 'yes'),
(551, 'Asistencia docente', 'tattendance', 'yes'),
(552, 'Agregar asistencia docente', 'tattendance_add', 'yes'),
(553, 'Ver asistencia docente', 'tattendance_view', 'yes'),
(554, 'Asistencia usuario', 'uattendance', 'yes'),
(555, 'Agregar asistencia usuario', 'uattendance_add', 'yes'),
(556, 'Ver asistencia usuario', 'uattendance_view', 'yes'),
(557, 'Examen', 'exam', 'yes'),
(558, 'Agregar examen', 'exam_add', 'yes'),
(559, 'Editar examen', 'exam_edit', 'yes'),
(560, 'Borrar examen', 'exam_delete', 'yes'),
(561, 'Programa de examen', 'examschedule', 'yes'),
(562, 'Agregar programa de examen', 'examschedule_add', 'yes'),
(563, 'Editar programa de examen', 'examschedule_edit', 'yes'),
(564, 'Borrar programa de examen', 'examschedule_delete', 'yes'),
(565, 'Grado', 'grade', 'yes'),
(566, 'Agregar grado', 'grade_add', 'yes'),
(567, 'Editar grado', 'grade_edit', 'yes'),
(568, 'Borrar grado', 'grade_delete', 'yes'),
(569, 'Asistencia al examen', 'eattendance', 'yes'),
(570, 'Agregar asistencia al examen', 'eattendance_add', 'yes'),
(571, 'Calificación', 'mark', 'yes'),
(572, 'Agregar calificación', 'mark_add', 'yes'),
(573, 'Ver calificación', 'mark_view', 'yes'),
(574, 'Porcentaje de calificación', 'markpercentage', 'yes'),
(575, 'Agregar porcentaje de calificación', 'markpercentage_add', 'yes'),
(576, 'Editar porcentaje de calificación', 'markpercentage_edit', 'yes'),
(577, 'Borrar porcentaje de calificación', 'markpercentage_delete', 'yes'),
(578, 'Promoción', 'promotion', 'yes'),
(579, 'Mensaje', 'conversation', 'yes'),
(580, 'Medios multimedia', 'media', 'yes'),
(581, 'Agregar medios multimedia', 'media_add', 'yes'),
(582, 'Borrar medios multimedia', 'media_delete', 'yes'),
(583, 'Mail / SMS', 'mailandsms', 'yes'),
(584, 'Agregar Mail / SMS', 'mailandsms_add', 'yes'),
(585, 'Ver Mail / SMS', 'mailandsms_view', 'yes'),
(586, 'Grupo de preguntas', 'question_group', 'yes'),
(587, 'Agregar grupo de preguntas', 'question_group_add', 'yes'),
(588, 'Editar grupo de preguntas', 'question_group_edit', 'yes'),
(589, 'Borrar grupo de preguntas', 'question_group_delete', 'yes'),
(590, 'Nivel  de pregunta', 'question_level', 'yes'),
(591, 'Agregar nivel de pregunta', 'question_level_add', 'yes'),
(592, 'Editar nivel de pregunta', 'question_level_edit', 'yes'),
(593, 'Borrar nivel de pregunta', 'question_level_delete', 'yes'),
(594, 'Banco de preguntas', 'question_bank', 'yes'),
(595, 'Agregar banco de preguntas', 'question_bank_add', 'yes'),
(596, 'Editar banco de preguntas', 'question_bank_edit', 'yes'),
(597, 'Borrar banco de preguntas', 'question_bank_delete', 'yes'),
(598, 'Ver banco de preguntas', 'question_bank_view', 'yes'),
(599, 'Examen Online', 'online_exam', 'yes'),
(600, 'Agregar examen Online', 'online_exam_add', 'yes'),
(601, 'Editar examen Online', 'online_exam_edit', 'yes'),
(602, 'Borrar examen Online', 'online_exam_delete', 'yes'),
(603, 'Instrucción', 'instruction', 'yes'),
(604, 'Agregar instrucción', 'instruction_add', 'yes'),
(605, 'Editar instrucción', 'instruction_edit', 'yes'),
(606, 'Borrar instrucción', 'instruction_delete', 'yes'),
(607, 'Ver instrucción', 'instruction_view', 'yes'),
(608, 'Plantilla de salario', 'salary_template', 'yes'),
(609, 'Agregar plantilla de salario', 'salary_template_add', 'yes'),
(610, 'Editar plantilla de salario', 'salary_template_edit', 'yes'),
(611, 'Borrar plantilla de salario', 'salary_template_delete', 'yes'),
(612, 'Ver plantilla de salario', 'salary_template_view', 'yes'),
(613, 'Plantilla por hora', 'hourly_template', 'yes'),
(614, 'Agregar plantilla por hora', 'hourly_template_add', 'yes'),
(615, 'Editar plantilla por hora', 'hourly_template_edit', 'yes'),
(616, 'Borrar plantilla por hora', 'hourly_template_delete', 'yes'),
(617, 'Administrar salario', 'manage_salary', 'yes'),
(618, 'Agregar administrar salario', 'manage_salary_add', 'yes'),
(619, 'Editar administrar salario', 'manage_salary_edit', 'yes'),
(620, 'Borrar administrar salario', 'manage_salary_delete', 'yes'),
(621, 'Ver administrar salario', 'manage_salary_view', 'yes'),
(622, 'Hacer pago', 'make_payment', 'yes'),
(623, 'Vendedor', 'vendor', 'yes'),
(624, 'Agregar vendedor', 'vendor_add', 'yes'),
(625, 'Editar vendedor', 'vendor_edit', 'yes'),
(626, 'Borrar vendedor', 'vendor_delete', 'yes'),
(627, 'Ubicación', 'location', 'yes'),
(628, 'Agregar ubicación', 'location_add', 'yes'),
(629, 'Editar ubicación', 'location_edit', 'yes'),
(630, 'Borrar ubicación', 'location_delete', 'yes'),
(631, 'Categoría de activos', 'asset_category', 'yes'),
(632, 'Agregar categoría de activos', 'asset_category_add', 'yes'),
(633, 'Editar categoría de activos', 'asset_category_edit', 'yes'),
(634, 'Borrar categoría de activos', 'asset_category_delete', 'yes'),
(635, 'Activos', 'asset', 'yes'),
(636, 'Agregar activos', 'asset_add', 'yes'),
(637, 'Editar activos', 'asset_edit', 'yes'),
(638, 'Borrar activos', 'asset_delete', 'yes'),
(639, 'Ver activos', 'asset_view', 'yes'),
(640, 'Asignación de activos', 'asset_assignment', 'yes'),
(641, 'Agregar asignación de activos', 'asset_assignment_add', 'yes'),
(642, 'Editar asignación de activos', 'asset_assignment_edit', 'yes'),
(643, 'Borrar asignación de activos', 'asset_assignment_delete', 'yes'),
(644, 'Ver asignación de activos', 'asset_assignment_view', 'yes'),
(645, 'Compra', 'purchase', 'yes'),
(646, 'Agregar compra', 'purchase_add', 'yes'),
(647, 'Editar compra', 'purchase_edit', 'yes'),
(648, 'Borrar compra', 'purchase_delete', 'yes'),
(649, 'Categoría producto', 'productcategory', 'yes'),
(650, 'Agregar categoría producto', 'productcategory_add', 'yes'),
(651, 'Editar categoría producto', 'productcategory_edit', 'yes'),
(652, 'Borrar categoría producto', 'productcategory_delete', 'yes'),
(653, 'Producto', 'product', 'yes'),
(654, 'Agregar producto', 'product_add', 'yes'),
(655, 'Editar producto', 'product_edit', 'yes'),
(656, 'Borrar producto', 'product_delete', 'yes'),
(657, 'Almacén', 'productwarehouse', 'yes'),
(658, 'Agregar almacén', 'productwarehouse_add', 'yes'),
(659, 'Editar almacén', 'productwarehouse_edit', 'yes'),
(660, 'Borrar almacén', 'productwarehouse_delete', 'yes'),
(661, 'Proveedor', 'productsupplier', 'yes'),
(662, 'Agregar proveedor', 'productsupplier_add', 'yes'),
(663, 'Editar proveedor', 'productsupplier_edit', 'yes'),
(664, 'Borrar proveedor', 'productsupplier_delete', 'yes'),
(665, 'Comprar productos', 'productpurchase', 'yes'),
(666, 'Agregar comprar productos', 'productpurchase_add', 'yes'),
(667, 'Editar compra productos', 'productpurchase_edit', 'yes'),
(668, 'Borrar compra productos', 'productpurchase_delete', 'yes'),
(669, 'Ver compra productos', 'productpurchase_view', 'yes'),
(670, 'Venta', 'productsale', 'yes'),
(671, 'Agregar venta', 'productsale_add', 'yes'),
(672, 'Editar venta', 'productsale_edit', 'yes'),
(673, 'Borrar venta', 'productsale_delete', 'yes'),
(674, 'Ver venta', 'productsale_view', 'yes'),
(675, 'Permiso categoría', 'leavecategory', 'yes'),
(676, 'Agregar permiso categoría', 'leavecategory_add', 'yes'),
(677, 'Editar permiso categoría', 'leavecategory_edit', 'yes'),
(678, 'Borrar permiso categoría', 'leavecategory_delete', 'yes'),
(679, 'Asignar permiso', 'leaveassign', 'yes'),
(680, 'Agregar asignar permiso', 'leaveassign_add', 'yes'),
(681, 'Editar asignar permiso', 'leaveassign_edit', 'yes'),
(682, 'Borrar asignar permiso', 'leaveassign_delete', 'yes'),
(683, 'Solicitar permiso', 'leaveapply', 'yes'),
(684, 'Agregar solicitar permiso', 'leaveapply_add', 'yes'),
(685, 'Editar solicitar permiso', 'leaveapply_edit', 'yes'),
(686, 'Borrar solicitar permiso', 'leaveapply_delete', 'yes'),
(687, 'Ver solicitar permiso', 'leaveapply_view', 'yes'),
(688, 'Solicitud de permiso', 'leaveapplication', 'yes'),
(689, 'Categoría de actividades', 'activitiescategory', 'yes'),
(690, 'Agregar categoría de actividades', 'activitiescategory_add', 'yes'),
(691, 'Editar categoría de actividades', 'activitiescategory_edit', 'yes'),
(692, 'Borrar categoría de actividades', 'activitiescategory_delete', 'yes'),
(693, 'Actividades', 'activities', 'yes'),
(694, 'Agregar actividades', 'activities_add', 'yes'),
(695, 'Borrar actividades', 'activities_delete', 'yes'),
(696, 'Cuidado de niños', 'childcare', 'yes'),
(697, 'Agregar cuidado de niños', 'childcare_add', 'yes'),
(698, 'Editar cuidado de niños', 'childcare_edit', 'yes'),
(699, 'Borrar cuidado de niños', 'childcare_delete', 'yes'),
(700, 'Miembro de la biblioteca', 'lmember', 'yes'),
(701, 'Agregar miembro de la biblioteca', 'lmember_add', 'yes'),
(702, 'Editar miembro de la biblioteca', 'lmember_edit', 'yes'),
(703, 'Borrar miembro de la biblioteca', 'lmember_delete', 'yes'),
(704, 'Ver miembro de la biblioteca', 'lmember_view', 'yes'),
(705, 'Libros', 'book', 'yes'),
(706, 'Agregar libros', 'book_add', 'yes'),
(707, 'Editar libros', 'book_edit', 'yes'),
(708, 'Borrar libros', 'book_delete', 'yes'),
(709, 'Prestamo de libros', 'issue', 'yes'),
(710, 'Agregar prestamo de libros', 'issue_add', 'yes'),
(711, 'Editar prestamo de libros', 'issue_edit', 'yes'),
(712, 'Ver prestamo de libros', 'issue_view', 'yes'),
(713, 'E-Books', 'ebooks', 'yes'),
(714, 'Agregar E-Books', 'ebooks_add', 'yes'),
(715, 'Editar E-Books', 'ebooks_edit', 'yes'),
(716, 'Borrar E-Books', 'ebooks_delete', 'yes'),
(717, 'Ver E-Books', 'ebooks_view', 'yes'),
(718, 'Transporte', 'transport', 'yes'),
(719, 'Agregar transporte', 'transport_add', 'yes'),
(720, 'Editar transporte', 'transport_edit', 'yes'),
(721, 'Borrar transporte', 'transport_delete', 'yes'),
(722, 'Miembro de transporte', 'tmember', 'yes'),
(723, 'Agregar miembro de transporte', 'tmember_add', 'yes'),
(724, 'Editar miembro de transporte', 'tmember_edit', 'yes'),
(725, 'Borrar miembro de transporte', 'tmember_delete', 'yes'),
(726, 'Ver miembro de transporte', 'tmember_view', 'yes'),
(727, 'Hostal', 'hostel', 'yes'),
(728, 'Agregar hostal', 'hostel_add', 'yes'),
(729, 'Editar hostal', 'hostel_edit', 'yes'),
(730, 'Borrar hostal', 'hostel_delete', 'yes'),
(731, 'Categoría hostal', 'category', 'yes'),
(732, 'Agregar categoría hostal', 'category_add', 'yes'),
(733, 'Editar categoría hostal', 'category_edit', 'yes'),
(734, 'Borrar categoría hostal', 'category_delete', 'yes'),
(735, 'Miembro del hostal', 'hmember', 'yes'),
(736, 'Agregar miembro del hostal', 'hmember_add', 'yes'),
(737, 'Editar miembro del hostal', 'hmember_edit', 'yes'),
(738, 'Borrar miembro del hostal', 'hmember_delete', 'yes'),
(739, 'Ver miembro del hostal', 'hmember_view', 'yes'),
(740, 'Tipos de tarifas', 'feetypes', 'yes'),
(741, 'Agregar tipos de tarifas', 'feetypes_add', 'yes'),
(742, 'Editar tipos de tarifas', 'feetypes_edit', 'yes'),
(743, 'Borrar tipos de tarifas', 'feetypes_delete', 'yes'),
(744, 'Factura', 'invoice', 'yes'),
(745, 'Agregar factura', 'invoice_add', 'yes'),
(746, 'Editar factura', 'invoice_edit', 'yes'),
(747, 'Borrar factura', 'invoice_delete', 'yes'),
(748, 'Ver factura', 'invoice_view', 'yes'),
(749, 'Historial de pagos', 'paymenthistory', 'yes'),
(750, 'Editar historial de pagos', 'paymenthistory_edit', 'yes'),
(751, 'Borrar historial de pagos', 'paymenthistory_delete', 'yes'),
(752, 'Gastos', 'expense', 'yes'),
(753, 'Agregar gastos', 'expense_add', 'yes'),
(754, 'Editar gastos', 'expense_edit', 'yes'),
(755, 'Borrar gastos', 'expense_delete', 'yes'),
(756, 'Ingresos', 'income', 'yes'),
(757, 'Agregar ingresos', 'income_add', 'yes'),
(758, 'Editar ingresos', 'income_edit', 'yes'),
(759, 'Borrar ingresos', 'income_delete', 'yes'),
(760, 'Pago global', 'global_payment', 'yes'),
(761, 'Aviso', 'notice', 'yes'),
(762, 'Agregar aviso', 'notice_add', 'yes'),
(763, 'Editar aviso', 'notice_edit', 'yes'),
(764, 'Borrar aviso', 'notice_delete', 'yes'),
(765, 'Ver aviso', 'notice_view', 'yes'),
(766, 'Evento', 'event', 'yes'),
(767, 'Agregar evento', 'event_add', 'yes'),
(768, 'Editar evento', 'event_edit', 'yes'),
(769, 'Borrar evento', 'event_delete', 'yes'),
(770, 'Ver evento', 'event_view', 'yes'),
(771, 'Vacaciones', 'holiday', 'yes'),
(772, 'Agregar vacaciones', 'holiday_add', 'yes'),
(773, 'Editar vacaciones', 'holiday_edit', 'yes'),
(774, 'Borrar vacaciones', 'holiday_delete', 'yes'),
(775, 'Ver vacaciones', 'holiday_view', 'yes'),
(776, 'Informe de clase', 'classesreport', 'yes'),
(777, 'Informe de estudiante', 'studentreport', 'yes'),
(778, 'Informe de tarjeta de indentificación', 'idcardreport', 'yes'),
(779, 'Informe de tarjeta de admisión', 'admitcardreport', 'yes'),
(780, 'Informe de horario', 'routinereport', 'yes'),
(781, 'Informe del programa de exámenes', 'examschedulereport', 'yes'),
(782, 'Informe de asistencia', 'attendancereport', 'yes'),
(783, 'Informe de resumen de asistencia', 'attendanceoverviewreport', 'yes'),
(784, 'Informe de libros de la biblioteca', 'librarybooksreport', 'yes'),
(785, 'Informe de la tarjeta de la biblioteca', 'librarycardreport', 'yes'),
(786, 'Informe de préstamos de libros de la biblioteca', 'librarybookissuereport', 'yes'),
(787, 'Informe de libreta', 'terminalreport', 'yes'),
(788, 'Informe de etapa de mérito', 'meritstagereport', 'yes'),
(789, 'Informe de hoja de tabulación', 'tabulationsheetreport', 'yes'),
(790, 'Informe hoja de calificación', 'marksheetreport', 'yes'),
(791, 'Informe de la tarjeta de progreso', 'progresscardreport', 'yes'),
(792, 'Informe de examen Online', 'onlineexamreport', 'yes'),
(793, 'Informe de preguntas del examen Online', 'onlineexamquestionreport', 'yes'),
(794, 'Informe de admisión Online', 'onlineadmissionreport', 'yes'),
(795, 'Informe de certificado', 'certificatereport', 'yes'),
(796, 'Informe de permiso', 'leaveapplicationreport', 'yes'),
(797, 'Informe de compra del producto', 'productpurchasereport', 'yes'),
(798, 'Informe de venta de productos', 'productsalereport', 'yes'),
(799, 'Informe de tarifas de pago de búsqueda', 'searchpaymentfeesreport', 'yes'),
(800, 'Informe de tarifas', 'feesreport', 'yes'),
(801, 'Informe de tasas adeudadas', 'duefeesreport', 'yes'),
(802, 'Informe de tarifas de balance', 'balancefeesreport', 'yes'),
(803, 'Informe de transacciones', 'transactionreport', 'yes'),
(804, 'Informe multa de estudiante', 'studentfinereport', 'yes'),
(805, 'Informe de salario', 'salaryreport', 'yes'),
(806, 'Informe del libro mayor de cuentas', 'accountledgerreport', 'yes'),
(807, 'Admisión Online', 'onlineadmission', 'yes'),
(808, 'Información del visitante', 'visitorinfo', 'yes'),
(809, 'Borrar información del visitante', 'visitorinfo_delete', 'yes'),
(810, 'Ver información del visitante', 'visitorinfo_view', 'yes'),
(811, 'Año académico', 'schoolyear', 'yes'),
(812, 'Agregar año académico', 'schoolyear_add', 'yes'),
(813, 'Editar año académico', 'schoolyear_edit', 'yes'),
(814, 'Borrar año académico', 'schoolyear_delete', 'yes'),
(815, 'Grupo de estudiantes', 'studentgroup', 'yes'),
(816, 'Agregar grupo de estudiantes', 'studentgroup_add', 'yes'),
(817, 'Editar grupo de estudiantes', 'studentgroup_edit', 'yes'),
(818, 'Borrar grupo de estudiantes', 'studentgroup_delete', 'yes'),
(819, 'Reclamo', 'complain', 'yes'),
(820, 'Agregar reclamo', 'complain_add', 'yes'),
(821, 'Editar reclamo', 'complain_edit', 'yes'),
(822, 'Borrar reclamo', 'complain_delete', 'yes'),
(823, 'Ver reclamo', 'complain_view', 'yes'),
(824, 'Plantilla de certificado', 'certificate_template', 'yes'),
(825, 'Agregar plantilla de certificado', 'certificate_template_add', 'yes'),
(826, 'Editar plantilla de certificado', 'certificate_template_edit', 'yes'),
(827, 'Borrar plantilla de certificado', 'certificate_template_delete', 'yes'),
(828, 'Ver plantilla de certificado', 'certificate_template_view', 'yes'),
(829, 'Administrador del sistema', 'systemadmin', 'yes'),
(830, 'Agregar administrador del sistema', 'systemadmin_add', 'yes'),
(831, 'Editar administrador del sistema', 'systemadmin_edit', 'yes'),
(832, 'Borrar administrador del sistema', 'systemadmin_delete', 'yes'),
(833, 'Ver administrador del sistema', 'systemadmin_view', 'yes'),
(834, 'Restaurar contraseña', 'resetpassword', 'yes'),
(835, 'Redes sociales', 'sociallink', 'yes'),
(836, 'Agregar redes sociales', 'sociallink_add', 'yes'),
(837, 'Editar redes sociales', 'sociallink_edit', 'yes'),
(838, 'Borrar redes sociales', 'sociallink_delete', 'yes'),
(839, 'Plantillla Mail / SMS', 'mailandsmstemplate', 'yes'),
(840, 'Agregar plantilla Mail / SMS', 'mailandsmstemplate_add', 'yes'),
(841, 'Editar plantilla Mail / SMS', 'mailandsmstemplate_edit', 'yes'),
(842, 'Borrar plantilla Mail / SMS', 'mailandsmstemplate_delete', 'yes'),
(843, 'Ver plantilla Mail / SMS', 'mailandsmstemplate_view', 'yes'),
(844, 'Importar', 'bulkimport ', 'yes'),
(845, 'Backup', 'backup', 'yes'),
(846, 'Rol', 'usertype', 'yes'),
(847, 'Agregar rol', 'usertype_add', 'yes'),
(848, 'Editar rol', 'usertype_edit', 'yes'),
(849, 'Borrar rol', 'usertype_delete', 'yes'),
(850, 'Permiso', 'permission', 'yes'),
(851, 'Actualización', 'update', 'yes'),
(852, 'Categoría Post', 'posts_categories', 'yes'),
(853, 'Agregar categoría post', 'posts_categories_add', 'yes'),
(854, 'Editar categoría post', 'posts_categories_edit', 'yes'),
(855, 'Borrar categoría post', 'posts_categories_delete', 'yes'),
(856, 'Post', 'posts', 'yes'),
(857, 'Agregar post', 'posts_add', 'yes'),
(858, 'Editar post', 'posts_edit', 'yes'),
(859, 'Borrar post', 'posts_delete', 'yes'),
(860, 'Páginas', 'pages', 'yes'),
(861, 'Agregar páginas', 'pages_add', 'yes'),
(862, 'Editar páginas', 'pages_edit', 'yes'),
(863, 'Editar páginas', 'pages_delete', 'yes'),
(864, 'Menú', 'frontendmenu', 'yes'),
(865, 'Configuración general', 'setting', 'yes'),
(866, 'Configuración frontend', 'frontend_setting', 'yes'),
(867, 'Configuración de pago', 'paymentsettings', 'yes'),
(868, 'Configuración SMS', 'smssettings', 'yes'),
(869, 'Configuración de Email SMTP', 'emailsetting', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_relationships`
--

CREATE TABLE `permission_relationships` (
  `permission_id` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permission_relationships`
--

INSERT INTO `permission_relationships` (`permission_id`, `usertype_id`) VALUES
(501, 2),
(502, 2),
(506, 2),
(507, 2),
(511, 2),
(512, 2),
(516, 2),
(531, 2),
(535, 2),
(536, 2),
(537, 2),
(538, 2),
(539, 2),
(540, 2),
(541, 2),
(542, 2),
(543, 2),
(544, 2),
(548, 2),
(549, 2),
(550, 2),
(551, 2),
(553, 2),
(554, 2),
(556, 2),
(561, 2),
(569, 2),
(570, 2),
(571, 2),
(572, 2),
(573, 2),
(579, 2),
(580, 2),
(581, 2),
(582, 2),
(586, 2),
(587, 2),
(588, 2),
(590, 2),
(591, 2),
(592, 2),
(594, 2),
(595, 2),
(596, 2),
(598, 2),
(599, 2),
(600, 2),
(601, 2),
(603, 2),
(604, 2),
(605, 2),
(607, 2),
(683, 2),
(684, 2),
(685, 2),
(686, 2),
(687, 2),
(688, 2),
(693, 2),
(694, 2),
(695, 2),
(705, 2),
(713, 2),
(717, 2),
(718, 2),
(727, 2),
(731, 2),
(761, 2),
(765, 2),
(766, 2),
(770, 2),
(771, 2),
(775, 2),
(777, 2),
(780, 2),
(781, 2),
(782, 2),
(783, 2),
(787, 2),
(788, 2),
(789, 2),
(790, 2),
(791, 2),
(792, 2),
(793, 2),
(819, 2),
(820, 2),
(823, 2),
(501, 4),
(502, 4),
(506, 4),
(512, 4),
(516, 4),
(531, 4),
(535, 4),
(544, 4),
(548, 4),
(550, 4),
(561, 4),
(571, 4),
(573, 4),
(579, 4),
(580, 4),
(693, 4),
(696, 4),
(700, 4),
(704, 4),
(705, 4),
(709, 4),
(712, 4),
(718, 4),
(722, 4),
(726, 4),
(727, 4),
(731, 4),
(735, 4),
(739, 4),
(744, 4),
(748, 4),
(749, 4),
(761, 4),
(765, 4),
(766, 4),
(770, 4),
(771, 4),
(775, 4),
(819, 4),
(820, 4),
(823, 4),
(501, 5),
(512, 5),
(516, 5),
(554, 5),
(556, 5),
(579, 5),
(580, 5),
(608, 5),
(609, 5),
(610, 5),
(611, 5),
(612, 5),
(613, 5),
(614, 5),
(615, 5),
(616, 5),
(617, 5),
(618, 5),
(619, 5),
(620, 5),
(621, 5),
(622, 5),
(649, 5),
(650, 5),
(651, 5),
(652, 5),
(653, 5),
(654, 5),
(655, 5),
(656, 5),
(657, 5),
(658, 5),
(659, 5),
(660, 5),
(661, 5),
(662, 5),
(663, 5),
(664, 5),
(665, 5),
(666, 5),
(667, 5),
(668, 5),
(669, 5),
(670, 5),
(671, 5),
(672, 5),
(673, 5),
(674, 5),
(683, 5),
(684, 5),
(685, 5),
(686, 5),
(687, 5),
(718, 5),
(722, 5),
(723, 5),
(724, 5),
(725, 5),
(726, 5),
(727, 5),
(731, 5),
(735, 5),
(736, 5),
(737, 5),
(738, 5),
(739, 5),
(740, 5),
(741, 5),
(742, 5),
(743, 5),
(744, 5),
(745, 5),
(746, 5),
(747, 5),
(748, 5),
(749, 5),
(750, 5),
(751, 5),
(752, 5),
(753, 5),
(754, 5),
(755, 5),
(756, 5),
(757, 5),
(758, 5),
(759, 5),
(760, 5),
(761, 5),
(765, 5),
(766, 5),
(770, 5),
(771, 5),
(775, 5),
(797, 5),
(798, 5),
(799, 5),
(800, 5),
(801, 5),
(802, 5),
(803, 5),
(804, 5),
(805, 5),
(819, 5),
(820, 5),
(823, 5),
(501, 6),
(512, 6),
(516, 6),
(531, 6),
(554, 6),
(556, 6),
(579, 6),
(580, 6),
(683, 6),
(684, 6),
(685, 6),
(686, 6),
(687, 6),
(700, 6),
(701, 6),
(702, 6),
(703, 6),
(704, 6),
(705, 6),
(706, 6),
(707, 6),
(708, 6),
(709, 6),
(710, 6),
(711, 6),
(712, 6),
(713, 6),
(714, 6),
(715, 6),
(716, 6),
(717, 6),
(718, 6),
(727, 6),
(731, 6),
(761, 6),
(765, 6),
(766, 6),
(770, 6),
(771, 6),
(775, 6),
(777, 6),
(784, 6),
(785, 6),
(786, 6),
(819, 6),
(820, 6),
(823, 6),
(501, 7),
(502, 7),
(506, 7),
(507, 7),
(511, 7),
(512, 7),
(516, 7),
(517, 7),
(521, 7),
(548, 7),
(550, 7),
(551, 7),
(553, 7),
(554, 7),
(556, 7),
(579, 7),
(580, 7),
(683, 7),
(684, 7),
(685, 7),
(686, 7),
(687, 7),
(727, 7),
(731, 7),
(761, 7),
(765, 7),
(766, 7),
(770, 7),
(771, 7),
(775, 7),
(808, 7),
(809, 7),
(810, 7),
(819, 7),
(820, 7),
(823, 7),
(501, 3),
(502, 3),
(512, 3),
(516, 3),
(531, 3),
(539, 3),
(543, 3),
(544, 3),
(548, 3),
(561, 3),
(571, 3),
(579, 3),
(580, 3),
(683, 3),
(684, 3),
(685, 3),
(686, 3),
(687, 3),
(693, 3),
(700, 3),
(705, 3),
(709, 3),
(712, 3),
(713, 3),
(717, 3),
(718, 3),
(722, 3),
(727, 3),
(731, 3),
(744, 3),
(748, 3),
(749, 3),
(761, 3),
(765, 3),
(766, 3),
(770, 3),
(771, 3),
(775, 3),
(819, 3),
(820, 3),
(823, 3),
(501, 1),
(502, 1),
(503, 1),
(504, 1),
(505, 1),
(506, 1),
(507, 1),
(508, 1),
(509, 1),
(510, 1),
(511, 1),
(512, 1),
(513, 1),
(514, 1),
(515, 1),
(516, 1),
(517, 1),
(518, 1),
(519, 1),
(520, 1),
(521, 1),
(522, 1),
(523, 1),
(524, 1),
(525, 1),
(526, 1),
(527, 1),
(528, 1),
(530, 1),
(531, 1),
(532, 1),
(533, 1),
(534, 1),
(535, 1),
(536, 1),
(537, 1),
(538, 1),
(539, 1),
(540, 1),
(541, 1),
(542, 1),
(543, 1),
(544, 1),
(545, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(552, 1),
(553, 1),
(554, 1),
(555, 1),
(556, 1),
(557, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(564, 1),
(565, 1),
(566, 1),
(567, 1),
(568, 1),
(569, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(576, 1),
(577, 1),
(578, 1),
(579, 1),
(580, 1),
(581, 1),
(582, 1),
(583, 1),
(584, 1),
(585, 1),
(586, 1),
(587, 1),
(588, 1),
(589, 1),
(590, 1),
(591, 1),
(592, 1),
(593, 1),
(594, 1),
(595, 1),
(596, 1),
(597, 1),
(598, 1),
(599, 1),
(600, 1),
(601, 1),
(602, 1),
(603, 1),
(604, 1),
(605, 1),
(606, 1),
(607, 1),
(608, 1),
(609, 1),
(610, 1),
(611, 1),
(612, 1),
(613, 1),
(614, 1),
(615, 1),
(616, 1),
(617, 1),
(618, 1),
(619, 1),
(620, 1),
(621, 1),
(622, 1),
(623, 1),
(624, 1),
(625, 1),
(626, 1),
(627, 1),
(628, 1),
(629, 1),
(630, 1),
(631, 1),
(632, 1),
(633, 1),
(634, 1),
(635, 1),
(636, 1),
(637, 1),
(638, 1),
(639, 1),
(640, 1),
(641, 1),
(642, 1),
(643, 1),
(644, 1),
(645, 1),
(646, 1),
(647, 1),
(648, 1),
(649, 1),
(650, 1),
(651, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(657, 1),
(658, 1),
(659, 1),
(660, 1),
(661, 1),
(662, 1),
(663, 1),
(664, 1),
(665, 1),
(666, 1),
(667, 1),
(668, 1),
(669, 1),
(670, 1),
(671, 1),
(672, 1),
(673, 1),
(674, 1),
(675, 1),
(676, 1),
(677, 1),
(678, 1),
(679, 1),
(680, 1),
(681, 1),
(682, 1),
(683, 1),
(684, 1),
(685, 1),
(686, 1),
(687, 1),
(688, 1),
(689, 1),
(690, 1),
(691, 1),
(692, 1),
(693, 1),
(694, 1),
(695, 1),
(696, 1),
(697, 1),
(698, 1),
(699, 1),
(700, 1),
(701, 1),
(702, 1),
(703, 1),
(704, 1),
(705, 1),
(706, 1),
(707, 1),
(708, 1),
(709, 1),
(710, 1),
(711, 1),
(712, 1),
(713, 1),
(714, 1),
(715, 1),
(716, 1),
(717, 1),
(718, 1),
(719, 1),
(720, 1),
(721, 1),
(722, 1),
(723, 1),
(724, 1),
(725, 1),
(726, 1),
(727, 1),
(728, 1),
(729, 1),
(730, 1),
(731, 1),
(732, 1),
(733, 1),
(734, 1),
(735, 1),
(736, 1),
(737, 1),
(738, 1),
(739, 1),
(740, 1),
(741, 1),
(742, 1),
(743, 1),
(744, 1),
(745, 1),
(746, 1),
(747, 1),
(748, 1),
(749, 1),
(750, 1),
(751, 1),
(752, 1),
(753, 1),
(754, 1),
(755, 1),
(756, 1),
(757, 1),
(758, 1),
(759, 1),
(760, 1),
(761, 1),
(762, 1),
(763, 1),
(764, 1),
(765, 1),
(766, 1),
(767, 1),
(768, 1),
(769, 1),
(770, 1),
(771, 1),
(772, 1),
(773, 1),
(774, 1),
(775, 1),
(776, 1),
(777, 1),
(778, 1),
(779, 1),
(780, 1),
(781, 1),
(782, 1),
(783, 1),
(784, 1),
(785, 1),
(786, 1),
(787, 1),
(788, 1),
(789, 1),
(790, 1),
(791, 1),
(792, 1),
(793, 1),
(794, 1),
(795, 1),
(796, 1),
(797, 1),
(798, 1),
(799, 1),
(800, 1),
(801, 1),
(802, 1),
(803, 1),
(804, 1),
(805, 1),
(806, 1),
(807, 1),
(808, 1),
(809, 1),
(810, 1),
(811, 1),
(812, 1),
(813, 1),
(814, 1),
(815, 1),
(816, 1),
(817, 1),
(818, 1),
(819, 1),
(820, 1),
(821, 1),
(822, 1),
(823, 1),
(824, 1),
(825, 1),
(826, 1),
(827, 1),
(828, 1),
(829, 1),
(830, 1),
(831, 1),
(832, 1),
(833, 1),
(834, 1),
(835, 1),
(836, 1),
(837, 1),
(838, 1),
(839, 1),
(840, 1),
(841, 1),
(842, 1),
(843, 1),
(844, 1),
(845, 1),
(846, 1),
(847, 1),
(848, 1),
(849, 1),
(850, 1),
(851, 1),
(852, 1),
(853, 1),
(854, 1),
(855, 1),
(856, 1),
(857, 1),
(858, 1),
(859, 1),
(860, 1),
(861, 1),
(862, 1),
(863, 1),
(864, 1),
(865, 1),
(866, 1),
(867, 1),
(868, 1),
(869, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `postsID` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL COMMENT '1 => active, 2 => draft, 3 => trash, 4 => review  ',
  `visibility` int(11) DEFAULT NULL COMMENT '1 => public 2 => protected 3 => private ',
  `publish_date` datetime DEFAULT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `postorder` int(11) NOT NULL DEFAULT '0',
  `featured_image` varchar(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `create_userID` int(11) DEFAULT NULL,
  `create_username` varchar(60) DEFAULT NULL,
  `create_usertypeID` int(11) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`postsID`, `title`, `url`, `content`, `status`, `visibility`, `publish_date`, `parentID`, `postorder`, `featured_image`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertypeID`, `password`) VALUES
(2, 'Carreras A Elección', 'carreras-a-eleccion', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque, ex quas nam temporibus, expedita tenetur perspiciatis necessitatibus maxime nobis deleniti reiciendis eos quia, laboriosam consectetur atque unde impedit, quidem rerum. Consectetur, repudiandae? Pariatur dolorum a rem dolore quidem, repellendus minus est laudantium reiciendis ad! Quis necessitatibus, asperiores sit animi voluptatibus ad. Sed natus perferendis ipsam eum, ratione cum! Atque iusto itaque expedita, quasi consequatur ratione? Inventore neque eius repellendus error libero adipisci, eligendi saepe doloremque et assumenda praesentium dolores deserunt optio sequi facilis nihil est sapiente dicta mollitia fugit sunt officiis animi fugiat suscipit at. Repudiandae id provident et maiores.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque, ex quas nam temporibus, expedita tenetur perspiciatis necessitatibus maxime nobis deleniti reiciendis eos quia, laboriosam consectetur atque unde impedit, quidem rerum. Consectetur, repudiandae? Pariatur dolorum a rem dolore quidem, repellendus minus est laudantium reiciendis ad! Quis necessitatibus, asperiores sit animi voluptatibus ad. Sed natus perferendis ipsam eum, ratione cum! Atque iusto itaque expedita, quasi consequatur ratione? Inventore neque eius repellendus error libero adipisci, eligendi saepe doloremque et assumenda praesentium </p><h2>Lorem ipsum<br></h2><p>dolores deserunt optio sequi facilis nihil est sapiente dicta mollitia fugit sunt officiis animi fugiat suscipit at. Repudiandae id provident et maiores.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque, ex quas nam temporibus, expedita tenetur perspiciatis necessitatibus maxime nobis deleniti reiciendis eos quia, laboriosam consectetur atque unde impedit, quidem rerum. Consectetur, repudiandae? Pariatur dolorum a rem dolore quidem, repellendus minus est laudantium reiciendis ad! Quis necessitatibus, asperiores sit animi voluptatibus ad. Sed natus perferendis ipsam eum, ratione cum! Atque iusto itaque expedita, quasi consequatur ratione? Inventore neque eius repellendus error libero adipisci, eligendi saepe doloremque et assumenda praesentium dolores deserunt optio sequi facilis nihil est sapiente dicta mollitia fugit sunt officiis animi fugiat suscipit at. Repudiandae id provident et maiores.<br></p>', 1, 3, '2019-04-01 12:33:01', 0, 0, '13', '2019-04-01 12:38:05', '2019-04-10 11:23:12', 1, 'admin', 1, NULL),
(3, 'Nuevas Materias O Asignaturas', 'nuevas-materias-o-asignaturas', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque, ex quas nam temporibus, expedita tenetur perspiciatis necessitatibus maxime nobis deleniti reiciendis eos quia, laboriosam consectetur atque unde impedit, quidem rerum. Consectetur, repudiandae? Pariatur dolorum a rem dolore quidem, repellendus minus est laudantium reiciendis ad! Quis necessitatibus, asperiores sit animi voluptatibus ad. Sed natus perferendis ipsam eum, ratione cum! Atque iusto itaque expedita, quasi consequatur ratione? Inventore neque eius repellendus error libero adipisci, eligendi saepe doloremque et assumenda praesentium dolores deserunt optio sequi facilis nihil est sapiente dicta mollitia fugit sunt officiis animi fugiat suscipit at. Repudiandae id provident et maiores.</p><h2>Lorem ipsum dolor sit amet<br></h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque, ex quas nam temporibus, expedita tenetur perspiciatis necessitatibus maxime nobis deleniti reiciendis eos quia, laboriosam consectetur atque unde impedit, quidem rerum. Consectetur, repudiandae? Pariatur dolorum a rem dolore quidem, repellendus minus est laudantium reiciendis ad! Quis necessitatibus, asperiores sit animi voluptatibus ad. Sed natus perferendis ipsam eum, ratione cum! Atque iusto itaque expedita, quasi consequatur ratione? Inventore neque eius repellendus error libero adipisci, eligendi saepe doloremque et assumenda praesentium dolores deserunt optio sequi facilis nihil est sapiente dicta mollitia fugit sunt officiis animi fugiat suscipit at. Repudiandae id provident et maiores.</p>', 1, 2, '2019-04-01 12:41:01', 0, 0, '12', '2019-04-01 12:42:12', '2019-04-10 11:21:00', 1, 'admin', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts_categories`
--

CREATE TABLE `posts_categories` (
  `posts_categoriesID` int(11) NOT NULL,
  `posts_categories` varchar(40) DEFAULT NULL,
  `posts_slug` varchar(250) DEFAULT NULL,
  `posts_parent` int(11) DEFAULT '0',
  `posts_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `posts_categories`
--

INSERT INTO `posts_categories` (`posts_categoriesID`, `posts_categories`, `posts_slug`, `posts_parent`, `posts_description`) VALUES
(1, 'ciencia', '#', 0, 'qqqqqq'),
(2, 'inscripciones', '#', 0, ''),
(3, 'curricula', '#', 0, ''),
(4, 'manual', '#', 0, ''),
(5, 'educación', '#', 0, ''),
(6, 'mensualidades', '#', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts_category`
--

CREATE TABLE `posts_category` (
  `posts_categoryID` int(11) NOT NULL,
  `postsID` int(11) NOT NULL,
  `posts_categoriesID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `posts_category`
--

INSERT INTO `posts_category` (`posts_categoryID`, `postsID`, `posts_categoriesID`) VALUES
(17, 1, 1),
(18, 3, 2),
(19, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `productcategoryID` int(11) NOT NULL,
  `productname` varchar(128) NOT NULL,
  `productbuyingprice` double NOT NULL,
  `productsellingprice` double NOT NULL,
  `productdesc` text NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`productID`, `productcategoryID`, `productname`, `productbuyingprice`, `productsellingprice`, `productdesc`, `create_date`, `modify_date`, `create_userID`, `create_usertypeID`) VALUES
(1, 1, 'BOLÍGRAFOS', 0.5, 2, '', '2022-08-03 02:29:15', '2019-03-25 18:07:02', 1, 1),
(2, 2, 'TINTA PARA IMPRESORA', 56, 80, '', '2022-08-03 02:29:15', '2019-03-25 18:08:41', 1, 1),
(3, 1, 'PAPEL CARTA', 50, 95, '', '2022-08-03 02:29:15', '2019-03-25 18:09:03', 1, 1),
(4, 1, 'MARCADORES PARA PIZARRA', 56, 60, '', '2022-08-03 02:29:15', '2019-03-25 18:10:08', 1, 1),
(5, 1, 'BORRADORES', 5, 10, '', '2022-08-03 02:29:15', '2019-03-25 18:10:29', 1, 1),
(6, 1, 'LAPICES', 2, 5, '', '2022-08-03 02:29:15', '2019-03-25 18:10:53', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productcategory`
--

CREATE TABLE `productcategory` (
  `productcategoryID` int(11) NOT NULL,
  `productcategoryname` varchar(128) NOT NULL,
  `productcategorydesc` text NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productcategory`
--

INSERT INTO `productcategory` (`productcategoryID`, `productcategoryname`, `productcategorydesc`, `create_date`, `modify_date`, `create_userID`, `create_usertypeID`) VALUES
(1, 'MATERIAL ESCOLAR', '', '2019-03-25 18:06:23', '2022-08-03 02:29:15', 1, 1),
(2, 'MATERIAL PARA OFICINA', '', '2019-03-25 18:08:13', '2022-08-03 02:29:15', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productpurchase`
--

CREATE TABLE `productpurchase` (
  `productpurchaseID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `productsupplierID` int(11) NOT NULL,
  `productwarehouseID` int(11) NOT NULL,
  `productpurchasereferenceno` varchar(100) NOT NULL,
  `productpurchasedate` date NOT NULL,
  `productpurchasefile` varchar(200) DEFAULT NULL,
  `productpurchasefileorginalname` varchar(200) DEFAULT NULL,
  `productpurchasedescription` text,
  `productpurchasestatus` int(11) NOT NULL COMMENT '0 = pending, 1 = partial_paid,  2 = fully_paid',
  `productpurchaserefund` int(11) NOT NULL DEFAULT '0' COMMENT '0 = not refund, 1 = refund ',
  `productpurchasetaxID` int(11) NOT NULL DEFAULT '0',
  `productpurchasetaxamount` double NOT NULL DEFAULT '0',
  `productpurchasediscount` double NOT NULL DEFAULT '0',
  `productpurchaseshipping` double NOT NULL DEFAULT '0',
  `productpurchasepaymentterm` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productpurchaseitem`
--

CREATE TABLE `productpurchaseitem` (
  `productpurchaseitemID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `productpurchaseID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productpurchaseunitprice` double NOT NULL,
  `productpurchasequantity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productpurchaseitem`
--

INSERT INTO `productpurchaseitem` (`productpurchaseitemID`, `schoolyearID`, `productpurchaseID`, `productID`, `productpurchaseunitprice`, `productpurchasequantity`) VALUES
(1, 1, 1, 6, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productpurchasepaid`
--

CREATE TABLE `productpurchasepaid` (
  `productpurchasepaidID` int(11) NOT NULL,
  `productpurchasepaidschoolyearID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `productpurchaseID` int(11) NOT NULL,
  `productpurchasepaiddate` date NOT NULL,
  `productpurchasepaidreferenceno` varchar(100) NOT NULL,
  `productpurchasepaidamount` double NOT NULL,
  `productpurchasepaidpaymentmethod` int(11) NOT NULL COMMENT '1 = cash, 2 = cheque, 3 = crediit card, 4 = other',
  `productpurchasepaidfile` varchar(200) DEFAULT NULL,
  `productpurchasepaidorginalname` varchar(200) DEFAULT NULL,
  `productpurchasepaiddescription` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productsale`
--

CREATE TABLE `productsale` (
  `productsaleID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `productsalecustomertypeID` int(11) NOT NULL,
  `productsalecustomerID` int(11) NOT NULL,
  `productsalereferenceno` varchar(100) NOT NULL,
  `productsaledate` date NOT NULL,
  `productsalefile` varchar(200) DEFAULT NULL,
  `productsalefileorginalname` varchar(200) DEFAULT NULL,
  `productsaledescription` text,
  `productsalestatus` int(11) NOT NULL COMMENT '0 = select_payment_status, 1 = due,  2 = partial, 3 = Paid',
  `productsalerefund` int(11) NOT NULL DEFAULT '0' COMMENT '0 = not refund, 1 = refund ',
  `productsaletaxID` int(11) NOT NULL DEFAULT '0',
  `productsaletaxamount` double NOT NULL DEFAULT '0',
  `productsalediscount` double NOT NULL DEFAULT '0',
  `productsaleshipping` double NOT NULL DEFAULT '0',
  `productsalepaymentterm` int(11) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productsaleitem`
--

CREATE TABLE `productsaleitem` (
  `productsaleitemID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `productsaleID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `productsaleserialno` varchar(100) DEFAULT '0',
  `productsaleunitprice` double NOT NULL,
  `productsalequantity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productsaleitem`
--

INSERT INTO `productsaleitem` (`productsaleitemID`, `schoolyearID`, `productsaleID`, `productID`, `productsaleserialno`, `productsaleunitprice`, `productsalequantity`) VALUES
(1, 1, 1, 6, '0', 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productsalepaid`
--

CREATE TABLE `productsalepaid` (
  `productsalepaidID` int(11) NOT NULL,
  `productsalepaidschoolyearID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `productsaleID` int(11) NOT NULL,
  `productsalepaiddate` date NOT NULL,
  `productsalepaidreferenceno` varchar(100) NOT NULL,
  `productsalepaidamount` double NOT NULL,
  `productsalepaidpaymentmethod` int(11) NOT NULL COMMENT '1 = cash, 2 = cheque, 3 = crediit card, 4 = other',
  `productsalepaidfile` varchar(200) DEFAULT NULL,
  `productsalepaidorginalname` varchar(200) DEFAULT NULL,
  `productsalepaiddescription` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productsupplier`
--

CREATE TABLE `productsupplier` (
  `productsupplierID` int(11) NOT NULL,
  `productsuppliercompanyname` varchar(128) NOT NULL,
  `productsuppliername` varchar(40) NOT NULL,
  `productsupplieremail` varchar(40) DEFAULT NULL,
  `productsupplierphone` varchar(20) DEFAULT NULL,
  `productsupplieraddress` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productsupplier`
--

INSERT INTO `productsupplier` (`productsupplierID`, `productsuppliercompanyname`, `productsuppliername`, `productsupplieremail`, `productsupplierphone`, `productsupplieraddress`, `create_date`, `modify_date`, `create_userID`, `create_usertypeID`) VALUES
(1, 'AMERICAS', 'ARTURO VARGAS', 'ARTURO@CORREO.COM', '87763522', 'CALLE LOMA', '2019-03-25 18:14:08', '2022-08-03 02:29:15', 1, 1),
(2, 'GRAFICOS S.A.', 'SUSANA TORREZ', 'SUSANA@GMAIL.COM', '655543622', 'CALLE JUPITER', '2019-03-25 18:15:07', '2022-08-03 02:29:15', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productwarehouse`
--

CREATE TABLE `productwarehouse` (
  `productwarehouseID` int(11) NOT NULL,
  `productwarehousename` varchar(128) NOT NULL,
  `productwarehousecode` varchar(128) NOT NULL,
  `productwarehouseemail` varchar(40) DEFAULT NULL,
  `productwarehousephone` varchar(20) DEFAULT NULL,
  `productwarehouseaddress` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productwarehouse`
--

INSERT INTO `productwarehouse` (`productwarehouseID`, `productwarehousename`, `productwarehousecode`, `productwarehouseemail`, `productwarehousephone`, `productwarehouseaddress`, `create_date`, `modify_date`, `create_userID`, `create_usertypeID`) VALUES
(1, 'LIBRERIA ALEXANDER', 'EWQ24', 'INFO@LIBRERIA.COM', '65444323', 'CALLE LIBERTADORES', '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 1),
(2, 'EL MAESTRO S.A.', 'EW4U5', 'INFO@MAESTRO.COM', '757888564', '', '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 1),
(3, 'ALMACEN LORETO', 'TU532', 'LORETO@CORREO.COM', '885656436', '', '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotionlog`
--

CREATE TABLE `promotionlog` (
  `promotionLogID` int(11) UNSIGNED NOT NULL,
  `promotionType` varchar(50) DEFAULT NULL,
  `classesID` int(11) NOT NULL,
  `jumpClassID` int(11) NOT NULL,
  `schoolYearID` int(11) NOT NULL,
  `jumpSchoolYearID` int(11) NOT NULL,
  `subjectandsubjectcodeandmark` longtext,
  `exams` longtext,
  `markpercentages` longtext,
  `promoteStudents` longtext,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `create_userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL,
  `assetID` int(11) NOT NULL,
  `vendorID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `purchase_price` double NOT NULL,
  `purchased_by` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `expire_date` date DEFAULT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_answer`
--

CREATE TABLE `question_answer` (
  `answerID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `optionID` int(11) DEFAULT NULL,
  `typeNumber` int(11) NOT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `question_answer`
--

INSERT INTO `question_answer` (`answerID`, `questionID`, `optionID`, `typeNumber`, `text`) VALUES
(1, 1, 1, 1, NULL),
(2, 2, 11, 2, NULL),
(3, 2, 13, 2, NULL),
(5, 3, 21, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_bank`
--

CREATE TABLE `question_bank` (
  `questionBankID` int(11) NOT NULL,
  `question` text NOT NULL,
  `explanation` text,
  `levelID` int(11) DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  `totalQuestion` int(11) DEFAULT '0',
  `totalOption` int(11) DEFAULT NULL,
  `typeNumber` int(11) DEFAULT NULL,
  `parentID` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `mark` int(11) DEFAULT '0',
  `hints` text,
  `upload` varchar(512) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_usertypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_group`
--

CREATE TABLE `question_group` (
  `questionGroupID` int(11) NOT NULL,
  `title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `question_group`
--

INSERT INTO `question_group` (`questionGroupID`, `title`) VALUES
(1, 'Razonamiento'),
(2, 'Conocimiento general'),
(3, 'General'),
(4, 'Matemáticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_level`
--

CREATE TABLE `question_level` (
  `questionLevelID` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `question_level`
--

INSERT INTO `question_level` (`questionLevelID`, `name`) VALUES
(1, 'Fácil'),
(2, 'Medio'),
(3, 'Difícil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_option`
--

CREATE TABLE `question_option` (
  `optionID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `img` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `question_option`
--

INSERT INTO `question_option` (`optionID`, `questionID`, `name`, `img`) VALUES
(1, 1, '4 julio', ''),
(2, 1, '1 julio', ''),
(3, 1, '4 junio', ''),
(4, 1, '', NULL),
(5, 1, '', NULL),
(6, 1, '', NULL),
(7, 1, '', NULL),
(8, 1, '', NULL),
(9, 1, '', NULL),
(10, 1, '', NULL),
(11, 2, 'raton', ''),
(12, 2, 'araña', ''),
(13, 2, 'pez', ''),
(14, 2, 'pulpo', ''),
(15, 2, '', NULL),
(16, 2, '', NULL),
(17, 2, '', NULL),
(18, 2, '', NULL),
(19, 2, '', NULL),
(20, 2, '', NULL),
(21, 3, '10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_type`
--

CREATE TABLE `question_type` (
  `questionTypeID` int(11) NOT NULL,
  `typeNumber` int(11) NOT NULL,
  `name` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `question_type`
--

INSERT INTO `question_type` (`questionTypeID`, `typeNumber`, `name`) VALUES
(1, 1, 'Simple respuesta'),
(2, 2, 'Multiples respuestas'),
(3, 3, 'Responada los campos vacios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reset`
--

CREATE TABLE `reset` (
  `resetID` int(11) UNSIGNED NOT NULL,
  `keyID` varchar(128) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reset`
--

INSERT INTO `reset` (`resetID`, `keyID`, `email`) VALUES
(1, '2009bec058a67910b4e1795f42f714ce7541b48c39c4ed1437195a627ffcc9151e21ea91c0e2adf8b0b21545b3a6c4b8fcbafc40e4f812f5cf8caa5a70cfb1a7', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `routine`
--

CREATE TABLE `routine` (
  `routineID` int(11) UNSIGNED NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `day` varchar(60) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `end_time` varchar(10) NOT NULL,
  `room` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `routine`
--

INSERT INTO `routine` (`routineID`, `classesID`, `sectionID`, `subjectID`, `schoolyearID`, `teacherID`, `day`, `start_time`, `end_time`, `room`) VALUES
(1, 2, 1, 1, 1, 4, 'LUNES', '7:00 AM', '8:00 AM', 'A3'),
(2, 2, 1, 2, 1, 5, 'LUNES', '8:00 AM', '9:00 AM', 'AE4'),
(3, 2, 1, 3, 1, 7, 'LUNES', '9:00 AM', '10:00 AM', 'A34'),
(4, 2, 1, 5, 1, 6, 'MARTES', '8:00 AM', '9:00 AM', 'AT5'),
(5, 2, 1, 6, 1, 9, 'MIERCOLES', '10:11 AM', '10:12 AM', 'U7'),
(6, 2, 1, 8, 1, 11, 'MIERCOLES', '10:15 AM', '11:15 AM', 'AE4'),
(7, 2, 1, 10, 1, 13, 'JUEVES', '12:00 PM', '1:00 PM', 'D54'),
(8, 2, 1, 12, 1, 15, 'VIERNES', '2:15 PM', '3:15 PM', 'E45'),
(9, 2, 1, 13, 1, 16, 'VIERNES', '9:15 AM', '11:15 AM', 'W34'),
(10, 2, 1, 9, 1, 12, 'VIERNES', '7:30 AM', '8:50 AM', 'WR5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salary_option`
--

CREATE TABLE `salary_option` (
  `salary_optionID` int(11) NOT NULL,
  `salary_templateID` int(11) NOT NULL,
  `option_type` int(11) NOT NULL COMMENT 'Allowances =1, Dllowances = 2, Increment = 3',
  `label_name` varchar(128) DEFAULT NULL,
  `label_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salary_template`
--

CREATE TABLE `salary_template` (
  `salary_templateID` int(11) NOT NULL,
  `salary_grades` varchar(128) NOT NULL,
  `basic_salary` text NOT NULL,
  `overtime_rate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schoolyear`
--

CREATE TABLE `schoolyear` (
  `schoolyearID` int(11) NOT NULL,
  `schooltype` varchar(40) DEFAULT NULL,
  `schoolyear` varchar(128) NOT NULL,
  `schoolyeartitle` varchar(128) DEFAULT NULL,
  `startingdate` date NOT NULL,
  `endingdate` date NOT NULL,
  `semestercode` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(100) NOT NULL,
  `create_usertype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `schoolyear`
--

INSERT INTO `schoolyear` (`schoolyearID`, `schooltype`, `schoolyear`, `schoolyeartitle`, `startingdate`, `endingdate`, `semestercode`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'classbase', '2022', 'Adminsitracion 2022', '2022-01-06', '2022-10-14', NULL, '2022-08-03 02:29:15', '2022-08-16 11:40:53', 1, 'admin', 'Admin'),
(3, 'classbase', '2023', 'Administracion 2023', '2023-01-05', '2023-10-14', NULL, '2022-08-03 02:29:15', '2022-08-16 11:40:16', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school_sessions`
--

CREATE TABLE `school_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `school_sessions`
--

INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1cd7k16qkeheqhrafpfsh7h1m67j9s58', '::1', 1661620041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313631393736383b),
('q6jfo8uso5cvoqvgirt3g26g9o7r2tc1', '::1', 1661621884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313632313733353b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('vjpkr777o7ichrpr72biaarp379gm3uc', '::1', 1661622391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313632323132333b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('fqtctc5p6dq3aipn80on0s3dive70gob', '::1', 1661622610, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313632323432373b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('96n61528ecqph19obgjun0nh65vjv29m', '::1', 1661623436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313632333433363b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('j792v1cd0qe19pkp6ba0ilo2oh9nbbon', '::1', 1661630989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636313633303938393b),
('6of0a4b78a5no73u0e7fvqmr7heaq234', '::1', 1662082053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323038323035333b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('snam5l9g555abagh9ataeueg52gr2fhj', '::1', 1662082522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323038323532323b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('ngccgb90q5q7qdmh40cbjuq777e4toqb', '::1', 1662082927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323038323839383b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('i6mh2a9m2dj79vrn3maohff5t5602bfd', '::1', 1662083602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323038333436333b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('g1vqa68kko26cmkia0c4ng77248434r6', '::1', 1662083922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323038333830363b),
('omgeims742tru9dpcpcf7oj9eq2e4hki', '::1', 1662235378, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323233353337383b),
('0du08sdnjbs81fgh47rpqu4qrdbltfu7', '::1', 1662236164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323233353835323b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('kfdaiuvul11bp9fgoujaq0pt5qbr67bn', '::1', 1662236312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323233363137393b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('02mj1fo65obfe0l9brgft3t1vcqeogp4', '::1', 1662237348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323233373138383b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('73e67s8v84p1uqg74ogpvdl28gd4a0nv', '::1', 1662237508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323233373530383b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d737563636573737c733a363a22c3897869746f223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('98fgdscphlbrasm3j9ljj0tk6lfb0hgr', '::1', 1662237952, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323233373935313b),
('99i2bv1ukbgbiujvl5cof0j2b17nvmd4', '::1', 1662241373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323234313039323b),
('ul0ai3ickkp8eh4aeggt7he5h1tjkemv', '::1', 1662241501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323234313430313b),
('0po1dk4skrj6k6fg7dor6nqvkp1oebn6', '::1', 1662241847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323234313834343b),
('5do906ag2sidolhhsdcmrc3h0pll64ue', '::1', 1662243883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323234333639363b),
('src08v2tel7k6o010qch971bl9vpidle', '::1', 1662244237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323234343030303b),
('mhj97sue9hc0aaa51lolnnl5im408pli', '::1', 1662244604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323234343530313b),
('m9q0a40q6fsvg2jvnfoenheo4hbm6ddm', '::1', 1662320676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323332303338323b),
('0o3mhvj34avdosae5fandrdl6ath0t1v', '::1', 1662321387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323332313234343b),
('3hq659b0uvdiaof4b6u6s4b0sqd2dje9', '::1', 1662321586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323332313538363b),
('kn76evoipp29v8jn6hid7vcsph53rmp1', '::1', 1662333477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333333437373b),
('bl12bmfsscurtkrfjjcv97a9e9ub784l', '192.168.0.108', 1662333596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333333532333b),
('hde3chbqoebr67iq4rp6qjpp0dck0q1a', '192.168.0.108', 1662335321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333353035373b),
('b1lbdsu5g6ie7jopftnkvgkaoplpm1ng', '192.168.0.108', 1662335190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333353139303b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2sm9nf81p59c6ecfq6ou61tn1dt66kcl', '::1', 1662335546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333353237353b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('ng8ur2kmvvu1p26ims46amhqv1r08vd0', '192.168.0.108', 1662335905, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333353731343b),
('e7b4p4j6sd4tfelf7vmdf4i1fv5dpm2f', '::1', 1662336417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333363239323b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('e8tabkdn2m54unl8f8p2heftoi665fjk', '192.168.0.108', 1662336362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333363334373b);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('95o9vj5u8q7autldlrfe796uk4pjjupv', '::1', 1662336361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333363335333b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('8cfh3gkfnqetbbh6q37h5u3feje7cuvo', '192.168.0.108', 1662336450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333363435303b),
('kog8096e961r1ggl3r4cb0s6fghs9hqa', '192.168.0.108', 1662337224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333363936353b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);
INSERT INTO `school_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('7vkfb95ov8bs0c24jt7kri8ua3kctpmf', '192.168.0.108', 1662337563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333373336343b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d),
('7stbgrbbpc6ui1f0cetsvmnagki0na6g', '192.168.0.108', 1662338660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636323333383633323b6c616e677c733a373a227370616e697368223b6c6f67696e7573657249447c733a313a2231223b6e616d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365727479706549447c733a313a2231223b75736572747970657c733a353a2241646d696e223b757365726e616d657c733a353a2261646d696e223b70686f746f7c733a31313a2264656661756c742e706e67223b64656661756c747363686f6f6c7965617249447c733a313a2231223b76617269667976616c6964757365727c4e3b6c6f67676564696e7c623a313b6765745f7065726d697373696f6e7c623a313b6d61737465725f7065726d697373696f6e5f7365747c613a3337303a7b733a393a2264617368626f617264223b733a333a22796573223b733a373a2273747564656e74223b733a333a22796573223b733a31313a2273747564656e745f616464223b733a333a22796573223b733a31323a2273747564656e745f65646974223b733a333a22796573223b733a31343a2273747564656e745f64656c657465223b733a333a22796573223b733a31323a2273747564656e745f76696577223b733a333a22796573223b733a373a22706172656e7473223b733a333a22796573223b733a31313a22706172656e74735f616464223b733a333a22796573223b733a31323a22706172656e74735f65646974223b733a333a22796573223b733a31343a22706172656e74735f64656c657465223b733a333a22796573223b733a31323a22706172656e74735f76696577223b733a333a22796573223b733a373a2274656163686572223b733a333a22796573223b733a31313a22746561636865725f616464223b733a333a22796573223b733a31323a22746561636865725f65646974223b733a333a22796573223b733a31343a22746561636865725f64656c657465223b733a333a22796573223b733a31323a22746561636865725f76696577223b733a333a22796573223b733a343a2275736572223b733a333a22796573223b733a383a22757365725f616464223b733a333a22796573223b733a393a22757365725f65646974223b733a333a22796573223b733a31313a22757365725f64656c657465223b733a333a22796573223b733a393a22757365725f76696577223b733a333a22796573223b733a373a22636c6173736573223b733a333a22796573223b733a31313a22636c61737365735f616464223b733a333a22796573223b733a31323a22636c61737365735f65646974223b733a333a22796573223b733a31343a22636c61737365735f64656c657465223b733a333a22796573223b733a373a2273656374696f6e223b733a333a22796573223b733a31313a2273656374696f6e5f616464223b733a333a22796573223b733a31323a2273656374696f6e5f65646974223b733a333a22796573223b733a31353a2273656d65737465725f64656c657465223b733a333a22796573223b733a31343a2273656374696f6e5f64656c657465223b733a333a22796573223b733a373a227375626a656374223b733a333a22796573223b733a31313a227375626a6563745f616464223b733a333a22796573223b733a31323a227375626a6563745f65646974223b733a333a22796573223b733a31343a227375626a6563745f64656c657465223b733a333a22796573223b733a383a2273796c6c61627573223b733a333a22796573223b733a31323a2273796c6c616275735f616464223b733a333a22796573223b733a31333a2273796c6c616275735f65646974223b733a333a22796573223b733a31353a2273796c6c616275735f64656c657465223b733a333a22796573223b733a31303a2261737369676e6d656e74223b733a333a22796573223b733a31343a2261737369676e6d656e745f616464223b733a333a22796573223b733a31353a2261737369676e6d656e745f65646974223b733a333a22796573223b733a31373a2261737369676e6d656e745f64656c657465223b733a333a22796573223b733a31353a2261737369676e6d656e745f76696577223b733a333a22796573223b733a373a22726f7574696e65223b733a333a22796573223b733a31313a22726f7574696e655f616464223b733a333a22796573223b733a31323a22726f7574696e655f65646974223b733a333a22796573223b733a31343a22726f7574696e655f64656c657465223b733a333a22796573223b733a31313a2273617474656e64616e6365223b733a333a22796573223b733a31353a2273617474656e64616e63655f616464223b733a333a22796573223b733a31363a2273617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2274617474656e64616e6365223b733a333a22796573223b733a31353a2274617474656e64616e63655f616464223b733a333a22796573223b733a31363a2274617474656e64616e63655f76696577223b733a333a22796573223b733a31313a2275617474656e64616e6365223b733a333a22796573223b733a31353a2275617474656e64616e63655f616464223b733a333a22796573223b733a31363a2275617474656e64616e63655f76696577223b733a333a22796573223b733a343a226578616d223b733a333a22796573223b733a383a226578616d5f616464223b733a333a22796573223b733a393a226578616d5f65646974223b733a333a22796573223b733a31313a226578616d5f64656c657465223b733a333a22796573223b733a31323a226578616d7363686564756c65223b733a333a22796573223b733a31363a226578616d7363686564756c655f616464223b733a333a22796573223b733a31373a226578616d7363686564756c655f65646974223b733a333a22796573223b733a31393a226578616d7363686564756c655f64656c657465223b733a333a22796573223b733a353a226772616465223b733a333a22796573223b733a393a2267726164655f616464223b733a333a22796573223b733a31303a2267726164655f65646974223b733a333a22796573223b733a31323a2267726164655f64656c657465223b733a333a22796573223b733a31313a2265617474656e64616e6365223b733a333a22796573223b733a31353a2265617474656e64616e63655f616464223b733a333a22796573223b733a343a226d61726b223b733a333a22796573223b733a383a226d61726b5f616464223b733a333a22796573223b733a393a226d61726b5f76696577223b733a333a22796573223b733a31343a226d61726b70657263656e74616765223b733a333a22796573223b733a31383a226d61726b70657263656e746167655f616464223b733a333a22796573223b733a31393a226d61726b70657263656e746167655f65646974223b733a333a22796573223b733a32313a226d61726b70657263656e746167655f64656c657465223b733a333a22796573223b733a393a2270726f6d6f74696f6e223b733a333a22796573223b733a31323a22636f6e766572736174696f6e223b733a333a22796573223b733a353a226d65646961223b733a333a22796573223b733a393a226d656469615f616464223b733a333a22796573223b733a31323a226d656469615f64656c657465223b733a333a22796573223b733a31303a226d61696c616e64736d73223b733a333a22796573223b733a31343a226d61696c616e64736d735f616464223b733a333a22796573223b733a31353a226d61696c616e64736d735f76696577223b733a333a22796573223b733a31343a227175657374696f6e5f67726f7570223b733a333a22796573223b733a31383a227175657374696f6e5f67726f75705f616464223b733a333a22796573223b733a31393a227175657374696f6e5f67726f75705f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f67726f75705f64656c657465223b733a333a22796573223b733a31343a227175657374696f6e5f6c6576656c223b733a333a22796573223b733a31383a227175657374696f6e5f6c6576656c5f616464223b733a333a22796573223b733a31393a227175657374696f6e5f6c6576656c5f65646974223b733a333a22796573223b733a32313a227175657374696f6e5f6c6576656c5f64656c657465223b733a333a22796573223b733a31333a227175657374696f6e5f62616e6b223b733a333a22796573223b733a31373a227175657374696f6e5f62616e6b5f616464223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f65646974223b733a333a22796573223b733a32303a227175657374696f6e5f62616e6b5f64656c657465223b733a333a22796573223b733a31383a227175657374696f6e5f62616e6b5f76696577223b733a333a22796573223b733a31313a226f6e6c696e655f6578616d223b733a333a22796573223b733a31353a226f6e6c696e655f6578616d5f616464223b733a333a22796573223b733a31363a226f6e6c696e655f6578616d5f65646974223b733a333a22796573223b733a31383a226f6e6c696e655f6578616d5f64656c657465223b733a333a22796573223b733a31313a22696e737472756374696f6e223b733a333a22796573223b733a31353a22696e737472756374696f6e5f616464223b733a333a22796573223b733a31363a22696e737472756374696f6e5f65646974223b733a333a22796573223b733a31383a22696e737472756374696f6e5f64656c657465223b733a333a22796573223b733a31363a22696e737472756374696f6e5f76696577223b733a333a22796573223b733a31353a2273616c6172795f74656d706c617465223b733a333a22796573223b733a31393a2273616c6172795f74656d706c6174655f616464223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a2273616c6172795f74656d706c6174655f64656c657465223b733a333a22796573223b733a32303a2273616c6172795f74656d706c6174655f76696577223b733a333a22796573223b733a31353a22686f75726c795f74656d706c617465223b733a333a22796573223b733a31393a22686f75726c795f74656d706c6174655f616464223b733a333a22796573223b733a32303a22686f75726c795f74656d706c6174655f65646974223b733a333a22796573223b733a32323a22686f75726c795f74656d706c6174655f64656c657465223b733a333a22796573223b733a31333a226d616e6167655f73616c617279223b733a333a22796573223b733a31373a226d616e6167655f73616c6172795f616464223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f65646974223b733a333a22796573223b733a32303a226d616e6167655f73616c6172795f64656c657465223b733a333a22796573223b733a31383a226d616e6167655f73616c6172795f76696577223b733a333a22796573223b733a31323a226d616b655f7061796d656e74223b733a333a22796573223b733a363a2276656e646f72223b733a333a22796573223b733a31303a2276656e646f725f616464223b733a333a22796573223b733a31313a2276656e646f725f65646974223b733a333a22796573223b733a31333a2276656e646f725f64656c657465223b733a333a22796573223b733a383a226c6f636174696f6e223b733a333a22796573223b733a31323a226c6f636174696f6e5f616464223b733a333a22796573223b733a31333a226c6f636174696f6e5f65646974223b733a333a22796573223b733a31353a226c6f636174696f6e5f64656c657465223b733a333a22796573223b733a31343a2261737365745f63617465676f7279223b733a333a22796573223b733a31383a2261737365745f63617465676f72795f616464223b733a333a22796573223b733a31393a2261737365745f63617465676f72795f65646974223b733a333a22796573223b733a32313a2261737365745f63617465676f72795f64656c657465223b733a333a22796573223b733a353a226173736574223b733a333a22796573223b733a393a2261737365745f616464223b733a333a22796573223b733a31303a2261737365745f65646974223b733a333a22796573223b733a31323a2261737365745f64656c657465223b733a333a22796573223b733a31303a2261737365745f76696577223b733a333a22796573223b733a31363a2261737365745f61737369676e6d656e74223b733a333a22796573223b733a32303a2261737365745f61737369676e6d656e745f616464223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f65646974223b733a333a22796573223b733a32333a2261737365745f61737369676e6d656e745f64656c657465223b733a333a22796573223b733a32313a2261737365745f61737369676e6d656e745f76696577223b733a333a22796573223b733a383a227075726368617365223b733a333a22796573223b733a31323a2270757263686173655f616464223b733a333a22796573223b733a31333a2270757263686173655f65646974223b733a333a22796573223b733a31353a2270757263686173655f64656c657465223b733a333a22796573223b733a31353a2270726f6475637463617465676f7279223b733a333a22796573223b733a31393a2270726f6475637463617465676f72795f616464223b733a333a22796573223b733a32303a2270726f6475637463617465676f72795f65646974223b733a333a22796573223b733a32323a2270726f6475637463617465676f72795f64656c657465223b733a333a22796573223b733a373a2270726f64756374223b733a333a22796573223b733a31313a2270726f647563745f616464223b733a333a22796573223b733a31323a2270726f647563745f65646974223b733a333a22796573223b733a31343a2270726f647563745f64656c657465223b733a333a22796573223b733a31363a2270726f6475637477617265686f757365223b733a333a22796573223b733a32303a2270726f6475637477617265686f7573655f616464223b733a333a22796573223b733a32313a2270726f6475637477617265686f7573655f65646974223b733a333a22796573223b733a32333a2270726f6475637477617265686f7573655f64656c657465223b733a333a22796573223b733a31353a2270726f64756374737570706c696572223b733a333a22796573223b733a31393a2270726f64756374737570706c6965725f616464223b733a333a22796573223b733a32303a2270726f64756374737570706c6965725f65646974223b733a333a22796573223b733a32323a2270726f64756374737570706c6965725f64656c657465223b733a333a22796573223b733a31353a2270726f647563747075726368617365223b733a333a22796573223b733a31393a2270726f6475637470757263686173655f616464223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f65646974223b733a333a22796573223b733a32323a2270726f6475637470757263686173655f64656c657465223b733a333a22796573223b733a32303a2270726f6475637470757263686173655f76696577223b733a333a22796573223b733a31313a2270726f6475637473616c65223b733a333a22796573223b733a31353a2270726f6475637473616c655f616464223b733a333a22796573223b733a31363a2270726f6475637473616c655f65646974223b733a333a22796573223b733a31383a2270726f6475637473616c655f64656c657465223b733a333a22796573223b733a31363a2270726f6475637473616c655f76696577223b733a333a22796573223b733a31333a226c6561766563617465676f7279223b733a333a22796573223b733a31373a226c6561766563617465676f72795f616464223b733a333a22796573223b733a31383a226c6561766563617465676f72795f65646974223b733a333a22796573223b733a32303a226c6561766563617465676f72795f64656c657465223b733a333a22796573223b733a31313a226c6561766561737369676e223b733a333a22796573223b733a31353a226c6561766561737369676e5f616464223b733a333a22796573223b733a31363a226c6561766561737369676e5f65646974223b733a333a22796573223b733a31383a226c6561766561737369676e5f64656c657465223b733a333a22796573223b733a31303a226c656176656170706c79223b733a333a22796573223b733a31343a226c656176656170706c795f616464223b733a333a22796573223b733a31353a226c656176656170706c795f65646974223b733a333a22796573223b733a31373a226c656176656170706c795f64656c657465223b733a333a22796573223b733a31353a226c656176656170706c795f76696577223b733a333a22796573223b733a31363a226c656176656170706c69636174696f6e223b733a333a22796573223b733a31383a226163746976697469657363617465676f7279223b733a333a22796573223b733a32323a226163746976697469657363617465676f72795f616464223b733a333a22796573223b733a32333a226163746976697469657363617465676f72795f65646974223b733a333a22796573223b733a32353a226163746976697469657363617465676f72795f64656c657465223b733a333a22796573223b733a31303a2261637469766974696573223b733a333a22796573223b733a31343a22616374697669746965735f616464223b733a333a22796573223b733a31373a22616374697669746965735f64656c657465223b733a333a22796573223b733a393a226368696c6463617265223b733a333a22796573223b733a31333a226368696c64636172655f616464223b733a333a22796573223b733a31343a226368696c64636172655f65646974223b733a333a22796573223b733a31363a226368696c64636172655f64656c657465223b733a333a22796573223b733a373a226c6d656d626572223b733a333a22796573223b733a31313a226c6d656d6265725f616464223b733a333a22796573223b733a31323a226c6d656d6265725f65646974223b733a333a22796573223b733a31343a226c6d656d6265725f64656c657465223b733a333a22796573223b733a31323a226c6d656d6265725f76696577223b733a333a22796573223b733a343a22626f6f6b223b733a333a22796573223b733a383a22626f6f6b5f616464223b733a333a22796573223b733a393a22626f6f6b5f65646974223b733a333a22796573223b733a31313a22626f6f6b5f64656c657465223b733a333a22796573223b733a353a226973737565223b733a333a22796573223b733a393a2269737375655f616464223b733a333a22796573223b733a31303a2269737375655f65646974223b733a333a22796573223b733a31303a2269737375655f76696577223b733a333a22796573223b733a363a2265626f6f6b73223b733a333a22796573223b733a31303a2265626f6f6b735f616464223b733a333a22796573223b733a31313a2265626f6f6b735f65646974223b733a333a22796573223b733a31333a2265626f6f6b735f64656c657465223b733a333a22796573223b733a31313a2265626f6f6b735f76696577223b733a333a22796573223b733a393a227472616e73706f7274223b733a333a22796573223b733a31333a227472616e73706f72745f616464223b733a333a22796573223b733a31343a227472616e73706f72745f65646974223b733a333a22796573223b733a31363a227472616e73706f72745f64656c657465223b733a333a22796573223b733a373a22746d656d626572223b733a333a22796573223b733a31313a22746d656d6265725f616464223b733a333a22796573223b733a31323a22746d656d6265725f65646974223b733a333a22796573223b733a31343a22746d656d6265725f64656c657465223b733a333a22796573223b733a31323a22746d656d6265725f76696577223b733a333a22796573223b733a363a22686f7374656c223b733a333a22796573223b733a31303a22686f7374656c5f616464223b733a333a22796573223b733a31313a22686f7374656c5f65646974223b733a333a22796573223b733a31333a22686f7374656c5f64656c657465223b733a333a22796573223b733a383a2263617465676f7279223b733a333a22796573223b733a31323a2263617465676f72795f616464223b733a333a22796573223b733a31333a2263617465676f72795f65646974223b733a333a22796573223b733a31353a2263617465676f72795f64656c657465223b733a333a22796573223b733a373a22686d656d626572223b733a333a22796573223b733a31313a22686d656d6265725f616464223b733a333a22796573223b733a31323a22686d656d6265725f65646974223b733a333a22796573223b733a31343a22686d656d6265725f64656c657465223b733a333a22796573223b733a31323a22686d656d6265725f76696577223b733a333a22796573223b733a383a226665657479706573223b733a333a22796573223b733a31323a2266656574797065735f616464223b733a333a22796573223b733a31333a2266656574797065735f65646974223b733a333a22796573223b733a31353a2266656574797065735f64656c657465223b733a333a22796573223b733a373a22696e766f696365223b733a333a22796573223b733a31313a22696e766f6963655f616464223b733a333a22796573223b733a31323a22696e766f6963655f65646974223b733a333a22796573223b733a31343a22696e766f6963655f64656c657465223b733a333a22796573223b733a31323a22696e766f6963655f76696577223b733a333a22796573223b733a31343a227061796d656e74686973746f7279223b733a333a22796573223b733a31393a227061796d656e74686973746f72795f65646974223b733a333a22796573223b733a32313a227061796d656e74686973746f72795f64656c657465223b733a333a22796573223b733a373a22657870656e7365223b733a333a22796573223b733a31313a22657870656e73655f616464223b733a333a22796573223b733a31323a22657870656e73655f65646974223b733a333a22796573223b733a31343a22657870656e73655f64656c657465223b733a333a22796573223b733a363a22696e636f6d65223b733a333a22796573223b733a31303a22696e636f6d655f616464223b733a333a22796573223b733a31313a22696e636f6d655f65646974223b733a333a22796573223b733a31333a22696e636f6d655f64656c657465223b733a333a22796573223b733a31343a22676c6f62616c5f7061796d656e74223b733a333a22796573223b733a363a226e6f74696365223b733a333a22796573223b733a31303a226e6f746963655f616464223b733a333a22796573223b733a31313a226e6f746963655f65646974223b733a333a22796573223b733a31333a226e6f746963655f64656c657465223b733a333a22796573223b733a31313a226e6f746963655f76696577223b733a333a22796573223b733a353a226576656e74223b733a333a22796573223b733a393a226576656e745f616464223b733a333a22796573223b733a31303a226576656e745f65646974223b733a333a22796573223b733a31323a226576656e745f64656c657465223b733a333a22796573223b733a31303a226576656e745f76696577223b733a333a22796573223b733a373a22686f6c69646179223b733a333a22796573223b733a31313a22686f6c696461795f616464223b733a333a22796573223b733a31323a22686f6c696461795f65646974223b733a333a22796573223b733a31343a22686f6c696461795f64656c657465223b733a333a22796573223b733a31323a22686f6c696461795f76696577223b733a333a22796573223b733a31333a22636c61737365737265706f7274223b733a333a22796573223b733a31333a2273747564656e747265706f7274223b733a333a22796573223b733a31323a226964636172647265706f7274223b733a333a22796573223b733a31353a2261646d6974636172647265706f7274223b733a333a22796573223b733a31333a22726f7574696e657265706f7274223b733a333a22796573223b733a31383a226578616d7363686564756c657265706f7274223b733a333a22796573223b733a31363a22617474656e64616e63657265706f7274223b733a333a22796573223b733a32343a22617474656e64616e63656f766572766965777265706f7274223b733a333a22796573223b733a31383a226c696272617279626f6f6b737265706f7274223b733a333a22796573223b733a31373a226c696272617279636172647265706f7274223b733a333a22796573223b733a32323a226c696272617279626f6f6b69737375657265706f7274223b733a333a22796573223b733a31343a227465726d696e616c7265706f7274223b733a333a22796573223b733a31363a226d6572697473746167657265706f7274223b733a333a22796573223b733a32313a22746162756c6174696f6e73686565747265706f7274223b733a333a22796573223b733a31353a226d61726b73686565747265706f7274223b733a333a22796573223b733a31383a2270726f6772657373636172647265706f7274223b733a333a22796573223b733a31363a226f6e6c696e656578616d7265706f7274223b733a333a22796573223b733a32343a226f6e6c696e656578616d7175657374696f6e7265706f7274223b733a333a22796573223b733a32313a226f6e6c696e6561646d697373696f6e7265706f7274223b733a333a22796573223b733a31373a2263657274696669636174657265706f7274223b733a333a22796573223b733a32323a226c656176656170706c69636174696f6e7265706f7274223b733a333a22796573223b733a32313a2270726f6475637470757263686173657265706f7274223b733a333a22796573223b733a31373a2270726f6475637473616c657265706f7274223b733a333a22796573223b733a32333a227365617263687061796d656e74666565737265706f7274223b733a333a22796573223b733a31303a22666565737265706f7274223b733a333a22796573223b733a31333a22647565666565737265706f7274223b733a333a22796573223b733a31373a2262616c616e6365666565737265706f7274223b733a333a22796573223b733a31373a227472616e73616374696f6e7265706f7274223b733a333a22796573223b733a31373a2273747564656e7466696e657265706f7274223b733a333a22796573223b733a31323a2273616c6172797265706f7274223b733a333a22796573223b733a31393a226163636f756e746c65646765727265706f7274223b733a333a22796573223b733a31353a226f6e6c696e6561646d697373696f6e223b733a333a22796573223b733a31313a2276697369746f72696e666f223b733a333a22796573223b733a31383a2276697369746f72696e666f5f64656c657465223b733a333a22796573223b733a31363a2276697369746f72696e666f5f76696577223b733a333a22796573223b733a31303a227363686f6f6c79656172223b733a333a22796573223b733a31343a227363686f6f6c796561725f616464223b733a333a22796573223b733a31353a227363686f6f6c796561725f65646974223b733a333a22796573223b733a31373a227363686f6f6c796561725f64656c657465223b733a333a22796573223b733a31323a2273747564656e7467726f7570223b733a333a22796573223b733a31363a2273747564656e7467726f75705f616464223b733a333a22796573223b733a31373a2273747564656e7467726f75705f65646974223b733a333a22796573223b733a31393a2273747564656e7467726f75705f64656c657465223b733a333a22796573223b733a383a22636f6d706c61696e223b733a333a22796573223b733a31323a22636f6d706c61696e5f616464223b733a333a22796573223b733a31333a22636f6d706c61696e5f65646974223b733a333a22796573223b733a31353a22636f6d706c61696e5f64656c657465223b733a333a22796573223b733a31333a22636f6d706c61696e5f76696577223b733a333a22796573223b733a32303a2263657274696669636174655f74656d706c617465223b733a333a22796573223b733a32343a2263657274696669636174655f74656d706c6174655f616464223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f65646974223b733a333a22796573223b733a32373a2263657274696669636174655f74656d706c6174655f64656c657465223b733a333a22796573223b733a32353a2263657274696669636174655f74656d706c6174655f76696577223b733a333a22796573223b733a31313a2273797374656d61646d696e223b733a333a22796573223b733a31353a2273797374656d61646d696e5f616464223b733a333a22796573223b733a31363a2273797374656d61646d696e5f65646974223b733a333a22796573223b733a31383a2273797374656d61646d696e5f64656c657465223b733a333a22796573223b733a31363a2273797374656d61646d696e5f76696577223b733a333a22796573223b733a31333a22726573657470617373776f7264223b733a333a22796573223b733a31303a22736f6369616c6c696e6b223b733a333a22796573223b733a31343a22736f6369616c6c696e6b5f616464223b733a333a22796573223b733a31353a22736f6369616c6c696e6b5f65646974223b733a333a22796573223b733a31373a22736f6369616c6c696e6b5f64656c657465223b733a333a22796573223b733a31383a226d61696c616e64736d7374656d706c617465223b733a333a22796573223b733a32323a226d61696c616e64736d7374656d706c6174655f616464223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f65646974223b733a333a22796573223b733a32353a226d61696c616e64736d7374656d706c6174655f64656c657465223b733a333a22796573223b733a32333a226d61696c616e64736d7374656d706c6174655f76696577223b733a333a22796573223b733a31303a2262756c6b696d706f7274223b733a333a22796573223b733a363a226261636b7570223b733a333a22796573223b733a383a227573657274797065223b733a333a22796573223b733a31323a2275736572747970655f616464223b733a333a22796573223b733a31333a2275736572747970655f65646974223b733a333a22796573223b733a31353a2275736572747970655f64656c657465223b733a333a22796573223b733a31303a227065726d697373696f6e223b733a333a22796573223b733a363a22757064617465223b733a333a22796573223b733a31363a22706f7374735f63617465676f72696573223b733a333a22796573223b733a32303a22706f7374735f63617465676f726965735f616464223b733a333a22796573223b733a32313a22706f7374735f63617465676f726965735f65646974223b733a333a22796573223b733a32333a22706f7374735f63617465676f726965735f64656c657465223b733a333a22796573223b733a353a22706f737473223b733a333a22796573223b733a393a22706f7374735f616464223b733a333a22796573223b733a31303a22706f7374735f65646974223b733a333a22796573223b733a31323a22706f7374735f64656c657465223b733a333a22796573223b733a353a227061676573223b733a333a22796573223b733a393a2270616765735f616464223b733a333a22796573223b733a31303a2270616765735f65646974223b733a333a22796573223b733a31323a2270616765735f64656c657465223b733a333a22796573223b733a31323a2266726f6e74656e646d656e75223b733a333a22796573223b733a373a2273657474696e67223b733a333a22796573223b733a31363a2266726f6e74656e645f73657474696e67223b733a333a22796573223b733a31353a227061796d656e7473657474696e6773223b733a333a22796573223b733a31313a22736d7373657474696e6773223b733a333a22796573223b733a31323a22656d61696c73657474696e67223b733a333a22796573223b733a393a2274616b655f6578616d223b733a333a22796573223b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `section`
--

CREATE TABLE `section` (
  `sectionID` int(11) UNSIGNED NOT NULL,
  `section` varchar(60) NOT NULL,
  `category` varchar(128) NOT NULL,
  `capacity` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `note` text,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `section`
--

INSERT INTO `section` (`sectionID`, `section`, `category`, `capacity`, `classesID`, `teacherID`, `note`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(4, 'A', 'SECUNDARIA', 25, 5, 16, '', '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin'),
(5, 'Chicas', 'ballet', 10, 8, 12, '', '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin'),
(6, 'chicos', 'ballet', 10, 8, 12, '', '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin'),
(7, 'UNICA', 'Seccion Unica Primero Primaria', 30, 2, 4, '', '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setting`
--

CREATE TABLE `setting` (
  `fieldoption` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `setting`
--

INSERT INTO `setting` (`fieldoption`, `value`) VALUES
('absent_auto_sms', '1'),
('address', 'Calle Principal HUITE Zacapa'),
('attendance', 'day'),
('attendance_notification', 'none'),
('attendance_notification_template', '0'),
('attendance_smsgateway', '0'),
('automation', '5'),
('auto_invoice_generate', '0'),
('auto_update_notification', '0'),
('backend_theme', 'blacklight'),
('captcha_status', '1'),
('currency_code', 'Q'),
('currency_symbol', 'Q'),
('email', 'admin@admin.com'),
('ex_class', '0'),
('footer', 'Copyright &copy; Estudiantes UMG 2022'),
('frontendorbackend', 'YES'),
('frontend_theme', 'default'),
('google_analytics', ''),
('language', 'spanish'),
('language_status', '0'),
('mark_1', '1'),
('note', '1'),
('phone', '79331190'),
('photo', '8b1a39c16bfb66aae6ecff4040e4c9d5d5478356eef22edd13de7980a40c90eb1423fa53999aaa378e072a12285898d3c2511367219d303e36b4aec0dec77136.png'),
('profile_edit', '0'),
('purchase_code', 'b61d96a2-e383-4771-ac09-af987f7f4826'),
('purchase_username', 'AnthonCode'),
('recaptcha_secret_key', ''),
('recaptcha_site_key', ''),
('school_type', 'classbase'),
('school_year', '1'),
('sname', 'Esquipulas'),
('student_ID_format', '1'),
('time_zone', 'US/Central'),
('updateversion', '4.2'),
('weekends', '0,6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider`
--

CREATE TABLE `slider` (
  `sliderID` int(11) NOT NULL,
  `pagesID` int(11) NOT NULL,
  `slider` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `slider`
--

INSERT INTO `slider` (`sliderID`, `pagesID`, `slider`) VALUES
(27, 1, 16),
(28, 1, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smssettings`
--

CREATE TABLE `smssettings` (
  `smssettingsID` int(11) UNSIGNED NOT NULL,
  `types` varchar(255) DEFAULT NULL,
  `field_names` varchar(255) DEFAULT NULL,
  `field_values` varchar(255) DEFAULT NULL,
  `smssettings_extra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smssettings`
--

INSERT INTO `smssettings` (`smssettingsID`, `types`, `field_names`, `field_values`, `smssettings_extra`) VALUES
(1, 'clickatell', 'clickatell_username', '', NULL),
(2, 'clickatell', 'clickatell_password', '', NULL),
(3, 'clickatell', 'clickatell_api_key', '', NULL),
(4, 'twilio', 'twilio_accountSID', '', NULL),
(5, 'twilio', 'twilio_authtoken', '', NULL),
(6, 'twilio', 'twilio_fromnumber', '', NULL),
(7, 'bulk', 'bulk_username', '', NULL),
(8, 'bulk', 'bulk_password', '', NULL),
(9, 'msg91', 'msg91_authKey', '', NULL),
(10, 'msg91', 'msg91_senderID', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sociallink`
--

CREATE TABLE `sociallink` (
  `sociallinkID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `googleplus` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `studentID` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `address` text,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `bloodgroup` varchar(5) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `registerNO` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `library` int(11) NOT NULL,
  `hostel` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `createschoolyearID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`studentID`, `name`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `classesID`, `sectionID`, `roll`, `bloodgroup`, `country`, `registerNO`, `state`, `library`, `hostel`, `transport`, `photo`, `parentID`, `createschoolyearID`, `schoolyearID`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`) VALUES
(1, 'CARLOS FERREIRA LOPEZ', '2010-01-04', 'Hombre', '', 'carlos@gmail.com', '87666543', 'CALLE INDEPENDENCIA', 2, 1, 12, 'A+', 'PE', '4324WE4234', 'SOLTERO', 0, 0, 0, 'default.png', 1, 1, 1, 'carlos', '7ddc890cdef1a904a52988989a6e90c484cff07a1f3dbf5349e62893b17be304e33b9e3e0415c2f36a2ab69ba182268725347a9f39855b4c3e9dc0113827fc30', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(2, 'JULIETA ROJAS LUNA', '1994-06-21', 'Mujer', '', 'JULI@GMAIL.COM', '', '', 2, 1, 1, 'O+', 'PE', '412413EW', '', 1, 0, 0, 'default.png', 2, 1, 1, 'julieta', '9ea7080a3364d0d0c73084d47c54ed5b767b1a5d31f5948519db6d9e47883bc4f44c1484c33f3dbac03e8a840f41140d7b46dcc3f43b98360259cae87521921e', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(4, 'ANGELA LOZA VALENCIA', '1994-10-25', 'Mujer', '', '', '', '', 2, 1, 4, '0', 'PE', '3124EWAE', '', 0, 0, 0, 'default.png', 4, 1, 1, 'angela', '021a312102d8f325c1804586b6fd2843ab66a2496187d96aa8ae9557743e4a5deae3947903bfe0b30e22c04167811ca1b466924ac21051ede12e9129cfdd0ef6', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(5, 'FRANZ PLACIDO DOMINGO', '2010-07-19', 'Hombre', '', 'FRANCO@GMAIL.COM', '3231422355', '', 2, 1, 6, 'A-', 'PE', '4', '', 0, 0, 0, 'default.png', 5, 1, 1, 'franco', '8178781b5e6575f3dbfa3c76d76a7fb8ac1652b14be40234cc9eb3ba1b762fca72ae1fee83068d0e53c31977963d5aedc6b2748052b60c24a72aedcd483d99a2', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(6, 'ABIGAIL FONTANER DALAS', '1980-10-08', 'Hombre', '', 'ABIGAIL@GMAIL.COM', '323214354', '', 2, 1, 7, 'O+', 'PE', 'E234', '', 0, 0, 0, 'default.png', 6, 1, 1, 'abigail', '989ca0579e9f12f4a1f2700ec29b0b71b2d90c8ccf201256b9dbfc9e40e2bae7a2de32294bd8d57394689ad39ecbf2b7f34d2316c7b82ee062ebf5fe8a74681f', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(8, 'IGNACIO RESTREPO GOMEZ', '1992-09-13', 'Hombre', '', 'IGNACIO@GMAIL.COM', '2422352353', '', 2, 1, 8, 'B+', 'MX', '545EEWR', '', 0, 0, 0, 'default.png', 8, 1, 1, 'ignacio', '433f6ef518305ed0941960de7735eb1340ce768990f954e6fcefdc67a3b9f1c231769e188859dc69f1fe145495c9870cfaf4e26b5313d373271900504a367d30', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(9, 'LAURA MENDOZA TAMBO', '1990-04-30', 'Mujer', '', '', '5353466457576', '', 2, 1, 9, 'A-', 'MX', '68IUYI', '', 0, 0, 0, 'default.png', 9, 1, 1, 'laura', 'c642ae4488cbdb0579a2e0644d3216772179350f20de2780057a22c9863f367f17a00ea34b1401d5d124299e7e208dceb321fa59398301c83d89329688104ed2', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(10, 'JUAN CARLOS ORTEGA AVALOS', '1995-10-10', 'Hombre', '', '', '', '', 2, 1, 10, 'O+', 'MX', '5345TGG', '', 0, 0, 0, 'default.png', 10, 1, 1, 'juan', '322ebbbd12f0301262e5deb417b8c5199a4acff59b1154db7013a4d64ff934bac51853969f2c37226975e8ffdc33408691aa92bd9c5e5fcf96b8d6d2da7772a7', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(11, 'ROBERTO AGUILAR VARGAS', '1985-05-15', 'Hombre', '', '', '', '', 2, 1, 11, 'AB+', 'MX', '534TR', '', 0, 0, 0, 'default.png', 11, 1, 1, 'aguilar', '322ebbbd12f0301262e5deb417b8c5199a4acff59b1154db7013a4d64ff934bac51853969f2c37226975e8ffdc33408691aa92bd9c5e5fcf96b8d6d2da7772a7', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(16, 'EVA PLATA HEREDIA', '1990-06-20', 'Mujer', '', 'EVA@GMAIL.COM', '232342353', '', 2, 1, 17, 'B+', 'PE', '423RW', '', 0, 0, 0, 'default.png', 16, 1, 1, 'evaplata', '322ebbbd12f0301262e5deb417b8c5199a4acff59b1154db7013a4d64ff934bac51853969f2c37226975e8ffdc33408691aa92bd9c5e5fcf96b8d6d2da7772a7', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(17, 'MIGUEL LUJAN SANTOS', '1983-07-21', 'Hombre', '', 'MIG@GMAIL.COM', '2145345', '', 2, 1, 18, 'B+', 'PE', '423RW34', '', 0, 0, 0, 'default.png', 17, 1, 1, 'miguelujan', '322ebbbd12f0301262e5deb417b8c5199a4acff59b1154db7013a4d64ff934bac51853969f2c37226975e8ffdc33408691aa92bd9c5e5fcf96b8d6d2da7772a7', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(18, 'RUDY MARQUEZ ROLDAN', '1994-03-07', 'Hombre', '', '', '6474758', '', 2, 1, 19, 'A-', 'PE', '65477Y', '', 0, 0, 0, 'default.png', 18, 1, 1, 'rudy', '322ebbbd12f0301262e5deb417b8c5199a4acff59b1154db7013a4d64ff934bac51853969f2c37226975e8ffdc33408691aa92bd9c5e5fcf96b8d6d2da7772a7', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(20, 'LUCIANA', '2003-05-12', 'Mujer', '', '', '', '', 8, 5, 20, 'A-', 'PE', '4R43', '', 0, 0, 0, 'default.png', 12, 1, 1, 'luci', 'fe961c391c311e4e14fe6c8360f47c3bba093399bd46cfe20698d4bc814fb295a2a9d947ea85c6e1f9f85b8a0ec40832775475b4e6a9b633f63f48f4d97f52c1', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(21, 'test', '2020-02-01', 'Hombre', 'test', 'test@gmail.com', '45187623', 'test', 2, 7, 111, 'A+', 'GT', 'NO', 'test', 0, 0, 0, 'default.png', 1, 1, 1, 'test', '88013bf5fc83c2dc82a93627a0dfe0194afaa8797b5a4fa1eab3f50ea984eb071208f2ed23d62936f011c732e1e7f76696be25d7e6e64fa1d343426f41b6f9d2', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(22, 'test', '2020-02-01', 'Hombre', 'test', 'test1@gmail.com', '45187622', 'test', 2, 7, 122, 'A-', 'GT', '12211', 'test', 0, 0, 0, 'default.png', 1, 1, 1, 'test1', '88013bf5fc83c2dc82a93627a0dfe0194afaa8797b5a4fa1eab3f50ea984eb071208f2ed23d62936f011c732e1e7f76696be25d7e6e64fa1d343426f41b6f9d2', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(23, 'test2', '2020-02-01', 'Hombre', 'test', 'test2@gmail.com', '45781234', 'test2', 2, 7, 113, 'A+', 'GT', '10001', 'activo', 0, 0, 0, 'default.png', 1, 1, 1, 'test2', '8881fc3374966e994d7e51a171f871d5d8d1f7a9c50f1762d05bf03903b1565195384b888b2ed1360df0c6a9632e33e16847e373c458d8411c13fa69aa3fe5f4', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(25, 'Hugo', '1970-02-07', 'Hombre', 'Catolica', 'hugo@hugo.com', '45122312', 'Usumatlan', 2, 7, 69, 'O+', 'GT', '45122312', 'Zacpa', 0, 0, 0, 'default.png', 1, 1, 1, 'hugo69', 'daa6ab09868246463ea7e203337b7d151a85368034ce1cb791b4a9a0ed8ad12f6c78bfdd621205b1cdafafe3e7e766a82b0386bd5fdebcc999bd38c1a3fa15af', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1),
(26, 'jordi', '1979-02-09', 'Hombre', 'catolico', 'jordi@gmail.com', '25379182', 'gulanœ@', 2, 7, 22232, 'A+', 'CA', '23', '', 0, 0, 0, 'default.png', 7, 1, 1, 'jordi', 'daa6ab09868246463ea7e203337b7d151a85368034ce1cb791b4a9a0ed8ad12f6c78bfdd621205b1cdafafe3e7e766a82b0386bd5fdebcc999bd38c1a3fa15af', 3, '2022-08-03 02:29:15', '2022-08-03 02:29:15', 1, 'admin', 'Admin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studentextend`
--

CREATE TABLE `studentextend` (
  `studentextendID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `studentgroupID` int(11) NOT NULL,
  `optionalsubjectID` int(11) NOT NULL,
  `extracurricularactivities` text,
  `remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `studentextend`
--

INSERT INTO `studentextend` (`studentextendID`, `studentID`, `studentgroupID`, `optionalsubjectID`, `extracurricularactivities`, `remarks`) VALUES
(1, 1, 1, 0, 'deportes,', ''),
(2, 2, 1, 1, '', ''),
(4, 4, 2, 1, '', ''),
(5, 5, 2, 3, '', ''),
(6, 6, 2, 3, '', ''),
(8, 8, 2, 3, '', ''),
(9, 9, 2, 3, '', ''),
(10, 10, 2, 3, '', ''),
(11, 11, 2, 3, '', ''),
(16, 16, 2, 3, '', ''),
(17, 17, 2, 3, '', ''),
(18, 18, 1, 3, '', ''),
(20, 20, 4, 0, '', ''),
(21, 21, 0, 0, 'test', 'test'),
(22, 22, 0, 0, 'test', 'test'),
(23, 23, 0, 0, '', ''),
(25, 25, 0, 0, 'Es bueno cantando', 'Este es hugo :)'),
(26, 26, 2, 0, 'matematicas', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studentgroup`
--

CREATE TABLE `studentgroup` (
  `studentgroupID` int(11) NOT NULL,
  `group` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `studentgroup`
--

INSERT INTO `studentgroup` (`studentgroupID`, `group`) VALUES
(1, 'Ciencia'),
(2, 'Artes'),
(3, 'Deportes'),
(4, 'Becados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studentrelation`
--

CREATE TABLE `studentrelation` (
  `studentrelationID` int(11) NOT NULL,
  `srstudentID` int(11) DEFAULT NULL,
  `srname` varchar(40) NOT NULL,
  `srclassesID` int(11) DEFAULT NULL,
  `srclasses` varchar(40) DEFAULT NULL,
  `srroll` int(11) DEFAULT NULL,
  `srregisterNO` varchar(128) DEFAULT NULL,
  `srsectionID` int(11) DEFAULT NULL,
  `srsection` varchar(40) DEFAULT NULL,
  `srstudentgroupID` int(11) NOT NULL,
  `sroptionalsubjectID` int(11) NOT NULL,
  `srschoolyearID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `studentrelation`
--

INSERT INTO `studentrelation` (`studentrelationID`, `srstudentID`, `srname`, `srclassesID`, `srclasses`, `srroll`, `srregisterNO`, `srsectionID`, `srsection`, `srstudentgroupID`, `sroptionalsubjectID`, `srschoolyearID`) VALUES
(1, 1, 'CARLOS FERREIRA LOPEZ', 2, 'PRIMERO PRIMARIA', 12, '4324WE4234', 1, 'SECCION A', 1, 0, 1),
(2, 2, 'JULIETA ROJAS LUNA', 2, 'PRIMERO PRIMARIA', 1, '412413EW', 1, 'SECCION A', 1, 1, 1),
(3, 3, 'MANUEL FLORES VASQUEZ', 2, 'PRIMERO PRIMARIA', 33, '14TWE5', 1, 'SECCION A', 1, 1, 1),
(4, 4, 'ANGELA LOZA VALENCIA', 2, 'PRIMERO PRIMARIA', 4, '3124EWAE', 1, 'SECCION A', 2, 1, 1),
(5, 5, 'FRANZ PLACIDO DOMINGO', 2, 'PRIMERO PRIMARIA', 6, '4', 1, 'SECCION A', 2, 3, 1),
(6, 6, 'ABIGAIL FONTANER DALAS', 2, 'PRIMERO PRIMARIA', 7, 'E234', 1, 'SECCION A', 2, 3, 1),
(7, 7, 'DIEGO GONZALES BARRAGAN', 2, 'PRIMERO PRIMARIA', 43, '64TR', 1, 'SECCION A', 2, 3, 1),
(8, 8, 'IGNACIO RESTREPO GOMEZ', 2, 'PRIMERO PRIMARIA', 8, '545EEWR', 1, 'SECCION A', 2, 3, 1),
(9, 9, 'LAURA MENDOZA TAMBO', 2, 'PRIMERO PRIMARIA', 9, '68IUYI', 1, 'SECCION A', 2, 3, 1),
(10, 10, 'JUAN CARLOS ORTEGA AVALOS', 2, 'PRIMERO PRIMARIA', 10, '5345TGG', 1, 'SECCION A', 2, 3, 1),
(11, 11, 'ROBERTO AGUILAR VARGAS', 2, 'PRIMERO PRIMARIA', 11, '534TR', 1, 'SECCION A', 2, 3, 1),
(12, 12, 'EDUARDO NINA RAMIREZ', 2, 'PRIMERO PRIMARIA', 13, '547TUTU', 1, 'SECCION A', 2, 3, 1),
(13, 13, 'DIONICIO DURAN SANCHEZ', 2, 'PRIMERO PRIMARIA', 14, '7547UTRT', 1, 'SECCION A', 2, 3, 1),
(14, 14, 'MOISES MARTINEZ PINTO', 2, 'PRIMERO PRIMARIA', 15, '75UYTU', 1, 'SECCION A', 2, 3, 1),
(15, 15, 'JAVIER TORREZ VELASCO', 2, 'PRIMERO PRIMARIA', 16, 'RYTUTY5', 1, 'SECCION A', 2, 3, 1),
(16, 16, 'EVA PLATA HEREDIA', 2, 'PRIMERO PRIMARIA', 17, '423RW', 1, 'SECCION A', 2, 3, 1),
(17, 17, 'MIGUEL LUJAN SANTOS', 2, 'PRIMERO PRIMARIA', 18, '423RW34', 1, 'SECCION A', 2, 3, 1),
(18, 18, 'RUDY MARQUEZ ROLDAN', 2, 'PRIMERO PRIMARIA', 19, '65477Y', 1, 'SECCION A', 1, 3, 1),
(19, 19, 'Ariel Flores', 2, 'PRIMERO PRIMARIA', 44, '5t4', 1, 'SECCION A', 3, 3, 1),
(20, 20, 'LUCIANA', 8, 'QUINTO PRIMARIA', 20, '4R43', 5, 'Chicas', 4, 0, 1),
(21, 21, 'test', 2, 'PRIMERO PRIMARIA', 111, 'NO', 7, 'UNICA', 0, 0, 1),
(22, 22, 'test', 2, 'PRIMERO PRIMARIA', 122, '12211', 7, 'UNICA', 0, 0, 1),
(23, 23, 'test2', 2, 'PRIMERO PRIMARIA', 113, '10001', 7, 'UNICA', 0, 0, 1),
(24, 24, 'test1', 2, 'PRIMERO PRIMARIA', 100111, 'jajaja', 7, 'UNICA', 0, 0, 1),
(25, 25, 'Hugo', 2, 'PRIMERO PRIMARIA', 69, '45122312', 7, 'UNICA', 0, 0, 1),
(26, 26, 'jordi', 2, 'PRIMERO PRIMARIA', 22232, '23', 7, 'UNICA', 2, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `subjectID` int(11) UNSIGNED NOT NULL,
  `classesID` int(11) NOT NULL,
  `type` int(100) NOT NULL,
  `passmark` int(11) NOT NULL,
  `finalmark` int(11) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `subject_author` varchar(100) DEFAULT NULL,
  `subject_code` tinytext NOT NULL,
  `teacher_name` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`subjectID`, `classesID`, `type`, `passmark`, `finalmark`, `subject`, `subject_author`, `subject_code`, `teacher_name`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(17, 2, 1, 61, 100, 'COMUNICACION Y LENGUAJE', 'MINEDUC', 'CYL1', '', '2022-08-16 11:17:20', '2022-08-16 11:17:20', 1, 'admin', 'Admin'),
(18, 2, 1, 61, 100, 'MATEMATICAS', 'MINEDUC', 'MAT2', '', '2022-08-16 11:18:05', '2022-08-16 11:18:05', 1, 'admin', 'Admin'),
(19, 2, 1, 61, 100, 'MEDIO SOCUAL Y NATURAL', 'MINEDUC', 'MSYN3', '', '2022-08-16 11:18:57', '2022-08-16 11:18:57', 1, 'admin', 'Admin'),
(20, 2, 1, 61, 100, 'EXPRESION ARTISTICA', 'MINEDUC', 'EAR4', '', '2022-08-16 11:19:54', '2022-08-16 11:19:54', 1, 'admin', 'Admin'),
(21, 2, 1, 61, 100, 'EDUCACION FISICA', 'MINEDUC', 'EDF5', '', '2022-08-16 11:20:27', '2022-08-16 11:23:36', 1, 'admin', 'Admin'),
(22, 2, 1, 61, 100, 'FORMACION CIUDADANA', 'MINEDUC', 'FORC6', '', '2022-08-16 11:21:35', '2022-08-16 11:21:35', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjectteacher`
--

CREATE TABLE `subjectteacher` (
  `subjectteacherID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subjectteacher`
--

INSERT INTO `subjectteacher` (`subjectteacherID`, `subjectID`, `classesID`, `teacherID`) VALUES
(23, 17, 2, 4),
(24, 18, 2, 4),
(25, 19, 2, 4),
(26, 20, 2, 4),
(28, 22, 2, 4),
(29, 21, 2, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_attendance`
--

CREATE TABLE `sub_attendance` (
  `attendanceID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `classesID` int(11) NOT NULL,
  `sectionID` int(11) NOT NULL,
  `subjectID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertype` varchar(60) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `syllabus`
--

CREATE TABLE `syllabus` (
  `syllabusID` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `date` date NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `originalfile` text NOT NULL,
  `file` text,
  `classesID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `syllabus`
--

INSERT INTO `syllabus` (`syllabusID`, `title`, `description`, `date`, `usertypeID`, `userID`, `originalfile`, `file`, `classesID`, `schoolyearID`) VALUES
(1, 'ARTES', 'SOBRE ARTES', '2019-04-05', 1, 1, '', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `systemadmin`
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
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL,
  `systemadminextra1` varchar(128) DEFAULT NULL,
  `systemadminextra2` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `systemadmin`
--

INSERT INTO `systemadmin` (`systemadminID`, `name`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`, `systemadminextra1`, `systemadminextra2`) VALUES
(1, 'admin', '1999-12-31', 'Hombre', 'Oriente', 'admin@admin.com', '45187623', 'Gualan Zacapa', '2019-02-02', 'default.png', 'admin', 'd26c696b7b66ab9e8a60a1a81bc6c713fe3bbc580803216c1a07f7b3fefc9bebf46de7033ad891785025653e01861d479dc3cd045c731e0be5725b7d7355019e', 1, '2019-02-02 07:02:51', '2019-02-02 07:02:51', 0, 'admin', 'Admin', 1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tattendance`
--

CREATE TABLE `tattendance` (
  `tattendanceID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tattendance`
--

INSERT INTO `tattendance` (`tattendanceID`, `schoolyearID`, `teacherID`, `usertypeID`, `monthyear`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `a11`, `a12`, `a13`, `a14`, `a15`, `a16`, `a17`, `a18`, `a19`, `a20`, `a21`, `a22`, `a23`, `a24`, `a25`, `a26`, `a27`, `a28`, `a29`, `a30`, `a31`) VALUES
(1, 1, 4, 2, '04-2019', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(2, 1, 8, 2, '04-2019', NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(3, 1, 6, 2, '04-2019', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(4, 1, 5, 2, '04-2019', NULL, NULL, NULL, NULL, 'LE', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(5, 1, 7, 2, '04-2019', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(6, 1, 16, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(7, 1, 11, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(8, 1, 12, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(9, 1, 17, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(10, 1, 10, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(11, 1, 9, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(12, 1, 18, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(13, 1, 14, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(14, 1, 13, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL),
(15, 1, 15, 2, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE `teacher` (
  `teacherID` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `designation` varchar(128) NOT NULL,
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
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`teacherID`, `name`, `designation`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`) VALUES
(4, 'ADOLFO GOMEZ', 'ENCARGADO DE ESTUDIANTES DE PRIMERO PRIMARIA', '1990-06-12', 'Hombre', 'CATOLICO', 'adolfo@gmail.com', '45235226', 'ZACAPA', '2021-02-01', 'default.png', 'adolfo', 'daa6ab09868246463ea7e203337b7d151a85368034ce1cb791b4a9a0ed8ad12f6c78bfdd621205b1cdafafe3e7e766a82b0386bd5fdebcc999bd38c1a3fa15af', 2, '2019-02-02 07:54:45', '2022-08-16 10:55:52', 1, 'admin', 'Admin', 1),
(6, 'ELVIRA LOPEZ', 'ENCARGADO DE ESTUDIANTES DE SECUNDARIA', '1984-11-28', 'mujer', 'CATOLICO', 'elvira@gmail.com', '5252252', 'C. LUNA', '2019-02-02', 'default.png', 'elvira', 'fe961c391c311e4e14fe6c8360f47c3bba093399bd46cfe20698d4bc814fb295a2a9d947ea85c6e1f9f85b8a0ec40832775475b4e6a9b633f63f48f4d97f52c1', 2, '2019-02-02 07:59:14', '2019-02-02 08:01:23', 1, 'admin', 'Admin', 1),
(8, 'ADRES ROJAS', 'Segundo Primaria', '1990-02-09', 'Hombre', '', 'andresrojas@gmail.com', '', '', '2021-12-01', 'default.png', 'andresR', 'fe961c391c311e4e14fe6c8360f47c3bba093399bd46cfe20698d4bc814fb295a2a9d947ea85c6e1f9f85b8a0ec40832775475b4e6a9b633f63f48f4d97f52c1', 2, '2019-03-25 02:45:32', '2022-08-16 11:02:23', 1, 'admin', 'Admin', 1),
(9, 'MARGARITA TERAN', 'CIENCIAS SOCIALES', '1991-07-26', 'Mujer', '', 'MARGARITA@GMAIL.COM', '31212424353', '', '2019-04-11', 'default.png', 'margarita', 'd88c33e3c186fc8bad3d0570bbe596ed03ff64e32a8f5edc595a60b00d54e8c4acaf58bdec75bef14cf6340248135ebc07752e8c255139db5167eaa850edff6d', 2, '2019-04-11 05:28:51', '2019-04-11 05:28:51', 1, 'admin', 'Admin', 1),
(16, 'DANIELA PADILLA', 'HISTORIA', '1997-10-28', 'Mujer', '', 'danielapadilla@gmail.com', '543353647', '', '2022-04-01', 'default.png', 'danielapadilla1', '7ddc890cdef1a904a52988989a6e90c484cff07a1f3dbf5349e62893b17be304e33b9e3e0415c2f36a2ab69ba182268725347a9f39855b4c3e9dc0113827fc30', 2, '2019-04-11 05:36:24', '2022-08-16 11:03:21', 1, 'admin', 'Admin', 1),
(17, 'FRANCISCO QUINTEROS', 'GEOGRAFÍA', '1991-12-20', 'Hombre', '', 'FRANZ@GMAIL.COM', '7547544324', '', '2019-04-11', 'default.png', 'franz', '8178781b5e6575f3dbfa3c76d76a7fb8ac1652b14be40234cc9eb3ba1b762fca72ae1fee83068d0e53c31977963d5aedc6b2748052b60c24a72aedcd483d99a2', 2, '2019-04-11 05:37:28', '2019-04-11 05:37:28', 1, 'admin', 'Admin', 1),
(19, 'ESPARTACUS', 'EDUCACION FISICA', '2000-01-01', 'Hombre', 'Musulman', 'elmatador1@gmail.com', '55121190', 'Zacapa', '2022-01-05', 'default.png', 'elespartano12', 'daa6ab09868246463ea7e203337b7d151a85368034ce1cb791b4a9a0ed8ad12f6c78bfdd621205b1cdafafe3e7e766a82b0386bd5fdebcc999bd38c1a3fa15af', 2, '2022-08-16 11:23:11', '2022-08-16 11:23:11', 1, 'admin', 'Admin', 1),
(20, 'Test', 'Este es un maestro para test', '1990-01-20', 'Hombre', 'Musulman', 'testmaestro@gmail.com', '55555555', 'Gualan Zacapa', '2022-01-20', '6694e05919f3cac83cd6dcf5c8447dd00e2e941c9bddedcedf569049745b5adfa0cdc9863b2828ec2ff0c491815401e3f5944e6f82c10bdbcc0b5ea0aaf65b0c.jpg', 'testmaestro', '88013bf5fc83c2dc82a93627a0dfe0194afaa8797b5a4fa1eab3f50ea984eb071208f2ed23d62936f011c732e1e7f76696be25d7e6e64fa1d343426f41b6f9d2', 2, '2022-08-19 04:37:43', '2022-08-19 04:37:43', 1, 'admin', 'Admin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `themes`
--

CREATE TABLE `themes` (
  `themesID` int(11) NOT NULL,
  `sortID` int(11) NOT NULL DEFAULT '1',
  `themename` varchar(128) NOT NULL,
  `backend` int(11) NOT NULL DEFAULT '1',
  `frontend` int(11) NOT NULL DEFAULT '1',
  `topcolor` text NOT NULL,
  `leftcolor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `themes`
--

INSERT INTO `themes` (`themesID`, `sortID`, `themename`, `backend`, `frontend`, `topcolor`, `leftcolor`) VALUES
(1, 1, 'Default', 1, 1, '#FFFFFF', '#242424'),
(2, 0, 'Blue', 0, 1, '#3c8dbc', '#2d353c'),
(3, 3, 'Black', 1, 1, '#333152', '#37335a'),
(4, 4, 'Purple', 1, 1, '#b0248f', '#2d353c'),
(5, 5, 'Green', 1, 1, '#258b31', '#101529'),
(6, 6, 'Red', 1, 1, '#de2a4f', '#101529'),
(7, 0, 'Yellow', 0, 1, '#f39c12', '#2d353c'),
(8, 7, 'Material Red', 1, 1, '#df3f3d', '#f9fafc'),
(9, 8, 'Black Light', 1, 1, '#fefefe', '#f9fafc'),
(10, 9, 'Material Purple', 1, 1, '#9c27b0', '#f9fafc'),
(11, 10, 'Material Green', 1, 1, '#4caf50', '#f9fafc'),
(12, 11, 'Material Blue', 1, 1, '#3f51b5', '#f9fafc'),
(13, 12, 'Yellow Light', 1, 1, '#f39c12', '#f9fafc'),
(14, 2, 'White Blue', 1, 1, '#ffffff', '#132035');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmember`
--

CREATE TABLE `tmember` (
  `tmemberID` int(11) UNSIGNED NOT NULL,
  `studentID` int(11) NOT NULL,
  `transportID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` tinytext,
  `tbalance` varchar(11) DEFAULT NULL,
  `tjoindate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transport`
--

CREATE TABLE `transport` (
  `transportID` int(11) UNSIGNED NOT NULL,
  `route` text NOT NULL,
  `vehicle` int(11) NOT NULL,
  `fare` varchar(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transport`
--

INSERT INTO `transport` (`transportID`, `route`, `vehicle`, `fare`, `note`) VALUES
(1, 'AVENIDA PRINCIPAL', 12332, '0.50', ''),
(2, 'CALLE LOMA - AVENIDA DANES', 45364, '0.50', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uattendance`
--

CREATE TABLE `uattendance` (
  `uattendanceID` int(200) UNSIGNED NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `monthyear` varchar(10) NOT NULL,
  `a1` varchar(3) DEFAULT NULL,
  `a2` varchar(3) DEFAULT NULL,
  `a3` varchar(3) DEFAULT NULL,
  `a4` varchar(3) DEFAULT NULL,
  `a5` varchar(3) DEFAULT NULL,
  `a6` varchar(3) DEFAULT NULL,
  `a7` varchar(3) DEFAULT NULL,
  `a8` varchar(3) DEFAULT NULL,
  `a9` varchar(3) DEFAULT NULL,
  `a10` varchar(3) DEFAULT NULL,
  `a11` varchar(3) DEFAULT NULL,
  `a12` varchar(3) DEFAULT NULL,
  `a13` varchar(3) DEFAULT NULL,
  `a14` varchar(3) DEFAULT NULL,
  `a15` varchar(3) DEFAULT NULL,
  `a16` varchar(3) DEFAULT NULL,
  `a17` varchar(3) DEFAULT NULL,
  `a18` varchar(3) DEFAULT NULL,
  `a19` varchar(3) DEFAULT NULL,
  `a20` varchar(3) DEFAULT NULL,
  `a21` varchar(3) DEFAULT NULL,
  `a22` varchar(3) DEFAULT NULL,
  `a23` varchar(3) DEFAULT NULL,
  `a24` varchar(3) DEFAULT NULL,
  `a25` varchar(3) DEFAULT NULL,
  `a26` varchar(3) DEFAULT NULL,
  `a27` varchar(3) DEFAULT NULL,
  `a28` varchar(3) DEFAULT NULL,
  `a29` varchar(3) DEFAULT NULL,
  `a30` varchar(3) DEFAULT NULL,
  `a31` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `uattendance`
--

INSERT INTO `uattendance` (`uattendanceID`, `schoolyearID`, `userID`, `usertypeID`, `monthyear`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `a11`, `a12`, `a13`, `a14`, `a15`, `a16`, `a17`, `a18`, `a19`, `a20`, `a21`, `a22`, `a23`, `a24`, `a25`, `a26`, `a27`, `a28`, `a29`, `a30`, `a31`) VALUES
(1, 1, 1, 5, '04-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `update`
--

CREATE TABLE `update` (
  `updateID` int(11) NOT NULL,
  `version` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `userID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `log` longtext NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userID` int(11) UNSIGNED NOT NULL,
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
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userID`, `name`, `dob`, `sex`, `religion`, `email`, `phone`, `address`, `jod`, `photo`, `username`, `password`, `usertypeID`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`, `active`) VALUES
(1, 'DANIEL', '1994-09-26', 'Hombre', '', 'DANIEL@GMAIL.COM', '34634534', '', '2019-04-05', 'default.png', 'daniel', '4f1841cdb66c9634809bb4f96892cbe7834c2b1e6ed947d57c7ef223d232e870efab181d4eb6b7a99cf344b5199de625d61b429f323a3171ba22cbd357ff1d7d', 5, '2019-04-05 10:41:30', '2019-04-05 10:41:30', 1, 'admin', 'Admin', 1),
(2, 'Edgar Jurado', '1990-04-02', 'Hombre', '', 'edgar@gmail.com', '67867978087', 'CALLE LIMON', '2019-03-04', 'default.png', 'contador', 'fe961c391c311e4e14fe6c8360f47c3bba093399bd46cfe20698d4bc814fb295a2a9d947ea85c6e1f9f85b8a0ec40832775475b4e6a9b633f63f48f4d97f52c1', 5, '2019-05-03 11:31:49', '2019-05-03 11:31:49', 1, 'admin', 'Admin', 1),
(3, 'Sandra Barragan', '1992-08-27', 'Mujer', '', 'sandra@gmail.com', '58689789879', 'CALLE SOLAR', '2019-05-03', 'default.png', 'bibliotecario', 'fe961c391c311e4e14fe6c8360f47c3bba093399bd46cfe20698d4bc814fb295a2a9d947ea85c6e1f9f85b8a0ec40832775475b4e6a9b633f63f48f4d97f52c1', 6, '2019-05-03 11:33:01', '2019-05-03 11:33:01', 1, 'admin', 'Admin', 1),
(4, 'Selena Rojas', '1990-09-29', 'Mujer', '', 'selena@gmail.com', '53453456467', 'EN LA SECCION SUR', '2019-05-03', 'default.png', 'recepcionista', 'fe961c391c311e4e14fe6c8360f47c3bba093399bd46cfe20698d4bc814fb295a2a9d947ea85c6e1f9f85b8a0ec40832775475b4e6a9b633f63f48f4d97f52c1', 7, '2019-05-03 11:34:25', '2019-05-03 11:34:25', 1, 'admin', 'Admin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usertype`
--

CREATE TABLE `usertype` (
  `usertypeID` int(11) UNSIGNED NOT NULL,
  `usertype` varchar(60) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `create_userID` int(11) NOT NULL,
  `create_username` varchar(60) NOT NULL,
  `create_usertype` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usertype`
--

INSERT INTO `usertype` (`usertypeID`, `usertype`, `create_date`, `modify_date`, `create_userID`, `create_username`, `create_usertype`) VALUES
(1, 'Admin', '2016-06-24 07:12:49', '2022-09-01 09:48:09', 1, 'admin', 'Super Admin'),
(2, 'Docente', '2016-06-24 07:13:13', '2019-03-26 03:12:08', 1, 'admin', 'Super Admin'),
(3, 'Estudiante', '2016-06-24 07:13:27', '2019-03-26 03:12:18', 1, 'admin', 'Super Admin'),
(4, 'Padres', '2016-06-24 07:13:42', '2019-03-26 03:12:28', 1, 'admin', 'Super Admin'),
(5, 'Contador', '2016-06-24 07:13:54', '2019-03-26 03:12:52', 1, 'admin', 'Super Admin'),
(6, 'Bibliotecario', '2016-06-24 09:09:43', '2019-03-26 03:13:18', 1, 'admin', 'Super Admin'),
(7, 'Recepcionista', '2016-10-30 06:24:41', '2019-03-26 03:13:47', 1, 'admin', 'Admin'),
(8, 'Moderador', '2016-10-30 07:00:20', '2019-03-26 03:14:09', 1, 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vendor`
--

INSERT INTO `vendor` (`vendorID`, `name`, `email`, `phone`, `contact_name`, `date`) VALUES
(1, 'Tomas Barrera', 'tom@barrera.com', '8793893005', 'Tom', '2019-04-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitorinfo`
--

CREATE TABLE `visitorinfo` (
  `visitorID` bigint(12) UNSIGNED NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email_id` varchar(128) DEFAULT NULL,
  `phone` text NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `company_name` varchar(128) DEFAULT NULL,
  `coming_from` varchar(128) DEFAULT NULL,
  `representing` varchar(128) DEFAULT NULL,
  `to_meet_personID` int(11) NOT NULL,
  `to_meet_usertypeID` int(11) NOT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weaverandfine`
--

CREATE TABLE `weaverandfine` (
  `weaverandfineID` int(11) NOT NULL,
  `globalpaymentID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `schoolyearID` int(11) NOT NULL,
  `weaver` double NOT NULL,
  `fine` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activitiesID`);

--
-- Indices de la tabla `activitiescategory`
--
ALTER TABLE `activitiescategory`
  ADD PRIMARY KEY (`activitiescategoryID`);

--
-- Indices de la tabla `activitiescomment`
--
ALTER TABLE `activitiescomment`
  ADD PRIMARY KEY (`activitiescommentID`);

--
-- Indices de la tabla `activitiesmedia`
--
ALTER TABLE `activitiesmedia`
  ADD PRIMARY KEY (`activitiesmediaID`);

--
-- Indices de la tabla `activitiesstudent`
--
ALTER TABLE `activitiesstudent`
  ADD PRIMARY KEY (`activitiesstudentID`);

--
-- Indices de la tabla `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`alertID`);

--
-- Indices de la tabla `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`assetID`);

--
-- Indices de la tabla `asset_assignment`
--
ALTER TABLE `asset_assignment`
  ADD PRIMARY KEY (`asset_assignmentID`);

--
-- Indices de la tabla `asset_category`
--
ALTER TABLE `asset_category`
  ADD PRIMARY KEY (`asset_categoryID`);

--
-- Indices de la tabla `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignmentID`);

--
-- Indices de la tabla `assignmentanswer`
--
ALTER TABLE `assignmentanswer`
  ADD PRIMARY KEY (`assignmentanswerID`);

--
-- Indices de la tabla `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceID`);

--
-- Indices de la tabla `automation_rec`
--
ALTER TABLE `automation_rec`
  ADD PRIMARY KEY (`automation_recID`);

--
-- Indices de la tabla `automation_shudulu`
--
ALTER TABLE `automation_shudulu`
  ADD PRIMARY KEY (`automation_shuduluID`);

--
-- Indices de la tabla `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indices de la tabla `certificate_template`
--
ALTER TABLE `certificate_template`
  ADD PRIMARY KEY (`certificate_templateID`);

--
-- Indices de la tabla `childcare`
--
ALTER TABLE `childcare`
  ADD PRIMARY KEY (`childcareID`);

--
-- Indices de la tabla `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classesID`);

--
-- Indices de la tabla `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`complainID`);

--
-- Indices de la tabla `conversation_message_info`
--
ALTER TABLE `conversation_message_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conversation_msg`
--
ALTER TABLE `conversation_msg`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indices de la tabla `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`documentID`);

--
-- Indices de la tabla `eattendance`
--
ALTER TABLE `eattendance`
  ADD PRIMARY KEY (`eattendanceID`);

--
-- Indices de la tabla `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`ebooksID`);

--
-- Indices de la tabla `emailsetting`
--
ALTER TABLE `emailsetting`
  ADD PRIMARY KEY (`fieldoption`);

--
-- Indices de la tabla `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indices de la tabla `eventcounter`
--
ALTER TABLE `eventcounter`
  ADD PRIMARY KEY (`eventcounterID`);

--
-- Indices de la tabla `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`examID`);

--
-- Indices de la tabla `examschedule`
--
ALTER TABLE `examschedule`
  ADD PRIMARY KEY (`examscheduleID`);

--
-- Indices de la tabla `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`expenseID`);

--
-- Indices de la tabla `feetypes`
--
ALTER TABLE `feetypes`
  ADD PRIMARY KEY (`feetypesID`);

--
-- Indices de la tabla `fmenu`
--
ALTER TABLE `fmenu`
  ADD PRIMARY KEY (`fmenuID`);

--
-- Indices de la tabla `fmenu_relation`
--
ALTER TABLE `fmenu_relation`
  ADD PRIMARY KEY (`fmenu_relationID`);

--
-- Indices de la tabla `frontend_setting`
--
ALTER TABLE `frontend_setting`
  ADD PRIMARY KEY (`fieldoption`);

--
-- Indices de la tabla `frontend_template`
--
ALTER TABLE `frontend_template`
  ADD PRIMARY KEY (`frontend_templateID`);

--
-- Indices de la tabla `globalpayment`
--
ALTER TABLE `globalpayment`
  ADD PRIMARY KEY (`globalpaymentID`);

--
-- Indices de la tabla `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeID`);

--
-- Indices de la tabla `hmember`
--
ALTER TABLE `hmember`
  ADD PRIMARY KEY (`hmemberID`);

--
-- Indices de la tabla `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holidayID`);

--
-- Indices de la tabla `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hostelID`);

--
-- Indices de la tabla `hourly_template`
--
ALTER TABLE `hourly_template`
  ADD PRIMARY KEY (`hourly_templateID`);

--
-- Indices de la tabla `idmanager`
--
ALTER TABLE `idmanager`
  ADD PRIMARY KEY (`idmanagerID`);

--
-- Indices de la tabla `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`incomeID`);

--
-- Indices de la tabla `ini_config`
--
ALTER TABLE `ini_config`
  ADD PRIMARY KEY (`configID`);

--
-- Indices de la tabla `instruction`
--
ALTER TABLE `instruction`
  ADD PRIMARY KEY (`instructionID`);

--
-- Indices de la tabla `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`);

--
-- Indices de la tabla `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`issueID`);

--
-- Indices de la tabla `leaveapplications`
--
ALTER TABLE `leaveapplications`
  ADD PRIMARY KEY (`leaveapplicationID`),
  ADD KEY `leave_categoryID` (`leavecategoryID`),
  ADD KEY `from_date` (`from_date`),
  ADD KEY `to_date` (`to_date`),
  ADD KEY `approver_userID` (`approver_userID`),
  ADD KEY `approver_usertypeID` (`approver_usertypeID`),
  ADD KEY `applicationto_usertypeID` (`applicationto_usertypeID`),
  ADD KEY `applicationto_userID` (`applicationto_userID`);

--
-- Indices de la tabla `leaveassign`
--
ALTER TABLE `leaveassign`
  ADD PRIMARY KEY (`leaveassignID`),
  ADD KEY `leave_categoryID` (`leavecategoryID`),
  ADD KEY `usertypeID` (`usertypeID`);

--
-- Indices de la tabla `leavecategory`
--
ALTER TABLE `leavecategory`
  ADD PRIMARY KEY (`leavecategoryID`);

--
-- Indices de la tabla `lmember`
--
ALTER TABLE `lmember`
  ADD PRIMARY KEY (`lmemberID`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationID`);

--
-- Indices de la tabla `loginlog`
--
ALTER TABLE `loginlog`
  ADD PRIMARY KEY (`loginlogID`);

--
-- Indices de la tabla `mailandsms`
--
ALTER TABLE `mailandsms`
  ADD PRIMARY KEY (`mailandsmsID`);

--
-- Indices de la tabla `mailandsmstemplate`
--
ALTER TABLE `mailandsmstemplate`
  ADD PRIMARY KEY (`mailandsmstemplateID`);

--
-- Indices de la tabla `mailandsmstemplatetag`
--
ALTER TABLE `mailandsmstemplatetag`
  ADD PRIMARY KEY (`mailandsmstemplatetagID`);

--
-- Indices de la tabla `maininvoice`
--
ALTER TABLE `maininvoice`
  ADD PRIMARY KEY (`maininvoiceID`);

--
-- Indices de la tabla `make_payment`
--
ALTER TABLE `make_payment`
  ADD PRIMARY KEY (`make_paymentID`);

--
-- Indices de la tabla `manage_salary`
--
ALTER TABLE `manage_salary`
  ADD PRIMARY KEY (`manage_salaryID`);

--
-- Indices de la tabla `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`markID`);

--
-- Indices de la tabla `markpercentage`
--
ALTER TABLE `markpercentage`
  ADD PRIMARY KEY (`markpercentageID`);

--
-- Indices de la tabla `markrelation`
--
ALTER TABLE `markrelation`
  ADD PRIMARY KEY (`markrelationID`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`mediaID`);

--
-- Indices de la tabla `media_category`
--
ALTER TABLE `media_category`
  ADD PRIMARY KEY (`mcategoryID`);

--
-- Indices de la tabla `media_gallery`
--
ALTER TABLE `media_gallery`
  ADD PRIMARY KEY (`media_galleryID`);

--
-- Indices de la tabla `media_share`
--
ALTER TABLE `media_share`
  ADD PRIMARY KEY (`shareID`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indices de la tabla `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`noticeID`);

--
-- Indices de la tabla `onlineadmission`
--
ALTER TABLE `onlineadmission`
  ADD PRIMARY KEY (`onlineadmissionID`);

--
-- Indices de la tabla `online_exam`
--
ALTER TABLE `online_exam`
  ADD PRIMARY KEY (`onlineExamID`);

--
-- Indices de la tabla `online_exam_question`
--
ALTER TABLE `online_exam_question`
  ADD PRIMARY KEY (`onlineExamQuestionID`);

--
-- Indices de la tabla `online_exam_type`
--
ALTER TABLE `online_exam_type`
  ADD PRIMARY KEY (`onlineExamTypeID`);

--
-- Indices de la tabla `online_exam_user_answer`
--
ALTER TABLE `online_exam_user_answer`
  ADD PRIMARY KEY (`onlineExamUserAnswerID`);

--
-- Indices de la tabla `online_exam_user_answer_option`
--
ALTER TABLE `online_exam_user_answer_option`
  ADD PRIMARY KEY (`onlineExamUserAnswerOptionID`);

--
-- Indices de la tabla `online_exam_user_status`
--
ALTER TABLE `online_exam_user_status`
  ADD PRIMARY KEY (`onlineExamUserStatus`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pagesID`);

--
-- Indices de la tabla `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parentsID`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postsID`);

--
-- Indices de la tabla `posts_categories`
--
ALTER TABLE `posts_categories`
  ADD PRIMARY KEY (`posts_categoriesID`);

--
-- Indices de la tabla `posts_category`
--
ALTER TABLE `posts_category`
  ADD PRIMARY KEY (`posts_categoryID`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Indices de la tabla `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`productcategoryID`);

--
-- Indices de la tabla `productpurchase`
--
ALTER TABLE `productpurchase`
  ADD PRIMARY KEY (`productpurchaseID`);

--
-- Indices de la tabla `productpurchaseitem`
--
ALTER TABLE `productpurchaseitem`
  ADD PRIMARY KEY (`productpurchaseitemID`);

--
-- Indices de la tabla `productpurchasepaid`
--
ALTER TABLE `productpurchasepaid`
  ADD PRIMARY KEY (`productpurchasepaidID`);

--
-- Indices de la tabla `productsale`
--
ALTER TABLE `productsale`
  ADD PRIMARY KEY (`productsaleID`);

--
-- Indices de la tabla `productsaleitem`
--
ALTER TABLE `productsaleitem`
  ADD PRIMARY KEY (`productsaleitemID`);

--
-- Indices de la tabla `productsalepaid`
--
ALTER TABLE `productsalepaid`
  ADD PRIMARY KEY (`productsalepaidID`);

--
-- Indices de la tabla `productsupplier`
--
ALTER TABLE `productsupplier`
  ADD PRIMARY KEY (`productsupplierID`);

--
-- Indices de la tabla `productwarehouse`
--
ALTER TABLE `productwarehouse`
  ADD PRIMARY KEY (`productwarehouseID`);

--
-- Indices de la tabla `promotionlog`
--
ALTER TABLE `promotionlog`
  ADD PRIMARY KEY (`promotionLogID`);

--
-- Indices de la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indices de la tabla `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`answerID`);

--
-- Indices de la tabla `question_bank`
--
ALTER TABLE `question_bank`
  ADD PRIMARY KEY (`questionBankID`);

--
-- Indices de la tabla `question_group`
--
ALTER TABLE `question_group`
  ADD PRIMARY KEY (`questionGroupID`);

--
-- Indices de la tabla `question_level`
--
ALTER TABLE `question_level`
  ADD PRIMARY KEY (`questionLevelID`);

--
-- Indices de la tabla `question_option`
--
ALTER TABLE `question_option`
  ADD PRIMARY KEY (`optionID`);

--
-- Indices de la tabla `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`questionTypeID`);

--
-- Indices de la tabla `reset`
--
ALTER TABLE `reset`
  ADD PRIMARY KEY (`resetID`);

--
-- Indices de la tabla `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`routineID`);

--
-- Indices de la tabla `salary_option`
--
ALTER TABLE `salary_option`
  ADD PRIMARY KEY (`salary_optionID`);

--
-- Indices de la tabla `salary_template`
--
ALTER TABLE `salary_template`
  ADD PRIMARY KEY (`salary_templateID`);

--
-- Indices de la tabla `schoolyear`
--
ALTER TABLE `schoolyear`
  ADD PRIMARY KEY (`schoolyearID`);

--
-- Indices de la tabla `school_sessions`
--
ALTER TABLE `school_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sectionID`);

--
-- Indices de la tabla `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`fieldoption`);

--
-- Indices de la tabla `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`sliderID`);

--
-- Indices de la tabla `smssettings`
--
ALTER TABLE `smssettings`
  ADD PRIMARY KEY (`smssettingsID`);

--
-- Indices de la tabla `sociallink`
--
ALTER TABLE `sociallink`
  ADD PRIMARY KEY (`sociallinkID`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indices de la tabla `studentextend`
--
ALTER TABLE `studentextend`
  ADD PRIMARY KEY (`studentextendID`);

--
-- Indices de la tabla `studentgroup`
--
ALTER TABLE `studentgroup`
  ADD PRIMARY KEY (`studentgroupID`);

--
-- Indices de la tabla `studentrelation`
--
ALTER TABLE `studentrelation`
  ADD PRIMARY KEY (`studentrelationID`);

--
-- Indices de la tabla `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectID`);

--
-- Indices de la tabla `subjectteacher`
--
ALTER TABLE `subjectteacher`
  ADD PRIMARY KEY (`subjectteacherID`);

--
-- Indices de la tabla `sub_attendance`
--
ALTER TABLE `sub_attendance`
  ADD PRIMARY KEY (`attendanceID`);

--
-- Indices de la tabla `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`syllabusID`);

--
-- Indices de la tabla `systemadmin`
--
ALTER TABLE `systemadmin`
  ADD PRIMARY KEY (`systemadminID`);

--
-- Indices de la tabla `tattendance`
--
ALTER TABLE `tattendance`
  ADD PRIMARY KEY (`tattendanceID`);

--
-- Indices de la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherID`);

--
-- Indices de la tabla `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`themesID`);

--
-- Indices de la tabla `tmember`
--
ALTER TABLE `tmember`
  ADD PRIMARY KEY (`tmemberID`);

--
-- Indices de la tabla `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transportID`);

--
-- Indices de la tabla `uattendance`
--
ALTER TABLE `uattendance`
  ADD PRIMARY KEY (`uattendanceID`);

--
-- Indices de la tabla `update`
--
ALTER TABLE `update`
  ADD PRIMARY KEY (`updateID`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indices de la tabla `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`usertypeID`);

--
-- Indices de la tabla `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- Indices de la tabla `visitorinfo`
--
ALTER TABLE `visitorinfo`
  ADD PRIMARY KEY (`visitorID`);

--
-- Indices de la tabla `weaverandfine`
--
ALTER TABLE `weaverandfine`
  ADD PRIMARY KEY (`weaverandfineID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activities`
--
ALTER TABLE `activities`
  MODIFY `activitiesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `activitiescategory`
--
ALTER TABLE `activitiescategory`
  MODIFY `activitiescategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `activitiescomment`
--
ALTER TABLE `activitiescomment`
  MODIFY `activitiescommentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `activitiesmedia`
--
ALTER TABLE `activitiesmedia`
  MODIFY `activitiesmediaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `activitiesstudent`
--
ALTER TABLE `activitiesstudent`
  MODIFY `activitiesstudentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alert`
--
ALTER TABLE `alert`
  MODIFY `alertID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `asset`
--
ALTER TABLE `asset`
  MODIFY `assetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asset_assignment`
--
ALTER TABLE `asset_assignment`
  MODIFY `asset_assignmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asset_category`
--
ALTER TABLE `asset_category`
  MODIFY `asset_categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `assignmentanswer`
--
ALTER TABLE `assignmentanswer`
  MODIFY `assignmentanswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `automation_rec`
--
ALTER TABLE `automation_rec`
  MODIFY `automation_recID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `automation_shudulu`
--
ALTER TABLE `automation_shudulu`
  MODIFY `automation_shuduluID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `book`
--
ALTER TABLE `book`
  MODIFY `bookID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `certificate_template`
--
ALTER TABLE `certificate_template`
  MODIFY `certificate_templateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `childcare`
--
ALTER TABLE `childcare`
  MODIFY `childcareID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `classes`
--
ALTER TABLE `classes`
  MODIFY `classesID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `complain`
--
ALTER TABLE `complain`
  MODIFY `complainID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `conversation_message_info`
--
ALTER TABLE `conversation_message_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `conversation_msg`
--
ALTER TABLE `conversation_msg`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `document`
--
ALTER TABLE `document`
  MODIFY `documentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eattendance`
--
ALTER TABLE `eattendance`
  MODIFY `eattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `ebooksID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `eventcounter`
--
ALTER TABLE `eventcounter`
  MODIFY `eventcounterID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `exam`
--
ALTER TABLE `exam`
  MODIFY `examID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `examschedule`
--
ALTER TABLE `examschedule`
  MODIFY `examscheduleID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `expense`
--
ALTER TABLE `expense`
  MODIFY `expenseID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `feetypes`
--
ALTER TABLE `feetypes`
  MODIFY `feetypesID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `fmenu`
--
ALTER TABLE `fmenu`
  MODIFY `fmenuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fmenu_relation`
--
ALTER TABLE `fmenu_relation`
  MODIFY `fmenu_relationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `frontend_template`
--
ALTER TABLE `frontend_template`
  MODIFY `frontend_templateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `globalpayment`
--
ALTER TABLE `globalpayment`
  MODIFY `globalpaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `grade`
--
ALTER TABLE `grade`
  MODIFY `gradeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `hmember`
--
ALTER TABLE `hmember`
  MODIFY `hmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holidayID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hostel`
--
ALTER TABLE `hostel`
  MODIFY `hostelID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `hourly_template`
--
ALTER TABLE `hourly_template`
  MODIFY `hourly_templateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `idmanager`
--
ALTER TABLE `idmanager`
  MODIFY `idmanagerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `income`
--
ALTER TABLE `income`
  MODIFY `incomeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ini_config`
--
ALTER TABLE `ini_config`
  MODIFY `configID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `instruction`
--
ALTER TABLE `instruction`
  MODIFY `instructionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `issue`
--
ALTER TABLE `issue`
  MODIFY `issueID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `leaveapplications`
--
ALTER TABLE `leaveapplications`
  MODIFY `leaveapplicationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `leaveassign`
--
ALTER TABLE `leaveassign`
  MODIFY `leaveassignID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `leavecategory`
--
ALTER TABLE `leavecategory`
  MODIFY `leavecategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `lmember`
--
ALTER TABLE `lmember`
  MODIFY `lmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
  MODIFY `locationID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `loginlog`
--
ALTER TABLE `loginlog`
  MODIFY `loginlogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT de la tabla `mailandsms`
--
ALTER TABLE `mailandsms`
  MODIFY `mailandsmsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mailandsmstemplate`
--
ALTER TABLE `mailandsmstemplate`
  MODIFY `mailandsmstemplateID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mailandsmstemplatetag`
--
ALTER TABLE `mailandsmstemplatetag`
  MODIFY `mailandsmstemplatetagID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `maininvoice`
--
ALTER TABLE `maininvoice`
  MODIFY `maininvoiceID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `make_payment`
--
ALTER TABLE `make_payment`
  MODIFY `make_paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `manage_salary`
--
ALTER TABLE `manage_salary`
  MODIFY `manage_salaryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mark`
--
ALTER TABLE `mark`
  MODIFY `markID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `markpercentage`
--
ALTER TABLE `markpercentage`
  MODIFY `markpercentageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `markrelation`
--
ALTER TABLE `markrelation`
  MODIFY `markrelationID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `mediaID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `media_category`
--
ALTER TABLE `media_category`
  MODIFY `mcategoryID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `media_gallery`
--
ALTER TABLE `media_gallery`
  MODIFY `media_galleryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `media_share`
--
ALTER TABLE `media_share`
  MODIFY `shareID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `menuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `notice`
--
ALTER TABLE `notice`
  MODIFY `noticeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `onlineadmission`
--
ALTER TABLE `onlineadmission`
  MODIFY `onlineadmissionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `online_exam`
--
ALTER TABLE `online_exam`
  MODIFY `onlineExamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `online_exam_question`
--
ALTER TABLE `online_exam_question`
  MODIFY `onlineExamQuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `online_exam_type`
--
ALTER TABLE `online_exam_type`
  MODIFY `onlineExamTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `online_exam_user_answer`
--
ALTER TABLE `online_exam_user_answer`
  MODIFY `onlineExamUserAnswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `online_exam_user_answer_option`
--
ALTER TABLE `online_exam_user_answer_option`
  MODIFY `onlineExamUserAnswerOptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `online_exam_user_status`
--
ALTER TABLE `online_exam_user_status`
  MODIFY `onlineExamUserStatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `pagesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `parents`
--
ALTER TABLE `parents`
  MODIFY `parentsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `postsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `posts_categories`
--
ALTER TABLE `posts_categories`
  MODIFY `posts_categoriesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `posts_category`
--
ALTER TABLE `posts_category`
  MODIFY `posts_categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productcategory`
--
ALTER TABLE `productcategory`
  MODIFY `productcategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productpurchase`
--
ALTER TABLE `productpurchase`
  MODIFY `productpurchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productpurchaseitem`
--
ALTER TABLE `productpurchaseitem`
  MODIFY `productpurchaseitemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productpurchasepaid`
--
ALTER TABLE `productpurchasepaid`
  MODIFY `productpurchasepaidID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productsale`
--
ALTER TABLE `productsale`
  MODIFY `productsaleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productsaleitem`
--
ALTER TABLE `productsaleitem`
  MODIFY `productsaleitemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productsalepaid`
--
ALTER TABLE `productsalepaid`
  MODIFY `productsalepaidID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productsupplier`
--
ALTER TABLE `productsupplier`
  MODIFY `productsupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productwarehouse`
--
ALTER TABLE `productwarehouse`
  MODIFY `productwarehouseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `promotionlog`
--
ALTER TABLE `promotionlog`
  MODIFY `promotionLogID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `question_answer`
--
ALTER TABLE `question_answer`
  MODIFY `answerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `question_bank`
--
ALTER TABLE `question_bank`
  MODIFY `questionBankID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `question_group`
--
ALTER TABLE `question_group`
  MODIFY `questionGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `question_level`
--
ALTER TABLE `question_level`
  MODIFY `questionLevelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `question_option`
--
ALTER TABLE `question_option`
  MODIFY `optionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `question_type`
--
ALTER TABLE `question_type`
  MODIFY `questionTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reset`
--
ALTER TABLE `reset`
  MODIFY `resetID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `routine`
--
ALTER TABLE `routine`
  MODIFY `routineID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `salary_option`
--
ALTER TABLE `salary_option`
  MODIFY `salary_optionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `salary_template`
--
ALTER TABLE `salary_template`
  MODIFY `salary_templateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `schoolyear`
--
ALTER TABLE `schoolyear`
  MODIFY `schoolyearID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `section`
--
ALTER TABLE `section`
  MODIFY `sectionID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `slider`
--
ALTER TABLE `slider`
  MODIFY `sliderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `smssettings`
--
ALTER TABLE `smssettings`
  MODIFY `smssettingsID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sociallink`
--
ALTER TABLE `sociallink`
  MODIFY `sociallinkID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `studentextend`
--
ALTER TABLE `studentextend`
  MODIFY `studentextendID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `studentgroup`
--
ALTER TABLE `studentgroup`
  MODIFY `studentgroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `studentrelation`
--
ALTER TABLE `studentrelation`
  MODIFY `studentrelationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `subjectteacher`
--
ALTER TABLE `subjectteacher`
  MODIFY `subjectteacherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `sub_attendance`
--
ALTER TABLE `sub_attendance`
  MODIFY `attendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `syllabusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `systemadmin`
--
ALTER TABLE `systemadmin`
  MODIFY `systemadminID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tattendance`
--
ALTER TABLE `tattendance`
  MODIFY `tattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacherID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `themes`
--
ALTER TABLE `themes`
  MODIFY `themesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tmember`
--
ALTER TABLE `tmember`
  MODIFY `tmemberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transport`
--
ALTER TABLE `transport`
  MODIFY `transportID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `uattendance`
--
ALTER TABLE `uattendance`
  MODIFY `uattendanceID` int(200) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `update`
--
ALTER TABLE `update`
  MODIFY `updateID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usertype`
--
ALTER TABLE `usertype`
  MODIFY `usertypeID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `visitorinfo`
--
ALTER TABLE `visitorinfo`
  MODIFY `visitorID` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `weaverandfine`
--
ALTER TABLE `weaverandfine`
  MODIFY `weaverandfineID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
