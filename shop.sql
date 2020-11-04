-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2020 at 10:08 PM
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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Cat_ID` int(6) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf32 NOT NULL,
  `Description` text NOT NULL,
  `Ordring` int(11) DEFAULT NULL,
  `Visibiity` tinyint(4) NOT NULL DEFAULT 0,
  `Allow_Commect` tinyint(4) NOT NULL DEFAULT 0,
  `Allow_Ads` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Cat_ID`, `Name`, `Description`, `Ordring`, `Visibiity`, `Allow_Commect`, `Allow_Ads`) VALUES
(6, 'pc', 'cccccccccccc', 116, 0, 0, 0),
(7, 'mobile', '', 5, 1, 1, 1),
(11, 'axc', '', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `Com_ID` int(11) NOT NULL,
  `Comment` text CHARACTER SET utf8 NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0,
  `Com_Date` date NOT NULL,
  `Item_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Com_ID`, `Comment`, `Status`, `Com_Date`, `Item_ID`, `User_ID`) VALUES
(13, 'ghssv  dr f sufgguyeg bcjhb hfu fhdsdddddd dddddd dvvdddddd dvdddddddd dddddd dddddd dddd dddddd ddddddd ddddd dddd dddddd', 1, '2020-11-03', 28, 100),
(15, 'vvv vvvvvvv vvvvvvv vvvvvv vvvvvvvvvvvvvvvv vvvvv vvvvv vvvvvvvv vvvv vvvvv vvvvv vvvvvv vvvvvv vvvvv vvvv ', 0, '2020-11-03', 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Add_Date` date NOT NULL,
  `Country_miade` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Rating` smallint(6) NOT NULL,
  `Approve` tinyint(4) NOT NULL DEFAULT 0,
  `Cat_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_ID`, `Name`, `Description`, `Price`, `Add_Date`, `Country_miade`, `Image`, `State`, `Rating`, `Approve`, `Cat_ID`, `User_ID`) VALUES
(27, 'pc', 'ces', '120$', '2020-11-03', 'itlyano', '', '1', 1, 0, 6, 120),
(28, 'ghdty', 'xgffgh', '202', '2020-11-02', 'bdjgdh', 'ggdh', '0', 1, 0, 7, 101);

-- --------------------------------------------------------

--
-- Table structure for table `usres`
--

CREATE TABLE `usres` (
  `UserID` int(11) NOT NULL COMMENT 'to idntfiy user',
  `Username` varchar(255) NOT NULL COMMENT 'username to login',
  `Password` varchar(255) NOT NULL COMMENT 'password to login',
  `Email` varchar(255) NOT NULL COMMENT 'email to login',
  `Fullname` varchar(255) NOT NULL COMMENT 'fullname to login',
  `GroupID` int(11) NOT NULL DEFAULT 0 COMMENT 'identfiy user Group',
  `TrustStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'Seller Rank',
  `RegStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'pending Approval',
  `RegusterDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usres`
--

INSERT INTO `usres` (`UserID`, `Username`, `Password`, `Email`, `Fullname`, `GroupID`, `TrustStatus`, `RegStatus`, `RegusterDate`) VALUES
(1, 'ayman', '597c9f131f74f61cab01178d7ac30a5666d0ff14', 'ayman@yahoo.com', 'ayman', 1, 0, 1, '2020-10-31'),
(100, 'ayman222gg', '597c9f131f74f61cab01178d7ac30a5666d0ff14', 'atmanMoh@yahoo.com', 'aymanMoh', 0, 0, 1, '2020-11-01'),
(101, 'aymangawad', '597c9f131f74f61cab01178d7ac30a5666d0ff14', 'aymangawad@yahoo.com', 'aymangawad', 0, 0, 1, '2020-11-01'),
(120, 'ayaaa', '597c9f131f74f61cab01178d7ac30a5666d0ff14', 'ayaa@yahoo.comsssssssssssss', 'ayaa sammer', 1, 0, 1, '2020-10-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Cat_ID`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD UNIQUE KEY `Ordring` (`Ordring`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Com_ID`),
  ADD KEY `Item_ID` (`Item_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Cat_ID` (`Cat_ID`);

--
-- Indexes for table `usres`
--
ALTER TABLE `usres`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Cat_ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `Com_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `usres`
--
ALTER TABLE `usres`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'to idntfiy user', AUTO_INCREMENT=122;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `items` (`Item_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `usres` (`UserID`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `usres` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`Cat_ID`) REFERENCES `categories` (`Cat_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
