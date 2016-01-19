-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2016 at 11:30 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assign1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Branch`
--

CREATE TABLE `Branch` (
  `Bname` varchar(20) NOT NULL,
  `Bcity` varchar(20) DEFAULT NULL,
  `Assets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Branch`
--

INSERT INTO `Branch` (`Bname`, `Bcity`, `Assets`) VALUES
('All Saints Cathedral', 'Allahabad', 768643),
('Triveni Sangam', 'Allahabad', 98556),
('Main Allahabad', 'Allahabad', 80000),
('Allahabad Museum', 'Allahabad', 642343),
('Elante mall', 'Chandigarh', 786565),
('Rock Garden', 'Chandigarh', 789434),
('Panjab University', 'Chandigarh', 7854656),
('Vasant Kunj', 'Delhi', 56454),
('Karol Bagh', 'Delhi', 784656),
('Lal kila', 'Delhi', 2000000),
('Main Indore', 'Indore', 4500600),
('Annapurna Temple', 'Indore', 478343),
('Kaanch Mandir', 'Indore', 45783),
('White Church', 'Indore', 780456),
('Moti Jheel', 'Kanpur', 656785),
('Nana Rao Park', 'Kanpur', 784687),
('Kalyanpur', 'Kanpur', 100000),
('IIT Kanpur', 'Kanpur', 50000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Branch`
--
ALTER TABLE `Branch`
  ADD PRIMARY KEY (`Bname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
