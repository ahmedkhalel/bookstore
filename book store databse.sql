-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 11:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sls33`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ID` int(11) NOT NULL,
  `BOOK_NAME` varchar(150) NOT NULL,
  `CODE` int(11) NOT NULL,
  `AUTHOR` varchar(80) NOT NULL,
  `PUP_DATE` date NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ID`, `BOOK_NAME`, `CODE`, `AUTHOR`, `PUP_DATE`, `PRICE`) VALUES
(2, 'علي اعقاب غرناطة', 951, 'anas', '1990-12-05', 44),
(3, 'ينابيع المعرفة', 829, 'hossam', '1999-12-05', 55),
(4, 'الايام', 852, 'taha ', '2005-12-05', 52),
(5, 'لانك الله', 522, 'mostafa', '2012-12-05', 44);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `ID` int(11) NOT NULL,
  `PR_NAME` varchar(80) NOT NULL,
  `PR_ADDRESS` varchar(80) NOT NULL,
  `PR_PHONE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`ID`, `PR_NAME`, `PR_ADDRESS`, `PR_PHONE`) VALUES
(2, 'elsaftawy', 'mansoura', 2147483647),
(3, 'One group', 'beyla', 2147483647),
(4, 'One group2', 'kafr elsheikh', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `dar_nashre`
--

CREATE TABLE `dar_nashre` (
  `ID` int(11) NOT NULL,
  `DAR_NAME` varchar(80) NOT NULL,
  `DAR_PHONE` varchar(80) NOT NULL,
  `DAR_ADDRESS` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dar_nashre`
--

INSERT INTO `dar_nashre` (`ID`, `DAR_NAME`, `DAR_PHONE`, `DAR_ADDRESS`, `EMAIL`) VALUES
(1, 'Group', '1097258645', 'kafr el sheikh', 'mo74@gmail.com'),
(2, 'book shop', '01016455333', 'kafr el sheikh', 'mo74@gmail.com'),
(3, 'house shop', '01019759624', 'Tanta', 'adms25144@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `ID` int(11) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`ID`, `USER_NAME`, `PASSWORD`) VALUES
(1, 'ahmed.khalel@yahoo.com', 'ahmed123456'),
(2, 'nader.khalel65@gmail.com', 'nader'),
(3, 'man@52147', '65214525823');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(80) NOT NULL,
  `SECOND_NAME` varchar(80) NOT NULL,
  `USER_PHONE` varchar(80) NOT NULL,
  `USER_ADDRESS` varchar(80) NOT NULL,
  `EMAIL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `FIRST_NAME`, `SECOND_NAME`, `USER_PHONE`, `USER_ADDRESS`, `EMAIL`) VALUES
(0, 'nader', 'reda', '0985211551966', 'belqas', 'nader.khalel31@gmail.com'),
(0, 'ahmed', 'khalel', '01091009966', 'italy', 'ahmed65@gmail.com'),
(0, 'mena', 'gerges', '010254157', 'cairo', 'ahmmohamedsalemed655@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dar_nashre`
--
ALTER TABLE `dar_nashre`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dar_nashre`
--
ALTER TABLE `dar_nashre`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
