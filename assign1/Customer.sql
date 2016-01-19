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
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `Cname` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`Cname`, `City`, `Cid`) VALUES
('Raju', 'Kanpur', 1),
('Ramesh', 'Delhi', 2),
('Aasdrish sharma', 'Indore', 3),
('Aakash Kaul', 'Chandigarh', 4),
('Aarsh Prakash', 'Lucknow', 5),
('Aayush Godara', 'Indore', 6),
('Abdul Samad', 'Allahabad', 7),
('Abhas Ankit', 'Lucknow', 8),
('Abhas Bajpai', 'Kanpur', 9),
('Abhibhav Garg', 'Delhi', 10),
('Abhigyan Rai', 'Delhi', 11),
('Abhijeet Singh', 'Delhi', 12),
('Abhimanyu', 'Allahabad', 13),
('Darji Deepak', 'Indore', 14),
('Darshit Talavia', 'Kanpur', 15),
('Deepak Panchal', 'Kanpur', 16),
('Deepak Bhati', 'Kanpur', 17),
('Hakam Ram', 'Lucknow', 18),
('Hanuman Ram', 'Lucknow', 19),
('Harsh Gupta', 'Chandigarh', 20),
('Harsh Chittora', 'Chandigarh', 21),
('Hariom Panthi', 'Chandigarh', 22),
('Harsh Surana', 'Indore', 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`Cid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
