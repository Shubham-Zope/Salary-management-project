-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 03:46 PM
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
(1, 'Ajay', 'Ravindran', 'Nair', 'CS', 'A+', 'aj@g.com', '5421565', '20', 'Marketing', 'Manager', 'Thane', '8ceb54c4ae8378aafda9a12adaa99cd7', 'Management', '2001-01-23'),
(167, 'Prithvi', '', 'Kumar', 'CS', 'O', 'pk@g.com', '31232132', '1', 'Computer Science', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(202, 'Shubham', '', 'zope', 'CS', 'O', 'shubham@g.com', '73981273', '1', 'Computer Science', 'Accountant', 'a', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(203, 'Soham', '', 'Das', 'CS', 'O', 'sd@g.com', '23443214', '1', 'Computer Science', 'Accountant', 'd', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(204, 'Varun', '', 'Tripathy', 'CS', 'O', 'varuntripathy@g.com', '23443214', '20', 'Computer Science', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(205, 'Anurag', '', 'Saraswat', 'CS', 'O', 'anuragsaraswat@g.com', '31232132', '20', 'Computer Science', 'Accountant', 't', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(206, 'Virat', '', 'Kohli', 'CS', 'O', 'viratkohli@g.com', '4234324', '20', 'Computer Science', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(207, 'Meet', '', 'Patel', 'CS', 'O', 'meet@g.com', '65757657', '20', 'Computer Science', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(208, 'Divesh', '', 'Wat', 'CS', 'O', 'divesh@g.com', '584559155', '20', 'Computer Science', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(209, 'Mani', '', 'Kasi', 'CS', 'o', 'mani@g.com', '6549845132', '20', 'Computer Science', 'Chief Technical Officer', 'Ambernath', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(210, 'M.S.', '', 'Dhon', 'CS', 'O', 'dhoni@g.com', '79845132', '20', 'Computer Science', 'Chief Technical Officer', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(211, 'Prith', '', 'sds', 'CS', 'O', 'prithvi@g.com', '8657452', '2', 'Computer Science', 'Accountant', 'dew', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2019-01-23'),
(212, 'Rohit', '', 'Sharma', 'Cs', 'O', 'rohitsharma@gmail.com', '87946556', '1', 'Computer Science', 'Chief Technical Officer', 'Mumbai', 'e0e21f1f4bee91f7b025dc06728df2d6', 'Employee', '2020-01-23'),
(213, 'Shubhangi', '', 'Zope', 'CS', 'A', 'shubhangizope@g.com', '756194561', '20', 'Computer Science', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(214, 'Ajin', '', 'Rahane', 'CS', 'O', 'ajin@g.com', '31232132', '20', 'Computer Science', 'Accountant', 'Thane', '5dca4c4b164d1baf7fce472e074bb1c4', 'Employee', '2001-01-23'),
(215, 'Hardik', '', 'Sharma', 'B.E.', 'A+', 'hp@g.com', '965647456', '20', 'HR', 'Senior', 'Abcdefgh', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2000-08-17'),
(216, 'Chris', '', 'Gayle', 'CS', 'O', 'chrisgayle@g.com', '78945312', '20', 'Computer Science', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(217, 'Arjun', 'Periyarath', 'Nair', 'B.E. (EXTC)', 'AB-', 'an@g.com', '963541275', '3', 'Technical', 'Ux/Ui Designer', 'Mulund,Maharashtra', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2017-08-17'),
(218, 'Ajinkya', '', 'Rahane', 'CS', 'O', 'ajinkya@g.com', '89465', '2', 'Computer Science', 'Accountant', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2019-01-23'),
(219, 'Andre ', '', 'Russell', 'B.Tech(C.S)', 'O+', 'russell12@g.com', '9658741236', '0', 'HR', 'Accountant', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-08-15'),
(220, 'Pranav', '', 'Badhe', 'CS', 'O', 'pranav@g.com', '9854625226', '1', 'Marketing', 'Chief Technical Officer', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(221, 'Akhil', '', 'Dixit', 'B.E. (CMPN)', 'B+', 'ad@g.com', '756129842', '3', 'Marketing', 'QA', 'Kisan Nagar,Thane.', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2017-05-17'),
(222, 'Sopan', '', 'Zope', 'CS', 'O', 'sopan@g.com', '987345123', '1', 'HR', 'Senior Ux/Ui Developer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2020-01-23'),
(224, 'Virat', '', 'Jain', 'B.Tech(EXTC)', 'AB-', 'virat18@g.com', '7894561245', '4', 'Marketing', 'Ux/Ui Designer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2016-05-17'),
(225, 'Archana', '', 'Nair', 'B.E. (CMPN)', 'A+', 'anp@g.com', '9865412371', '5', 'HR', 'Accountant', 'Shree Nagar,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2015-07-12'),
(226, 'Ketki', '', 'Singh', 'CS', 'O', 'ketki@g.com', '98745224', '2', 'Marketing', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2019-01-23'),
(227, 'Aryan', '', 'Patil', 'CS', 'O', 'aryan@g.com', '894651230', '1', 'Marketing', 'Accountant', 'Bandra', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2020-01-23'),
(228, 'Darshan', '', 'Joshi', 'M.E', 'A+', 'dj@g.com', '512364987', '22', 'Marketing', 'Web Developer', 'esbgae erhe', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '1998-07-24'),
(229, 'Jickson', '', 'Joseph', 'B.E. (IT)', 'A+', 'jj@g.com', '754128963', '6', 'Finance', 'Accountant', 'I.T.I,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2014-07-12'),
(230, 'Abhinav', '', 'Sharma', 'B.Tech(EXTC)', 'O+', 'abhinav10@g.com', '8451236798', '6', 'Finance', 'Web Developer', 'Kalyan', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2015-04-12'),
(231, 'Piyush', '', 'Waghirkar', 'CS', 'O', 'piyush@g.com', '78845155', '1', 'Computer Science', 'Senior Ux/Ui Developer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(232, 'Keyur', '', 'kulkarni', 'CS', 'O', 'keyur@g.com', '978465132', '2', 'Marketing', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2019-01-23'),
(233, 'Jokhuram', '', 'Yadav', 'B.A.', 'B-', 'jy@g.com', '875412639', '6', 'Marketing', 'QA', 'Shanti Nagar,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2014-07-5'),
(234, 'Devang', '', 'Kulkarni', 'B.E', 'AB+', 'dk@g.com', '5834378627', '18', 'Finance', 'Ux/Ui Designer', 'esvewegerbe erger4', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2002-08-16'),
(235, 'Tony', '', 'Lio', 'B.E(C.S)', 'A+', 'tonystark11@g.com', '8945612378', '6', 'Marketing', 'Accountant', 'Mulund', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2014-12-12'),
(236, 'Shubh', '', 'Zope', 'CS', 'O', 'shubh@g.com', '89984856', '1', 'Marketing', 'Senior Ux/Ui Developer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(237, 'Anand', '', 'Patel', 'B.Com', 'A-', 'ap@g.com', '7584123695', '1', 'Finance', 'Accountant', 'Ram Nagar,Thane.', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2019-05-5'),
(238, 'Virat', '', 'Sharma', 'B.E(C.S)', 'A-', 'virat18sharma@g.com', '9784512361', '4', 'Marketing', 'Accountant', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2017-03-06'),
(239, 'Rahul', '', 'Patel', 'Phd', 'o+', 'rp@g.com', '852427924', '11', 'Sales', 'Accountant', 'bwwg g4weh4 ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2010-01-3'),
(240, 'Micheel', '', 'Qintina', 'CS', 'O', 'michel@g.com', '798465132', '1', 'Computer Science', 'Senior Ux/Ui Developer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(241, 'Cristina', '', 'Ballester', 'CS', 'O', 'cristina@g.com', '789456120', '1', 'Marketing', 'Accountant', 'America', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(242, 'Harry', '', 'Gellar', 'B.Tech(C.S)', 'AB-', 'harryGeller@g.com', '7895623333', '4', 'Marketing', 'Web Developer', 'Sion', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2016-08-05'),
(243, 'Smriti', '', 'Shukla', 'B.E. (IT)', 'A+', 'ss@g.com', '985746312', '6', 'Technical', 'Web Developer', 'Savarkar Nagar,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2014-07-12'),
(244, 'Tushar', '', 'sarkar', 'M.E', 'O-', 'ts@g.com', '2078285272', '20', 'HR', 'Senior Ux/Ui Developer', 'ae w wh4u ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2000-12-12'),
(245, 'Robert', '', 'Cooper', 'CS', 'O', 'robert@g.com', '8465132', '1', 'Marketing', 'Senior Ux/Ui Developer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(246, 'Sabil', '', 'Firdausi', 'B.E. (EXTC)', 'A-', 'sf@g.com', '854967132', '3', 'Technical', 'Senior Web Developer', 'Mulund,Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2017-09-17'),
(247, 'Prathama', '', 'Singh', 'CS', 'O', 'prathama@g.com', '89561320.', '1', 'Marketing', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2020-01-23'),
(248, 'Albus', '', 'Gellar', 'B.Tech(EXTC)', 'AB-', 'albus@g.com', '9874563331', '1', 'Finance', 'Ux/Ui Designer', 'Pune', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2019-05-14'),
(249, 'Kunal', '', 'Shindekar', 'Phd', 'A-', 'ks@g.com', '04780868728', '18', 'Marketing', 'QA', 'sdvwaeha waer a ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2002-08-16'),
(250, 'Natasha', '', 'Kulkarni', 'CS', 'O', 'natasha@g.com', '7451563', '1', 'Marketing', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(251, 'Garry', '', 'Sharma', 'B.Tech(C.S)', 'O+', 'garry@g.com', '8564123451', '6', 'Finance', 'Ux/Ui Designer', 'Sion', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2014-05-14'),
(252, 'Priya', '', 'Aggarwal', 'B.E. (IT)', 'B+', 'pa@g.com', '8574969685', '10', 'Technical', 'Senior Ux/Ui Develope', 'CP Talav,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2010-08-17'),
(253, 'Jitesh ', '', 'Tejnani', 'M.E', 'B-', 'jt@g.com', '453727868', '11', 'Finance', 'Ux/Ui Designer', 'f wqffewh ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2010-01-3'),
(254, 'Karan', '', 'Sharma', 'CS', 'O', 'karan@g.com', '794865132', '2', 'Marketing', 'Senior Ux/Ui Developer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2019-01-23'),
(255, 'sharon', '', 'stone', 'B.Tech(EXTC)', 'A+', 'sharon@g.com', '7894567894', '6', 'Marketing', 'Ux/Ui Designer', 'London', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2015-04-13'),
(256, 'Sujit', '', 'Zope', 'CS', 'O', 'sujit@g.com', '879415320.', '1', 'Marketing', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(257, 'Rutik', '', 'Devkar', 'B.E', 'AB-', 'rd@g.com', '472803873', '20', 'Sales', 'Ux/Ui Designer', 'veg wgeh eajj5', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2000-12-12'),
(258, 'Atul', '', 'Naik', 'B.E. (EXTC)', 'A-', 'anulik@g.com', '8596743219', '5', 'Technical', 'Web Developer', 'Road no.22, Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2015-07-10'),
(259, 'Chetan', '', 'Amrutkar', 'Phd', 'B-', 'ca@g.com', '257683878345', '11', 'HR', 'Accountant', 'wvg eajk6 ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2010-01-3'),
(260, 'Ravi', '', 'Watwani', 'CS', 'O', 'ravi@g.com', '79465132', '1', 'Marketing', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(261, 'Akshay', '', 'Salian', 'B.E. (IT)', 'B+', 'as@g.com', '852136497', '1813', 'Technical', 'Chief Technical Officer', 'Lokmanya Nagar,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management ', '207-08-17'),
(262, 'Emma', '', 'Davis', 'B.Tech(EXTC)', 'A+', 'emma12@g.com', '9874564564', '7', 'Marketing', 'Ux/Ui Designer', 'New york', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2013-06-14'),
(263, 'Rajash', '', 'Wadke', 'CS', 'O', 'rajash@g.com', '4865132', '1', 'Marketing', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2020-01-23'),
(264, 'Tejas', '', 'Pawar', 'B.E', 'AB+', 'tp@g.com', '354783873', '20', 'Marketing', 'Senior Ux/Ui Developer', 'jtrt uts ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2000-06-21'),
(265, 'Gaurav', '', 'Mayekar', 'B.Com', 'A+', 'gma@g.com', '968512374', '3', 'Marketing', 'QA', 'Kisan Nagar,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2017-05-17'),
(266, 'Soham', '', 'Moghe', 'soham@g.com', 'O', 'soham@g.com', '789465132', '20', 'Marketing', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2001-01-23'),
(267, 'Deep', '', 'Patel', 'B.E', 'o+', 'dp@g.com', '6387276828', '11', 'Finance', 'Ux/Ui Designer', 'dfndz eehr ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2010-01-3'),
(268, 'William ', '', 'Jones', 'B.E(Inst)', 'B+', 'williamjones@g.com', '9874569874', '1', 'Finance', 'Accountant', 'US', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2019-08-14'),
(269, 'Shubham', '', 'Moghe', 'CS', 'O', 'shubhammoghe@g.com', '89456123', '1', 'Marketing', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(270, 'Aditya', '', 'Kasar', 'Phd', 'O-', 'ak@g.com', '42372788728', '20', 'Finance', 'Web Developer', 'shej heaa ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2000-12-12'),
(272, 'Arik', 'Shyam', 'Malik', 'B.E. (EXTC)', 'B+', 'amo@g.com', '85963274', '2', 'Technical', 'Web Developer', 'Shanti Nagar,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2018-07-12'),
(273, 'Carol', '', 'Cummins', 'B.Tech(EXTC)', 'O+', 'carol@g.com', '8456123789', '1', 'HR', 'Ux/Ui Designer', 'London', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2019-04-23'),
(274, 'Chinmay', '', 'kadak', 'CS', 'O', 'chinmay@g.com', '879456132', '1', 'Marketing', 'Senior Ux/Ui Developer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(275, 'Prathamesh', '', 'Kharade', 'M.E', 'B-', 'pk@g.com', '76333037377378', '20', 'Sales', 'QA', 'hz he  u4er ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2000-06-21'),
(276, 'Aakash', '', 'Sharma', 'B.SC', 'B+', 'ash@g.com', '96423857', '3', 'Technical', 'Ux/Ui Designer', 'Shanti Nagar,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2017-05-12'),
(277, 'Harsh', '', 'Barai', 'B.E(Inst)', 'B+', 'harsh12@g.com', '8457894567', '8', 'Finance', 'Ux/Ui Designer', 'Mumabi', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2013-04-14'),
(278, 'Kunal', '', 'Mahajan', 'CS', 'O', 'kunal@g.com', '749563', '1', 'Marketing', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(279, 'Pratik', '', 'Kalantri', 'Phd', 'A+', 'pk@g.com', '2573873853', '20', 'Sales', 'Senior Web Developer', 'drjr au a  eer ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2000-12-12'),
(280, 'yash', '', 'ghume', 'B.Tech(C.S)', 'A-', 'yash56@g.com', '7894567895', '1', 'Finance', 'Ux/Ui Designer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2019-09-15'),
(281, 'Amandeep', '', 'Singh', 'CS', 'O', 'as@g.com', '879451320', '1', 'Marketing', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2020-01-23'),
(282, 'Santosh', '', 'Neupane', 'B.Com', 'A-', 'sn@g.com', '859321647', '3', 'Finance', 'Accountant', 'Shree Nagar,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2017-08-17'),
(283, 'Shlok', '', 'Gangatirkar', 'B.E', 'o+', 'sg@g.com', '378583757242783', '11', 'Finance', 'Accountant', 'rrhh  er HRE h ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2010-01-3'),
(284, 'Abhilash', '', 'patel', 'B.Tech(EXTC)', 'A+', 'abhilash90@g.com', '9123456789', '13', 'Marketing', 'Ux/Ui Designer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2007-05-14'),
(285, 'Kartikeyya', '', 'Yadav', 'B.E. (CMPN)', 'AB-', 'ky@g.com', '936258471', '6', 'Technical', 'Senior Web Developer', 'Vaishali Nagar,Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2014-05-12'),
(286, 'Morgan', '', 'Curran', 'CS', 'O', 'morgan@g.com', '498561320', '2', 'Marketing', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2019-01-23'),
(287, 'Prathamesh', '', 'Sujgure', 'M.E', 'AB-', 'ps@g.com', '05433747383', '22', 'HR', 'Senior Web Developer', 'rh ar ej ak', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '1998-07-24'),
(288, 'Shubham', '', 'Bomble', 'CS', 'O', 'sb@g.com', '987852035', '20', 'Marketing', 'Accountant', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2001-01-23'),
(289, 'Amisha', '', 'Shyam', 'B.A', 'B+', 'asha1@g.com', '938271456', '7', 'Marketing', 'QA', 'Shree Nagar,Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2013-07-10'),
(290, 'Prasad', '', 'Khalkar', 'Phd', 'AB-', 'pk@g.com', '2873738335877', '18', 'Sales', 'Senior Ux/Ui Developer', 'sg y e5r5 5 ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2002-08-16'),
(291, 'Rahul', '', 'Tiwetia', 'B.Tech(C.S)', 'O+', 'rahul12@g.com', '7589467894', '5', 'Finance', 'Accountant', 'UP', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2015-12-12'),
(292, 'Chris', '', 'Morris', 'CS', 'O', 'chrismoris@g.com', '844895123', '1', 'Marketing', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(293, 'Ashwati', '', 'Shyam', 'B.SC', 'A-', 'ashh@g.com', '9326698874', '3', 'Technical', 'Ux/Ui Designer', 'Shree Nagar, Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2017-04-17'),
(294, 'Shripad', '', 'Joshi', 'Phd', 'A+', 'sj@g.com', '2078285272', '22', 'HR', 'Ux/Ui Designer', 'j aajtr kr ktr k ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '1998-07-24'),
(295, 'Chirag', '', 'Khan', 'CS', 'O', 'chirag@g.com', '798465132', '1', 'Marketing', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(296, 'Dinesh', '', 'Kartik', 'B.Tech(EXTC)', 'A+', 'dk12@g.com', '6547894567', '1', 'Finance', 'Accountant', 'London', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management', '2019-09-15'),
(297, 'Ameya', '', 'Ganore', 'M.E', 'B-', 'ag@g.com', '04780868728', '20', 'Marketing', 'Web Developer', 'ad f hhhh  ', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2000-12-12'),
(298, 'Sam', '', 'warner', 'CS', 'O', 'sam@g.com', '879865132', '20', 'Marketing', 'Chief Technical Officer', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2001-01-23'),
(299, 'Manumohan', '', 'Pillai', 'B.Com', 'AB-', 'mp@g.com', '685497231', '5', 'HR', 'Accountant', 'Shambala, Kurla', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management ', '2015-11-11'),
(300, 'Kartik', '', 'Kholi', 'B.Tech(EXTC)', 'A-', 'kartik@g.com', '7788994455', '4', 'Marketing', 'Accountant', 'MP', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2016-12-15'),
(301, 'Aditya', '', 'Gavali', 'M.E', 'AB-', 'ag@g.com', '24738783888888', '11', 'Sales', 'Ux/Ui Designer', 'eg eg a hhegegm', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2010-01-3'),
(302, 'Abhijay', '', 'Singh', 'CS', 'O', 'abhijay@g.com', '49845132', '1', 'Marketing', 'Chief Technical Officer', 'Thane\r\n', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee', '2020-01-23'),
(303, 'Krishna', '', 'Yadav', 'B.E. (EXTC)', 'AB-', 'kys@g.com', '965712321', '5', 'Technical', 'Chief Technical Officer', 'Mandala, Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management ', '2015-12-12');

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
(233, 1, 0, 0, NULL, 0, 'okkk', 'Accepted', 'sickleave', 1, 206),
(234, 2, 0, 0, NULL, 0, 'Ill', 'Accepted', 'sickleave', 2, 207),
(235, 15, 0, 0, NULL, 0, 'corona', 'Accepted', 'sickleave', 15, 208),
(236, 15, 0, 0, NULL, 0, 'illl', 'Accepted', 'sickleave', 15, 209),
(237, 15, 3, 2, NULL, 2, 'Festival', 'Accepted', 'earnleave', 3, 210),
(238, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 211),
(239, 3, 0, 0, NULL, 0, 'Fear', 'Accepted', 'sickleave', 3, 212),
(240, 6, 0, 0, NULL, 0, 'Ill', 'Accepted', 'sickleave', 3, 213),
(241, 15, 0, 0, NULL, 0, 'Fever', 'Accepted', 'sickleave', 16, 214),
(242, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 215),
(243, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 216),
(244, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 217),
(245, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 218),
(246, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 219),
(247, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 220),
(248, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 221),
(249, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 222),
(251, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 224),
(252, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 225),
(253, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 226),
(254, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 227),
(255, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 228),
(256, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 229),
(257, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 230),
(258, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 231),
(259, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 232),
(260, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 233),
(261, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 234),
(262, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 235),
(263, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 236),
(264, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 237),
(265, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 238),
(266, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 239),
(267, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 240),
(268, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 241),
(269, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 242),
(270, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 243),
(271, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 244),
(272, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 245),
(273, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 246),
(274, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 247),
(275, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 248),
(276, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 249),
(277, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 250),
(278, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 251),
(279, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 252),
(280, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 253),
(281, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 254),
(282, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 255),
(283, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 256),
(284, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 257),
(285, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 258),
(286, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 259),
(287, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 260),
(288, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 261),
(289, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 262),
(290, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 263),
(291, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 264),
(292, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 265),
(293, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 266),
(294, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 267),
(295, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 268),
(296, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 269),
(297, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 270),
(299, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 272),
(300, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 273),
(301, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 274),
(302, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 275),
(303, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 276),
(304, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 277),
(305, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 278),
(306, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 279),
(307, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 280),
(308, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 281),
(309, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 282),
(310, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 283),
(311, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 284),
(312, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 285),
(313, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 286),
(314, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 287),
(315, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 288),
(316, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 289),
(317, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 290),
(318, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 291),
(319, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 292),
(320, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 293),
(321, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 294),
(322, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 295),
(323, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 296),
(324, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 297),
(325, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 298),
(326, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 299),
(327, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 300),
(328, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 301),
(329, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 302),
(330, 0, 0, 0, NULL, 0, NULL, 'Pending approval', NULL, NULL, 303);

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
(275, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 206, NULL, NULL, NULL, 0),
(276, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '62000', '1800', '200', '650', '0', '0', '59350', 206, '1/1/2002', '7/5/2010', NULL, 36000),
(277, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 207, NULL, NULL, NULL, 0),
(278, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 208, NULL, NULL, NULL, 0),
(279, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '26100', '1800', '200', '650', '0', '0', '23450', 208, '6/4/2010', '7/5/2010', NULL, 100),
(280, '0', '0', '0', '0', '0', '0', '0', '36000', '0', '0', '0', '3', '300', '35700', 208, '6/6/2001', '7/7/2001', NULL, 36000),
(281, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 209, NULL, NULL, NULL, 0),
(282, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '85400', '1800', '200', '1500', '0', '0', '81900', 209, '6/6/2001', '7/7/2001', NULL, 36000),
(283, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '49500', '1800', '200', '1500', '3', '300', '45700', 209, '6/4/2010', '7/5/2010', NULL, 100),
(284, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 210, NULL, NULL, NULL, 0),
(285, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '85400', '1800', '200', '1500', '0', '0', '81900', 210, '6/6/2001', '7/7/2001', NULL, 36000),
(286, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '49500', '1800', '200', '1500', '0', '0', '46000', 210, '6/4/2010', '7/5/2010', NULL, 100),
(287, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 211, NULL, NULL, NULL, 0),
(288, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '26100', '1800', '200', '650', '0', '0', '23450', 211, '6/4/2010', '7/5/2010', NULL, 100),
(289, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 212, NULL, NULL, NULL, 0),
(290, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '49500', '1800', '200', '1500', '0', '0', '46000', 212, '6/4/2010', '7/5/2010', NULL, 100),
(291, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 213, NULL, NULL, NULL, 0),
(292, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '62000', '1800', '200', '650', '0', '0', '59350', 213, '6/6/2001', '7/5/2010', NULL, 36000),
(293, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 214, NULL, NULL, NULL, 0),
(294, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '62000', '1800', '200', '650', '1', '100', '59250', 214, '6/4/2010', '7/5/2010', NULL, 36000),
(295, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '26100', '1800', '200', '650', '0', '0', '23450', 214, '', '', NULL, 100),
(296, '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '', '', '', '', 215, NULL, NULL, NULL, 0),
(297, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 216, NULL, NULL, NULL, 0),
(298, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 217, NULL, NULL, NULL, 0),
(299, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 218, NULL, NULL, NULL, 0),
(300, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 219, NULL, NULL, NULL, 0),
(301, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 220, NULL, NULL, NULL, 0),
(302, '5000', '2000', '600', '180', '800', '750', '270', '', '580', '200', '', '', '', '', 221, NULL, NULL, NULL, 0),
(303, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 222, NULL, NULL, NULL, 0),
(305, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 224, NULL, NULL, NULL, 0),
(306, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 225, NULL, NULL, NULL, 0),
(307, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 226, NULL, NULL, NULL, 0),
(308, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 227, NULL, NULL, NULL, 0),
(309, '15000', '2000', '500', '600', '1500', '1200', '450', '', '1080', '200', '', '', '', '', 228, NULL, NULL, NULL, 0),
(310, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 229, NULL, NULL, NULL, 0),
(311, '15000', '2000', '500', '600', '1500', '1200', '450', '', '1080', '200', '', '', '', '', 230, NULL, NULL, NULL, 0),
(312, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 231, NULL, NULL, NULL, 0),
(313, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 232, NULL, NULL, NULL, 0),
(314, '5000', '2000', '600', '180', '800', '750', '270', '', '580', '200', '', '', '', '', 233, NULL, NULL, NULL, 0),
(315, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 234, NULL, NULL, NULL, 0),
(316, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 235, NULL, NULL, NULL, 0),
(317, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 236, NULL, NULL, NULL, 0),
(318, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 237, NULL, NULL, NULL, 0),
(319, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 238, NULL, NULL, NULL, 0),
(320, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 239, NULL, NULL, NULL, 0),
(321, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 240, NULL, NULL, NULL, 0),
(322, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 241, NULL, NULL, NULL, 0),
(323, '15000', '2000', '500', '600', '1500', '1200', '450', '', '1080', '200', '', '', '', '', 242, NULL, NULL, NULL, 0),
(324, '15000', '2000', '500', '600', '1500', '1200', '450', '', '1080', '200', '', '', '', '', 243, NULL, NULL, NULL, 0),
(325, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 244, NULL, NULL, NULL, 0),
(326, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 245, NULL, NULL, NULL, 0),
(327, '18000', '1500', '1500', '1100', '2200', '1250', '950', '', '1580', '200', '', '', '', '', 246, NULL, NULL, NULL, 0),
(328, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 247, NULL, NULL, NULL, 0),
(329, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 248, NULL, NULL, NULL, 0),
(330, '5000', '2000', '600', '180', '800', '750', '270', '', '580', '200', '', '', '', '', 249, NULL, NULL, NULL, 0),
(331, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 250, NULL, NULL, NULL, 0),
(332, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 251, NULL, NULL, NULL, 0),
(333, '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '', '', '', '', 252, NULL, NULL, NULL, 0),
(334, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 253, NULL, NULL, NULL, 0),
(335, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 254, NULL, NULL, NULL, 0),
(336, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 255, NULL, NULL, NULL, 0),
(337, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 256, NULL, NULL, NULL, 0),
(338, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 257, NULL, NULL, NULL, 0),
(339, '15000', '2000', '500', '600', '1500', '1200', '450', '', '1080', '200', '', '', '', '', 258, NULL, NULL, NULL, 0),
(340, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 259, NULL, NULL, NULL, 0),
(341, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 260, NULL, NULL, NULL, 0),
(342, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 261, NULL, NULL, NULL, 0),
(343, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 262, NULL, NULL, NULL, 0),
(344, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 263, NULL, NULL, NULL, 0),
(345, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 264, NULL, NULL, NULL, 0),
(346, '5000', '2000', '600', '180', '800', '750', '270', '', '580', '200', '', '', '', '', 265, NULL, NULL, NULL, 0),
(347, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 266, NULL, NULL, NULL, 0),
(348, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 267, NULL, NULL, NULL, 0),
(349, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 268, NULL, NULL, NULL, 0),
(350, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 269, NULL, NULL, NULL, 0),
(351, '15000', '2000', '500', '600', '1500', '1200', '450', '', '1080', '200', '', '', '', '', 270, NULL, NULL, NULL, 0),
(353, '15000', '2000', '500', '600', '1500', '1200', '450', '', '1080', '200', '', '', '', '', 272, NULL, NULL, NULL, 0),
(354, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 273, NULL, NULL, NULL, 0),
(355, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 274, NULL, NULL, NULL, 0),
(356, '5000', '2000', '600', '180', '800', '750', '270', '', '580', '200', '', '', '', '', 275, NULL, NULL, NULL, 0),
(357, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 276, NULL, NULL, NULL, 0),
(358, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 277, NULL, NULL, NULL, 0),
(359, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 278, NULL, NULL, NULL, 0),
(360, '18000', '1500', '1500', '1100', '2200', '1250', '950', '', '1580', '200', '', '', '', '', 279, NULL, NULL, NULL, 0),
(361, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 280, NULL, NULL, NULL, 0),
(362, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 281, NULL, NULL, NULL, 0),
(363, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 282, NULL, NULL, NULL, 0),
(364, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 283, NULL, NULL, NULL, 0),
(365, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 284, NULL, NULL, NULL, 0),
(366, '18000', '1500', '1500', '1100', '2200', '1250', '950', '', '1580', '200', '', '', '', '', 285, NULL, NULL, NULL, 0),
(367, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 286, NULL, NULL, NULL, 0),
(368, '18000', '1500', '1500', '1100', '2200', '1250', '950', '', '1580', '200', '', '', '', '', 287, NULL, NULL, NULL, 0),
(369, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 288, NULL, NULL, NULL, 0),
(370, '5000', '2000', '600', '180', '800', '750', '270', '', '580', '200', '', '', '', '', 289, NULL, NULL, NULL, 0),
(371, '16000', '3000', '1000', '1600', '2500', '1250', '900', '', '1800', '200', '', '', '', '', 290, NULL, NULL, NULL, 0),
(372, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 291, NULL, NULL, NULL, 0),
(373, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 292, NULL, NULL, NULL, 0),
(374, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 293, NULL, NULL, NULL, 0),
(375, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 294, NULL, NULL, NULL, 0),
(376, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 295, NULL, NULL, NULL, 0),
(377, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 296, NULL, NULL, NULL, 0),
(378, '15000', '2000', '500', '600', '1500', '1200', '450', '', '1080', '200', '', '', '', '', 297, NULL, NULL, NULL, 0),
(379, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 298, NULL, NULL, NULL, 0),
(380, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 299, NULL, NULL, NULL, 0),
(381, '13000', '3500', '2000', '1600', '3000', '1250', '1650', '', '1800', '200', '', '', '', '', 300, NULL, NULL, NULL, 0),
(382, '10000', '2000', '600', '600', '1400', '1200', '300', '', '1010', '200', '', '', '', '', 301, NULL, NULL, NULL, 0),
(383, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 302, NULL, NULL, NULL, 0),
(384, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '', '1800', '200', '', '', '', '', 303, NULL, NULL, NULL, 0),
(386, '30000', '3000', '6000', '1600', '1400', '1250', '6150', '49500', '1800', '200', '1500', '0', '0', '46000', 216, '', '', NULL, 100);

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
  MODIFY `Employ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `leavez`
--
ALTER TABLE `leavez`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

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
