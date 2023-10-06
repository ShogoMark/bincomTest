
-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2011 at 05:08 PM
-- Server version: 5.1.36
-- PHP Version: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bincomphptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `agentname`
--

DROP TABLE IF EXISTS `agentname`;
CREATE TABLE IF NOT EXISTS `agentname` (
  `name_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` char(13) NOT NULL,
  `pollingunit_uniqueid` int(11) NOT NULL,
  PRIMARY KEY (`name_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `agentname`
--

INSERT INTO `agentname` (`name_id`, `firstname`, `lastname`, `email`, `phone`, `pollingunit_uniqueid`) VALUES
(1, 'Christian', 'Emenike', 'christian@bincom.net', '08034699500', 1),
(2, 'Ngozi', 'Emenike', 'biggysmalls@home.net', '08089003444', 2),
(3, 'Chinyere', 'Emenike', 'chinyere@emenike.net', '07034532310', 1),
(4, 'Chimezie', 'Emenike', 'chimezie@emenike.net', '07034532322', 2);

-- --------------------------------------------------------

--
-- Table structure for table `announced_lga_results`
--

DROP TABLE IF EXISTS `announced_lga_results`;
CREATE TABLE IF NOT EXISTS `announced_lga_results` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `lga_name` varchar(50) NOT NULL,
  `party_abbreviation` char(4) NOT NULL,
  `party_score` int(11) NOT NULL,
  `entered_by_user` varchar(50) NOT NULL,
  `date_entered` datetime NOT NULL,
  `user_ip_address` varchar(50) NOT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=244 ;

--
-- Dumping data for table `announced_lga_results`
--

INSERT INTO `announced_lga_results` (`result_id`, `lga_name`, `party_abbreviation`, `party_score`, `entered_by_user`, `date_entered`, `user_ip_address`) VALUES
(1, '33', 'PDP', 78129, '', '2011-04-27 09:46:05', '192.168.1.110'),
(2, '33', 'DPP', 15248, '', '2011-04-27 09:46:05', '192.168.1.110'),
(3, '33', 'ACN', 8597, '', '2011-04-27 09:46:05', '192.168.1.110'),
(4, '33', 'PPA', 797, '', '2011-04-27 09:46:05', '192.168.1.110'),
(5, '33', 'CDC', 79513, '', '2011-04-27 09:46:05', '192.168.1.110'),
(6, '33', 'JP', 95174, '', '2011-04-27 09:46:05', '192.168.1.110'),
(7, '33', 'ANPP', 37330, '', '2011-04-27 09:46:05', '192.168.1.110'),
(8, '33', 'LABO', 1126, '', '2011-04-27 09:46:05', '192.168.1.110'),
(9, '33', 'CPP', 93643, '', '2011-04-27 09:46:05', '192.168.1.110'),
(19, '1', 'PDP', 79659, '', '2011-04-27 09:49:55', '192.168.1.110'),
(20, '1', 'DPP', 48207, '', '2011-04-27 09:49:55', '192.168.1.110'),
(21, '1', 'ACN', 22739, '', '2011-04-27 09:49:55', '192.168.1.110'),
(22, '1', 'PPA', 78860, '', '2011-04-27 09:49:55', '192.168.1.110'),
(23, '1', 'CDC', 29141, '', '2011-04-27 09:49:55', '192.168.1.110'),
(24, '1', 'JP', 9124, '', '2011-04-27 09:49:55', '192.168.1.110'),
(25, '1', 'ANPP', 58196, '', '2011-04-27 09:49:55', '192.168.1.110'),
(26, '1', 'LABO', 63610, '', '2011-04-27 09:49:55', '192.168.1.110'),
(27, '1', 'CPP', 43460, '', '2011-04-27 09:49:55', '192.168.1.110'),
(28, '18', 'PDP', 34469, '', '2011-04-27 09:55:11', '192.168.1.110'),
(29, '18', 'DPP', 29039, '', '2011-04-27 09:55:11', '192.168.1.110'),
(30, '18', 'ACN', 30454, '', '2011-04-27 09:55:11', '192.168.1.110'),
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
???LINES MISSING
