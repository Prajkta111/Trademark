-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2023 at 01:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE `academic` (
  `id` int(11) NOT NULL,
  `enroll` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `shift` varchar(255) NOT NULL,
  `tenth` varchar(255) NOT NULL,
  `FY` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `ayear` varchar(255) NOT NULL,
  `SY` varchar(255) NOT NULL,
  `backlogs` varchar(255) NOT NULL,
  `liveBack` varchar(255) NOT NULL,
  `pyear` varchar(255) NOT NULL,
  `sem1` varchar(255) DEFAULT NULL,
  `sem2` varchar(255) DEFAULT NULL,
  `sem3` varchar(255) DEFAULT NULL,
  `sem4` varchar(255) DEFAULT NULL,
  `sem5` varchar(255) DEFAULT NULL,
  `sem6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`id`, `enroll`, `branch`, `code`, `year`, `shift`, `tenth`, `FY`, `sem`, `ayear`, `SY`, `backlogs`, `liveBack`, `pyear`, `sem1`, `sem2`, `sem3`, `sem4`, `sem5`, `sem6`) VALUES
(2, '11', 'ME', 'F05451', 'SY', '1', '66', '66', '1', '2023', '66', '5', '4', '2026', '', '', '1', '1', '1', '1'),
(4, '1', 'CO', '2023', 'SY', '1', '89', '90', '3', '2023', '56', '5', '2', '2026', '', '', '23', '56', '3', '11');

-- --------------------------------------------------------

--
-- Table structure for table `applydata`
--

CREATE TABLE `applydata` (
  `aid` int(11) NOT NULL,
  `tpoid` varchar(255) NOT NULL,
  `Stuid` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `cid` varchar(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `liveBack` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applydata`
--

INSERT INTO `applydata` (`aid`, `tpoid`, `Stuid`, `company`, `cid`, `sname`, `branch`, `liveBack`) VALUES
(1, '1', '11', 'wipro', '1', 'Bhagyashri Sunil Yadav', 'ME', '3'),
(2, '1', '12', 'infosys', '2', 'demo', 'cse', '2'),
(3, '1', '9', 'infosys', '2', 'demo', 'CSE', '3');

-- --------------------------------------------------------

--
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `aid` int(11) NOT NULL,
  `eno` varchar(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `AppDate` varchar(255) NOT NULL,
  `companyid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approval`
--

INSERT INTO `approval` (`aid`, `eno`, `sname`, `status`, `AppDate`, `companyid`) VALUES
(1, '11', 'Bhagyashri Sunil Yadav', 'yes', '2023-03-20', '1'),
(3, '9', 'Akshu', 'yes', '2023-04-01', '2');

-- --------------------------------------------------------

--
-- Table structure for table `companyregister`
--

CREATE TABLE `companyregister` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companyregister`
--

INSERT INTO `companyregister` (`id`, `name`, `username`, `password`) VALUES
(1, 'demi', 'tcs', '123');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `id` int(11) NOT NULL,
  `tpoid` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `ctc` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `brule` tinytext NOT NULL,
  `jrule` tinytext NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `tdate` date NOT NULL,
  `idate` date NOT NULL,
  `bond` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `aboutc` tinytext NOT NULL,
  `number` varchar(255) NOT NULL,
  `mnumber` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `udate` varchar(255) NOT NULL,
  `ucount` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `tpoid`, `company`, `ctc`, `branch`, `brule`, `jrule`, `sdate`, `edate`, `tdate`, `idate`, `bond`, `role`, `aboutc`, `number`, `mnumber`, `image`, `udate`, `ucount`) VALUES
(1, 1, 'wipro', '5k', 'CO,EJ,ME', 'There should be no active backlog.', 'join on time', '2023-03-05', '2023-03-25', '2023-03-23', '2023-03-30', '6 months', 'DBA', 'wipro', '9307231454', '9307138454', 'designation/digSign.jpg', '', ''),
(2, 1, 'infosys', '5k', 'ME,EE', 'no active backlog', 'join on time', '2023-02-28', '2023-03-02', '2023-03-08', '2023-03-16', '12 months', 'testing', 'infosys', '9307238454', '9307238454', 'designation/sign_divya.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `lid` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `instruction` tinytext NOT NULL,
  `link` varchar(255) NOT NULL,
  `eno` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `AppDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`lid`, `date`, `instruction`, `link`, `eno`, `sname`, `status`, `companyid`, `AppDate`) VALUES
(1, '2023-04-03', 'nhg jtv ut', 'https://www.w3schools.com/sql/sql_create_table.asp', '11', 'Bhagyashri Sunil Yadav', 'yes', '1', '2023-04-03'),
(3, '2023-04-20', 'dfg', 'https://www.w3schools.com/sql/sql_create_table.asp', '12', 'Akshu', 'yes', '2', '2023-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `sdata`
--

CREATE TABLE `sdata` (
  `id` int(11) NOT NULL,
  `enroll` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `sign` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `result1` varchar(255) NOT NULL,
  `result2` varchar(255) NOT NULL,
  `result3` varchar(255) NOT NULL,
  `result4` varchar(255) NOT NULL,
  `result5` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sdata`
--

INSERT INTO `sdata` (`id`, `enroll`, `photo`, `sign`, `result`, `result1`, `result2`, `result3`, `result4`, `result5`, `resume`) VALUES
(1, '11', 'photo/Divya photo.jpg', 'photo/digSign.jpg', 'result/10 th certificate.pdf', 'result/11 th marksheet.pdf', 'result/Adharcard.pdf', 'result/Cast certificate.pdf', 'result/Passbook.pdf', 'result/NIPAM_certificate.pdf', 'resume/Resume_New(Divya).pdf'),
(5, '1', 'photo/Divya photo.jpg', 'photo/digSign.jpg', 'result/11 th marksheet.pdf', 'result/Adharcard.pdf', 'result/CamScanner 09-03-2020 10.01.36.pdf', 'result/documents.pdf', 'result/dongarishetra_dakhala.pdf', 'result/NIPAM_certificate.pdf', 'resume/10 th certificate.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `selected_student`
--

CREATE TABLE `selected_student` (
  `id` int(11) NOT NULL,
  `checkboxValue` varchar(255) NOT NULL,
  `cid` varchar(250) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selected_student`
--

INSERT INTO `selected_student` (`id`, `checkboxValue`, `cid`, `status`) VALUES
(1, '11', '1', 'selected'),
(2, '9', '2', 'selected');

-- --------------------------------------------------------

--
-- Table structure for table `sturegister`
--

CREATE TABLE `sturegister` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enroll` int(55) NOT NULL,
  `term` varchar(255) NOT NULL,
  `bdate` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sturegister`
--

INSERT INTO `sturegister` (`id`, `name`, `enroll`, `term`, `bdate`, `email`, `phone`, `age`, `gender`, `year`, `lang`, `address`, `image`, `password`) VALUES
(7, 'Bhagyashri Sunil Yadav', 11, '2', '2023-02-09', 'shri@gmail.com', '999999999', '23', 'female', 'SY', 'English,', 'at/post arewadi,tal-karad,dis-satara', 'image/girl1.jpg', '123'),
(9, 'Prachi Patil', 1, '4', '2023-03-15', 'dyy12@gmaill.com', '999999999', '23', 'female', 'SY', 'English,Hindi,', 'at/post arewadi,tal-karad,dis-satara', 'image/Divya photo.jpg', '123'),
(10, 'Pratiksha Deshmukh', 10, '2', '2023-03-09', 'pratiksha942000@gmail.com', '999999999', '12', 'female', 'SY', 'English,Hindi,', 'at/post arewadi,tal-karad,dis-satara', 'image/ecs.jpeg', '123');

-- --------------------------------------------------------

--
-- Table structure for table `stuyear`
--

CREATE TABLE `stuyear` (
  `eno` int(11) NOT NULL,
  `sscmark` varchar(255) DEFAULT NULL,
  `Hmark` varchar(255) DEFAULT NULL,
  `fmark` varchar(255) DEFAULT NULL,
  `smark` varchar(255) DEFAULT NULL,
  `tmark` varchar(255) DEFAULT NULL,
  `fomark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stuyear`
--

INSERT INTO `stuyear` (`eno`, `sscmark`, `Hmark`, `fmark`, `smark`, `tmark`, `fomark`) VALUES
(7, NULL, NULL, '34', '56', '10', '23'),
(10, NULL, NULL, '78', '89', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tporegister`
--

CREATE TABLE `tporegister` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tporegister`
--

INSERT INTO `tporegister` (`id`, `name`, `username`, `password`) VALUES
(1, 'divya', 'tpo', 'tpo'),
(3, 'reshma', 'tpo1', 'tpo1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic`
--
ALTER TABLE `academic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applydata`
--
ALTER TABLE `applydata`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `companyregister`
--
ALTER TABLE `companyregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `sdata`
--
ALTER TABLE `sdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected_student`
--
ALTER TABLE `selected_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sturegister`
--
ALTER TABLE `sturegister`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enroll` (`enroll`);

--
-- Indexes for table `stuyear`
--
ALTER TABLE `stuyear`
  ADD PRIMARY KEY (`eno`);

--
-- Indexes for table `tporegister`
--
ALTER TABLE `tporegister`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic`
--
ALTER TABLE `academic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `applydata`
--
ALTER TABLE `applydata`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companyregister`
--
ALTER TABLE `companyregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sdata`
--
ALTER TABLE `sdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `selected_student`
--
ALTER TABLE `selected_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sturegister`
--
ALTER TABLE `sturegister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tporegister`
--
ALTER TABLE `tporegister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
