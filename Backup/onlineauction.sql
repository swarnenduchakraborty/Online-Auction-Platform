-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2020 at 12:21 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineauction`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `bidding_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_amount` float(10,2) NOT NULL,
  `bidding_date_time` datetime NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`bidding_id`, `customer_id`, `product_id`, `bidding_amount`, `bidding_date_time`, `note`, `status`) VALUES
(3213, 123213, 12123, 5550.00, '2020-01-16 03:08:08', 'rfewrf', ''),
(3214, 7, 128, 450.00, '2020-02-05 10:59:23', '', 'Active'),
(3215, 9, 128, 475.00, '2020-02-06 10:59:44', '', 'Active'),
(3216, 2, 129, 26.00, '2020-02-13 10:46:25', '', 'Active'),
(3217, 2, 129, 30.00, '2020-02-13 10:46:53', '', 'Active'),
(3218, 2, 128, 500.00, '2020-02-13 11:00:46', '', 'Active'),
(3219, 2, 128, 525.00, '2020-02-13 11:01:57', '', 'Active'),
(3220, 2, 129, 40.00, '2020-02-13 11:02:24', '', 'Active'),
(3221, 2, 143, 10.00, '2020-03-04 21:43:47', '', 'Active'),
(3222, 2, 143, 12.00, '2020-03-04 21:44:14', '', 'Active'),
(3223, 2, 143, 1.00, '2020-03-04 21:51:44', '', 'Active'),
(3224, 9, 143, 1.00, '2020-03-04 22:50:42', '', 'Active'),
(3225, 9, 143, 2.00, '2020-03-04 22:50:53', '', 'Active'),
(3226, 23, 148, 10.00, '2020-03-05 18:54:15', '', 'Active'),
(3227, 23, 148, 20.00, '2020-03-05 18:57:18', '', 'Active'),
(3228, 23, 148, 10.00, '2020-03-05 18:57:48', '', 'Active'),
(3229, 23, 148, 10.00, '2020-03-05 18:58:07', '', 'Active'),
(3230, 23, 148, 10.00, '2020-03-05 18:58:12', '', 'Active'),
(3231, 23, 148, 10.00, '2020-03-05 18:58:44', '', 'Active'),
(3232, 23, 148, 10.00, '2020-03-05 18:59:00', '', 'Active'),
(3233, 23, 148, 10.00, '2020-03-05 18:59:15', '', 'Active'),
(3234, 23, 148, 10.00, '2020-03-05 18:59:52', '', 'Active'),
(3235, 23, 148, 10.00, '2020-03-05 19:00:25', '', 'Active'),
(3236, 23, 148, 10.00, '2020-03-05 19:02:07', '', 'Active'),
(3237, 23, 148, 11.00, '2020-03-05 19:02:22', '', 'Active'),
(3238, 23, 148, 12.00, '2020-03-05 19:02:31', '', 'Active'),
(3239, 23, 148, 13.00, '2020-03-05 19:04:00', '', 'Active'),
(3240, 23, 148, 13.00, '2020-03-05 19:04:44', '', 'Active'),
(3241, 23, 148, 14.00, '2020-03-05 19:04:58', '', 'Active'),
(3242, 23, 148, 14.00, '2020-03-05 19:05:05', '', 'Active'),
(3243, 23, 148, 15.00, '2020-03-05 19:05:18', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billing_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_amount` float(10,2) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_type` varchar(50) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `expire_date` date NOT NULL,
  `cvv_number` varchar(5) NOT NULL,
  `card_holder` varchar(50) NOT NULL,
  `delivery_date` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billing_id`, `customer_id`, `product_id`, `purchase_date`, `purchase_amount`, `payment_type`, `card_type`, `card_number`, `expire_date`, `cvv_number`, `card_holder`, `delivery_date`, `note`, `status`) VALUES
(1326, 321, 231, '2020-01-11', 500.00, '12323', '3123', '545454545', '2020-01-13', '545', '5454545', '2020-01-20', '213213213', ''),
(1327, 0, 125, '2020-02-05', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '545', 'yjut', '0000-00-00', '', 'Active'),
(1328, 0, 126, '2020-02-05', 100.00, 'Sell', 'VISA', '1987654321234567', '2020-03-01', '543', 'Rajkiran', '0000-00-00', '', 'Active'),
(1329, 8, 0, '2020-02-05', 500.00, 'Deposit', 'Credit card', '1234567890123456', '2020-02-01', '564', 'Raj kiran', '0000-00-00', '', 'Active'),
(1330, 0, 127, '2020-02-05', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '433', 'Rajkiran', '0000-00-00', '', 'Active'),
(1331, 0, 128, '2020-02-05', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '237', 'Rajkiran', '0000-00-00', '', 'Active'),
(1332, 7, 0, '2020-02-05', 650.00, 'Deposit', 'Credit card', '9876543212346789', '2021-12-01', '237', 'karan', '0000-00-00', '', 'Active'),
(1333, 0, 129, '2020-02-06', 100.00, 'Sell', 'Debit Card', '7894561230123456', '2020-03-01', '433', 'Raj', '0000-00-00', '', 'Active'),
(1334, 9, 0, '2020-02-06', 300.00, 'Deposit', 'Debit Card', '1234567890123456', '2020-03-01', '453', 'Raj', '0000-00-00', '', 'Active'),
(1335, 2, 0, '2020-02-13', 650.00, 'Deposit', 'Credit card', '1234567891012345', '2021-01-01', '458', 'Raj kiran', '0000-00-00', '', 'Active'),
(1336, 0, 136, '2020-02-13', 100.00, 'Sell', 'Credit card', '1233213213213134', '2044-03-01', '443', 'da', '0000-00-00', '', 'Active'),
(1337, 9, 0, '2020-03-04', 250.00, 'Deposit', 'Debit Card', '1234567890123456', '2021-01-01', '548', 'Raj kiran', '0000-00-00', '', 'Active'),
(1338, 2, 0, '2020-03-04', 100.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1339, 0, 138, '2020-03-04', 100.00, 'Sell', 'Master Card', '1234567890123456', '2021-01-01', '456', 'raj kiran', '0000-00-00', '', 'Active'),
(1340, 2, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1341, 0, 140, '2020-03-04', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '489', 'Raj kiran', '0000-00-00', '', 'Active'),
(1342, 9, 141, '2020-03-04', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2022-01-01', '125', 'Raj kiran', '0000-00-00', '', 'Active'),
(1343, 0, 142, '2020-03-04', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '486', 'Raj kiran', '0000-00-00', '', 'Active'),
(1344, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1345, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1346, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1347, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1348, 23, 0, '2020-03-05', 650.00, 'Deposit', 'Debit Card', '1234567890123456', '2021-01-01', '159', 'Raj kiran', '0000-00-00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_icon`, `description`, `status`) VALUES
(16548, 'Mobiles', '363950331mobiles.jpg', 'Mobile Phone and Accessaries', 'Active'),
(16549, 'Laptops', '1293881421laptop.jpg', 'Laptops and Accessaries', 'Active'),
(16550, 'Camera', '155622865Camera.jpg', 'Camera and Accessaries', 'Active'),
(16551, 'Others', '1871695161', 'Other categories', 'Active'),
(16552, 'Watches', '5837watch.jpg', ' white day and date watch, which will never let you stay behind time.', 'Active'),
(16558, 'Coins', '5837watch.jpg', 'Coins', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `email_id`, `password`, `address`, `state`, `city`, `landmark`, `pincode`, `mobile_no`, `note`, `status`) VALUES
(2, 'iiii', 'peter@gmail.com', '123456123456', 'dfdf', 'Karnataka', 'efdefd', 'edfefd', '111111', '7894561230', '', 'Active'),
(7, 'Aravinda MV', 'rajesh@gmail.com', '123456789', '3rd floor, city light building', 'Karnataka', 'Mangalroe', 'India', '575003', '8217727968', '', 'Active'),
(8, '11', 'buvan@gmail.com', 'q1w2e3r4', '', '', '', '', '', '+919874563210', '', 'Active'),
(9, 'Hudson A', 'hudson@gmail.com', 'abcdefgabcdefg', '3rd floor, city light', 'Karnataka', 'Mangalore', 'Near KMC Hospital', '575002', '7894561230', '', 'Active'),
(22, 'Aravinda', 'mvaravinda@gmail.com', '123456789', '', '', '', '', '', '+919874563210', '', 'Active'),
(23, 'Rajpal', 'rajpal@gmail.com', '123456789', '', '', '', '', '', '+919986055414', '', 'Active'),
(24, 'Manish', 'manish@gmail.com', '123456789', '3rd floor, city light building', 'Karnataka', 'Mangalroe', 'India', '575003', '8217727968', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `login_id`, `password`, `employee_type`, `status`) VALUES
(1, 'Administrator', 'Admin', 'admin', 'Admin', 'Active'),
(5, 'Employee', 'employee', 'employee', 'Employee', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `message_date_time` datetime NOT NULL,
  `product_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_id`, `receiver_id`, `message_date_time`, `product_id`, `message`, `status`) VALUES
(23, 23, 9, '2020-03-05 14:58:45', 141, 'Hello\n', 'Customer'),
(24, 23, 9, '2020-03-05 19:31:48', 141, 'Hello\n', 'Seller'),
(25, 24, 9, '2020-03-05 15:02:38', 141, 'Hello hudson\n', 'Customer'),
(26, 24, 9, '2020-03-05 19:32:55', 141, 'Hello manish\n', 'Seller'),
(27, 24, 9, '2020-03-05 15:13:07', 141, 'Hello\n', 'Customer'),
(28, 24, 9, '2020-03-05 15:14:01', 141, 'Hi\n', 'Customer'),
(29, 24, 9, '2020-03-05 15:14:06', 141, 'Hello\n', 'Customer'),
(30, 23, 9, '2020-03-05 19:44:20', 141, 'Hello\n', 'Seller'),
(31, 24, 9, '2020-03-05 15:17:35', 141, 'Hello\n', 'Customer'),
(32, 24, 9, '2020-03-05 19:47:48', 141, 'Test message\n', 'Seller'),
(33, 24, 9, '2020-03-05 15:19:18', 141, 'Hello\n', 'Customer'),
(34, 24, 9, '2020-03-05 15:19:31', 141, 'aa\n', 'Customer'),
(35, 24, 9, '2020-03-05 15:21:01', 141, 'welcome\n', 'Customer'),
(36, 24, 9, '2020-03-05 19:51:15', 141, 'yesll\n', 'Seller');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_id` int(10) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `payment_type`, `product_id`, `bidding_id`, `paid_amount`, `paid_date`, `status`) VALUES
(213, 123, 'bhhb', 213, 3123, 213.00, '2020-01-01', 'Active'),
(214, 7, 'Bid', 128, 3214, 4.50, '2020-02-05', 'Active'),
(215, 9, 'Bid', 128, 3215, 4.75, '2020-02-06', 'Active'),
(216, 2, 'Bid', 129, 3216, 0.26, '2020-02-13', 'Active'),
(217, 2, 'Bid', 129, 3217, 0.30, '2020-02-13', 'Active'),
(218, 2, 'Bid', 128, 3218, 5.00, '2020-02-13', 'Active'),
(219, 2, 'Bid', 128, 3219, 5.25, '2020-02-13', 'Active'),
(220, 2, 'Bid', 129, 3220, 0.40, '2020-02-13', 'Active'),
(221, 2, 'Bid', 143, 3221, 0.10, '2020-03-04', 'Active'),
(222, 2, 'Bid', 143, 3222, 0.12, '2020-03-04', 'Active'),
(223, 2, 'Bid', 143, 3223, 0.01, '2020-03-04', 'Active'),
(224, 9, 'Bid', 143, 3224, 0.01, '2020-03-04', 'Active'),
(225, 9, 'Bid', 143, 3225, 0.02, '2020-03-04', 'Active'),
(226, 23, 'Bid', 148, 3226, 0.10, '2020-03-05', 'Active'),
(227, 23, 'Bid', 148, 3227, 5.00, '2020-03-05', 'Active'),
(228, 23, 'Bid', 148, 3228, 15.00, '2020-03-05', 'Active'),
(229, 23, 'Bid', 148, 3229, 15.00, '2020-03-05', 'Active'),
(230, 23, 'Bid', 148, 3230, 15.00, '2020-03-05', 'Active'),
(231, 23, 'Bid', 148, 3231, 15.00, '2020-03-05', 'Active'),
(232, 23, 'Bid', 148, 3232, 15.00, '2020-03-05', 'Active'),
(233, 23, 'Bid', 148, 3233, 15.00, '2020-03-05', 'Active'),
(234, 23, 'Bid', 148, 3234, 15.00, '2020-03-05', 'Active'),
(235, 23, 'Bid', 148, 3235, 15.00, '2020-03-05', 'Active'),
(236, 23, 'Bid', 148, 3236, 15.00, '2020-03-05', 'Active'),
(237, 23, 'Bid', 148, 3237, 16.00, '2020-03-05', 'Active'),
(238, 23, 'Bid', 148, 3238, 17.00, '2020-03-05', 'Active'),
(239, 23, 'Bid', 148, 3239, 18.00, '2020-03-05', 'Active'),
(240, 23, 'Bid', 148, 3240, 18.00, '2020-03-05', 'Active'),
(241, 23, 'Bid', 148, 3241, 19.00, '2020-03-05', 'Active'),
(242, 23, 'Bid', 148, 3242, 19.00, '2020-03-05', 'Active'),
(243, 23, 'Bid', 148, 3243, 20.00, '2020-03-05', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_description` text NOT NULL,
  `starting_bid` float(10,2) NOT NULL,
  `ending_bid` float(10,2) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `product_cost` float(10,2) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_warranty` varchar(100) NOT NULL,
  `product_delivery` text NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `customer_id`, `product_name`, `category_id`, `product_description`, `starting_bid`, `ending_bid`, `start_date_time`, `end_date_time`, `product_cost`, `product_image`, `product_warranty`, `product_delivery`, `company_name`, `status`) VALUES
(126, 7, 'Xiaomi Redmi Note 8', 16548, 'Xiaomi Redmi Note 8 is a mid-range that can impress the buyers with its stylish design. The device offers no bezels except for a thin chin. It offers an amazing viewing experience that knows no boundary. It also delivers stellar performance with the strong internal hardware along with long-hour battery backup coupled with Fast Charging technology.', 100.00, 0.00, '2020-02-05 10:18:00', '2020-02-08 05:30:00', 10000.00, '2020024625xiaomi-redmi-note-8.jpg', '1', 'Excellent camerasGreat performanceGood battery backupFast Charging suppor', 'Xiami', 'Active'),
(127, 8, 'Lenovo Ideapad S145 8th Gen', 16549, 'Operating System: Pre-loaded Windows 10 Home with lifetime validity and Microsoft Office 2019\r\nDisplay: 15.6-inch screen with (1920X1080) full HD display | Anti Glare technology\r\nMemory and Storage: 4 GB RAM | Storage 256 GB SSD\r\nDesign and battery: Thin and light Laptop| 180 Degree Hinge| Laptop weight 1.85kg | Battery Life: Upto 5.5 hours as per MobileMark\r\nThis genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufacturing defects and not covering physical damage. For more details, see Warranty section\r\nInside the box: Laptop, Charger, User Manual | With Microsoft Office 2019\r\nPorts and Optical Drive: 1 HDMI, 2 USB 3.0, USB 2.0 |4-in-1 card reader (SD,SDHC,SDXC,MMC)|Combo audio and microphone jack |No Optical Drive', 1.00, 1.00, '2020-02-05 10:51:46', '2020-02-07 05:30:00', 10000.00, '1160091601laptop.jpg', '1', 'Delivery in 7 - 8 days', 'Lenovo', 'Active'),
(128, 8, 'Canon EOS R Mirrorless Digital Camera', 16550, 'The first step in Canon\'s mirrorless evolution, the EOS R pairs a redeveloped lens mount and updated full-frame image sensor for a unique and sophisticated multimedia camera system. Revolving around the new RF lens mount, the EOS R is poised to be the means from which to make the most of a new series of lenses and optical technologies.', 1.00, 525.00, '2020-02-05 10:55:36', '2021-02-05 05:30:00', 50000.00, '1249798823Camera.jpg', 'Mangalore', 'test', 'aishu', 'Active'),
(129, 9, 'Redmi Note 7S', 16548, 'With its 13 MP AI front camera, the Redmi Note 7S takes your selfie game to the next level, allowing you to click gorgeous and Instagram-worthy pictures effortlessly.', 25.00, 40.00, '2020-02-06 10:53:42', '2020-02-29 05:30:00', 8999.00, '19660redmi note7.jpeg', '1 year', '3 Days', 'Redmi', 'Active'),
(138, 2, 'acerlaptoplapyto', 16549, 'this is lap', 100.00, 100.00, '2020-03-04 10:05:05', '2020-03-04 05:30:00', 25000.00, '143159a749921556e059f5680ffc7ea8f145.jpeg', '', '3-4 Days', 'acer', 'Active'),
(139, 2, 'aaaaaaaaaaaaaaaaaaaa', 16549, 'asasasasas', 100.00, 100.00, '2020-03-04 10:18:21', '2020-03-04 05:30:00', 25000.00, '22368cia-new-poster-759.jpeg', '', '4-5 days', 'lpo', 'Pending'),
(140, 9, 'OnePlus', 16548, '48+12+16MP triple rear camera with telephoto lens + ultrawide angle lens | 16MP front camera with 4K video capture @ 30/60 FPS, ultrashot, nightscape, portrait, pro mode, panorama, HDR, AI scene detection, RAW image', 1.00, 1.00, '2020-03-04 20:34:00', '2020-03-05 20:34:00', 35000.00, '2969771ncRs6HzyL._SL1500_.jpg', '', '4-5 days', 'One Plus', 'Active'),
(141, 9, 'OnePlus T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 1.00, 1.00, '2020-03-04 20:42:00', '2020-03-05 20:42:00', 34999.00, '81871ncRs6HzyL._SL1500_.jpg', '', '5-7 days', 'OnePlus', 'Active'),
(142, 0, 'OnePlus 7T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 0.00, 0.00, '2020-03-04 21:15:00', '2020-03-05 21:15:00', 35000.00, '866771ncRs6HzyL._SL1500_.jpg', '', '4-5 days', 'Oneplus', 'Active'),
(143, 0, 'OnePlus 7T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 0.00, 2.00, '2020-03-04 21:18:00', '2020-03-08 21:18:00', 34999.00, '2162471ncRs6HzyL._SL1500_.jpg', '', '5-7 days', 'OnePlus', 'Active'),
(148, 0, 'Canon EOS 5D', 16550, 'The Canon EOS 5D Mark IV camera is made for people who take photography seriously. With features, such as the 30.4 MP Full-frame CMOS Sensor, Dual Pixel CMOS AF and 4K Movie Shooting, this camera not only delivers beautiful stills, but it also lets you take incredible videos.', 0.00, 15.00, '2020-03-05 18:18:00', '2020-03-15 18:18:00', 35000.00, '18563canon.jpeg', '', '4-5 days', 'Canon', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `winner_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `winners_image` varchar(100) NOT NULL,
  `winning_bid` float(10,2) NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`winner_id`, `product_id`, `customer_id`, `winners_image`, `winning_bid`, `end_date`, `status`) VALUES
(3, 129, 2, '', 40.00, '2020-02-13', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`bidding_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`winner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `bidding_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3244;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billing_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1349;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16559;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `winner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
