-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 06:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7894561238, 'test@gmail.com', 'c93ccd78b2076528346216b3b2f701e6', '2019-04-05 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(14, 'Chair', '2024-02-27 16:18:15'),
(15, 'Bed', '2024-02-27 16:19:49'),
(16, 'Table', '2024-02-27 16:20:10'),
(17, 'Cabinet', '2024-02-27 16:20:31'),
(18, 'Sofa', '2024-02-27 16:20:40'),
(19, 'Gift Item', '2024-02-27 16:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Kiran', 'kran@gmail.com', 'cost of volvo place pritampura to dwarka', '2021-07-05 07:26:24', 1),
(2, 'Sarita Pandey', 'sar@gmail.com', 'huiyuihhjjkhkjvhknv iyi tuyvuoiup', '2021-07-09 12:48:40', 1),
(3, 'Test', 'test@gmail.com', 'Want to know price of forest cake', '2021-07-16 12:51:06', 1),
(4, 'Anuj', 'ak330@gmail.com', 'This is for testing.', '2021-07-18 14:35:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`, `Weight`, `CreationDate`) VALUES
(17, 'Bed', 'Wooden Bed', '9000', 'comfortable                                  	', '94aca51f9907d11663264a9b4539cab7.jpg', '1', '4 kg', '2024-02-27 16:40:36'),
(18, 'Table', 'Wooden Table', '750', 'Strong                      	', '30e62fddc14c05988b44e7c02788e187.jpg', '1', '2 kg', '2024-02-27 16:42:49'),
(19, 'Cabinet', 'Wooden Cabinet', '1200', '                 Strong                                	', '8cda81fc7ad906927144235dda5fdf15.jpg', '1', '3.5 kg', '2024-02-27 16:49:53'),
(20, 'Sofa', 'Comfy Sofa', '4500', '               Comfortable and Soft                                  	', '9196f0473a317c1c8158db04d5d2ef88.jpg', '1', '3.5 kg', '2024-02-27 16:53:35'),
(21, 'Gift Item', 'Gift Item', '1100', '                             Beautiful                    	', 'cfa9089a91b751342dea5b05135634b5.jpg', '1', '2 kg', '2024-02-27 16:57:28'),
(23, 'Chair', 'Wooden Chair', '1000', '                 comfortable                                	', '42766098a72b2b10f4eca2f27d9c6167.jpg', '1', '1 kg', '2024-02-28 05:58:58'),
(24, 'Chair', 'Cozzy Chair', '620', '                                                                            comfortable                         	', 'c4cdbf8f3259007e4bbdc21fb737f80b.jpg', '1', '3.5 kg', '2024-02-28 16:13:48'),
(25, 'Bed', 'Comfy Bed', '9500', '                                                                  comfortable                                   	', 'b576a96d5ce0e15ea1eac08400790935.jpg', '1', '4 kg', '2024-02-28 16:22:43'),
(26, 'Table', 'Wooden Table', '780', '                strong                                 	', 'edab7ba7e203cd7576d1200465194ea8.jpg', '1', '3.5 kg', '2024-02-28 16:26:35'),
(27, 'Gift Item', 'Light Lamp', '1200', '                                                                         best gift                            	', 'db3a17f7bcac837ecc1fe2bc630a5473.jpg', '2', '2.5 kg', '2024-02-28 16:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '684785077', 'order confirmed', 'Order Confirmed', '2021-07-14 07:18:21', NULL),
(2, '684785077', 'Cake being prepared', 'Cake being Prepared', '2021-07-14 07:18:53', NULL),
(3, '684785077', 'Cake pickup', 'Cake Pickup', '2021-07-14 07:19:19', NULL),
(4, '684785077', 'Cake Delivered', 'Cake Delivered', '2021-07-14 07:21:00', NULL),
(5, '728672835', 'Order is Confirmed', 'Order Confirmed', '2021-07-18 14:33:25', NULL),
(6, '728672835', 'The cake is Picked up.', 'Cake Pickup', '2021-07-18 14:34:03', NULL),
(7, '728672835', 'The Cake is Delivered', 'Cake Delivered', '2021-07-18 14:34:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(1, '1', '684785077', 'dsfde', 'rtert', 'tretret', 'trtert', 'terterte', '2021-07-14 07:16:49', 'Cake Delivered'),
(2, '1', '143132597', 'erte', 'bkkj', 'kjhkj', 'kjhbjkh', 'kjhkjh', '2021-07-14 07:17:16', NULL),
(3, '1', '478333935', 'lkjlk', 'lkjlk', 'lkjlk', 'lkjkl', 'lkjlk', '2021-07-14 07:17:51', NULL),
(4, '6', '890594955', 'tyu', 'uiu', 'yui', 'uiyi', 'iuyui', '2021-07-16 07:07:52', NULL),
(5, '6', '197974391', 'fdads', 'dgfd', 'dfgfdf', 'gfdgf', 'gfdgf', '2021-07-16 12:10:40', NULL),
(6, '8', '728672835', 'Q 42342', 'ABC Street', 'New Delhi', 'Near XYZ', 'New Delhi', '2021-07-18 14:32:50', 'Cake Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL,
  `CashonDelivery` varchar(100) DEFAULT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`, `CashonDelivery`, `OrderDate`) VALUES
(1, '1', '2', 1, '684785077', 'Cash on Delivery', '2021-07-14 07:16:30'),
(2, '1', '7', 1, '143132597', 'Cash on Delivery', '2021-07-14 07:16:57'),
(3, '1', '1', 1, '478333935', 'Cash on Delivery', '2021-07-14 07:17:23'),
(4, '1', '10', 1, '478333935', 'Cash on Delivery', '2021-07-14 07:17:29'),
(5, '1', '3', 1, '478333935', 'Cash on Delivery', '2021-07-14 07:17:32'),
(6, '1', '1', NULL, NULL, NULL, '2021-07-14 12:12:42'),
(7, '1', '1', NULL, NULL, NULL, '2021-07-14 12:22:37'),
(8, '1', '1', NULL, NULL, NULL, '2021-07-14 12:23:42'),
(9, '1', '2', NULL, NULL, NULL, '2021-07-14 12:23:47'),
(10, '1', '2', NULL, NULL, NULL, '2021-07-14 12:42:23'),
(12, '6', '2', 1, '890594955', 'Cash on Delivery', '2021-07-16 07:07:25'),
(13, '6', '5', 1, '197974391', 'Cash on Delivery', '2021-07-16 12:06:45'),
(14, '8', '1', 1, '728672835', 'Cash on Delivery', '2021-07-18 14:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<p class=\"MsoNormal\"><span style=\"font-size: 13.5pt; line-height: 115%; font-family: Roboto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">This is all about your dream home which you can decore with our best furnishing idea. Our website can provide best quality of furniture. Our website can give you best varieties of chairs , beds , sofa , table , mirror , exclusive items. Crafting Content around this point will help create a compelling narrative for your brand on the Furns website , engaging potential customers and encouraging them to explore your offerings further. Elevate your home with furniture with not only speaks to your sense of design. but also embodies the essence of relaxation and luxury , exclusively at Furns furniture. Welcome to the world of Furns. </span></p>', NULL, NULL, '2024-02-28 09:12:17'),
(2, 'contactus', 'Contact Us', '                #890 CFG Apartment, Mayur Vihar, Delhi-India.', 'info@gmail.com', 4654789791, '2021-07-18 14:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(1, 'ani@gmail.com', '2021-07-16 07:32:33'),
(2, 'rahul@gmail.com', '2021-07-16 07:32:33'),
(3, 'ak@gmail.com', '2021-07-18 14:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Pankaj', 'Shahu', 'testuser@gmail.com', 7894561236, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:41:22'),
(2, 'Rakesh', 'Chandra', 'rakesh@gmail.com', 7656234589, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:43:28'),
(3, 'Yogesh', 'Chandra', 'y@gmail.com', 8989898989, '202cb962ac59075b964b07152d234b70', '2019-04-24 07:04:02'),
(4, 'Yogesh', 'Shah', 'Test1@gmail.com', 8975895698, '202cb962ac59075b964b07152d234b70', '2019-05-06 09:09:05'),
(5, 'Test demo', 'User', 'testuser123@gmail.com', 1234567890, '7ec66345281b134a33f784bcd06d7ea5', '2019-05-06 16:26:40'),
(6, 'Abir', 'Rajwansh', 'abir@gmail.com', 7987897897, '202cb962ac59075b964b07152d234b70', '2021-07-10 06:58:13'),
(7, 'Devi Nand', 'Shah', 'Devi@gmail.com', 9797987987, '202cb962ac59075b964b07152d234b70', '2021-07-16 08:02:24'),
(8, 'Anuj', 'Kumar', 'ak3330@gmail.com', 1122334455, 'f925916e2754e5e03f75dd58a5733251', '2021-07-18 14:31:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
