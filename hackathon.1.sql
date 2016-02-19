-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2016 at 03:35 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hackathon`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `JJ`()
BEGIN 
SELECT user_id FROM following 
WHERE follower_id = 20;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_type` varchar(1000) NOT NULL,
  `friend_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `user_id`, `activity_type`, `friend_id`) VALUES
(11, 42, 'planned a trip', 41);

-- --------------------------------------------------------

--
-- Table structure for table `following`
--

CREATE TABLE IF NOT EXISTS `following` (
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `following`
--

INSERT INTO `following` (`user_id`, `follower_id`) VALUES
(8, 17),
(9, 1),
(9, 19),
(10, 17),
(10, 19),
(11, 17),
(13, 17),
(15, 29),
(15, 33),
(16, 17),
(21, 26),
(21, 28),
(21, 32),
(27, 28),
(27, 29),
(28, 38),
(31, 32),
(31, 33),
(38, 39),
(41, 42);

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE IF NOT EXISTS `markers` (
`id` int(11) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `address`, `lat`, `lng`) VALUES
(7, 'Goa, India', 15.299326, 74.123993);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_name` varchar(1000) NOT NULL,
  `image_url` varchar(1500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `user_id`, `image_name`, `image_url`) VALUES
(1, 31, 'boy1', 'http://cdn.pastemagazine.com/www/blogs/awesome_of_the_day/hbo%20boys.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varchar(140) NOT NULL,
  `stamp` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `stamp`) VALUES
(1, 1, 'hello', '2016-01-31 17:37:12'),
(2, 1, 'hello', '2016-01-31 17:39:24'),
(3, 1, 'sadsa', '2016-01-31 17:41:18'),
(4, 1, 'sdsd', '2016-01-31 17:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE IF NOT EXISTS `trips` (
`id` int(11) NOT NULL,
  `place_name` varchar(250) NOT NULL,
  `pace_xc` varchar(250) NOT NULL,
  `pace_y` varchar(250) NOT NULL,
  `place_air` varchar(25) NOT NULL,
  `place_expense` varchar(30) NOT NULL,
  `smile` varchar(500) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `place_name`, `pace_xc`, `pace_y`, `place_air`, `place_expense`, `smile`, `photo`) VALUES
(1, 'Srinagar', '34.0900', '74.7900', 'SXR', '10,000', '35', 'http://www.toshaliholidays.com/images/srinagar-holidays_banner.jpg'),
(2, 'Goa', '15.4989', '73.8278', 'GOI', '15,000', '95', 'http://smartplanners.in/wp-content/uploads/2015/05/banner-12.jpg'),
(3, 'delhi', '28.6139', '77.2090', 'DEL', '5000', '55', 'http://etd2015india.in/sites/default/files/delhi-banner.png'),
(4, 'Mumbai', '18.9750', '72.8258', 'BOM', '10000', '75', 'http://www.tvsholidaymakers.com/Mumbai%20sealink%20banner.jpg'),
(5, 'Jaipur', '26.9000', '75.8000', 'JAI', '7000', '15', 'http://www.hotelsdcjaipur.com/images/banner_jaipur.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(8) NOT NULL,
  `place_x` varchar(10) NOT NULL,
  `place_y` varchar(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `place_x`, `place_y`) VALUES
(43, 'abcd', '200mittalgautam@gmail.com', 'abcd', '30.797013', '76.9177947'),
(41, 'mittal', '200mittalgautam@gmail.com', 'abcd', '12.9715987', '77.5945626'),
(42, 'asd', '95gautammittal@gmail.com', 'abc', '12.9715987', '77.5945626');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `following`
--
ALTER TABLE `following`
 ADD PRIMARY KEY (`user_id`,`follower_id`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
