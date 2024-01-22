-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2014 at 04:02 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlinevoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `party` varchar(100) NOT NULL,
  `votes` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `position`, `party`, `votes`, `image`, `course`) VALUES
(1, 'Argie Policarpio', 'President', 'LAKAS', 1, 'ownerpic.png', ''),
(2, 'Febe Tabar', 'President', 'LAKAS', 0, 'wire_transfer_256.png', ''),
(3, 'Amy Serviano', 'Vice-President', 'LAKAS', 1, 'wire_transfer_256.png', ''),
(4, 'Mary Jane Serviano', 'Vice-President', 'LAKAS', 0, 'wire_transfer_256.png', ''),
(5, 'Carlo Mesa', 'Secretary', 'LAKAS', 1, 'wire_transfer_256.png', ''),
(6, 'Jano Gibs', 'Secretary', 'LAKAS', 0, 'wire_transfer_256.png', ''),
(7, 'Liezel Barabas', 'Treasurer', 'LAKAS', 1, 'wire_transfer_256.png', ''),
(8, 'Jemar Agi', 'Treasurer', 'LAKAS', 0, 'wire_transfer_256.png', ''),
(9, 'Mirrian Santiago', 'Senator', 'LAKAS', 1, 'wire_transfer_256.png', ''),
(10, 'Bong Revilla', 'Senator', 'LAKAS', 1, 'wire_transfer_256.png', ''),
(11, '@lbee Binitez', 'Representative', 'LAKAS', 0, 'wire_transfer_256.png', 'BSHM'),
(12, 'Kako Lacson', 'Representative', 'LAKAS', 0, 'wire_transfer_256.png', 'BSCS'),
(13, 'ouiuiu', 'Senator', 'LAKAS', 0, '', ''),
(14, 'iuiui', 'Senator', 'LAKAS', 0, '', ''),
(15, 'uyuyu', 'Senator', 'LAKAS', 0, '', ''),
(16, 'wapak', 'Senator', 'LAKAS', 0, '', ''),
(17, 'kjkjkjk', 'Senator', 'LAKAS', 0, '', ''),
(18, 'mlkjlkl', 'Senator', 'LAKAS', 0, '', ''),
(19, 'klkl', 'Senator', 'LAKAS', 0, '', ''),
(20, 'cfcc', 'Senator', 'LAKAS', 0, '', ''),
(21, 'hbh', 'Senator', 'LAKAS', 0, '', ''),
(22, 'aple', 'Senator', 'LAKAS', 0, '', ''),
(23, 'lk,lkl', 'Senator', 'LAKAS', 0, '', ''),
(24, 'llplpl', 'Senator', 'LAKAS', 0, '', ''),
(25, ';l;l;', 'Senator', 'LAKAS', 0, '', ''),
(26, 'uhyuyh', 'Senator', 'LAKAS', 0, '', ''),
(27, 'mnmn', 'Senator', 'LAKAS', 0, '', ''),
(28, 'Baliling Demagiba', 'Representative', 'LAKAS', 1, '', 'BSIT'),
(29, 'iuiu', 'Auditor', 'LAKAS', 1, 'wire_transfer_256.png', 'None'),
(30, 'mn mnmn', 'PRO', 'LAKAS', 1, 'wire_transfer_256.png', 'None'),
(31, 'kluiu', 'Business-Manager', 'LAKAS', 1, 'wire_transfer_256.png', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`) VALUES
(1, 'BSCS'),
(2, 'BSIT'),
(3, 'BSHM'),
(4, 'BSCE'),
(5, 'BSCrim');

-- --------------------------------------------------------

--
-- Table structure for table `list_stu_num`
--

CREATE TABLE IF NOT EXISTS `list_stu_num` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_number` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `list_stu_num`
--

INSERT INTO `list_stu_num` (`id`, `id_number`, `status`, `name`, `course`) VALUES
(4, 'C-08769-15', 'used', 'Policarpio,  Febe T', 'BSIT');

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE IF NOT EXISTS `party` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`id`, `name`, `description`) VALUES
(2, 'LAKAS', 'Malakas Pala');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `name`) VALUES
(1, 'President'),
(2, 'Vice-President'),
(3, 'Secretary'),
(4, 'Treasurer'),
(5, 'Auditor'),
(6, 'PRO'),
(7, 'Business-Manager'),
(8, 'Senator'),
(9, 'Representative');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `course`, `username`, `password`, `status`, `question`, `answer`) VALUES
(6, 'Policarpio,  Febe T', 'BSIT', 'C-08769-15', 'geraldine', 'voted', 'what is your favorite color', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `votedetails`
--

CREATE TABLE IF NOT EXISTS `votedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate` varchar(100) NOT NULL,
  `voters` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `votedetails`
--

INSERT INTO `votedetails` (`id`, `candidate`, `voters`) VALUES
(1, 'Argie Policarpio', 'C-08769-15'),
(2, 'Amy Serviano', 'C-08769-15'),
(3, 'Carlo Mesa', 'C-08769-15'),
(4, 'Liezel Barabas', 'C-08769-15'),
(5, 'iuiu', 'C-08769-15'),
(6, 'mn mnmn', 'C-08769-15'),
(7, 'kluiu', 'C-08769-15'),
(8, 'Mirrian Santiago', 'C-08769-15'),
(9, 'Bong Revilla', 'C-08769-15'),
(10, 'Baliling Demagiba', 'C-08769-15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
