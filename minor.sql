-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2019 at 02:22 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('husain', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billno` int(3) NOT NULL,
  `cid` varchar(11) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `amount` int(4) NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billno`, `cid`, `cname`, `amount`, `date`, `status`) VALUES
(1, 'c001', 'Husain Handa', 1500, '2019-10-02', NULL),
(2, 'c002', 'Yash Pandey', 1750, '2019-10-02', NULL),
(3, '', 'hozefa', 10, '2019-10-02', NULL),
(4, 'c002', 'yash pandey', 900, '2019-10-01', 'Paid'),
(5, 'c001', 'Husain Handa', 900, '2019-10-02', 'Un Paid 2700'),
(6, 'c001', 'Husain Handa', 10, '2019-10-03', 'Un Paid 10'),
(7, 'c001', 'Husain Handa', 120, '2019-10-04', 'paid'),
(8, 'c004', 'himanshu', 3120, '2019-10-05', 'paid'),
(9, 'c001', 'Husain Handa', 60, '2019-10-06', 'Un Paid 60');

-- --------------------------------------------------------

--
-- Table structure for table `ccc`
--

CREATE TABLE `ccc` (
  `cid` varchar(4) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `gst` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccc`
--

INSERT INTO `ccc` (`cid`, `cname`, `gst`) VALUES
('c001', 'husain', 'hh1234567891021');

-- --------------------------------------------------------

--
-- Table structure for table `coustmer`
--

CREATE TABLE `coustmer` (
  `cid` varchar(11) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `gst` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coustmer`
--

INSERT INTO `coustmer` (`cid`, `cname`, `gst`) VALUES
('c001', 'Husain Handa', 'HH626215794'),
('c002', 'Yash Pandey', 'yp1236547898954'),
('c004', 'himanshu', ''),
('c005', 'nitesh', 'nn2525466'),
('c006', 'pranjal', 'p1514651');

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`date`) VALUES
('2019-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(11) NOT NULL,
  `prodname` varchar(20) NOT NULL,
  `price` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prodname`, `price`) VALUES
('p001', 'Screw', 10),
('p002', 'Plug', 5),
('p003', 'Nails', 2),
('p004', 'Hammer', 80),
('p005', 'inch tape', 70),
('p007', 'helmet', 900),
('p010', 'tape', 10),
('p011', 'rope', 120),
('p014', 'water pipe', 600),
('p015', 'bit', 50),
('p016', 'drill machine', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `charr` varchar(22) NOT NULL,
  `intt` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`charr`, `intt`) VALUES
('hh', 0),
('hjb', 0),
('hjbgg', 0),
('hjbgg', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('fds', 0),
('hh', 50),
('fds', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `billno` int(11) NOT NULL,
  `cid` varchar(11) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `amount` int(4) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`billno`, `cid`, `cname`, `amount`, `date`) VALUES
(1, 'c001', 'Husain Handa', 800, '2019-10-02'),
(2, 'c003', 'himanshu', 800, '2019-10-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billno`);

--
-- Indexes for table `coustmer`
--
ALTER TABLE `coustmer`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `gst` (`gst`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
