-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2019 at 02:45 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `name` varchar(100) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `category` varchar(100) NOT NULL,
  `payment` bigint(100) NOT NULL DEFAULT 10000
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`name`, `fromdate`, `todate`, `category`, `payment`) VALUES
('Birthday', '2019-11-28', '2019-11-30', 'wedding', 1000),
('Birthday', '2019-11-28', '0000-00-00', 'wedding', 1000),
('Engagement', '2019-11-23', '2019-11-30', 'Model', 0),
('wedding', '2019-09-27', '2019-11-27', 'Birthday', 0),
('wedding', '2019-12-03', '2019-12-10', 'wedding', 0),
('wedding', '2019-12-09', '2019-12-11', 'wedding', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phno` bigint(10) NOT NULL,
  `msg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`name`, `email`, `phno`, `msg`) VALUES
('pavan', 'pavand1212@gmail.com', 7022809832, 'iyduiwe        		'),
('pavitra', 'pavitar@gmail.com', 7022809832, 'ugugjhghj                ');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_img`
--

CREATE TABLE `gallery_img` (
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_img`
--

INSERT INTO `gallery_img` (`img`) VALUES
('images/nature2.jpg'),
('images/tiger.jpg'),
('images/prewed.jpg'),
('images/prewed2.jpg'),
('images/bday.jpg'),
('images/dance.jpg'),
('images/studio.jpg'),
('images/portrait.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fname`, `lname`, `phonenumber`, `email`, `pass`) VALUES
(1, 'pavitra', 'nayak', 7022809831, 'pavitranayak832@gmail.com', 'pavitra123'),
(2, 'pooja', 'poojari', 9945416778, 'pooja@gmail.com', 'pooja'),
(3, 'amitha', 'hegde', 9945416778, 'amitha@gmail.com', 'amitha'),
(4, 'uyuyu', 'yuyuy', 8989898989, 'iuiui@gmail.com', '1234567'),
(100, 'admin', 'admin', 0, 'admin@admin.com', 'admin'),
(101, 'pavan', 'dk', 9900938820, 'pavand1212@gmail.com', 'pavan12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
