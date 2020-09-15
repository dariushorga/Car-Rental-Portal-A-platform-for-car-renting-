-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2020 at 06:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'dariushorga28@gmail.com', 1, '13/04/2020', '17/04/2020', 'asdasdas', 1, '2020-04-12 13:14:22'),
(5, 'dariushorga28@gmail.com', 1, '13/04/2020', '11/04/2020', 'sads', 0, '2020-04-12 19:16:48'),
(6, 'dariushorga28@gmail.com', 1, '13/04/2020', '11/04/2020', 'asdasd', 0, '2020-05-04 11:01:50'),
(7, 'dariushorga28@gmail.com', 2, '10/06/2020', '12/06/2020', 'salut', 1, '2020-06-15 09:39:31'),
(8, 'dariushorga28@gmail.com', 2, '10/06/2020', '12/06/2020', 'salut', 2, '2020-06-15 09:41:36'),
(9, 'dariushorga28@gmail.com', 3, '10/04/2020', '17/04/2020', 'safdsdasdf', 0, '2020-06-17 07:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(2, 'BMW', '2020-03-27 17:24:50', NULL),
(3, 'Audi', '2020-03-27 17:26:03', NULL),
(4, 'Nissan', '2020-03-27 17:27:13', NULL),
(5, 'Toyota', '2020-03-27 17:29:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Darius', 'dariushorga28@gmail.com', '123456', 'lorem ipsum', '2020-05-03 14:24:39', NULL),
(3, 'Horga', 'dariushorga28@gmail.com', '123456', 'nrtntntrnrtrnent', '2020-06-15 14:44:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt ullam esse, similique repudiandae illum debitis aut culpa ipsam quas dolorem ad perspiciatis incidunt placeat tempore explicabo velit, porro voluptatem perferendis illo numquam dignissimos? Ad sint unde quos aut non eos optio, reiciendis voluptatem mollitia culpa qui vero veniam consequuntur amet, ducimus nemo rerum hic sapiente voluptate! Excepturi, natus? Quo, inventore dolor porro corporis, vitae asperiores velit doloremque in, officiis impedit at quasi laboriosam illum consequatur! Minima odio suscipit, id magni sint saepe nam praesentium pariatur similique, recusandae velit temporibus! At aut sint, tenetur nemo nulla non a suscipit explicabo dolore eaque, ex magnam molestias. Voluptatibus nobis obcaecati commodi quas sit aspernatur, in reprehenderit similique dolores eaque saepe magni pariatur fugit. Placeat laudantium blanditiis nulla aspernatur quae iste omnis, sit maxime deleniti veritatis eum non laborum delectus autem, exercitationem perspiciatis amet veniam, porro voluptates? Sit dolore eaque eos necessitatibus qui doloremque. Laborum illum quisquam a adipisci aut doloribus voluptatibus vel facere dolor iste voluptates nemo libero, quibusdam quidem eos, eaque aperiam, voluptate quam ex. Repellendus eveniet adipisci eos molestiae fugiat doloribus veritatis unde quam? Tenetur eius ut, ex a reiciendis cupiditate nulla culpa inventore porro. Iure corrupti vitae voluptatem commodi accusamus quibusdam. Velit, magni labore incidunt aliquam omnis odio accusamus repellendus. Quasi, possimus reiciendis dolorum quidem ullam asperiores quas atque natus optio culpa, perspiciatis repudiandae tempora corrupti. Molestiae enim rem omnis officiis obcaecati, nam ipsam modi id, molestias, voluptate deleniti temporibus adipisci dolorem expedita sapiente delectus amet commodi quas. Maiores voluptatem possimus sint veritatis. Voluptatibus sunt tempore sint accusantium ad doloribus nam corrupti. Beatae accusantium veniam excepturi repellat neque aliquid ut, veritatis dolor consectetur at voluptatibus, explicabo quo quos exercitationem officia deleniti totam iure quibusdam adipisci commodi doloremque cumque? Veritatis dicta distinctio quia minus veniam unde inventore, quod ea aut vel?'),
(2, 'Privacy Policy', 'privacy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt ullam esse, similique repudiandae illum debitis aut culpa ipsam quas dolorem ad perspiciatis incidunt placeat tempore explicabo velit, porro voluptatem perferendis illo numquam dignissimos? Ad sint unde quos aut non eos optio, reiciendis voluptatem mollitia culpa qui vero veniam consequuntur amet, ducimus nemo rerum hic sapiente voluptate! Excepturi, natus? Quo, inventore dolor porro corporis, vitae asperiores velit doloremque in, officiis impedit at quasi laboriosam illum consequatur! Minima odio suscipit, id magni sint saepe nam praesentium pariatur similique, recusandae velit temporibus! At aut sint, tenetur nemo nulla non a suscipit explicabo dolore eaque, ex magnam molestias. Voluptatibus nobis obcaecati commodi quas sit aspernatur, in reprehenderit similique dolores eaque saepe magni pariatur fugit. Placeat laudantium blanditiis nulla aspernatur quae iste omnis, sit maxime deleniti veritatis eum non laborum delectus autem, exercitationem perspiciatis amet veniam, porro voluptates? Sit dolore eaque eos necessitatibus qui doloremque. Laborum illum quisquam a adipisci aut doloribus voluptatibus vel facere dolor iste voluptates nemo libero, quibusdam quidem eos, eaque aperiam, voluptate quam ex. Repellendus eveniet adipisci eos molestiae fugiat doloribus veritatis unde quam? Tenetur eius ut, ex a reiciendis cupiditate nulla culpa inventore porro. Iure corrupti vitae voluptatem commodi accusamus quibusdam. Velit, magni labore incidunt aliquam omnis odio accusamus repellendus. Quasi, possimus reiciendis dolorum quidem ullam asperiores quas atque natus optio culpa, perspiciatis repudiandae tempora corrupti. Molestiae enim rem omnis officiis obcaecati, nam ipsam modi id, molestias, voluptate deleniti temporibus adipisci dolorem expedita sapiente delectus amet commodi quas. Maiores voluptatem possimus sint veritatis. Voluptatibus sunt tempore sint accusantium ad doloribus nam corrupti. Beatae accusantium veniam excepturi repellat neque aliquid ut, veritatis dolor consectetur at voluptatibus, explicabo quo quos exercitationem officia deleniti totam iure quibusdam adipisci commodi doloremque cumque? Veritatis dicta distinctio quia minus veniam unde inventore, quod ea aut vel?');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'driushorga28@gmail.com', '2020-05-03 14:31:41'),
(5, 'vfdfv@dfdb.com', '2020-05-14 12:44:48'),
(6, 'sadfads@safas.com', '2020-06-15 14:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'dariushorga28@gmail.com', 'dfdgfa', '2020-04-30 16:15:51', 1),
(4, 'dariushorga28@gmail.com', 'ce imi plac femeile', '2020-06-11 10:00:15', 1),
(5, 'dariushorga28@gmail.com', 'pupiii', '2020-06-11 10:00:20', 1),
(6, 'dariushorga28@gmail.com', 'aleluia', '2020-06-11 10:00:27', 1),
(7, 'dariushorga28@gmail.com', 'afvqknvnqkwnvkwevweqew', '2020-06-11 10:00:31', 1),
(8, 'dariushorga28@gmail.com', 'brrrrrrrrrrrrrrrrrr', '2020-06-16 09:48:36', 1),
(9, 'dariushorga28@gmail.com', 'afbabafbabadfdafb', '2020-06-16 09:51:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Horga', 'dariushorga28@gmail.com', 'f6a619928027317c0d76d1169f698bf5', '123123123', '28/04/1998', 'Str. Inependentei', 'Bistrita, Bistrita-Nasaud', 'Romania', '2020-04-12 13:12:13', '2020-06-16 14:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(3, 'Lorem ipsum', 4, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 563, 'CNG', 2012, 5, 'featured-img-3.jpg', 'dealer-logo.jpg', 'img_390x390.jpg', 'listing_img3.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2020-04-03 16:18:20', '2020-04-20 18:40:11'),
(4, 'Lorem ipsum', 4, 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum', 5636, 'Petrol', 2012, 5, 'featured-img-3.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2020-04-06 16:18:43', '2020-06-15 14:32:54'),
(5, 'ytb rvtr', 5, 'vtretrvet', 345345, 'Petrol', 3453, 7, 'car_755x430.png', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-05-01 17:57:09', '2020-05-02 16:56:43'),
(7, 'jjj', 3, 'ijv4itv', 77, 'Petrol', 98, 4, 'ppt1.png', 'ppt3.png', 'ppt4.png', 'Screenshot_1.png', '105256756_580520959174293_1237498356175016530_n.jpg', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-24 12:39:08', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
