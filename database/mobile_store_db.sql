-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 04:15 AM
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
-- Database: `mobile_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `status`, `date_created`) VALUES
(1, 'Apple', 'Apple Company', 1, '2021-08-30 10:33:53'),
(2, 'Huaweii', 'Huaweii Company', 1, '2021-08-30 10:34:12'),
(3, 'Samsung', 'Samsung Company', 1, '2021-08-30 10:34:22'),
(4, 'Vivo', 'Vivo Company', 1, '2021-08-30 10:34:38'),
(5, 'motorola', 'Motorola Company', 1, '2021-08-30 10:35:00'),
(6, 'Xiaomi', 'Xiaomi Company', 1, '2021-08-30 10:35:26'),
(7, 'ONE PLUS', 'one plus Company', 1, '2021-08-30 10:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_id`, `inventory_id`, `price`, `quantity`, `date_created`) VALUES
(5, 2, 1, 74990, 1, '2023-07-02 12:58:42'),
(15, 4, 4, 23000, 2, '2023-10-15 12:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Smart Phone', 'Smart Phone Products', 1, '2021-08-30 10:52:25'),
(2, 'Accessories', 'Phone Accessories', 1, '2021-08-30 10:52:49'),
(3, 'Mobile Hardware', 'Mobile Hardware products', 1, '2021-08-30 10:53:31'),
(4, 'External Storage', 'External Storage Products', 1, '2021-08-30 10:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'Claire', 'Blake', 'Female', '09123456789', 'cblake@gmail.com', 'cd74fae0a3adf459f73bbf187607ccea', 'Sample Address', '2021-08-30 15:32:20'),
(2, 'ajay', 'chauhan', 'Male', '9812345678', 'ajay@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'chitwan\r\nnawalparasi', '2023-06-28 16:47:32'),
(3, 'bijay', 'chauhan', 'Male', '98765433343', 'bijay@gmail.com', '5885a515eb6850bc56b8a1f5f8f1607c', '', '2023-07-02 07:43:29'),
(4, 'raki', ' bhujel', 'Male', '9812345678', 'raki@gmail.com', '20cda8908d9f981e8331e24686b6118b', 'bharatpur 02 kshetrapur', '2023-10-13 10:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(1, 1, 15, 74990, '2021-08-30 13:24:01', NULL),
(2, 2, 20, 69990, '2021-08-30 13:27:26', NULL),
(3, 3, 25, 350, '2021-08-30 15:42:20', NULL),
(4, 6, 10, 23000, '2023-10-15 12:45:15', NULL),
(5, 5, 10, 210000, '2023-10-15 14:03:29', NULL),
(6, 7, 15, 20000, '2023-10-16 11:02:07', NULL),
(7, 8, 10, 25000, '2023-10-16 11:38:05', NULL),
(8, 10, 10, 33000, '2023-10-16 11:40:00', NULL),
(9, 9, 12, 24000, '2023-10-16 11:41:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(2, 2, 'chitwan\r\nnawalparasi', 'cod', 1, 224970, 3, 1, '2023-06-28 16:48:17', '2023-10-14 17:13:41'),
(3, 3, '', 'cod', 1, 69990, 0, 0, '2023-07-05 17:47:06', NULL),
(5, 3, '', 'cod', 1, 69990, 3, 1, '2023-07-05 19:19:04', '2023-10-14 17:13:34'),
(6, 4, 'bharatpur 02 kshetrapur', 'cod', 1, 75340, 3, 1, '2023-10-14 17:12:57', '2023-10-14 17:14:07'),
(7, 4, 'bharatpur 02 kshetrapur', 'cod', 1, 5600, 1, 0, '2023-10-14 17:16:40', '2023-10-14 17:17:39'),
(8, 4, 'bharatpur 02 kshetrapur', 'cod', 1, 74990, 1, 0, '2023-10-14 17:19:30', '2023-10-15 14:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(3, 2, 1, 3, 74990, 224970),
(4, 3, 2, 1, 69990, 69990),
(6, 5, 2, 1, 69990, 69990),
(7, 6, 3, 1, 350, 350),
(8, 6, 1, 1, 74990, 74990),
(9, 7, 3, 16, 350, 5600),
(10, 8, 1, 1, 74990, 74990);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `specs` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `sub_category_id`, `name`, `specs`, `status`, `date_created`) VALUES
(1, 1, 1, 0, 'Apple iPhone 14, 128GB, (Product) Red - Unlocked (Renewed Premium)', '<ul class=\\\"techspecs-list\\\" role=\\\"list\\\" style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\\\"><li role=\\\"listitem\\\" style=\\\"margin: 0px; padding: 0px;\\\"><div class=\\\"a-row a-spacing-small po-brand\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Brand:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Apple</span></div><div class=\\\"a-row a-spacing-small po-model_name\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Model Name:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">iPhone 14</span></div><div class=\\\"a-row a-spacing-small po-wireless_provider\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless Carrier:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Unlocked for All Carriers</span></div><div class=\\\"a-row a-spacing-small po-operating_system\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Operating System:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">iOS 16</span></div><div class=\\\"a-row a-spacing-small po-cellular_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Cellular Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">5G, 4G LTE</span></div><div class=\\\"a-row a-spacing-small po-memory_storage_capacity\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Memory Storage Capacity:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">128 GB</span></div><div class=\\\"a-row a-spacing-small po-connectivity_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Connectivity Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Wi-Fi</span></div><div class=\\\"a-row a-spacing-small po-color\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Color:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">(Product) Red</span></div><div class=\\\"a-row a-spacing-small po-display.size\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Screen Size:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">6.1 Inches</span></div><div class=\\\"a-row a-spacing-small po-wireless_network_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless network technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">GSM, Wi-Fi, CDMA, LTE</span></div></li></ul>', 1, '2021-08-30 12:19:22'),
(2, 3, 1, 0, 'SAMSUNG Galaxy S21 Ultra G998U 5G | Fully Unlocked Android Smartphone | US Version | Pro-Grade Camera, 8K Video, 108MP High Resolution | 128GB - Phantom Black (Renewed)', '<p></p><p></p><div class=\\\"a-row a-spacing-small po-brand\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Brand:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">SAMSUNG</span></div><div class=\\\"a-row a-spacing-small po-model_name\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Model Name:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">S21 Ultra</span></div><div class=\\\"a-row a-spacing-small po-wireless_provider\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless Carrier:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Unlocked</span></div><div class=\\\"a-row a-spacing-small po-operating_system\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Operating System:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Android 11.0</span></div><div class=\\\"a-row a-spacing-small po-cellular_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Cellular Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">5G</span></div><div class=\\\"a-row a-spacing-small po-memory_storage_capacity\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Memory Storage Capacity:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">128 GB</span></div><div class=\\\"a-row a-spacing-small po-connectivity_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Connectivity Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Bluetooth, Wi-Fi, USB, NFC</span></div><div class=\\\"a-row a-spacing-small po-color\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Color:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Phantom Black</span></div><div class=\\\"a-row a-spacing-small po-display.size\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Screen Size:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">6.8 Inches</span></div><p style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; vertical-align: top; line-height: 1.25; text-align: center;\\\"><span class=\\\"c_model_unit-type1\\\" style=\\\"text-align: left; margin: 0px; padding: 0px; vertical-align: top; display: block; line-height: 1.3;\\\"></span></p><div class=\\\"a-row a-spacing-small po-wireless_network_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless network technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">GSM, Wi-Fi, CDMA, LTE</span></div><dl style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; vertical-align: top; line-height: 1.25; text-align: center;\\\"><dt class=\\\"c_model_unit-type3\\\" style=\\\"text-align: left; margin: 40px 0px 0px; padding: 0px; vertical-align: top; line-height: 1.25;\\\"></dt></dl>', 1, '2021-08-30 13:15:11'),
(3, 1, 2, 2, 'Mkeke for iPhone 14 Pro Max Case Clear, Not Yellowing Phone Case for iPhone 14 Pro Max Clear with Slim Cover & Shockproof Bumper 2022', '<div class=\\\"a-row a-spacing-small po-brand\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: \\\"Amazon Ember\\\", Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Brand:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Mkeke</span></div><div class=\\\"a-row a-spacing-small po-color\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: \\\"Amazon Ember\\\", Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Color:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">A-Clear</span></div><div class=\\\"a-row a-spacing-small po-form_factor\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: \\\"Amazon Ember\\\", Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Form Factor:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Basic Case</span></div><div class=\\\"a-row a-spacing-small po-compatible_phone_models\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: \\\"Amazon Ember\\\", Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Compatible Phone Models:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">iPhone 14 Pro Max</span></div><div class=\\\"a-row a-spacing-small po-material\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: \\\"Amazon Ember\\\", Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Material:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Polycarbonate, Acrylic</span></div>', 1, '2021-08-30 15:42:08'),
(5, 1, 1, 0, 'Apple iPhone 15 Plus (128 GB) - Pink | [Locked] | Boost Infinite plan required starting at $60/mo. | Unlimited Wireless | No trade-in needed to start | Get the latest iPhone every year', '<h1 class=\\\"a-size-base-plus a-text-bold\\\" style=\\\"padding: 0px 0px 4px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-rendering: optimizelegibility; color: rgb(15, 17, 17); font-family: \\\" amazon=\\\"\\\" ember\\\",=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-weight:=\\\"\\\" 700=\\\"\\\" !important;=\\\"\\\" font-size:=\\\"\\\" 16px=\\\"\\\" line-height:=\\\"\\\" 24px=\\\"\\\" !important;\\\"=\\\"\\\"><div class=\\\"a-row a-spacing-small po-brand\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Brand:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Boost Infinite</span></div><div class=\\\"a-row a-spacing-small po-model_name\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Model Name:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">iPhone 15 Plus</span></div><div class=\\\"a-row a-spacing-small po-wireless_provider\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless Carrier:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Boost Infinite</span></div><div class=\\\"a-row a-spacing-small po-operating_system\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Operating System:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">iOS</span></div><div class=\\\"a-row a-spacing-small po-cellular_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Cellular Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">5G</span></div><div class=\\\"a-row a-spacing-small po-memory_storage_capacity\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Memory Storage Capacity:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">128 GB</span></div><div class=\\\"a-row a-spacing-small po-connectivity_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Connectivity Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Bluetooth, Wi-Fi, USB</span></div><div class=\\\"a-row a-spacing-small po-color\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Color:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Pink</span></div><div class=\\\"a-row a-spacing-small po-display.size\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Screen Size:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">6.7 Inches</span></div><div class=\\\"a-row a-spacing-small po-wireless_network_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 581.125px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless network technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Wi-Fi</span></div></h1>', 1, '2023-10-14 17:07:55'),
(6, 4, 1, 0, 'Vivo Y16 (12GB) - Pink | [Locked] | Boost Infinite plan required starting at $60/mo. | Unlimited Wireless | No trade-in needed to start | Get the latest iPhone every year', '<p>Super Retina XDR display</p><p>6.7-inch (diagonal) all-screen OLED display</p><p>2778-by-1284-pixel resolution at 458 ppi</p><p>The Vivo Y16 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.68 inches diagonally (actual viewable area is less).</p><p><br></p>', 1, '2023-10-15 12:44:00'),
(7, 5, 1, 0, 'Motorola Moto G Stylus 5G | 2021 | 2-Day Battery | Unlocked | Made for US 4/128GB | 48MP Camera | Cosmic Emerald', '<div aria-expanded=\\\"true\\\" class=\\\"a-expander-content a-expander-partial-collapse-content a-expander-content-expanded\\\" bis_skin_checked=\\\"1\\\" style=\\\"overflow: hidden; position: relative; color: rgb(15, 17, 17); font-family: \\\"Amazon Ember\\\", Arial, sans-serif; padding-bottom: 20px;\\\"><div class=\\\"a-section a-spacing-small a-spacing-top-small\\\" bis_skin_checked=\\\"1\\\" style=\\\"margin-bottom: 0px; margin-top: 8px !important;\\\"><div class=\\\"a-row a-spacing-small po-brand\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Brand:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Motorola</span></div><div class=\\\"a-row a-spacing-small po-model_name\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Model Name:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Moto G Stylus 5G - 128GB</span></div><div class=\\\"a-row a-spacing-small po-wireless_provider\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless Carrier:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Unlocked for All Carriers</span></div><div class=\\\"a-row a-spacing-small po-operating_system\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Operating System:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Android 11.0</span></div><div class=\\\"a-row a-spacing-small po-cellular_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Cellular Technology:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">5G</span></div><div class=\\\"a-row a-spacing-small po-memory_storage_capacity\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Memory Storage Capacity:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">4 GB</span></div><div class=\\\"a-row a-spacing-small po-connectivity_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Connectivity Technology:</span> <span class=\\\"a-size-base\\\" style=\\\"line-height: 20px !important;\\\"><span class=\\\"a-truncate po-truncate-attribute\\\" data-a-word-break=\\\"normal\\\" data-a-truncate-name=\\\"po-attribute-truncate-6\\\" data-a-max-rows=\\\"3\\\" data-a-overflow-marker=\\\"…\\\" data-a-recalculate=\\\"false\\\" data-a-updated=\\\"true\\\" style=\\\"display: inline-block; position: relative; width: 570.328px; overflow: hidden; word-break: normal; max-height: 3.9em; line-height: 1.3em !important;\\\"><span class=\\\"a-truncate-full a-offscreen\\\" style=\\\"display: inline-block; width: 570.328px; opacity: 0; position: absolute !important; left: 0px !important; bottom: -1px !important; z-index: -1 !important;\\\">Networks + Bands 5G: 2/5/25/26/41/66/71/77/78 4G: 1/2/3/4/5/7/8/12/13/14/17/18/19/20/25/26/29/30/38/39/40/41/48/66/71 3G: 1/2/4/5/8 Bluetooth Technology Bluetooth 5.0 Wi-Fi Wi-Fi 802.11 a/b/g/n/ac | 2.4GHz & 5GHz | Wi-Fi hotspot Location Services GPS (L1), A-GPS, LTEEP, SUPL, GLONASS, Galileo, Beidou SIM Card Single SIM (1 Nano SIM + 1 microSD)</span><span class=\\\"a-truncate-cut\\\" aria-hidden=\\\"true\\\" style=\\\"display: inline-block; width: 570.328px; word-break: break-word; height: 3.9em;\\\">Networks + Bands 5G: 2/5/25/26/41/66/71/77/78 4G: 1/2/3/4/5/7/8/12/13/14/17/18/19/20/25/26/29/30/38/39/40/41/48/66/71 3G: 1/2/4/5/8 Bluetooth Technology Bluetooth 5.0 Wi-Fi Wi-Fi 802.11 a/b/g/n/ac | 2.4GHz…</span></span> </span><span class=\\\"a-declarative\\\" data-action=\\\"a-modal\\\" data-csa-c-type=\\\"widget\\\" data-csa-c-func-deps=\\\"aui-da-a-modal\\\" data-a-modal=\\\"{\\\"max-height\\\":\\\"400\\\",\\\"width\\\":\\\"800\\\",\\\"header\\\":\\\"Connectivity Technology\\\",\\\"inlineContent\\\":\\\"Networks + Bands 5G: 2/5/25/26/41/66/71/77/78 4G: 1/2/3/4/5/7/8/12/13/14/17/18/19/20/25/26/29/30/38/39/40/41/48/66/71 3G: 1/2/4/5/8 Bluetooth Technology Bluetooth 5.0 Wi-Fi Wi-Fi 802.11 a/b/g/n/ac | 2.4GHz & 5GHz | Wi-Fi hotspot Location Services GPS (L1), A-GPS, LTEEP, SUPL, GLONASS, Galileo, Beidou SIM Card Single SIM (1 Nano SIM + 1 microSD)\\\"}\\\" id=\\\"po-attribute-see-more-id-6\\\" data-csa-c-id=\\\"lajvmz-yp5os4-qs0omc-vedwrs\\\"><a role=\\\"button\\\" class=\\\"a-popover-trigger a-declarative\\\" style=\\\"color: rgb(0, 113, 133);\\\">See more<i class=\\\"a-icon a-icon-popover\\\" style=\\\"background-image: url(\\\"https://m.media-amazon.com/images/S/sash/McBZv0ZvnbehkIx.png\\\"); background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: text-top; margin: 5px 0px 0px 0.385em; width: 7px; height: 5px; background-position: -90px -5px; opacity: 0.6;\\\"></i></a></span></div><div class=\\\"a-row a-spacing-small po-color\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Color:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Cosmic Emerald</span></div><div class=\\\"a-row a-spacing-small po-display.size\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Screen Size:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">6.8 Inches</span></div><div class=\\\"a-row a-spacing-small po-wireless_network_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 570.328px; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless network technology:</span> <span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">GSM</span></div></div></div><div id=\\\"poToggleButton\\\" class=\\\"a-expander-header a-expander-partial-collapse-header\\\" bis_skin_checked=\\\"1\\\" style=\\\"position: absolute; bottom: 0px; width: 570.328px; outline: 0px; color: rgb(15, 17, 17); font-family: \\\"Amazon Ember\\\", Arial, sans-serif; opacity: 1;\\\"><a data-csa-c-func-deps=\\\"aui-da-a-expander-toggle\\\" data-csa-c-type=\\\"widget\\\" data-csa-interaction-events=\\\"click\\\" aria-expanded=\\\"true\\\" role=\\\"button\\\" data-action=\\\"a-expander-toggle\\\" class=\\\"a-declarative\\\" data-a-expander-toggle=\\\"{\\\"allowLinkDefault\\\":true, \\\"expand_prompt\\\":\\\"See more\\\", \\\"collapse_prompt\\\":\\\"See less\\\"}\\\" data-csa-c-id=\\\"agpysq-ncfwu9-aw72aa-flmu1k\\\" style=\\\"color: rgb(0, 113, 133);\\\"><i class=\\\"a-icon a-icon-extender-collapse\\\" style=\\\"background-image: none; background-size: 400px 900px; background-repeat: no-repeat; display: inline-block; vertical-align: baseline; position: relative; margin-right: 0.385em; width: 7px; height: 7px; background-position: -94px -293px; border-style: solid; border-color: rgb(15, 17, 17); border-image: initial; border-width: 0px 2px 2px 0px; padding: 3px; opacity: 1; transform: rotate(-135deg); margin-top: -1px; margin-left: 2px;\\\"></i></a></div>', 1, '2023-10-16 10:59:52'),
(8, 2, 1, 0, 'Huawei Nova 5T YAL-L21 128GB 6GB RAM International Version - Crush Blue', '<div class=\\\"a-row a-spacing-small po-brand\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Brand:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">HUAWEI</span></div><div class=\\\"a-row a-spacing-small po-model_name\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Model Name:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Nova 5T</span></div><div class=\\\"a-row a-spacing-small po-wireless_provider\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless Carrier:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">AT&amp;T</span></div><div class=\\\"a-row a-spacing-small po-operating_system\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Operating System:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Android 9.0</span></div><div class=\\\"a-row a-spacing-small po-cellular_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Cellular Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">4G</span></div><div class=\\\"a-row a-spacing-small po-memory_storage_capacity\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Memory Storage Capacity:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">128 GB</span></div><div class=\\\"a-row a-spacing-small po-connectivity_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Connectivity Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Wi-Fi</span></div><div class=\\\"a-row a-spacing-small po-color\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Color:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Blue</span></div><div class=\\\"a-row a-spacing-small po-display.size\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Screen Size:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">6.3 Inches</span></div><div class=\\\"a-row a-spacing-small po-wireless_network_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless network technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">GSM, LTE</span></div>', 1, '2023-10-16 11:17:56'),
(9, 2, 1, 0, 'Huawei P40 Lite Dual 4G JNY-LX1 128GB 6GB RAM International Version - Sakura Pink', '<div class=\\\"a-row a-spacing-small po-brand\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Brand:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">HUAWEI</span></div><div class=\\\"a-row a-spacing-small po-model_name\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Model Name:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Huawei P40 Lite</span></div><div class=\\\"a-row a-spacing-small po-wireless_provider\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless Carrier:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Deutsche Telekom</span></div><div class=\\\"a-row a-spacing-small po-operating_system\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Operating System:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Android 10.0</span></div><div class=\\\"a-row a-spacing-small po-cellular_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Cellular Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">LTE</span></div><div class=\\\"a-row a-spacing-small po-memory_storage_capacity\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Memory Storage Capacity:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">128 GB</span></div><div class=\\\"a-row a-spacing-small po-connectivity_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Connectivity Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Wi-Fi</span></div><div class=\\\"a-row a-spacing-small po-color\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Color:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Sakura Pink</span></div><div class=\\\"a-row a-spacing-small po-display.size\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Screen Size:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">6.4 Inches</span></div><div class=\\\"a-row a-spacing-small po-wireless_network_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 432.469px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless network technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">GSM, CDMA, LTE</span></div>', 1, '2023-10-16 11:20:00'),
(10, 7, 1, 0, 'OnePlus 9 Winter Mist, LE2117 5G T-Mobile Unlocked, 8GB RAM+128GB Storage (Renewed)', '<div class=\\\"a-row a-spacing-small po-brand\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Brand:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">OnePlus</span></div><div class=\\\"a-row a-spacing-small po-model_name\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Model Name:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">OnePlus 9</span></div><div class=\\\"a-row a-spacing-small po-wireless_provider\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless Carrier:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">T-Mobile</span></div><div class=\\\"a-row a-spacing-small po-operating_system\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Operating System:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Android 11.0</span></div><div class=\\\"a-row a-spacing-small po-cellular_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Cellular Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">5G</span></div><div class=\\\"a-row a-spacing-small po-memory_storage_capacity\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Memory Storage Capacity:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">8 GB</span></div><div class=\\\"a-row a-spacing-small po-connectivity_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Connectivity Technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Bluetooth</span></div><div class=\\\"a-row a-spacing-small po-color\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Color:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">Winter Mist (Unlocked)</span></div><div class=\\\"a-row a-spacing-small po-display.size\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Screen Size:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">116.55 Inches</span></div><div class=\\\"a-row a-spacing-small po-wireless_network_technology\\\" bis_skin_checked=\\\"1\\\" style=\\\"width: 544.062px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 8px !important;\\\"><span class=\\\"a-size-base a-text-bold\\\" style=\\\"font-weight: 700 !important; line-height: 20px !important;\\\">Wireless network technology:</span>&nbsp;<span class=\\\"a-size-base po-break-word\\\" style=\\\"word-break: break-word; line-height: 20px !important;\\\">GSM</span></div>', 1, '2023-10-16 11:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(2, 2, 224970, '2023-06-28 16:48:17'),
(3, 3, 69990, '2023-07-05 17:47:06'),
(5, 5, 69990, '2023-07-05 19:19:04'),
(6, 6, 75340, '2023-10-14 17:12:57'),
(7, 7, 5600, '2023-10-14 17:16:41'),
(8, 8, 74990, '2023-10-14 17:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(1, 3, 'Batteries', 'Mobile Batteries', 1, '2021-08-30 11:28:40'),
(2, 2, 'Phone Case Cover', 'Mobile Phones Cases', 1, '2021-08-30 11:29:15'),
(3, 4, 'Micro SD Card', 'Micro SD Cards', 1, '2021-08-30 11:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Mobile Store Management System'),
(6, 'short_name', 'MSMS'),
(11, 'logo', 'uploads/1630289100_mobile.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1630289280_wallpaper.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
