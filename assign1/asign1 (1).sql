-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2016 at 01:50 PM
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
(11, 'Rock Garden', 94343),
(12, 'Lal kila', 55000),
(13, 'All Saints Cathedral', 76863),
(14, 'All Saints Cathedral', 7663),
(15, 'Allahabad Museum', 62343),
(16, 'Annapurna Temple', 8343),
(17, 'Elante mall', 7865),
(18, 'IIT Kanpur', 8000),
(19, 'Kaanch Mandir', 4573),
(20, 'Kalyanpur', 1000),
(21, 'Karol Bagh', 7856),
(22, 'Lal kila', 20000),
(23, 'Main Allahabad', 800),
(24, 'Main Indore', 40600),
(25, 'Moti Jheel', 6785),
(26, 'Nana Rao Park', 7687),
(28, 'Panjab University', 78546),
(29, 'Rock Garden', 78434),
(30, 'Triveni Sangam', 9856),
(31, 'Vasant Kunj', 5644),
(32, 'White Church', 78056);

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
(9, 10),
(3, 11),
(3, 13),
(3, 15),
(3, 17),
(3, 19),
(4, 4),
(4, 6),
(4, 8),
(4, 10),
(4, 12),
(4, 14),
(4, 16),
(4, 18),
(5, 5),
(5, 7),
(5, 9),
(5, 11),
(5, 13),
(5, 15),
(5, 17),
(5, 19),
(6, 6),
(6, 8),
(6, 10),
(6, 12),
(6, 14),
(6, 16),
(6, 18),
(7, 7),
(7, 9),
(7, 11),
(7, 13),
(7, 15),
(7, 17),
(7, 19),
(8, 8),
(8, 10),
(8, 12),
(8, 14),
(8, 16),
(8, 18),
(9, 9),
(9, 11),
(9, 13),
(9, 15),
(9, 17),
(9, 19),
(10, 10),
(10, 12),
(10, 14),
(10, 16),
(10, 18),
(11, 11),
(11, 13),
(11, 15),
(11, 17),
(11, 19),
(12, 12),
(12, 14),
(12, 16),
(12, 18),
(13, 13),
(13, 15),
(13, 17),
(13, 19),
(14, 14),
(14, 16),
(14, 18),
(15, 15),
(15, 17),
(15, 19),
(16, 16),
(16, 18),
(17, 17),
(17, 19),
(18, 18),
(19, 19);

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
(4, 9),
(6, 7),
(6, 10),
(6, 13),
(6, 16),
(6, 19),
(7, 2),
(7, 5),
(7, 8),
(7, 11),
(7, 14),
(7, 17),
(8, 3),
(8, 6),
(8, 9),
(8, 12),
(8, 15),
(8, 18),
(9, 1),
(9, 4),
(9, 7),
(9, 10),
(9, 13),
(9, 16),
(9, 19),
(10, 2),
(10, 5),
(10, 8),
(10, 11),
(10, 14),
(10, 17),
(11, 3),
(11, 6),
(11, 9),
(11, 12),
(11, 15),
(11, 18),
(12, 1),
(12, 4),
(12, 7),
(12, 10),
(12, 13),
(12, 16),
(12, 19),
(13, 2),
(13, 5),
(13, 8),
(13, 11),
(13, 14),
(13, 17),
(14, 3),
(14, 6),
(14, 9),
(14, 12),
(14, 15),
(14, 18),
(15, 1),
(15, 4),
(15, 7),
(15, 10),
(15, 13),
(15, 16),
(15, 19),
(16, 2),
(16, 5),
(16, 8),
(16, 11),
(16, 14),
(16, 17),
(17, 3),
(17, 6),
(17, 9),
(17, 12),
(17, 15),
(17, 18),
(18, 1),
(18, 4),
(18, 7),
(18, 10),
(18, 13),
(18, 16),
(18, 19),
(19, 2),
(19, 5),
(19, 8),
(19, 11),
(19, 14),
(19, 17);

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
(12, 'Karol Bagh', 86446),
(13, 'Nana Rao Park', 984),
(14, 'IIT Kanpur', 7875),
(15, 'Nana Rao Park', 9864),
(16, 'IIT Kanpur', 7815),
(17, 'Kaanch Mandir', 86462),
(18, 'All Saints Cathedral', 86146),
(19, 'Allahabad Museum', 646),
(20, 'IIT Kanpur', 75555),
(21, 'Kaanch Mandir', 78646),
(22, 'Kaanch Mandir', 86416),
(23, 'Elante mall', 826);

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
