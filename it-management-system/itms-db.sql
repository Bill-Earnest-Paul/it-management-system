SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- Admin Login

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');


-- Employee Table 

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- inserting into data into `employee`


INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(101, 'Mehadi', 'Hassan', 'mehadi@kb.corp', '1234', '1997-08-13', 'Male', '01919', 12121, 'Razarbagh', 'IT', 'Head', 'images/me.png'),
(102, 'Test', 'Pilot', 'testpilot@gmail.com', '1234', '2018-01-01', 'Male', '0202', 303, 'Ad_______', 'CSE', 'CSE', 'images/no.jpg'),
(103, 'Steven', 'Wilson', 'wilson@kb.corp', '1234', '1990-02-02', 'Male', '5252', 6262, 'Thames, UK', 'Creative', 'MSc', 'images/sw-google.png'),
(104, 'Guthrie', 'Govan', 'guthrie@kb.corp', '1234', '1971-12-01', 'Male', '9595', 5959, 'Chemsford, USA', 'Creative', 'MSc', 'images/test.jpg'),
(105, 'Elon', 'Musk', 'elon@spacex.com', '1234', '1971-06-28', 'Male', '8585', 5858, 'LA, USA', 'SpaceTech', 'BSc', 'images/330px-Elon_Musk_Royal_Society.jpg'),
(106, 'Hacker', 'Man', 'hackerman@kb.corp', '1234', '1990-02-02', 'Male', '7575', 5757, 'Underground, Dhaka', 'NetworkSecurity', 'MSc', 'images/hacker.png'),
(107, 'Wonder ', 'Woman', 'woman@kb.corp', '1234', '1993-03-03', 'Female', '4545', 5454, 'USA', 'Defense ', 'MS', 'images/no.jpg'),
(108, 'Andrew', ' Ng', 'andrew@kb.corp', '1234', '1976-04-16', 'Male', '758758', 857857, 'USA', 'AI', 'PhD', 'images/download.jpeg'),
(109, 'Ian ', 'Goodfellow', 'ian@kb.corp', '1234', '1985-01-01', 'Male', '852852', 258258, 'USA', 'AI', 'PhD', 'images/1-5.jpg'),
(110, 'Christopher ', 'Manning', 'christopher@kb.corp', '1234', '1965-09-18', 'Male', '147147', 741741, 'USA', 'NLP', 'PhD', 'images/download (1).jpeg'),
(111, 'Jon', 'Snow', 'john@kb.corp', '1234', '2011-02-01', 'Male', '0187282', 112233, 'Winterfell', 'Management', 'BSc.', 'images/jon-snow.jpg');



-- Table structure for table `employee_leave`

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- inserting data for table `employee_leave`

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(101, 301, '2022-04-07', '2022-04-08', 'Sick Leave', 'Approved'),
(102, 305, '2022-04-07', '2022-04-08', 'Urgent Family Cause', 'Approved'),
(103, 306, '2022-04-08', '2022-04-08', 'Concert Tour', 'Approved'),
(101, 307, '2022-04-14', '2022-04-30', 'Want to see GOT', 'Pending'),
(105, 308, '2022-04-26', '2022-04-30', 'Launching Tesla Model Y', 'Pending'),
(111, 309, '2022-04-09', '2022-04-13', 'Visit to Kings Landing', 'Pending'),
(104, 310, '2022-04-08', '2022-04-09', 'Emergency Leave', 'Pending');


-- creating project table

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- inserting data into project 

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(213, 101, 'Database', '2022-04-07', '2022-04-04', 10, 'Submitted'),
(214, 102, 'Test', '2022-04-10', '0000-00-00', 0, 'Due'),
(215, 105, 'Tesla Model Y', '2022-04-19', '2022-04-06', 10, 'Submitted'),
(216, 106, 'Hack', '2022-05-04', '2022-04-05', 5, 'Submitted'),
(217, 111, 'Do Nothing', '2022-04-02', '2022-04-01', 8, 'Submitted'),
(218, 105, 'Tesla Model X', '2022-04-03', '2022-04-03', 10, 'Submitted'),
(219, 101, 'PHP', '2022-04-07', '0000-00-00', 0, 'Due'),
(220, 110, 'Data Analysis', '2022-04-16', '2022-04-04', 8, 'Submitted'),
(221, 110, 'Data Analysis', '2022-04-16', '2022-04-04', 7, 'Submitted'),
(222, 103, 'Statistical', '2022-04-19', '2022-04-04', 6, 'Submitted'),
(223, 108, 'Software Scema', '2022-04-09', '2022-04-02', 3, 'Submitted'),
(224, 107, 'Security Check', '2022-04-26', '2022-04-05', 9, 'Submitted'),
(225, 109, 'ML', '2022-04-03', '2022-04-04', 6, 'Submitted');



-- creating Rank table 


CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- inserting data into rank 

INSERT INTO `rank` (`eid`, `points`) VALUES
(101, 10),
(102, 0),
(103, 6),
(104, 0),
(105, 20),
(106, 5),
(107, 9),
(108, 3),
(109, 6),
(110, 15),
(111, 8);


-- creating Salary table 

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- inserting data into Salary 

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(101, 55000, 10, 60500),
(102, 16500, 0, 16500),
(103, 65000, 6, 68900),
(104, 78000, 0, 78000),
(105, 105000, 20, 126000),
(106, 60000, 5, 63000),
(107, 77000, 9, 83930),
(108, 50000, 3, 51500),
(109, 85000, 6, 90100),
(110, 47000, 15, 54050),
(111, 45000, 8, 48600);


--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
