-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 10:03 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electro_grid(eg)_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_management`
--

CREATE TABLE `billing_management` (
  `billingID` int(11) NOT NULL,
  `meterNumber` int(11) NOT NULL,
  `consumerName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `durationPeriod` int(11) NOT NULL,
  `noOfUnits` int(11) NOT NULL,
  `totalAmount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing_management`
--

INSERT INTO `billing_management` (`billingID`, `meterNumber`, `consumerName`, `address`, `durationPeriod`, `noOfUnits`, `totalAmount`) VALUES
(1, 145, 'Thamoda', 'No.123/1, Gamunu Mawatha, Kalaniya', 30, 24, 400),
(2, 145, 'Thamoda', 'No.123/1, Gamunu Mawatha, Kalaniya', 30, 24, 400);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_management`
--

CREATE TABLE `inquiry_management` (
  `inquiryNo` int(10) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(30) NOT NULL,
  `postalCode` varchar(20) NOT NULL,
  `issue` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry_management`
--

INSERT INTO `inquiry_management` (`inquiryNo`, `nic`, `name`, `address`, `postalCode`, `issue`) VALUES
(1, '992881321v', 'Sewwandi Rajakaruna', 'No 56 Mirigama , Walawwaththa', '99288', 'Issue in meter'),
(5, '881881321v', 'Amila Rajapaksha', 'no11 wijayaRajadahana', '452111', 'issue in wire'),
(6, '888888888v', 'Yuthishka_wijesekara', '11_giriulla', '9999', 'issue_about_wire'),
(13, '111111111v', 'Ishara_Kavindu', 'no28_Mirigama_nittabuwa', '00000', 'Issue_in_wire');

-- --------------------------------------------------------

--
-- Table structure for table `user_management`
--

CREATE TABLE `user_management` (
  `userID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `userAddress` varchar(255) NOT NULL,
  `contactNumber` varchar(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_management`
--

INSERT INTO `user_management` (`userID`, `FirstName`, `LastName`, `userAddress`, `contactNumber`, `Email`, `userType`) VALUES
(1, 'Peter', 'Parker', 'No.12/1, Hotel Road, Colombo 04.', '011-2194598', 'peter219@gmail.com', 'Technician'),
(8, 'Kevin', 'Fernando', 'No.217/1, Church Road, Mt.Lavinia ', '011-2789012', 'Kevin902@gmail.com', 'Consumer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_management`
--
ALTER TABLE `billing_management`
  ADD PRIMARY KEY (`billingID`);

--
-- Indexes for table `inquiry_management`
--
ALTER TABLE `inquiry_management`
  ADD PRIMARY KEY (`inquiryNo`);

--
-- Indexes for table `user_management`
--
ALTER TABLE `user_management`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_management`
--
ALTER TABLE `billing_management`
  MODIFY `billingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inquiry_management`
--
ALTER TABLE `inquiry_management`
  MODIFY `inquiryNo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_management`
--
ALTER TABLE `user_management`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
