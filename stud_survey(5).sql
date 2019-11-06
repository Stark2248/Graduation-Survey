-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 08:13 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stud_survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `Name` varchar(25) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` bigint(15) DEFAULT NULL,
  `SCI` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `ID` int(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `Password` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`ID`, `username`, `Password`, `Name`) VALUES
(1, 'Amlan', 1234, 'Amlan Das'),
(2, 'Surjendu', 1234, 'Surjendu K.Panigrahi'),
(3, 'Swaraj', 1234, 'Swaraj Danta');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reg`
--

CREATE TABLE `tbl_reg` (
  `ID` int(4) NOT NULL,
  `Reg` int(9) NOT NULL,
  `Batch` varchar(4) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Survey` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reg`
--

INSERT INTO `tbl_reg` (`ID`, `Reg`, `Batch`, `Branch`, `Name`, `Survey`) VALUES
(1, 170310083, '2019', 'CSE', 'Amlan Das', 1),
(3, 170310462, '2019', 'CSE', 'Surjendu Panigrahi', 0),
(5, 170310468, '2019', 'CSE', 'Swaraj Danta', 0),
(6, 170310456, '2019', 'CSE', 'Lakhi Charan Mahato', 0),
(7, 170310458, '2019', 'CSE', 'Rishab Sharma', 0),
(8, 170310461, '2019', 'CSE', 'Pragya Shukla ', 0),
(9, 170310466, '2019', 'CSE', 'Abhishek Kumar', 0),
(10, 170310472, '2019', 'CSE', 'Smrutisudha Misra', 0),
(11, 170310485, '2019', 'CSE', 'Pralipta Rajoo', 0),
(19, 170310508, '2019', 'CSE', 'NITISH', 0),
(20, 170310510, '2019', 'CSE', 'ABHISHEK KUMAR', 0),
(21, 170320018, '2019', 'CSE', 'LAXMIKANTA', 0),
(22, 170310516, '2019', 'CSE', 'TOYAD PATTNAIK', 0),
(23, 170310519, '2019', 'CSE', 'SUBHASISH PATTNAIK', 0),
(24, 170310486, '2019', 'CSE', 'ABHISHEK KAUSHIK', 0),
(25, 170310487, '2019', 'CSE', 'ASHUTOSH ARYAN', 0),
(26, 170310496, '2019', 'CSE', 'MEGHALIKA SANWASI', 0),
(27, 170310502, '2019', 'CSE', 'SHUBHAM SAHOO', 0),
(28, 170310503, '2019', 'CSE', 'AYUSH PODDAR', 0),
(29, 170310483, '2019', 'CSE', 'VARSHA CHOUDHARY', 0),
(30, 170310439, '2019', 'CSE', 'SAURAV JHA', 0),
(31, 170310443, '2019', 'CSE', 'SHUBHAM KUMAR', 0),
(32, 170310444, '2019', 'CSE', 'INDRANATH GHOSH', 0),
(33, 170310447, '2019', 'CSE', 'UTKARSHA KOUSIK', 0),
(34, 170310418, '2019', 'CSE', 'ROHAN NAIK', 0),
(35, 170310421, '2019', 'CSE', 'ADITI SINGH', 0),
(37, 170310422, '2019', 'CSE', 'NISTHA AGARWAL', 0),
(38, 170310423, '2019', 'CSE', 'ALKA KUMARI', 1),
(39, 170310409, '2019', 'CSE', 'MEDHA RAJ', 0),
(40, 170310415, '2019', 'CSE', 'AMAN RAJ', 0),
(41, 170310416, '2019', 'CSE', 'SIDDHANT PANDA', 0),
(42, 170310417, '2019', 'CSE', 'SWARAJ DASH', 0),
(43, 170310345, '2019', 'CSE', 'MUSKAN AGARWAL', 0),
(44, 170310346, '2019', 'CSE', 'PALLAVI SWAIN', 0),
(45, 170310348, '2019', 'CSE', 'ANSHUMAN MOHANTY', 0),
(46, 170310426, '2019', 'CSE', 'SAURAV PRADHAN', 0),
(47, 170310353, '2019', 'CSE', 'ASHISH MOHANTY', 0),
(48, 170310354, '2019', 'CSE', 'PIYUSH PANIGRAHI', 0),
(49, 170310357, '2019', 'CSE', 'EKANKIKA PATRA', 0),
(50, 170310358, '2019', 'CSE', 'MRUTYUNJAYA PAL', 0),
(51, 170310427, '2019', 'CSE', 'NAVIN CHANDRA', 0),
(52, 170310429, '2019', 'CSE', 'AAKASH KUMAR BARAI', 0),
(53, 170310430, '2019', '', 'RAHUL KUMAR', 0),
(54, 170310434, '2019', 'CSE', 'HEMSAGAR MEHER', 0),
(55, 170310452, '2019', 'CSE', 'G H VISHAL', 0),
(56, 170310453, '2019', 'CSE', 'ASHUTOSH BEHRA', 0),
(57, 170310455, '2019', 'CSE', 'UTSAV AGARWAL', 0),
(58, 170310444, '2019', 'CSE', 'INDRANATH GHOSH', 0),
(59, 170610382, '2019', 'CSE', 'D R SHRIYA', 0),
(60, 170110405, '2019', 'CSE', 'RUCHIRAMYA TRIPATHY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sur1`
--

CREATE TABLE `tbl_sur1` (
  `ID` int(4) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Reg` bigint(10) NOT NULL,
  `Degree` varchar(10) NOT NULL,
  `Batch` int(5) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `CGPA` float NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sur1`
--

INSERT INTO `tbl_sur1` (`ID`, `Name`, `Reg`, `Degree`, `Batch`, `Gender`, `CGPA`, `Status`) VALUES
(7, 'Amlan', 170310083, 'MCA12', 2019, 'M', 88.5, 'null'),
(11, 'Alka', 170310423, 'B.tech', 2019, 'F', 9.2, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sur2_curriculum`
--

CREATE TABLE `tbl_sur2_curriculum` (
  `ID` int(4) NOT NULL,
  `Reg` int(15) NOT NULL,
  `Cur` text DEFAULT NULL,
  `AdeqG` text DEFAULT NULL,
  `AdeqP` text DEFAULT NULL,
  `AdeqE` text DEFAULT NULL,
  `AdeqC` text DEFAULT NULL,
  `Sat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sur2_curriculum`
--

INSERT INTO `tbl_sur2_curriculum` (`ID`, `Reg`, `Cur`, `AdeqG`, `AdeqP`, `AdeqE`, `AdeqC`, `Sat`) VALUES
(1, 170310083, 'Not Satisfied', 'Not Satisfied', 'Not Satisfied', 'Not Satisfied', 'Somewhat Satisfied', 'Somewhat Satisfied'),
(5, 170310423, 'Satisfied', 'Somewhat Satisfied', 'Satisfied', 'Very much Satisfied', 'Satisfied', 'Very much Satisfied');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sur2_quality_fac`
--

CREATE TABLE `tbl_sur2_quality_fac` (
  `ID` int(4) NOT NULL,
  `Reg` int(15) NOT NULL,
  `Classroom` text NOT NULL,
  `Laboratories` text NOT NULL,
  `Computing` text NOT NULL,
  `Library` text NOT NULL,
  `Other` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sur2_quality_fac`
--

INSERT INTO `tbl_sur2_quality_fac` (`ID`, `Reg`, `Classroom`, `Laboratories`, `Computing`, `Library`, `Other`) VALUES
(1, 170310083, 'Somewhat Satisfied', 'Somewhat Satisfied', 'Somewhat Satisfied', 'Somewhat Satisfied', 'Somewhat Satisfied'),
(5, 170310423, 'Somewhat Satisfied', 'Satisfied', 'Very much Satisfied', 'Satisfied', 'Somewhat Satisfied');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sur2_quality_ins`
--

CREATE TABLE `tbl_sur2_quality_ins` (
  `ID` int(4) NOT NULL,
  `Reg` bigint(10) NOT NULL,
  `Mathematics` text NOT NULL,
  `Physics` text NOT NULL,
  `Humanity` text NOT NULL,
  `Cec` text NOT NULL,
  `eci` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sur2_quality_ins`
--

INSERT INTO `tbl_sur2_quality_ins` (`ID`, `Reg`, `Mathematics`, `Physics`, `Humanity`, `Cec`, `eci`) VALUES
(2, 170310083, 'Not Satisfied', 'Somewhat Satisfied', 'Somewhat Satisfied', 'Satisfied', 'Somewhat Satisfied'),
(6, 170310423, 'Not Satisfied', 'Somewhat Satisfied', 'Satisfied', 'Satisfied', 'Very much Satisfied');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sur2_quality_support`
--

CREATE TABLE `tbl_sur2_quality_support` (
  `ID` int(4) NOT NULL,
  `Reg` bigint(9) NOT NULL,
  `AdmissionC` text NOT NULL,
  `Administration` text NOT NULL,
  `Mentoring` text NOT NULL,
  `Training` text NOT NULL,
  `Hostel` text NOT NULL,
  `Canteen` text NOT NULL,
  `Transport` text NOT NULL,
  `Recreation` text NOT NULL,
  `Campus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sur2_quality_support`
--

INSERT INTO `tbl_sur2_quality_support` (`ID`, `Reg`, `AdmissionC`, `Administration`, `Mentoring`, `Training`, `Hostel`, `Canteen`, `Transport`, `Recreation`, `Campus`) VALUES
(1, 170310083, 'null', 'Not Satisfied', 'Not Satisfied', 'Not Satisfied', 'Somewhat Satisfied', 'Not Satisfied', 'null', 'Somewhat Satisfied', 'Satisfied'),
(5, 170310423, 'null', 'Not Satisfied', 'Somewhat Satisfied', 'Satisfied', 'Satisfied', 'Not Satisfied', 'null', 'Satisfied', 'Satisfied');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sur3`
--

CREATE TABLE `tbl_sur3` (
  `ID` int(4) NOT NULL,
  `Reg` int(15) NOT NULL,
  `Q1` text NOT NULL,
  `Q2` text NOT NULL,
  `Q3` text NOT NULL,
  `Q4` text NOT NULL,
  `Q5` text NOT NULL,
  `Q6` text NOT NULL,
  `Q7` text NOT NULL,
  `Q8` text NOT NULL,
  `Q9` text NOT NULL,
  `Q10` text NOT NULL,
  `Q11` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sur3`
--

INSERT INTO `tbl_sur3` (`ID`, `Reg`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`, `Q6`, `Q7`, `Q8`, `Q9`, `Q10`, `Q11`) VALUES
(1, 170310083, 'Strongly Agree', 'Agree', 'Neutral', 'Disagree', 'Strongly Disagree', 'Disagree', 'Neutral', 'Agree', 'Strongly Agree', 'Agree', 'Neutral'),
(5, 170310423, 'Agree', 'Neutral', 'Agree', 'Agree', 'Neutral', 'Neutral', 'Neutral', 'Agree', 'Neutral', 'Neutral', 'Neutral');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sur4`
--

CREATE TABLE `tbl_sur4` (
  `ID` int(4) NOT NULL,
  `Reg` int(15) NOT NULL,
  `S1` longtext NOT NULL,
  `S2` longtext NOT NULL,
  `S3` longtext NOT NULL,
  `S4` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sur4`
--

INSERT INTO `tbl_sur4` (`ID`, `Reg`, `S1`, `S2`, `S3`, `S4`) VALUES
(1, 170310083, 'xyz', 'abc', 'def', 'egwefsgqwfsfqw'),
(5, 170310423, 'cdada', 'rrddccvv', 'mlddold', 'wndlndl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sur1`
--
ALTER TABLE `tbl_sur1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sur2_curriculum`
--
ALTER TABLE `tbl_sur2_curriculum`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sur2_quality_fac`
--
ALTER TABLE `tbl_sur2_quality_fac`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sur2_quality_ins`
--
ALTER TABLE `tbl_sur2_quality_ins`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sur2_quality_support`
--
ALTER TABLE `tbl_sur2_quality_support`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sur3`
--
ALTER TABLE `tbl_sur3`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sur4`
--
ALTER TABLE `tbl_sur4`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_reg`
--
ALTER TABLE `tbl_reg`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_sur1`
--
ALTER TABLE `tbl_sur1`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_sur2_curriculum`
--
ALTER TABLE `tbl_sur2_curriculum`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sur2_quality_fac`
--
ALTER TABLE `tbl_sur2_quality_fac`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sur2_quality_ins`
--
ALTER TABLE `tbl_sur2_quality_ins`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_sur2_quality_support`
--
ALTER TABLE `tbl_sur2_quality_support`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sur3`
--
ALTER TABLE `tbl_sur3`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sur4`
--
ALTER TABLE `tbl_sur4`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
