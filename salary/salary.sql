-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2021 at 04:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salary`
--

-- --------------------------------------------------------

--
-- Table structure for table `addemploy`
--

CREATE TABLE `addemploy` (
  `Employ_ID` int(11) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `qualify` varchar(45) DEFAULT NULL,
  `blood` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `exp` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `addr` varchar(45) DEFAULT NULL,
  `Password` varchar(45) NOT NULL,
  `MainRole` varchar(45) NOT NULL,
  `jd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addemploy`
--

INSERT INTO `addemploy` (`Employ_ID`, `fname`, `mname`, `lname`, `qualify`, `blood`, `email`, `phone`, `exp`, `department`, `designation`, `addr`, `Password`, `MainRole`, `jd`) VALUES
(1, 'Ajay', 'Ravindra', 'Nair', 'CS', 'A+', 'aj@g.com', '5421565', '20', 'Marketing', 'Manager', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2001-01-23'),
(167, 'Prithvi', '', 'Kumar', 'CS', 'O', 'pk@g.com', '31232132', '1', 'Computer Science', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(202, 'Shubham', '', 'zope', 'CS', 'O', 'shubham@g.com', '73981273', '1', 'Computer Science', 'Accountant', 'a', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(203, 'Soham', '', 'Das', 'CS', 'O', 'sd@g.com', '23443214', '1', 'Computer Science', 'Accountant', 'd', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(204, 'Varun', '', 'Tripath', 'CS', 'O', 'varuntripathy@g.com', '23443214', '20', 'Computer Science', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(205, 'Anurag', '', 'Saraswat', 'CS', 'O', 'anuragsaraswat@g.com', '31232132', '20', 'Computer Science', 'Accountant', 't', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(206, 'Virat', '', 'Kohli', 'CS', 'O', 'viratkohli@g.com', '4234324', '20', 'Computer Science', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `leavez`
--

CREATE TABLE `leavez` (
  `leave_id` int(11) NOT NULL,
  `sickleave` int(11) DEFAULT 0,
  `earnleave` int(11) DEFAULT 0,
  `casualleave` int(11) DEFAULT 0,
  `nationalfesholiday` int(11) DEFAULT NULL,
  `paidleave` int(11) DEFAULT 0,
  `leavereason` text DEFAULT NULL,
  `leaveapproval` varchar(50) DEFAULT 'Pending approval',
  `leavetype` varchar(50) DEFAULT NULL,
  `reqleave` int(11) DEFAULT NULL,
  `addemploy_Employ_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leavez`
--

INSERT INTO `leavez` (`leave_id`, `sickleave`, `earnleave`, `casualleave`, `nationalfesholiday`, `paidleave`, `leavereason`, `leaveapproval`, `leavetype`, `reqleave`, `addemploy_Employ_ID`) VALUES
(229, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 202),
(230, 1, 0, 0, NULL, 0, 'ok', 'Accepted', 'sickleave', 1, 203),
(231, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 204),
(232, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 205),
(233, 1, 0, 0, NULL, 0, 'okkk', 'Accepted', 'sickleave', 1, 206);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_ID` int(11) NOT NULL,
  `b_salary` varchar(45) NOT NULL,
  `hra` varchar(45) NOT NULL,
  `lta` varchar(45) NOT NULL,
  `ca` varchar(45) NOT NULL,
  `da` varchar(45) NOT NULL,
  `md` varchar(45) NOT NULL,
  `sa` varchar(45) NOT NULL,
  `g_salary` varchar(45) NOT NULL,
  `epf` varchar(45) NOT NULL,
  `pt` varchar(45) NOT NULL,
  `it` varchar(45) NOT NULL,
  `lt` varchar(45) NOT NULL,
  `ld` varchar(45) NOT NULL,
  `n_salary` varchar(45) NOT NULL,
  `addemploy_Employ_ID` int(11) NOT NULL,
  `fromdate` varchar(45) DEFAULT NULL,
  `todate` varchar(45) DEFAULT NULL,
  `month` int(5) DEFAULT NULL,
  `inc` int(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salary_ID`, `b_salary`, `hra`, `lta`, `ca`, `da`, `md`, `sa`, `g_salary`, `epf`, `pt`, `it`, `lt`, `ld`, `n_salary`, `addemploy_Employ_ID`, `fromdate`, `todate`, `month`, `inc`) VALUES
(246, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 167, NULL, NULL, NULL, 0),
(258, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 202, NULL, NULL, NULL, 0),
(259, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 203, NULL, NULL, NULL, 0),
(260, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 204, NULL, NULL, NULL, 0),
(273, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '62000', '1800', '200', '650', '0', '0', '59350', 204, '6/4/2010', '7/5/2010', NULL, 36000),
(274, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 205, NULL, NULL, NULL, 0),
(275, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 206, NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addemploy`
--
ALTER TABLE `addemploy`
  ADD PRIMARY KEY (`Employ_ID`);

--
-- Indexes for table `leavez`
--
ALTER TABLE `leavez`
  ADD PRIMARY KEY (`leave_id`),
  ADD KEY `fk_leave_addemploy2_idx` (`addemploy_Employ_ID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_ID`),
  ADD KEY `fk_salary_addemploy1_idx` (`addemploy_Employ_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addemploy`
--
ALTER TABLE `addemploy`
  MODIFY `Employ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `leavez`
--
ALTER TABLE `leavez`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `leavez`
--
ALTER TABLE `leavez`
  ADD CONSTRAINT `fk_leave_addemploy2` FOREIGN KEY (`addemploy_Employ_ID`) REFERENCES `addemploy` (`Employ_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `fk_salary_addemploy1` FOREIGN KEY (`addemploy_Employ_ID`) REFERENCES `addemploy` (`Employ_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
