-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2016 at 01:17 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asign1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE `Account` (
  `AccNo` int(11) NOT NULL,
  `Bname` varchar(20) DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Account`
--

INSERT INTO `Account` (`AccNo`, `Bname`, `Balance`) VALUES
(1, 'Lal kila', 50000),
(2, 'IIT Kanpur', 2000),
(3, 'All Saints Cathedral', 7845),
(4, 'Elante mall', 9785),
(5, 'Rock Garden', 78466),
(6, 'Panjab University', 6455),
(7, 'White Church', 7846),
(8, 'Nana Rao Park', 7846),
(9, 'Karol Bagh', 7642),
(10, 'Main Allahabad', 78643),
(11, 'Rock Garden', 94343);

-- --------------------------------------------------------

--
-- Table structure for table `Borrower`
--

CREATE TABLE `Borrower` (
  `Cid` int(11) DEFAULT NULL,
  `LoanNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Borrower`
--

INSERT INTO `Borrower` (`Cid`, `LoanNo`) VALUES
(1, 1),
(1, 4),
(1, 6),
(2, 4),
(2, 7),
(2, 2),
(3, 8),
(5, 6),
(4, 1),
(4, 12),
(5, 10),
(6, 2),
(4, 10),
(8, 9),
(9, 9),
(8, 4),
(9, 10);

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
('Allahabad Museum', 'Allahabad', 642343),
('Annapurna Temple', 'Indore', 478343),
('Elante mall', 'Chandigarh', 786565),
('IIT Kanpur', 'Kanpur', 50000),
('Kaanch Mandir', 'Indore', 45783),
('Kalyanpur', 'Kanpur', 100000),
('Karol Bagh', 'Delhi', 784656),
('Lal kila', 'Delhi', 2000000),
('Main Allahabad', 'Allahabad', 80000),
('Main Indore', 'Indore', 4500600),
('Moti Jheel', 'Kanpur', 656785),
('Nana Rao Park', 'Kanpur', 784687),
('Panjab University', 'Chandigarh', 7854656),
('Rock Garden', 'Chandigarh', 789434),
('Triveni Sangam', 'Allahabad', 98556),
('Vasant Kunj', 'Delhi', 56454),
('White Church', 'Indore', 780456);

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

-- --------------------------------------------------------

--
-- Table structure for table `Depositor`
--

CREATE TABLE `Depositor` (
  `Cid` int(11) DEFAULT NULL,
  `AccNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Depositor`
--

INSERT INTO `Depositor` (`Cid`, `AccNo`) VALUES
(1, 4),
(1, 8),
(1, 2),
(1, 6),
(5, 7),
(2, 6),
(2, 5),
(2, 8),
(3, 7),
(7, 8),
(4, 6),
(4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Loan`
--

CREATE TABLE `Loan` (
  `LoanNo` int(11) NOT NULL,
  `Bname` varchar(20) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Loan`
--

INSERT INTO `Loan` (`LoanNo`, `Bname`, `Amount`) VALUES
(1, 'Nana Rao Park', 9864),
(2, 'IIT Kanpur', 785555),
(3, 'Kaanch Mandir', 78646),
(4, 'IIT Kanpur', 78765),
(5, 'Nana Rao Park', 986124),
(6, 'IIT Kanpur', 785515),
(7, 'Kaanch Mandir', 8646),
(8, 'All Saints Cathedral', 86146),
(9, 'Allahabad Museum', 8646),
(10, 'Kaanch Mandir', 8646),
(11, 'Elante mall', 82646),
(12, 'Karol Bagh', 86446);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`AccNo`),
  ADD KEY `Bname` (`Bname`);

--
-- Indexes for table `Borrower`
--
ALTER TABLE `Borrower`
  ADD KEY `Cid` (`Cid`),
  ADD KEY `LoanNo` (`LoanNo`);

--
-- Indexes for table `Branch`
--
ALTER TABLE `Branch`
  ADD PRIMARY KEY (`Bname`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `Depositor`
--
ALTER TABLE `Depositor`
  ADD KEY `Cid` (`Cid`),
  ADD KEY `AccNo` (`AccNo`);

--
-- Indexes for table `Loan`
--
ALTER TABLE `Loan`
  ADD PRIMARY KEY (`LoanNo`),
  ADD KEY `Bname` (`Bname`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Account`
--
ALTER TABLE `Account`
  ADD CONSTRAINT `Account_ibfk_1` FOREIGN KEY (`Bname`) REFERENCES `Branch` (`Bname`);

--
-- Constraints for table `Borrower`
--
ALTER TABLE `Borrower`
  ADD CONSTRAINT `Borrower_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `Customer` (`Cid`),
  ADD CONSTRAINT `Borrower_ibfk_2` FOREIGN KEY (`LoanNo`) REFERENCES `Loan` (`LoanNo`);

--
-- Constraints for table `Depositor`
--
ALTER TABLE `Depositor`
  ADD CONSTRAINT `Depositor_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `Customer` (`Cid`),
  ADD CONSTRAINT `Depositor_ibfk_2` FOREIGN KEY (`AccNo`) REFERENCES `Account` (`AccNo`);

--
-- Constraints for table `Loan`
--
ALTER TABLE `Loan`
  ADD CONSTRAINT `Loan_ibfk_1` FOREIGN KEY (`Bname`) REFERENCES `Branch` (`Bname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
