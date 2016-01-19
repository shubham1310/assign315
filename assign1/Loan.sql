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
(3, 'Kaanch Mandir', 78646);

--
-- Indexes for dumped tables
--

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
-- Constraints for table `Loan`
--
ALTER TABLE `Loan`
  ADD CONSTRAINT `Loan_ibfk_1` FOREIGN KEY (`Bname`) REFERENCES `Branch` (`Bname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
