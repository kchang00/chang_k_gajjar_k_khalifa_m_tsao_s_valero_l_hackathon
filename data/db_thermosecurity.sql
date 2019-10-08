-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 08, 2019 at 09:32 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermosecurity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_display`
--

CREATE TABLE `tbl_display` (
  `ID` int(11) NOT NULL,
  `Intro` varchar(1000) NOT NULL,
  `GooglePlay` varchar(30) NOT NULL,
  `AppStore` varchar(30) NOT NULL,
  `ProductV` varchar(40) NOT NULL,
  `Icon1` varchar(30) NOT NULL,
  `Icon1T` varchar(30) NOT NULL,
  `Icon2` varchar(30) NOT NULL,
  `Icon2T` varchar(30) NOT NULL,
  `Icon3` varchar(30) NOT NULL,
  `Icon3T` varchar(30) NOT NULL,
  `Icon4` varchar(30) NOT NULL,
  `Icon4T` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_display`
--

INSERT INTO `tbl_display` (`ID`, `Intro`, `GooglePlay`, `AppStore`, `ProductV`, `Icon1`, `Icon1T`, `Icon2`, `Icon2T`, `Icon3`, `Icon3T`, `Icon4`, `Icon4T`) VALUES
(1, 'There’s no other trick to unlocking the perfect climate and securing your house with one device. All it takes is a Thermo Security Integrator to help you get started with Climate Control. ThermoSecurity™ System App is available on both iOS and Android devices. Take the next smart step.', 'images/google_play.svg', 'images/app_store.svg', 'video/thermosecurity.mp4', 'images/smart.svg', 'SMART', 'images/secure.svg', 'SECURE', 'images/personal.svg', 'PERSONAL', 'images/functional.svg', 'FUNCTIONAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feature`
--

CREATE TABLE `tbl_feature` (
  `ID` int(11) NOT NULL,
  `FeatH1` varchar(50) NOT NULL,
  `FeatImg1` varchar(40) NOT NULL,
  `FeatText1` varchar(600) NOT NULL,
  `FeatH2` varchar(50) NOT NULL,
  `FeatImg2` varchar(30) NOT NULL,
  `FeatText2` varchar(600) NOT NULL,
  `FeatH3` varchar(50) NOT NULL,
  `FeatImg3` varchar(30) NOT NULL,
  `FeatText3` varchar(600) NOT NULL,
  `FeatH4` varchar(50) NOT NULL,
  `FeatImg4` varchar(30) NOT NULL,
  `FeatText4` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_feature`
--

INSERT INTO `tbl_feature` (`ID`, `FeatH1`, `FeatImg1`, `FeatText1`, `FeatH2`, `FeatImg2`, `FeatText2`, `FeatH3`, `FeatImg3`, `FeatText3`, `FeatH4`, `FeatImg4`, `FeatText4`) VALUES
(2, 'DESIGNED FOR YOUR COMFORT', 'images/feature_1.jpg', 'Stylish, high-res touchscreen displays temperature inside and out, your local weather forecast and even smoke and carbon monoxide status.', 'MORE EFFICIENT THAN EVER', 'images/feature_2.jpg', 'House Com’s Climate relay modules enable the thermostat to manage a number of different heating and cooling systems within the same space, effortlessly.', 'SMART CONTROLS', 'images/feature_3.jpg', 'With the app, your thermostat lives on your wall and in your pocket. Once you connect your thermostat to Wi-Fi, you can control it from anywhere. Adjust the temperature from the app, and the Thermostat adjusts quickly back at home to ensure the environment is perfect when you return home.', 'TECHNOLOGICALLY ADVANCED', 'images/feature_4.jpg', 'The Thermosecurity’s integrated smart sensors monitor interior and exterior temperature, humidity, motion, noise and more, to quietly ensure the climate is just right and your home is safe when you are away. Its dimensions are 50mm(1.9 in) diameter X 22.5mm(0.8 in), and weight 45g(1.6 oz). ThermoSecurity has wireless function and smart sensors built-in.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hero`
--

CREATE TABLE `tbl_hero` (
  `ID` int(11) NOT NULL,
  `HeroImg` varchar(30) NOT NULL,
  `Logo` varchar(30) NOT NULL,
  `Tagline` varchar(200) NOT NULL,
  `Purchase` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hero`
--

INSERT INTO `tbl_hero` (`ID`, `HeroImg`, `Logo`, `Tagline`, `Purchase`) VALUES
(1, 'images/hero_image.jpg', 'images/thermosecurity_logo.svg', 'HouseCom™ ThermoSecurity™ System is a fully digital, hardwired and wireless (WiFi, Bluetooth)  enabled ​home personal and secure​ environment control system​.', 'SHOP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_display`
--
ALTER TABLE `tbl_display`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_feature`
--
ALTER TABLE `tbl_feature`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_hero`
--
ALTER TABLE `tbl_hero`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_display`
--
ALTER TABLE `tbl_display`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_feature`
--
ALTER TABLE `tbl_feature`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_hero`
--
ALTER TABLE `tbl_hero`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
