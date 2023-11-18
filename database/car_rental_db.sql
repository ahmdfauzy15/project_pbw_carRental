-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 05:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(30) NOT NULL,
  `car_id` int(30) NOT NULL,
  `pickup_datetime` datetime NOT NULL,
  `dropoff_datetime` datetime NOT NULL,
  `car_registration_no` varchar(200) NOT NULL,
  `car_plate_no` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= cancelled,1=Pending , 2= confirmed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `car_id`, `pickup_datetime`, `dropoff_datetime`, `car_registration_no`, `car_plate_no`, `name`, `email`, `contact`, `address`, `status`) VALUES
(3, 5, '2022-12-08 13:00:00', '2022-12-08 13:00:00', '12345678981212', 'b1232nxs', 'ahmad', 'ahfauzy1oji@gmail.com', '08974126126', 'jakarta', 2),
(4, 5, '2022-12-08 12:00:00', '2022-12-08 13:00:00', '123456789', 'B456TN', 'ahmad', 'ahmad@gmail.com', '08974126126', 'jakarta', 2),
(5, 3, '2022-12-10 14:00:00', '2022-12-11 12:18:00', '123456789812121', 'b1234gn1', 'Achmad Fauzy', 'ahfauzy15@gmail.com', '085893191943', 'jakarta', 2),
(6, 4, '2022-12-12 13:00:00', '2022-12-16 12:22:00', '12345678981212', 'b1234gn', 'adminnya', 'adminya@gmail.comm', '085893191943', 'jakarta', 2),
(7, 4, '2022-12-08 19:00:00', '2022-12-08 20:00:00', '123456789811', 'b1234gn1', 'n nj', 'ahfauzy1oji@gmail.com', '085893191943', 'Talokan', 2),
(8, 7, '2022-12-08 20:00:00', '2022-12-08 21:00:00', '123456789812121', 'b1234gn11', 'clarisa', 'c@apake', '089741261261', 'candraqa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_cars`
--

CREATE TABLE `borrowed_cars` (
  `id` int(30) NOT NULL,
  `booked_id` int(30) NOT NULL,
  `car_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=picked-up,2=drop-off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowed_cars`
--

INSERT INTO `borrowed_cars` (`id`, `booked_id`, `car_id`, `status`) VALUES
(3, 4, 0, 2),
(5, 6, 0, 2),
(6, 3, 0, 2),
(7, 7, 0, 2),
(8, 5, 3, 1),
(9, 8, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(30) NOT NULL,
  `model` varchar(200) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `transmission_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `engine_id` int(30) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `qty` int(30) NOT NULL,
  `img_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `model`, `brand`, `transmission_id`, `category_id`, `engine_id`, `description`, `price`, `qty`, `img_path`) VALUES
(3, '2020 Ford Escape', 'Ford', 3, 1, 2, '&lt;span style=&quot;color: rgb(10, 10, 10); font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(254, 254, 254);&quot;&gt;The redesigned 2020 Ford Escape finishes in the top third of our compact SUV rankings. It has a great predicted reliability rating, a spacious interior, and engaging performance, but its middling interior quality keeps it from being a class leader.&lt;/span&gt;', 2100000, 15, '1670477940_0913_2020FordEscape_SNDrive_F-1.webp'),
(6, '2022 Civic', 'Honda', 3, 2, 1, '&lt;p class=&quot;col-xs-12 col-md-9&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 877.5px;&quot;&gt;Engineering:&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-0 col-md-3 text-right&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 292.5px;&quot;&gt;&lt;a href=&quot;https://owners.honda.com/vehicles/information/2022/Civic%20Sedan/specs#vehicle-specs&quot; class=&quot;back-to-top&quot; style=&quot;color: rgb(0, 0, 0); text-decoration-line: none; cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: AvenirNext-Regular; display: inline;&quot;&gt;&lt;svg&gt;&lt;use xmlns:xlink=&quot;http://www.w3.org/1999/xlink&quot; xlink:href=&quot;#back-to-top&quot;&gt;&lt;/use&gt;&lt;/svg&gt;&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Engine Type&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;In-Line 4-Cylinder with Turbocharger&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Boost Pressure&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;16.5 psi&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Displacement&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;1498 cc&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Horsepower (SAE net)&lt;span style=&quot;position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em;&quot;&gt;1&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;180 @ 6000 rpm&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Torque (SAE net)&lt;span style=&quot;position: relative; font-size: 12px; line-height: 0; vertical-align: baseline; top: -0.5em;&quot;&gt;2&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;177 lb-ft @ 1700-4500 rpm&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Redline&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;6600 rpm&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Bore and Stroke&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;73.0 mm / 89.5 mm&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Compression Ratio&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;10.3 : 1&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Valve Train&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;16-Valve DOHC VTEC&reg;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p class=&quot;row spec-details&quot; style=&quot;margin-right: -15px; margin-left: -15px; zoom: 1; border-bottom: 0px solid rgb(204, 204, 204); color: rgb(34, 34, 34); font-family: &quot; helvetica=&quot;&quot; neue&quot;,=&quot;&quot; helvetica,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 12px;&quot;=&quot;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-5 spec-name&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 487.5px; font-family: AvenirNext-DemiBold; font-size: 16px; color: rgb(0, 68, 107); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Fuel Injection&lt;/p&gt;&lt;p class=&quot;col-xs-12 col-md-7 spec-detail&quot; style=&quot;min-height: 1px; padding: 16px; float: left; width: 682.5px; font-family: AvenirNext-Regular; font-size: 16px; color: rgb(0, 68, 107); background-color: rgb(242, 242, 242); border-bottom: 1px solid rgb(204, 204, 204);&quot;&gt;Direct&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', 2350000, 7, '1670512020_08-2022-honda-civic-sedan-sport-source-1619548708.jpg'),
(7, 'Ioniq 6', 'Hyundai', 2, 2, 3, '&lt;h1 style=&quot;margin-bottom: 24px; font-size: 32px; font-family: Montserrat, Arial; line-height: 38px; color: rgb(35, 38, 40); letter-spacing: -1px; font-weight: 700;&quot;&gt;&lt;p dir=&quot;ltr&quot; style=&quot;margin-bottom: 10px; padding: 0px; scroll-behavior: smooth; line-height: 26px; font-size: 16px; font-family: RobotoRegular, arial; font-weight: 400; letter-spacing: normal; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; scroll-behavior: smooth;&quot;&gt;The Ioniq 6 gets a 77.4kWh battery pack teamed with two electric motor options: a single rear-wheel drive motor with specifications currently unavailable, and a dual motor set up producing 325PS and 605Nm. In max attack, the dual motor set up can sprint from 0-100kmph in just 5.1 seconds.&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p dir=&quot;ltr&quot; style=&quot;margin-bottom: 10px; padding: 0px; scroll-behavior: smooth; line-height: 26px; font-size: 16px; font-family: RobotoRegular, arial; font-weight: 400; letter-spacing: normal; color: rgb(0, 0, 0) !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; scroll-behavior: smooth;&quot;&gt;For those who are okay with a smaller battery, there will be a 53kWh unit as well. Couple it with the rear-wheel drive motor option, and Hyundai estimates it&rsquo;ll do under 14kWh per 100km according to WLTP. Like the Ioniq 5, the Ioniq 6 will support fast charging options as well as vehicle 2 load function, which allows you to operate certain appliances from the EV&rsquo;s battery.&nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/h1&gt;', 2000000, 5, '1670513520_Screenshot2022-12-08223131.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'SUV', 'Sport-Utility Vehicle'),
(2, 'SEDAN', 'SEDAN'),
(3, 'Coupe', 'Coupe									\r\n								'),
(4, 'STATION WAGON', 'STATION WAGON'),
(5, 'MINIVAN', 'MINIVAN'),
(6, 'Pickup Truck (4WD)', 'Pickup Truck - For-Wheel Drive (4x4)');

-- --------------------------------------------------------

--
-- Table structure for table `engine_types`
--

CREATE TABLE `engine_types` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `engine_types`
--

INSERT INTO `engine_types` (`id`, `name`) VALUES
(1, 'Diesel'),
(2, 'Gasoline'),
(3, 'Electric Motor');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'CARi', 'adminya@gmail.comm', '02109091019', '1670510700_a3224124ee48cddde865ecff61c13fde.gif', '&lt;h1 style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot; style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;text-align: center; background: transparent; position: relative; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;text-align: center; background: transparent; position: relative; color: rgb(51, 51, 51); font-size: 26px;&quot;&gt;CARi&lt;/span&gt;&lt;/b&gt;&lt;/font&gt;&lt;/h1&gt;&lt;h4 style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot; style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;We are a car rental broker company that brings pre-negotiated deals to you, from leading suppliers at heavily discounted rates. Understanding customers and their car rental needs is our major priority, and we leave no stone unturned to help them find the right car for their vacation or business trip, Lets join us!&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `transmission_types`
--

CREATE TABLE `transmission_types` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transmission_types`
--

INSERT INTO `transmission_types` (`id`, `name`, `description`) VALUES
(1, 'Manual transmission', 'Manual transmission'),
(2, 'Automatic transmission', 'Automatic transmission'),
(3, 'Continuously variable transmission', 'Continuously variable transmission (CVT)\r\n'),
(4, 'Semi-automatic and dual-clutch transmissions', 'Semi-automatic and dual-clutch transmissions');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff, 3= subscriber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowed_cars`
--
ALTER TABLE `borrowed_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engine_types`
--
ALTER TABLE `engine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transmission_types`
--
ALTER TABLE `transmission_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `borrowed_cars`
--
ALTER TABLE `borrowed_cars`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `engine_types`
--
ALTER TABLE `engine_types`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transmission_types`
--
ALTER TABLE `transmission_types`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
