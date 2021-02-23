-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 05:51 PM
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
  `MainRole` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addemploy`
--

INSERT INTO `addemploy` (`Employ_ID`, `fname`, `mname`, `lname`, `qualify`, `blood`, `email`, `phone`, `exp`, `department`, `designation`, `addr`, `Password`, `MainRole`) VALUES
(1, 'Ajay', 'Ravindran', 'Nair', 'CS', 'A+', 'aj@g.com', '87785785', '4', 'Sales', 'Manager', 'dwedwe', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(2, 'Shubham', NULL, NULL, NULL, NULL, 'sz@g.com', NULL, NULL, NULL, NULL, NULL, '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(3, 'Varun', '', 'Tripathy', 'IT', 'AB-', 'vt@g.com', '957412365', '1', 'Marketing', 'Senior', 'Kalyan', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(4, 'Soham', '', 'Das', 'cs', 'o+', 'sd@g.com', '85214796', '1', 'Marketing', 'Trainee', 'Ambernath', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(14, 'Mayur', 'Baswaraj', 'Pitre', 'B.E.', 'O+', 'mp@g.com', '85219347', '3', 'Human Resources', 'Project Head', 'ITI', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(15, 'Prithvi', '', 'Yadav', 'B.E.', 'B+', 'pk@g.com', '753964182', '2', 'Sales', 'Manager', 'Pune', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(16, 'Karan', NULL, 'Sharma', 'CS', 'O+', 'ks@g.com', '812547632', '3', 'Marketing', 'Trainee', 'Ambernath', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(21, 'Joe', NULL, 'Aden', 'CS', 'O+', 'joeaden@g.com', '32798739', '5', 'Finanace', 'Manager', 'England', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(22, 'Steve', NULL, 'Smith', 'EXTC', 'O+', 'stevesmith@g.com', '73824923', '4', 'Marketing', 'Deputy manager', 'Austrialia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(23, 'Soham', NULL, 'Moghe', 'CS', 'O+', 'sohammoghe@g.com', '274982379', '6', 'Sales', 'Manager', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(24, 'Carol', NULL, 'Hadassah', 'EXTR', 'O+', 'carolhadassah@g.com', '378372979', '4', 'Finance', 'Manager', 'Austria', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(25, 'Virat', NULL, 'Kohli', 'INST', 'O+', 'viratkohli@g.com', '378329378', '5', 'Marketing', 'Trainee', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(26, 'Piyush', NULL, 'Waghirkar', 'CS', 'O+', 'piyushwaghirkar@g.com', '684165986', '4', 'Finanace', 'Project head', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(27, 'Shubham', '', 'Zope', 'CS', 'O+', 'shubhamzope@g.com', '878867867', '5', 'Marketing', 'Manager', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(28, 'Ketki', NULL, 'Zope', 'CS', 'O+', 'ketizope@g.com', '5984563262', '5', 'Finance', 'Manager', 'Mulund', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(29, 'Aryan', NULL, 'Patil', 'CS', 'O+', 'aryanpatil@g.com', '958465465', '6', 'Sales', 'Deputy Manager', 'Pune', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(30, 'Lars', NULL, 'Hedwig', 'EXTC', 'O+', 'larshedwig@g.com', '589465561', '4', 'Marketing', 'Trainee', 'Canada', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(31, 'Joy', NULL, 'Harlan', 'IT', 'O+', 'joyharlan@g.com', '89765132153', '6', 'Marketing', 'Project head', 'Austrailia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(32, 'Ved', NULL, 'Patil', 'EXTC', 'O+', 'vedpatil@g.com', '97941651348', '2', 'Sales', 'Trainee', 'Ambernath', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(33, 'Keyur', NULL, 'Kulkarni', 'CS', 'O+', 'keyurkulkarni@g.com', '49846132', '5', 'Finance', 'Manager', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(34, 'Gaurang', NULL, 'Joshi', 'MECH', 'O+', 'gaurangjoshi@g.com', '48453352', '6', 'Marketing', 'Deputy manager', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(35, 'Sujit', NULL, 'Zope', 'MECH', 'O+', 'sujitzope@g.com', '97896465', '5', 'Finance', 'Project head', 'Jalgoan', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(36, 'Chris', NULL, 'Moris', 'EXTR', 'O+', 'chrismoris@g.com', '97894656', '4', 'Sales', 'Trainee', 'England', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(37, 'Vasant', NULL, 'Singh', 'INST', 'O+', 'vasantsingh@g.com', '987456431', '5', 'Marketing', 'Trainee', 'Punjab', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(38, 'Hemant', NULL, 'Talreja', 'CS', 'O+', 'hemanttalreja@g.com', '9789561632', '6', 'Sales', 'Manager', 'Nashik', '1a52e17fa899cf40fb04cfc42e6352f1', 'Managemnt'),
(39, 'Prathama', NULL, 'Badhe', 'CS', 'O+', 'prathamabadhe@g.com', '9346465132', '5', 'Marketing', 'Trainee', 'Pune', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(40, 'Shubham', NULL, 'Moghe', 'CS', 'O+', 'shubhammoghe@g.com', '987532132', '4', 'Marketing', 'Deputy Manager', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(41, 'Anuj', NULL, 'Zope', 'CS', 'O+', 'anujzope@g.com', '978646131', '4', 'Marketing', 'Project Head', 'Jalgoan', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(42, 'Alea', NULL, 'Hadley', 'EXTC', 'O+', 'aleahadlye@g.com', '974465654', '5', 'Marketing', 'Trainee', 'America', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(43, 'Pranav', NULL, 'Badhe', 'CS', 'O+', 'pranavbadhe@g.com', '945266485', '4', 'Marketing', 'Deputy manager', 'Pune', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(44, 'Walter', '', 'Lisand', 'IT', 'O+', 'walterlisandra@g.com', '98465650', '6', 'Finance', 'Manager', 'Austraila', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(45, 'Sonia', NULL, 'Bianca', 'EXTC', 'O+', 'soniabianca@g.com', '94553589', '5', 'Sales', 'Deputy Manager', 'Canada', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(46, 'Prashant', NULL, 'Sharma', 'CS', 'O+', 'prashantsharma@g.com', '978949656', '4', 'Marketing', 'Trainee', 'Ambernath', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(47, 'Robert', NULL, 'Downey', 'EXTC', 'O+', 'robertdowney@g.com', '9761562215', '5', 'Finance', 'Sales', 'Austrailia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(48, 'Roni', NULL, 'Dsouza', 'INST', 'O+', 'ronidsouza@g.com', '98745115', '3', 'Sales', 'Trainee', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(49, 'Sharrad', NULL, 'Singh', 'CS', 'O+', 'sharradsingh@g.com', '947563156', '5', 'Marketing', 'Manager', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(50, 'Sanjay', NULL, 'Patil', 'CS', 'O+', 'sanjaypatil@g.com', '8455964862', '4', 'Finance', 'Trainee', 'Ambernath', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(51, 'Nilesh', NULL, 'Patil', 'MECH', 'O+', 'nileshpatil@g.com', '8749515874', '5', 'Marketing', 'Deputy Manager', 'Nagbur', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(52, 'Will', NULL, 'Smith', 'CS', 'O+', 'willsmith@g.com', '9456584512', '4', 'Sales', 'Trainee', 'America', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(53, 'Shubhangi', NULL, 'Zope', 'CS', 'O+', 'shubhangizope@g.com', '24955894', '5', 'Marketing', 'Trainee', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(54, 'Kunal', NULL, 'Zope', 'CS', 'O+', 'kunalzope@g.com', '812547632', '5', 'Finance', 'Manager', 'Mulund', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(55, 'hem', 'ved', 'patil', 'CS', 'o', 'hemved@g.com', '67868768', '7', 'Computer Science', 'manager', 'ss', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(56, 'Bruce', NULL, 'Wayne', 'CS', 'O+', 'brueW@g.com', '9995623201', '3', 'Sales', 'Trainee', 'Australia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(57, 'Kamalesh', NULL, 'Nagarkoti', 'EXTC', 'A+', 'kamleshNaga@g.com', '9654821403', '4', 'Marketing', 'Trainee', 'England', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(58, 'Mahesh', NULL, 'Sharma', 'IT', 'O+', 'mahesh345@g.com', '5642180754', '5', 'Marketing', 'Trainee', 'Australia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(59, 'Tony', NULL, 'Stark', 'CS', 'AB+', 'tonyStarkim@g.com', '4827510452', '3', 'Finance', 'Trainee', 'Dubai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(60, 'Steven', NULL, 'Rogers', 'CS', 'B+', 'captainA@g.com', '8864524527', '4', 'Sales', 'Trainee', 'England', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(61, 'Kieron', NULL, 'Pollard', 'CS', 'AB-', 'kp55@g.com', '8865231045', '5', 'Marketing', 'Trainee', 'Dubai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(62, 'Glenn', NULL, 'Maxi', 'EXTC', 'O+', 'maxi17@g.com', '9785642103', '4', 'Sales', 'Manager', 'Australia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(63, 'Maggi', NULL, 'Wells', 'IT', 'A+', 'maggiW23@g.com', '9965823140', '3', 'Finance', 'Deputy Manager', 'England', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(64, 'Marcelo', NULL, 'Dwan', 'IT', 'AB-', 'MarceloD@g.com', '9975641208', '4', 'Sales', 'Trainee', 'Australia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(65, 'Leo', NULL, 'Messi', 'CS', 'O+', 'leoMessi10@g.com', '7754210542', '3', 'Finance', 'Trainee', 'Dubai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(66, 'Gerard', NULL, 'Pique', 'CS', 'AB-', 'pique3@g.com', '8865324801', '5', 'Marketing', 'Deputy Manager', 'England', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(67, 'Roberto', NULL, 'Carlos', 'CS', 'O+', 'carlos7@g.com', '7645128302', '4', 'Marketing', 'Trainee', 'Australia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(68, 'Steve', NULL, 'Jobs', 'EXTC', 'O+', 'steveApple@g.com', '8127894561', '4', 'Sales', 'Deputy Manager', 'America', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(69, 'Sergio', NULL, 'Ramos', 'CS', 'AB-', 'sergioRamos3@g.com', '8541203654', '5', 'Finance', 'Trainee', 'America', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(70, 'Sergio', NULL, 'Roberto', 'IT', 'O+', 'sergioRoberto@g.com', '7894562547', '4', 'Sales', 'Trainee', 'Austria', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(71, 'Neymar', NULL, 'Junior', 'CS', 'AB-', 'Neymar10Jr@g.com', '7852014785', '3', 'HR', 'Trainee', 'America', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(72, 'Chris', NULL, 'Gayle', 'IT', 'A+', 'gayleStorm333@g.com', '7987456987', '4', 'Clerk', 'Trainee', 'Carribean', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(73, 'Karan', NULL, 'Deol', 'CS', 'O+', 'karanDeol@g.com', '8899756412', '5', 'HR', 'Trainee', 'America', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(74, 'Abhishek', NULL, 'Sharma', 'CS', 'O+', 'abhishek@g.com', '7645981230', '3', 'Project Head', 'Deputy Manager', 'Carribean', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(75, 'Carlos', NULL, 'Brathwaite', 'IT', 'A+', 'Carloskkr@g.com', '7964130258', '5', 'Clerk', 'Manager', 'Germany', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(76, 'Pep', NULL, 'Gardioulo', 'CS', 'O+', 'pepcity@g.com', '7894631024', '3', 'Marketing', 'Trainee', 'Spain', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(77, 'Paulo', NULL, 'Dybala', 'CS', 'A+', 'dybalaI@g.com', '7890145632', '4', 'Sales', 'Trainee', 'Spain', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(78, 'Philippe', NULL, 'Countinho', 'EXTC', 'O+', 'countinhobarca@g.com', '7854125876', '3', 'Marketing', 'Manager', 'France', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(79, 'Andre', NULL, 'Russell', 'CS', 'A+', 'kkrRussells@g.com', '8965874562', '3', 'Marketing', 'Trainee', 'Indonasia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(80, 'Ravi', NULL, 'Kishan', 'IT', 'B+', 'KishanMI@g.com', '8865478901', '4', 'Finance', 'Trainee', 'Germany', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(81, 'Rajendra', NULL, 'Sharma', 'CS', 'O+', 'rajendraS234@g.com', '9564231025', '3', 'Marketing', 'Manager', 'India', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(82, 'Ram', NULL, 'Vilas', 'CS', 'B-', 'ramVillas000@g.com', '8524785631', '5', 'Finance', 'Deputy Manager', 'Holand', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(83, 'Vikas', NULL, 'Yadav', 'CS', 'O+', 'vy@g.com', '7645128560', '4', 'Marketing', 'Trainee', 'Egypt', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(84, 'Vikas', NULL, 'Pandey', 'CS', 'O+', 'vp@g.com', '9653259632', '3', 'Marketing', 'Trainee', 'Columbia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(85, 'Manish', NULL, 'Pandey', 'CS', 'O+', 'mpsrh@g.com', '778541250', '3', 'Finance', 'Trainee', 'Canada', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(86, 'Cristiano', NULL, 'Ronaldo', 'EXTC', 'O+', 'cr7@g.com', '7964531285', '4', 'Marketing', 'Trainee', 'Belgium', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(87, 'Scralett', NULL, 'Johanson', 'CS', 'A+', 'sjbw@g.com', '9964512745', '3', 'Sales', 'Trainee', 'Argentina', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(88, 'Ema', NULL, 'Watson', 'IT', 'AB+', 'emaW@g.com', '9946573152', '3', 'Finance', 'Trainee', 'Spain', '1a52e17fa899cf40fb04cfc42e6352f1', 'Mangement'),
(89, 'Bina', '', 'Stone', 'IT', 'AB', 'emaStone@g.com', '9965247851', '3', 'Marketing', 'Trainee', 'Austrailia', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(90, 'Miley', NULL, 'Cyrus', 'CS', 'O+', 'mileyC@g.com', '7964582513', '4', 'Sales', 'Trainee', 'Brazil', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(91, 'Chirag', NULL, 'Dayaramani', 'CS', 'AB+', 'chiragd@g.com', '78512394', '4', 'Marketing', 'Project Head', 'Delhi', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(92, 'Rohan', NULL, 'Ghume', 'CS', 'A-', 'rohanghume@g.com', '45210367', '5', 'Marketing', 'Clerk', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(93, 'Abinash', NULL, 'Behera', 'CS', 'B-', 'abinashb@g.com', '64871235', '6', 'Finance', 'Manager', 'Kolkata', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(94, 'Soham', NULL, 'Ambre', 'CS', 'AB-', 'sohamambre@g.com', '2457813', '1', 'Finanace', 'Deputy Manager', 'Chennai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(95, 'Aditya', NULL, 'Khomane', 'CS', 'O+', 'adityak@g.com', '32798739', '1', 'Finanace', 'Project Head', 'Andra Pradesh', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(96, 'Nihar', NULL, 'kenny', 'CS', 'O-', 'niharkenny@g.com', '54789132', '2', 'Finanace', 'Clerk', 'Kerala', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(97, 'Dhruv', NULL, 'Ahir', 'CS', 'A+', 'dhruvahir@g.com', '04563215', '9', 'Sales', 'Deputy Manager', 'Gujrat', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(98, 'Rakshit', NULL, 'Deshmukh', 'CS', 'B+', 'rakshitdeskmukh@g.com', '96325814', '4', 'Sales', 'Manager', 'Maharashtra', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(99, 'Yogesh', NULL, 'Khatri', 'CS', 'AB+', 'yogeshk@g.com', '52871493', '3', 'Sales', 'Project Head', 'Amravati', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(100, 'Jai', NULL, 'Malani', 'CS', 'A-', 'jaim@g.com', '15934764', '2', 'Sales', 'Clerk', 'Karnataka', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(101, 'Prium', NULL, 'Rohera', 'CS', 'B-', 'priumr@g.com', '84136950', '5', 'Travel', 'Deputy Manager', 'Jammu', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(102, 'Karan', NULL, 'Rohra', 'CS', 'AB-', 'karanr@g.com', '32798739', '3', 'Travel', 'Manager', 'Kashmir', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(103, 'Rounak', NULL, 'Talreja', 'CS', 'O-', 'rounakt@g.com', '79461325', '1', 'Travel', 'Project Head', 'Sikkim', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(104, 'Manan', NULL, 'Vohra', 'CS', 'A+', 'mananv@g.com', '18632468', '4', 'Travel', 'Clerk', 'Punjab', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(105, 'Aman', NULL, 'Kachru', 'CS', 'B+', 'amank@g.com', '79461253', '0', 'Marketing', 'Deputy Manager', 'Delhi', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(106, 'Chirag', NULL, 'Parchani', 'CS', 'Ab+', 'chiragp@g.com', '87136548', '7', 'Marketing', 'Manager', 'Uttar Pradesh', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(107, 'Tom', NULL, 'Latham', 'CS', 'A+', 'tomlatham@g.com', '94563128', '2', 'Marketing', 'Deputy Manager', 'America', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(108, 'David', NULL, 'Warner', 'IT', 'B+', 'davidwarner@g.com', '31287456', '3', 'Marketing', 'Manager', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(109, 'Inder', NULL, 'Singh', 'IT', 'A+', 'indersingh@g.com', '97321456', '8', 'Marketing', 'Deputy Manager', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(110, 'Anuj', NULL, 'Kumar', 'IT', 'B+', 'anujk@g.com', '8457963', '4', 'Marketing', 'Manager', 'Assam', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(111, 'Kamlesh', NULL, 'Patil', 'IT', 'AB+', 'kamleshp@g.com', '5102364', '5', 'Marketing', 'Project Head', 'Himachal Pradesh', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(112, 'Aryan', NULL, 'Gupta', 'IT', 'O+', 'aryang@g.com', '02587413', '6', 'Marketing', 'Clerk', 'Jammu', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(113, 'Sarvagya', NULL, 'Khajruliya', 'IT', 'A-', 'sarvagyak@g.com', '6413289', '7', 'Finanace', ' Deputy Manager', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(114, 'Aalhad', NULL, 'Kate', 'IT', 'B-', 'aalhadk@g.com', '8460231', '1', 'Finanace', 'Manager', 'Aurangabad', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(115, 'Rohit', NULL, 'Dahad', 'IT', 'AB-', 'rohitdahad@g.com', '21498732', '2', 'Finanace', 'Project Head', 'Jalgaon', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(116, 'Yash', NULL, 'Ladda', 'IT', 'O-', 'yashl@g.com', '5412306', '3', 'Finanace', 'Clerk', 'Arunachal Pradesh', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(117, 'Vishesh', NULL, 'Mittal', 'IT', 'A+', 'visheshm@g.com', '15469823', '4', 'Sales', 'Deputy Manager', 'Goa', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(118, 'Kunal', NULL, 'Chemu', 'IT', 'B+', 'kunalk@g.com', '61235489', '5', 'Sales', 'Manager', 'Rohtak', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(119, 'Niranjan', NULL, 'Vajramushti', 'IT', 'AB+', 'niranjanv@g.com', '521489632', '6', 'Sales', 'Project Head', 'Madhya Pradesh', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(120, 'Sanket', NULL, 'Rajole', 'IT', 'O+', 'sanketr@g.com', '56321489', '7', 'Sales', 'Clerk', 'Guwati', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(121, 'Shaam', '', 'Nihalani', 'IT', 'A+', 'piyushn@g.com', '32145698', '1', 'Travel', 'Deputy Manager', 'ss', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(122, 'Varnit', NULL, 'Bhateja', 'IT', 'B+', 'varnitb@g.com', '9213654', '2', 'Travel', 'Manager', 'Mumbai', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(123, 'Bhavishya', NULL, 'Khan', 'IT', 'AB+', 'bhavishyak@g.com', '31287456', '3', 'Travel', 'Manager', 'Dehradun', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(124, 'Sahil', NULL, 'Deshmukh', 'IT', 'A-', 'sahild@g.com', '03214569', '4', 'Travel', 'Project Head', 'Bengeleru', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(125, 'Madhav', NULL, 'Bhutada', 'IT', 'B-', 'madhavb@g.com', '8412365', '5', 'Travel', 'Clerk', 'Hyderabad', '1a52e17fa899cf40fb04cfc42e6352f1', 'Management'),
(126, 'M.S.', '', 'Dhoni', 'CS', 'o', 'dhoni@g.com', '32873682', '7', 'Computer Science', 'manager', 'dscsdc', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee'),
(131, 'Rajesh', 'Ravindra', 'Zope', 'CS', 'O', 'rajeshkhana@g.com', '45874541', '8', 'Marketing', 'Manager', 'Thane', '1a52e17fa899cf40fb04cfc42e6352f1', 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_ID` int(11) NOT NULL,
  `number` varchar(45) DEFAULT NULL,
  `addemploy_Employ_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_ID`, `number`, `addemploy_Employ_ID`) VALUES
(1, '2', 1),
(2, '3', 2),
(3, '5', 3),
(4, '6', 4),
(17, '1', 14),
(18, '4', 15),
(19, '0', 16),
(20, '0', 55),
(21, '2', 21),
(22, '3', 22),
(23, '4', 23),
(24, '2', 24),
(25, '3', 25),
(26, '5', 26),
(27, '6', 27),
(28, '7', 28),
(29, '3', 29),
(30, '1', 30),
(31, '2', 31),
(32, '3', 32),
(33, '5', 33),
(34, '3', 34),
(35, '6', 35),
(36, '7', 36),
(37, '3', 37),
(38, '2', 38),
(39, '4', 39),
(40, '4', 40),
(41, '1', 41),
(42, '2', 42),
(43, '6', 43),
(44, '3', 44),
(45, '2', 45),
(46, '6', 46),
(47, '3', 47),
(48, '2', 48),
(49, '3', 49),
(50, '1', 50),
(51, '7', 51),
(52, '3', 52),
(53, '2', 53),
(54, '4', 54),
(55, '7', 56),
(56, '5', 57),
(57, '1', 58),
(58, '2', 59),
(59, '5', 60),
(60, '9', 61),
(61, '4', 62),
(62, '3', 63),
(63, '2', 64),
(64, '6', 65),
(65, '3', 66),
(66, '8', 67),
(67, '9', 68),
(68, '5', 69),
(69, '3', 70),
(70, '4', 71),
(71, '7', 72),
(72, '3', 73),
(73, '5', 74),
(74, '4', 75),
(75, '6', 76),
(76, '6', 77),
(77, '4', 78),
(78, '3', 79),
(79, '4', 80),
(80, '6', 81),
(81, '2', 82),
(82, '2', 83),
(83, '4', 84),
(84, '6', 85),
(85, '7', 86),
(86, '3', 87),
(87, '1', 88),
(88, '2', 89),
(89, '6', 90),
(90, '1', 91),
(91, '2', 92),
(92, '3', 93),
(93, '4', 94),
(94, '5', 95),
(95, '6', 96),
(96, '7', 97),
(97, '7', 98),
(98, '6', 99),
(99, '5', 100),
(100, '4', 101),
(101, '3', 102),
(102, '2', 103),
(103, '1', 104),
(104, '0', 105),
(105, '1', 106),
(106, '3', 106),
(107, '5', 107),
(108, '7', 108),
(109, '9', 109),
(110, '2', 110),
(111, '4', 111),
(112, '6', 112),
(113, '8', 113),
(114, '10', 114),
(115, '1', 115),
(116, '2', 116),
(117, '3', 117),
(118, '5', 118),
(119, '7', 119),
(120, '11', 120),
(121, '2', 121),
(122, '3', 122),
(123, '6', 123),
(124, '1', 124),
(125, '2', 125),
(126, '0', 126),
(131, '0', 131);

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `leave_id` int(11) NOT NULL,
  `sickleave` int(11) DEFAULT NULL,
  `earnleave` int(11) DEFAULT NULL,
  `casualleave` int(11) DEFAULT NULL,
  `nationalfesholiday` int(11) DEFAULT NULL,
  `paidleave` int(11) DEFAULT NULL,
  `leavereason` text DEFAULT NULL,
  `leaveapproval` varchar(50) DEFAULT 'Pending approval',
  `leavetype` varchar(50) DEFAULT NULL,
  `reqleave` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`leave_id`, `sickleave`, `earnleave`, `casualleave`, `nationalfesholiday`, `paidleave`, `leavereason`, `leaveapproval`, `leavetype`, `reqleave`) VALUES
(1, 15, 15, 15, 1, 5, 'e', 'Accepted', 'casualleave', 1),
(4, 3, 1, 1, 1, 1, 'dd', 'Accepted', 'sickleave', 2),
(21, 2, 1, 1, 1, 1, NULL, 'Pending approval', NULL, NULL),
(22, 2, 1, 1, 1, 1, NULL, 'Pending approval', NULL, NULL),
(36, 15, 10, 15, 1, 3, 'OK', 'Accepted', 'casualleave', 3);

-- --------------------------------------------------------

--
-- Table structure for table `leave_app`
--

CREATE TABLE `leave_app` (
  `leave_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `leave_days` int(20) NOT NULL,
  `leave_reason` varchar(200) NOT NULL,
  `leave_approval` varchar(20) NOT NULL DEFAULT 'Pending Approval'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leave_app`
--

INSERT INTO `leave_app` (`leave_id`, `name`, `email`, `leave_days`, `leave_reason`, `leave_approval`) VALUES
(1, 'test4', 't4@g.com', 2, 'Ill due to corona', 'Leave Rejected'),
(2, 'Shubham', 'sz@g.com', 2, 'Ill due to corona', 'Approved'),
(3, 'Mayur Baswaraj Pitre', 'mp@g.com', 3, 'Ill due to pneumonia', 'Leave Approved'),
(4, 'Prithvi Yadav', 'pk@g.com', 3, 'Going to Thailand', 'Approved'),
(5, 'Karan Sharma', 'ks@g.com', 0, 'Ill due to corona', 'Pending Approval'),
(6, 'Ajay', 'ajaynair@g.com', 5, 'festival', 'Pending Approval'),
(7, 'Joe Aden', 'joeaden@g.com', 2, 'Ill due to corona', 'Approved'),
(8, 'Steve Smith', 'stevesmith@g.com', 3, 'Ill due to fear', 'Pending Approval'),
(9, 'Soham Moghe', 'sohammoghe@g.com', 4, 'Headache', 'Pending Approval'),
(10, 'Carol Hadassah', 'carolhadassah@0g.com', 2, 'Wedding', 'Pending Approval'),
(11, 'Virat Kohli', 'viratkohli@g.com', 3, 'Ill due to corona', 'Pending Approval'),
(12, 'Piyush Waghirkar', 'piyushwaghirkar@g.com', 2, 'Festival', 'Pending Approval'),
(13, 'Shubham Zope', 'shubhamzope@g.com', 3, 'Diwali Festival', 'Pending Approval'),
(14, 'Ketki Zope', 'ketkizope@g.com', 2, 'Diwali Festival', 'Pending Approval'),
(15, 'Aryan Patil', 'aryanpatil@g.com', 3, 'Ill due to fear', 'Pending Approval'),
(16, 'Lars Hedwig', 'larshedwig@g.com', 2, 'Ill due to corona', 'Pending Approval'),
(17, 'Joy Harlan', 'joyharlan@g.com', 0, 'Ill due to corona', 'Pending Approval'),
(18, 'Ved Patil', 'vedpatil@g.com', 3, 'Ill due to headache', 'Pending Approval'),
(19, 'Keyur Kulkarni', 'keyurkulkarni@g.com', 2, 'Diwali Festival', 'Pending Approval'),
(20, 'Gaurang Joshi', 'gaurangjoshi@g.com', 3, 'Stomachache admit in hospital', 'Pending Approval'),
(21, 'Sujit Zope', 'sujitzope@g.com', 2, 'Diwali Festival', 'Pending Approval'),
(22, 'Chris Moris', 'chrismoris@g.com', 1, 'Ill due to corona', 'Pending approval'),
(23, 'Vasant Singh', 'vasantsingh@g.com', 0, 'Ill due to headache', 'Pending Approval'),
(24, 'Hemant Talreja', 'hemanttalreja@g.com', 1, 'Diwali Festival', 'Pending Approval'),
(25, 'Prathama Badhe', 'prathamabadhe@g.com', 2, 'Diwali Festival', 'Pending Approval'),
(26, 'Shubham Moghe', 'shubhammoghe@g.com', 0, 'Ill due to headache', 'Pending Approval'),
(27, 'Anuj Zope', 'anujzope@g.com', 2, 'Diwali Festival', 'Pending Approval'),
(28, 'Alea Hadley', 'aleahadley@g.com', 1, 'Ill due to corona', 'Pending Approval'),
(29, 'Pranav Badhe', 'pranavbadhe@g.com', 0, 'Diwali Festival', 'Pending Approval'),
(30, 'Walter Lisandra', 'walterlisandra@g.com', 1, 'Ill due to corona', 'Pending Approval'),
(31, 'Sonia Bianca', 'soniabianca@g.com', 0, 'Ill due to headache', 'Pending Approval'),
(32, 'Prashant Sharma', 'prashantsharma@g.com', 0, 'Diwali Festival', 'Pending Approval'),
(33, 'Robert Downey', 'robertdowney@g.com', 1, 'Ill due to stomachache', 'Pending Approval'),
(34, 'Roni Dsouza', 'ronidsouza@g.com', 1, 'Ill due to headache', 'Pending Approval'),
(35, 'Sharrad Singh', 'sharradsingh@g.com', 1, 'Diwali festival', 'Pending Approval'),
(36, 'Sanjay Patil', 'sanjaypatil@g.com', 0, 'Festival', 'Pending Approval'),
(37, 'Nilesh Patil', 'nileshpatil@g.com', 0, 'Ill due to corona', 'Pending Approval'),
(38, 'Will Smith', 'willsmith@g.com', 1, 'Diwali festival', 'Pending Approval'),
(39, 'Shubhangi Zope', 'shubhangizope@g.com', 0, 'Diwali festival', 'Pending Approval'),
(40, 'Kunal Zope', 'kunalzope@g.com', 1, 'Diwali festival', 'Pending Approval'),
(41, 'Sergio Ramos', 'sergioRamos3@g.com', 0, 'Due to Fever', 'Pending Approval'),
(42, 'Tony Stark', 'tonyStarkim@g.com', 0, 'Want to go to a Vacation with my Family', 'Pending Approval'),
(43, 'Kieron Pollard', 'kp55@g.com', 0, 'Headache', 'Pending Approval'),
(44, 'Marcelo Dwan', 'MarceloD@g.com', 0, 'Fracture on my hand', 'Pending Approval'),
(45, 'Roberto Carlos', 'carlos7@g.com', 0, 'Having Fever', 'Pending Approval'),
(46, 'Neymar Junior', 'Neymar10Jr@g.com', 0, 'Due to typhoid', 'Pending Approval'),
(47, 'Chris Gayle', 'gayleStorm333@g.com', 0, 'Attending a Family Function', 'Pending Approval'),
(48, 'Philippe Countinho', 'countinhobarca@g.com', 0, 'Due to my Marriage', 'Pending Approval'),
(49, 'Manish Pandey', 'mpsrh@g.com', 0, 'Going on a Vacation', 'Pending Approval'),
(50, 'Cristiano Ronaldo', 'cr7@g.com', 0, 'leg Fractured', 'Pending Approval'),
(51, 'Ema Watson', 'emaW@g.com', 0, 'Personal Reason', 'Pending Approval'),
(52, 'Ema Stone', 'emaStone@g.com', 0, 'Family Get together in Italy', 'Pending Approval'),
(53, 'Miley Cyrus', 'mileyC@g.com', 0, 'Having Malaria', 'Pending Approval'),
(54, 'Leo Messi', 'leoMessi10@g.com', 0, 'Having a Check up with the Doctor', 'Pending Approval'),
(55, 'Gerard Pique', 'pique3@g.com', 0, 'Personal Reason', 'Pending Approval'),
(56, 'Chirag Dayaramani', 'chiragd@g.com', 1, 'Ill due to corona', 'Pending Approval'),
(57, 'Rohan Ghume', 'rohanghume@g.com', 2, 'Ill due to pneumonia', 'Pending Approval'),
(58, 'Abinash Behera', 'abinashb@g.com', 3, 'Ill due to head ache', 'Pending Approval'),
(59, 'Soham Ambre', 'sohamambre@g.com', 4, 'Ill due to stomach ache', 'Pending Approval'),
(60, 'Aditya Khomane', 'adityak@g.com', 5, 'Ill due to corona', 'Pending Approval'),
(61, 'Nihar Kenny', 'niharkenny@g.com', 6, 'Ill due to throat pain', 'Pending Approval'),
(62, 'Dhruv Ahir', 'dhruvahir@g.com', 7, 'Ill due to head ache', 'Pending Approval'),
(63, 'Rakshit Deshmukh', 'rakshitdeskmukh@g.com', 7, 'going out of town', 'Pending Approval'),
(64, 'Yogesh Khatri', 'yogeshk@g.com', 6, 'Ill due to corona', 'Pending Approval'),
(65, 'Jai Malani', 'jaim@g.com', 5, 'Ill due to corona', 'Pending Approval'),
(66, 'Prium Rohera', 'priumr@g.com', 4, 'Ill due to head ache', 'Pending Approval'),
(67, 'Karan Rohra', 'karanr@g.com', 3, 'Ill due to corona', 'Pending Approval'),
(68, 'Rounak Talreja', 'rounakt@g.com', 2, 'going out of town', 'Pending Approval'),
(69, 'Manan Vohra', 'mananv@g@g.com', 1, 'Ill due to corona', 'Pending Approval'),
(70, 'Aman Kachru', 'amank@g.com', 0, 'Ill due to head ache', 'Pending Approval'),
(71, 'Chirag Parchani', 'chiragp@g.com', 1, 'Ill due to corona', 'Pending Approval'),
(72, 'Tom Latham', 'tomlatham@g.com', 5, 'going out of town', 'Pending Approval'),
(73, 'David Warner', 'davidwarner@g.com', 7, 'Ill due to corona', 'Pending Approval'),
(74, 'Inder Singh', 'indersingh@g.com', 9, 'Ill due to head ache', 'Pending Approval'),
(75, 'Anuj Kumar', 'anujk@g.com', 2, 'Ill due to corona', 'Pending Approval'),
(76, 'Kamlesh Patil', 'kamleshp@g.com', 4, 'Ill due to corona', 'Pending Approval'),
(77, 'Aryan Gupta', 'aryang@g.com', 6, 'going out of town', 'Pending Approval'),
(78, 'Sarvagya Khajruliya', 'sarvagyak@g.com', 8, 'Ill due to corona', 'Pending Approval'),
(79, 'Aalhad kate', 'aalhadk@g.com', 10, 'Ill due to head ache', 'Pending Approval'),
(80, 'Rohit Dahad', 'rohitdahad@g.com', 1, 'Ill due to corona', 'Approved'),
(81, 'Yash Ladda', 'yashl@g.com', 2, 'Ill due to corona', 'Pending Approval'),
(82, 'Vishesh Mittal', 'visheshm@g.com', 3, 'Ill due to head ache', 'Pending Approval'),
(83, 'Kunal Chemu', 'kunalk@g.com', 5, 'Ill due to corona', 'Pending Approval'),
(84, 'Niranjan Vajramushti', 'niranjanv@g.com', 7, 'Ill due to head ache', 'Pending Approval'),
(85, 'Sanket Rajole', 'sanketr@g.com', 11, 'going out of town', 'Pending Approval'),
(86, 'Piyush Nihalani', 'piyushn@g.com', 2, 'Ill due to corona', 'Pending Approval'),
(87, 'Varnit Bhateja', 'varnitb@g.com', 3, 'Ill due to corona', 'Pending Approval'),
(88, 'Bhavishya Khan', 'bhavishyak@g.com', 6, 'going out of town', 'Pending Approval'),
(89, 'Sahil Deshmukh', 'sahild@g.com', 1, 'Ill due to corona', 'Pending Approval'),
(90, 'Madhav Bhutada', 'madhavb@g.com', 2, 'going out of town', 'Pending Approval'),
(91, 'Prithvi', 'pk@g.com', 2, 'Ill', 'Approved'),
(92, 'Prithvi Yadav', 'pk@g.com', 3, 'Festival', 'Approved'),
(93, 'Prithvi', 'prithviyadav@g.com', 2, 'Ill', 'Pending Approval'),
(94, 'Prithvi Yadav', 'pk@g.com', 2, 'Ill please give leave', 'Approved'),
(95, 'Joe', 'joeaden@g.com', 2, 'Ill', 'Approved'),
(96, 'Shubham Zope', 'sz@g.com', 2, 'Festival celebration', 'Approved'),
(97, 'Karan Sharma', 'ks@g.com', 2, 'Festival', 'Pending Approval'),
(98, 'Prithvi Yadav', 'pk@g.com', 2, 'Festival celebration from 6/10/2020 to 9/10/2020', 'Approved');

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
  `todate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salary_ID`, `b_salary`, `hra`, `lta`, `ca`, `da`, `md`, `sa`, `g_salary`, `epf`, `pt`, `it`, `lt`, `ld`, `n_salary`, `addemploy_Employ_ID`, `fromdate`, `todate`) VALUES
(4, '62314', '85', '0', '25', '0', '856', '0', '63280', '95', '75', '36', '3', '300', '62774', 2, '1/1/2001 to 31/1/2001', NULL),
(7, '95632', '2361', '125', '0', '0', '2365', '0', '100483', '536', '1569', '8546', '2', '200', '89632', 14, NULL, NULL),
(9, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 16, NULL, NULL),
(13, '200000', '3000', '4000', '2000', '1500', '3000', '2000', '0', '0', '0', '0', '0', '0', '0', 21, NULL, NULL),
(14, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 22, NULL, NULL),
(15, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 23, NULL, NULL),
(16, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 24, NULL, NULL),
(17, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 25, NULL, NULL),
(18, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 26, NULL, NULL),
(20, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 28, NULL, NULL),
(22, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 30, NULL, NULL),
(23, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 31, NULL, NULL),
(24, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 32, NULL, NULL),
(25, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 34, NULL, NULL),
(26, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 35, NULL, NULL),
(27, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 36, NULL, NULL),
(28, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 37, NULL, NULL),
(29, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 38, NULL, NULL),
(30, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 39, NULL, NULL),
(31, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 40, NULL, NULL),
(32, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 41, NULL, NULL),
(33, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 42, NULL, NULL),
(34, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 43, NULL, NULL),
(35, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 44, NULL, NULL),
(36, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 45, NULL, NULL),
(37, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 46, NULL, NULL),
(38, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 47, NULL, NULL),
(39, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 48, NULL, NULL),
(40, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 49, NULL, NULL),
(41, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 50, NULL, NULL),
(42, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 51, NULL, NULL),
(43, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 52, NULL, NULL),
(44, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 53, NULL, NULL),
(45, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 54, NULL, NULL),
(46, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 55, NULL, NULL),
(47, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 91, NULL, NULL),
(48, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 92, NULL, NULL),
(49, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 93, NULL, NULL),
(50, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 94, NULL, NULL),
(51, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 95, NULL, NULL),
(52, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 96, NULL, NULL),
(53, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 97, NULL, NULL),
(54, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 98, NULL, NULL),
(55, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 99, NULL, NULL),
(56, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 100, NULL, NULL),
(57, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 101, NULL, NULL),
(58, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 102, NULL, NULL),
(59, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 103, NULL, NULL),
(60, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 104, NULL, NULL),
(61, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 105, NULL, NULL),
(62, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 106, NULL, NULL),
(63, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 107, NULL, NULL),
(64, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 108, NULL, NULL),
(65, '200000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 109, NULL, NULL),
(66, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 110, NULL, NULL),
(67, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 111, NULL, NULL),
(68, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 112, NULL, NULL),
(69, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 113, NULL, NULL),
(70, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 114, NULL, NULL),
(71, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 115, NULL, NULL),
(72, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 116, NULL, NULL),
(73, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 117, NULL, NULL),
(74, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 118, NULL, NULL),
(75, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 119, NULL, NULL),
(76, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 120, NULL, NULL),
(77, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 121, NULL, NULL),
(78, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 122, NULL, NULL),
(79, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 123, NULL, NULL),
(80, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 124, NULL, NULL),
(81, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 125, NULL, NULL),
(82, '200000000', '1000', '500', '2000', '1000', '1500', '2000', '200008000', '313', '213', '2312', '2', '200', '200004962', 29, '6/4/2010', '7/5/2010'),
(83, '2000000', '1000', '1500', '2000', '2000', '1000', '1000', '2008500', '1400', '2300', '500', '2', '200', '2004100', 27, '1/1/2002', '3/2/2002'),
(84, '98741', '1000', '1000', '2000', '2000', '500', '100', '105341', '1000', '200', '3000', '2', '200', '100941', 126, '1/1/2002', '7/5/2010'),
(88, '4300000', '100', '200', '100', '2000', '1200', '1000', '4304600', '100', '200', '300', '1', '100', '4303900', 1, '1/1/2002', '7/5/2010'),
(89, '200000', '100', '2000', '1000', '1000', '1000', '1000', '206100', '2000', '100', '200', '1', '100', '203700', 3, '6/4/2010', '7/5/2010'),
(90, '300000', '1000', '2000', '1000', '1000', '1000', '2000', '308000', '1000', '200', '100', '2', '200', '306500', 3, '1/1/2002', '7/5/2010'),
(202, '600000', '1000', '200', '2000', '1000', '1000', '2000', '607200', '2000', '1000', '2000', '1', '100', '602100', 15, '1/1/2002', '7/5/2010'),
(203, '500000', '1000', '2000', '3000', '1000', '1000', '200', '508200', '200', '1000', '2000', '2', '200', '504800', 1, '6/4/2010', '7/5/2010'),
(206, '300000', '1000', '1000', '2000', '2000', '1000', '2000', '309000', '1000', '100', '200', '1', '100', '307600', 16, '1/1/2002', '3/2/2002'),
(207, '200000', '1000', '2000', '2000', '100', '1000', '1000', '207100', '1200', '2000', '1000', '1', '100', '202800', 23, '6/4/2010', '7/5/2010'),
(208, '200000', '1000', '2000', '1000', '2000', '1000', '1500', '208500', '2000', '1000', '3000', '1', '100', '202400', 131, '5/2/2020', '6/3/2020'),
(209, '52000', '10000', '2500', '20000', '3000', '1000', '2000', '90500', '100', '500', '300', '2', '200', '89400', 126, '1/1/2002', '3/2/2002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addemploy`
--
ALTER TABLE `addemploy`
  ADD PRIMARY KEY (`Employ_ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_ID`),
  ADD KEY `fk_attendance_addemploy_idx` (`addemploy_Employ_ID`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `leave_app`
--
ALTER TABLE `leave_app`
  ADD PRIMARY KEY (`leave_id`);

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
  MODIFY `Employ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `leave_app`
--
ALTER TABLE `leave_app`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `fk_attendance_addemploy` FOREIGN KEY (`addemploy_Employ_ID`) REFERENCES `addemploy` (`Employ_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leave`
--
ALTER TABLE `leave`
  ADD CONSTRAINT `fk_leave` FOREIGN KEY (`leave_id`) REFERENCES `addemploy` (`Employ_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `fk_salary_addemploy1` FOREIGN KEY (`addemploy_Employ_ID`) REFERENCES `addemploy` (`Employ_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
