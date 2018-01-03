-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2017 at 04:42 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(32) NOT NULL,
  `admin_email` varchar(60) NOT NULL,
  `admin_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Farhan Tanvir Utshaw', 'utshaw105@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `appliances`
--

CREATE TABLE `appliances` (
  `sub_category` varchar(32) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_model` varchar(32) DEFAULT NULL,
  `shipping_weight` double DEFAULT NULL,
  `units_in_stock` int(11) DEFAULT NULL,
  `image_1` varchar(64) DEFAULT NULL,
  `image_2` varchar(64) DEFAULT NULL,
  `image_3` varchar(64) DEFAULT NULL,
  `image_4` varchar(64) DEFAULT NULL,
  `item_sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appliances`
--

INSERT INTO `appliances` (`sub_category`, `id`, `name`, `description`, `price`, `product_model`, `shipping_weight`, `units_in_stock`, `image_1`, `image_2`, `image_3`, `image_4`, `item_sold`) VALUES
('washing machine', 1, 'Lg Washing Machine FH0B8NDL22', 'Capacity: 6 KG\r\nType: Auto\r\n6 Motion Direct Drive\r\nInverter Direct Drive Motor\r\nEasy Installment Payment Facilities', 54900, 'FH0B8NDL22', 50, 13, 'lg-wash-machine-FH0B8NDL22-front.jpg', 'lg-wash-machine-FH0B8NDL22-angle.jpg', 'lg-wash-machine-FH0B8NDL22-open.jpg', 'lg-wash-machine-FH0B8NDL22-angle-reverse.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_ID` int(11) NOT NULL,
  `Category_Name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_ID`, `Category_Name`) VALUES
(101, 'Appliances'),
(102, 'Electronics'),
(103, 'Clothes'),
(104, 'Office Supplies'),
(105, 'Sports Equipments');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `chat_content` varchar(1000) NOT NULL,
  `chat_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `sub_category` varchar(32) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_model` varchar(32) DEFAULT NULL,
  `shipping_weight` varchar(10) DEFAULT NULL,
  `units_in_stock` int(11) DEFAULT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `image_3` varchar(255) DEFAULT NULL,
  `image_4` varchar(255) DEFAULT NULL,
  `item_sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`sub_category`, `id`, `name`, `description`, `price`, `product_model`, `shipping_weight`, `units_in_stock`, `image_1`, `image_2`, `image_3`, `image_4`, `item_sold`) VALUES
('boys', 1, 'Columbia Boys\' Steens Mt Ii Flee', '100% Polyester<br>\r\nImported<br>\r\nMachine Wash<br>\r\nZippered hand pockets<br>\r\nModern classic fit <br>\r\n        ', 2500, 'J5A256', '985 gm', 253, '51UROOiSqpL.jpg', '81-IiP7aI5L._UX522_.jpg', '51UROOiSqpL.jpg', '81-IiP7aI5L._UX522_.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `community_poll`
--

CREATE TABLE `community_poll` (
  `id` int(11) NOT NULL,
  `poll_topic` varchar(40) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community_poll`
--

INSERT INTO `community_poll` (`id`, `poll_topic`, `count`) VALUES
(1, 'More convenient shipping and delivery', 3),
(2, 'Lower price', 4),
(3, 'Bigger choice', 1),
(4, 'Payments security', 1),
(5, '30-day Money Back Guarantee', 3),
(6, 'Other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(75) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Submit', 'nasir_hossain_1984@gmail.com', 'Website Design', ' I am very good at website design . Feel free to contact with me if u need any improvement to this awesome site!!'),
(3, 'Submit', 'faiyaz@example.com', 'Scarcity of product', ' Your site doesn\'t have enough product. Try to add more.');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `ID` int(11) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Card_Type` varchar(20) NOT NULL,
  `CVV` varchar(5) NOT NULL,
  `Credit_No` varchar(19) NOT NULL,
  `Credit_Balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`ID`, `Password`, `Card_Type`, `CVV`, `Credit_No`, `Credit_Balance`) VALUES
(1152015, '123456', 'visa', '1234', '342039400283128', 282676),
(1152017, '123456', 'master', '1234', '1509010115172583', 580879),
(1152017, '123456', 'master', '1234', '516728118938273', 410204),
(1152017, '123456', 'visa', '1234', '1806346937862585', 243151),
(1152022, '123456', 'visa', '1234', '1778665406544689', 28687),
(1152028, '123456', 'visa', '1234', '1017520029927776', 128945),
(1152029, '123456', 'master', '1234', '1629961468922839', 729878),
(1152029, '123456', 'visa', '1234', '1532498874997477', 16987);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `Customer_Name` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Mobile` varchar(14) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Email` varchar(32) NOT NULL,
  `Status` varchar(10) NOT NULL DEFAULT 'unverified',
  `Confirm_Code` int(11) NOT NULL,
  `point` double NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Customer_Name`, `Password`, `Mobile`, `Address`, `Email`, `Status`, `Confirm_Code`, `point`, `image`) VALUES
(1152015, 'Yunus Khan', '123456', '+8801111111111', 'House No.72, Road No. 2, West Polashi,Dhaka', 'yunus@gmail.com', 'verified', 0, 16700, '1152015.jpg'),
(1152017, 'Farhan Utshaw', '123456', '+8801781973546', 'Narayanganj,Bangladesh', 'farhan.tanvir.utshaw@gmail.com', 'verified', 0, 95308, 'myAvatar.png'),
(1152019, 'Nasir Hossain', '123456', '+8801111111111', 'Dhaka,Bangladesh', 'nasir@example.com', 'unverified', 1392166867, 0, ''),
(1152020, 'Masfiq', '123456', '+8801521332156', 'Cantonment, Dhaka, Bangladesh', 'masfiq111@gmail.com', 'verified', 0, 0, ''),
(1152021, 'Miadad Hassan', '123456', '+8801111111111', 'Chittagong , Bangladesh', 'unregistered@example.com', 'unverified', 2014392384, 0, ''),
(1152022, 'Akif Bhuiyan', '123456', '+8801111111111', 'Dhaka,Bangladesh', 'buetmatrix@gmail.com', 'verified', 0, 2830, ''),
(1152025, 'FARHAN', '123456', '+8801781973546', 'Narayanganj', '1505105.ftu@ugrad.cse.buet.ac.bd', 'verified', 481572938, 0, ''),
(1152026, 'Level2 Term2', '123456', '+8801811563457', 'Dhaka, Bangladesh', 'level2term2@gmail.com', 'verified', 0, 0, ''),
(1152027, 'TED', '123456', '+8801555555', 'DD', 'ted@gmail.com', 'unverified', 726963770, 0, ''),
(1152028, 'MUBazaar Shop', '123456', '+88', 'Dhaka', 'mubazaar@gmail.com', 'blocked', 0, 0, ''),
(1152029, 'Utshaw', '123456', '+8801811563457', 'Dhaka, Bangladesh', 'utshaw105@gmail.com', 'verified', 0, 41000, ''),
(1152033, 'Farhan Utshaw', '123456', '+8801811563457', 'House-27, North Masdair Gabtoli, Narayanganj', 'farhan.utshaw@outlook.com', 'unverified', 812102028, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `total_cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`customer_id`, `order_id`, `shipping_address`, `total_cost`) VALUES
(1152029, 1, 'North Masdair gabtoli, Narayanganj, Dhaka, Bangladesh', 410000),
(1152017, 2, 'sample address, Bangladesh', 4500),
(1152017, 3, 'sample address, Bangladesh', 100000),
(1152017, 4, 'sample address, Bangladesh', 537700),
(1152022, 5, 'sample address, Bangladesh', 28300),
(1152015, 6, 'sample address, Bangladesh', 164000),
(1152015, 7, 'sample address, Bangladesh', 1000),
(1152015, 8, 'sample address, Bangladesh', 2000),
(1152017, 9, 'AhsanUllah Hall, Dhaka', 210990),
(1152017, 10, 'House 27 , Gabtoli, Narayanganj ', 1000),
(1152017, 11, 'sample address, Bangladesh', 58490),
(1152017, 12, 'sample address, Bangladesh', 4600),
(1152017, 13, 'sample address, Bangladesh', 7500),
(1152017, 14, 'sample address, Bangladesh', 28300);

-- --------------------------------------------------------

--
-- Table structure for table `customer_ordered_products`
--

CREATE TABLE `customer_ordered_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_category` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_ordered_products`
--

INSERT INTO `customer_ordered_products` (`id`, `order_id`, `product_category`, `product_id`, `product_quantity`) VALUES
(1, 1, 'electronics', 1012, 5),
(3, 3, 'office_supplies', 1, 100),
(4, 4, 'electronics', 1008, 19),
(5, 5, 'electronics', 1008, 1),
(6, 6, 'electronics', 1012, 2),
(7, 7, 'office_supplies', 1, 1),
(8, 8, 'office_supplies', 1, 2),
(9, 9, 'electronics', 1014, 1),
(10, 10, 'office_supplies', 1, 1),
(11, 11, 'sports_equipments', 1, 1),
(12, 11, 'electronics', 1001, 1),
(13, 12, 'electronics', 1007, 1),
(14, 13, 'clothes', 1, 3),
(15, 14, 'electronics', 1008, 1);

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `sub_category` varchar(32) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_model` varchar(32) DEFAULT NULL,
  `shipping_weight` varchar(10) DEFAULT NULL,
  `units_in_stock` int(11) DEFAULT NULL,
  `image_1` varchar(64) DEFAULT NULL,
  `image_2` varchar(64) DEFAULT NULL,
  `image_3` varchar(64) DEFAULT NULL,
  `image_4` varchar(64) DEFAULT NULL,
  `item_sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`sub_category`, `id`, `name`, `description`, `price`, `product_model`, `shipping_weight`, `units_in_stock`, `image_1`, `image_2`, `image_3`, `image_4`, `item_sold`) VALUES
('smartphone', 1001, 'Samsung Galaxy S8', 'Dimensions: 148.9 x 68.1 x 8.0 mm \r\nWeight: 155 g<br>	\r\nDisplay: 5.8\" Quad HD+ Super AMOLED (2960x1440)\r\n570 ppi<br>\r\nCamera: 8 MP', 53990, 'SM-G950UZVATFN ', '155 gm', 78, 'samsung-galaxy-s8.jpg', 'samsung_galaxy_s8-front.png', 'S8_Black_back.jpg', 'samsung-galaxy-s8.jpg', 2),
('smartphone', 1002, 'Iphone X', 'Display:	5.8-inch (diagonal) all-screen OLED Multi-Touch display<br>\r\nOS	iOS 11<br>\r\nCamera	Primary- Dual 12 MP,secondary-7 MP<br>\r\nCPU	Hexa-core<br>\r\nBATTERY	Non-removable Li-Ion battery<br>\r\nRAM	3GB<br>\r\nROM	64/256 GB<br>\r\nSensor	Face ID<br>\r\nBarometer<br>\r\nThree-axis gyro<br>\r\nAccelerometer<br>\r\nProximity sensor<br>\r\nAmbient light sensor<br>', 82142, 'A1865', '174 gm', 96, 'iphone-x.jpg', 'iphone-x.jpg', 'iphone-x.jpg', 'iphone-x.jpg', 0),
('smartphone', 1003, 'Samsung Galaxy j7 Prime', 'Network Scope	2G, 3G<br>\r\nBattery Type & Performance	Lithium-ion 3000 mAh (removable)<br>\r\nTalk-time: up to 18 hours<br>\r\n3G-usage time: up to 9 hours<br>\r\nBody & Weight	152.4 x 78.6 x 7.5 millimeter, 171 grams<br>\r\nCamera Factors (Back)	4128 x 3096 pixels, autofocus, LED flash, auto face recognition, f/1.9 aperture, panorama mode<br>\r\nCamera Resolution (Back)	13 Megapixel<br>\r\nCamera Resolution (Front)	5 Megapixel, CMOS, LED Flash<br>\r\nChipset	Exynos 7580<br>\r\nDisplay Size & Resolution	5.5 inches, HD 720 x 1200 pixels<br>\r\nDisplay Type	Super AMOLED Touchscreen<br>\r\nGraphics Processing Unit (GPU)	Adreno 405<br>\r\nMemory Card Slot	MicroSD, up to 128 GB<br>\r\nOperating System	Android Lollipop v5.1<br>\r\nProcessor	Octa-core, 1.5 GHz\r\nRAM	1.5 GB<br>\r\nROM	16 GB<br>\r\nSensors	Accelerometer, proximity, hall sensor<br>\r\nSIM Card Type	Dual SIM (Micro-SIM, dual stand-by)<br>\r\nUSB	MicroUSB v2.0<br>\r\nVideo	Full HD (1080p)<br>\r\nWireless LAN	Yes, Wi-Fi direct, hotspot<br>\r\nOther Features	- Bluetooth, GPS, A-GPS, MP3, MP4, Radio, GPRS, Edge, Multitouch, Loudspeaker<br>', 14990, 'SM-J700K', '171 gm', 112, 'samsung-galaxy-j7-prime.jpg', 'samsung-galaxy-j7-prime-front.jpg', 'samsung-galaxy-j7-prime-back.jpg', 'samsung-galaxy-j7-prime-side.jpg', 0),
('smartphone', 1004, 'Huawei Honor 8', 'Operating system	Android™ 7.0\r\nUI	Huawei Emotion UI 5.0\r\nCPU Model	Hisilicon Kirin 950\r\nCPU Cores	Octa-core\r\nCPU Frequency	4*Cortex A72 2.3GHz + 4*Cortex A53 1.8GHz + i5 co-processor\r\nSIM	Single nano-SIM (4FF)\r\nUpdate	Huawei OTA (HOTA)\r\nDimensions	145.5 mm (L) x71.0 mm (W) x7.45 mm (T)\r\nColors	Pearl White, Sapphire Blue, Midnight Black\r\nWeight	About 153 g (including the battery)', 34900, 'honor-8', '153 gm', 92, 'huawei-honor-8.jpg', 'huawei-honor-8.jpg', 'huawei-honor-8.jpg', 'huawei-honor-8.jpg', 0),
('smartphone', 1005, 'Iphone 7', 'Size	 138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)	<br>\r\nWeight	4.87 ounces (138 grams)<br>\r\nScreen	4.7-inch Retina HD LED-backlit widescreen	<br>\r\nResolution	1,334 x 750 pixels (326 ppi)	<br>\r\nOS	iOS 10	<br>\r\nStorage	32, 128, 256GB	<br>\r\nMicroSD card slot	No<br>	\r\nNFC support	Yes	<br>\r\nProcessor	A10 Fusion with 64-bit architecture, M10 motion coprocessor	<br>\r\nRAM	2GB	<br>\r\nConnectivity	4G LTE, GSM, CDMA, HSPA+, 802.11a/b/g/n/ac Wi-Fi	<br>\r\nCamera	12MP rear, 7MP front	<br>\r\nVideo	4K at 30fps, 1080p at 30 or 60fps	<br>\r\nBluetooth	Yes, version 4.2	<br>\r\nFingerprint sensor	Touch ID	<br>\r\nOther sensors	Barometer, 3-axis gyro, accelerometer, proximity sensor, ambient light sensor	<br>\r\nWater resistant	Yes, IP67 rated	<br>\r\nBattery	Up to 12 hours of internet use on LTE	<br>\r\nCharger	Lightning	<br>\r\nMarketplace	Apple App Store	<br>\r\nColor offerings	Gold, rose gold, silver, black, jet black	<br>', 76000, 'A1660', '138.56 gm', 92, 'iphone-7.jpg', 'iphone-7.jpg', 'iphone-7.jpg', 'iphone-7.jpg', 0),
('smartphone', 1006, 'Asus Zenfone 4', 'Screen size (inches)	5.50 Touchscreen	Yes Resolution	720x1280 pixels HARDWARE Processor	1.4GHz octa-core Processor make	Snapdragon 430 RAM	4GB Internal storage	64GB Expandable storage	Yes Expandable storage type	microSD Expandable storage up to (GB)	128 CAMERA Rear camera	16-megapixel Flash	Yes Front camera	20-megapixel SOFTWARE Operating System	Android 7.1.1 Skin	ZenUI 4.0 CONNECTIVITY Wi-Fi	Yes Wi-Fi standards supported	802.11 b/g/n GPS	Yes Bluetooth	Yes, v 4.10 NFC	No Infrared	No USB OTG	Yes Headphones	3.5mm FM	No Number of SIMs	2', 50000, 'ZE554KL', '154 gm', 66, 'asus-zenfone-4.jpg', 'asus-zenfone-4.jpg', 'asus-zenfone-4.jpg', 'asus-zenfone-4.jpg', 0),
('computer', 1007, 'Team Elite Ram 4GB DDR3 (1x8GB) 1600', 'Product Description: Team Elite - DDR3 - 8 GB - SO DIMM 204-pin Product type: RAM memory Capacity: 8 GB Memory Type: DDR3 SDRAM - SO DIMM 204-pin Data Integrity Check: Non-ECC Speed: 1600 MHz (PC3-12800) Latency Timings: CL11 (11-11-11-28) Voltage: 1.5 V', 4600, 'Elite-DDR3', '150 gm', 31, 'team-elite-4gb.jpg', 'team-elite-4gb.jpg', 'team-elite-4gb.jpg', 'team-elite-4gb.jpg', 1),
('computer', 1008, 'Intel Kaby Lake Core i7 7700K', 'Model - Intel Core i7 7700K<br>\r\nCode-Name - Kaby Lake<br>\r\nGeneration - 7th<br>\r\nBase Frequency - 4.20 GHz<br>\r\nTurbo Frequency Max. - 4.50 GHz<br>\r\nSmart Cache - 8 MB<br>\r\nTDP - 91 W<br>\r\nMemory Max. - 64 GB<br>', 28300, '7700K', '860 gm', 0, 'core-i7-7700k.jpg', 'core-i7-7700k.jpg', 'core-i7-7700k.jpg', 'core-i7-7700k.jpg', 1),
('computer', 1012, 'Asus PG27AQ-ROG 27 Inch IPS 4K Gaming Monitor', 'Model - Asus PG27AQ-ROG<br>\r\nDisplay Size (Inch) - 27\"<br>\r\nDisplay Resolution - 3840 x 2160<br>\r\nContrast Ratio (TCR/DCR) - 1000:1<br>', 82000, 'PG27AQ', '1.8 kg', 54, 'asus-rog-swift-pg27.jpg', 'asus-rog-swift-pg27.jpg', 'asus-rog-swift-pg27.jpg', 'asus-rog-swift-pg27.jpg', 0),
('computer', 1014, 'Apple iMac 4K Retina 21.5 Inch (2017) ', 'Model - Apple iMac (2017)<br>\r\nProcessor - Quad Core Intel Core i5<br>\r\nProcessor Clock Speed - 3.4-3.8GHz<br>\r\nRAM - 8GB<br>\r\nHDD - 1TB Fusion Drive<br>\r\nGraphics Memory - 4GB<br>\r\nAudio Port - 3.5mm Headphone Jack, microphone<br>', 157000, 'MNE02ZP/A', '11 kg', 11, 'apple-imac-2017-main.jpg', 'apple-imac-2017-front.png', 'apple-imac-2017-side.jpg', 'apple-imac-2017-angle.jpg', 1),
('smartphone', 1015, 'LG Q8', '- Quad-Core Snapdragon 820 Processor<br>\r\n- 4GB RAM With 32GB ROM<br>\r\n- 5.2 Inch QHD Touchscreen Display<br>\r\n- Dual SIM<br>\r\n- IP67 Rated<br>\r\n- 16MP + 8MP Rear Camera With Dual Tone LED Flash & OIS<br>\r\n- 5MP Front Facing Camera<br>\r\n- Bluetooth 4.2/NFC/WiFi<br>\r\n- USB Type-C/IR<br>\r\n- Fingerprint Sensor<br>\r\n- 3000mAh.<br>', 62990, 'LG-H970', '146.00 gm', 8, 'lg-q8-front.jpg', 'LG-Q8-Back.jpg', 'lg-q8-side.jpg', 'lg-q8-front.jpg', 0),
('computer', 1016, 'Dell 34 UltraSharp Curved Monitor', 'Creates a heightened sense of immersion, 34\" diagonal wide viewing experience with an Array of connectivity<br>\r\nEnhanced clarity: full WQHD 3440 1440 clarity at 60 Hz and consistent colors across an ultrawide 178Â°/172Â° viewing angle combine <br>to create a more appealing Display<br>\r\nMultiple connections: with HDMI 2.0, MHL, DP, mini-dp, 2 x USB 3.0 upstream, 4 x USB 3.0 downstream ports, audio out, connecting <br>to all your secondary devices at once is both easy and convenient<br>\r\nPowerful 18W integrated speakers<br>\r\nHeight-adjustable (115mm), tilt and swivel      <br>\r\n        ', 80000, 'U3417W', '15.4 kg', 212, '10533029.jpg', '523960-dell-ultrasharp-34-curved-monitor-u3417w.jpg', 'OriginalJPG.jpg', 'dell_u3417w_34_screen_led_1280769.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `category` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `price` double NOT NULL,
  `poster` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `category`, `name`, `year`, `price`, `poster`, `source`) VALUES
(1, 'animation', 'The Croods', 2013, 1300, 'The_Croods.jpg', 'The_Croods.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `movie_customer`
--

CREATE TABLE `movie_customer` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `office_supplies`
--

CREATE TABLE `office_supplies` (
  `sub_category` varchar(32) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_model` varchar(32) DEFAULT NULL,
  `shipping_weight` varchar(10) DEFAULT NULL,
  `units_in_stock` int(11) DEFAULT NULL,
  `image_1` varchar(64) DEFAULT NULL,
  `image_2` varchar(64) DEFAULT NULL,
  `image_3` varchar(64) DEFAULT NULL,
  `image_4` varchar(64) DEFAULT NULL,
  `item_sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_supplies`
--

INSERT INTO `office_supplies` (`sub_category`, `id`, `name`, `description`, `price`, `product_model`, `shipping_weight`, `units_in_stock`, `image_1`, `image_2`, `image_3`, `image_4`, `item_sold`) VALUES
('paper', 1, 'HP Paper, LaserJet Poly Wrap , 2', 'Ultra white shade perfect for color and black-and-white documents<br>\r\nMedium weight heavy enough for two-sided printing without show-through<br>\r\nForest Stewardship Council (FSC)certified<br>\r\nNOTE: 24lb is the basis weight or thickness which is what paper is sold by along with brightness. 6 pounds is how much the package weighs<br>\r\nMade In The USA<br>', 1000, '115300R', '1.02 kg', 508, '522eb6e1-2130-4ff9-8e47-48b2705346b7.jpg', '61DxD4WP3ZL._SY355_.jpg', '61ot1ZSZLwL._SY355_.jpg', '522eb6e1-2130-4ff9-8e47-48b2705346b7.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `recently_viewed`
--

CREATE TABLE `recently_viewed` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_table` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recently_viewed`
--

INSERT INTO `recently_viewed` (`id`, `customer_id`, `product_table`, `product_id`) VALUES
(1, 1152017, 'electronics', 1006),
(2, 1152017, 'electronics', 1002),
(3, 1152017, 'electronics', 1008),
(4, 1152017, 'clothes', 1),
(5, 1152017, 'sports_equipments', 1),
(6, 1152017, 'electronics', 1001),
(7, 1152017, 'office_supplies', 1),
(8, 1152017, 'electronics', 1007),
(9, 1152017, 'appliances', 1),
(10, 1152017, 'electronics', 1003),
(11, 1152026, 'electronics', 1006),
(12, 1152026, 'electronics', 1002),
(13, 1152017, 'electronics', 1012),
(14, 1152017, 'electronics', 1004),
(15, 1152026, 'electronics', 1012),
(16, 1152026, 'electronics', 1015),
(17, 1152025, 'electronics', 1006),
(18, 1152025, 'appliances', 1),
(19, 1152025, 'office_supplies', 1),
(20, 1152025, 'clothes', 1),
(21, 1152025, 'electronics', 1001),
(22, 1152017, 'electronics', 1016),
(23, 1152028, 'sports_equipments', 1),
(24, 1152029, 'electronics', 1012),
(25, 1152015, 'electronics', 1012),
(26, 1152015, 'electronics', 1014),
(27, 1152015, 'office_supplies', 1),
(28, 1152015, 'sports_equipments', 1),
(29, 1152015, 'electronics', 1004),
(30, 1152028, 'clothes', 1),
(31, 1152028, 'electronics', 1006),
(32, 1152017, 'electronics', 1014);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `product_category` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review_author` varchar(32) NOT NULL,
  `review_email` varchar(32) NOT NULL,
  `review_content` varchar(300) NOT NULL,
  `review_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `product_category`, `product_id`, `review_author`, `review_email`, `review_content`, `review_date`) VALUES
(7, 'electronics', 1006, 'Farhan Utshaw', 'farhan.tanvir.utshaw@gmail.com', 'This mobile is not good at all!! ', '2017-11-05'),
(9, 'electronics', 1005, 'Utshaw', 'utshaw105@gmail.com', 'HIGH PRICE!!! ', '2017-11-05'),
(10, 'electronics', 1007, 'Utshaw', 'utshaw105@gmail.com', 'Great Product!!! ', '2017-11-05'),
(11, 'electronics', 1004, 'Utshaw', 'utshaw105@gmail.com', 'Awesome phone!! ', '2017-11-05'),
(12, 'electronics', 1003, 'Utshaw', 'utshaw105@gmail.com', 'Not satisfied with this smartphone!! ', '2017-11-05'),
(14, 'electronics', 1002, 'Utshaw', 'utshaw105@gmail.com', 'Whhy so much price? ', '2017-11-05'),
(16, 'electronics', 1014, 'Utshaw', 'utshaw105@gmail.com', 'Too much price!! ', '2017-11-05'),
(17, 'electronics', 1006, 'Farhan', 'farhan.tanvir.utshaw@gmail.com', 'Budget Phone!!Like It ', '2017-11-05'),
(18, 'electronics', 1006, 'Farhan Tanvir Utshaw', 'farhan.tanvir.utshaw@gmail.com', 'Bought two months ago . Another awesome product by Asus!!', '2017-11-05'),
(19, 'electronics', 1006, 'Tanvir', 'farhan.tanvir.utshaw@gmail.com', 'I recommend this smartphone to everyone!! ', '2017-11-05'),
(20, 'electronics', 1006, 'Rony', 'rony@example.com', 'Not satisfied with this smartphone :( ', '2017-11-05'),
(21, 'electronics', 1002, 'Farhan Utshaw', 'farhan.tanvir.utshaw@gmail.com', ' this phone is awesome!!', '2017-12-04'),
(22, 'electronics', 1008, 'Farhan Utshaw', 'farhan.tanvir.utshaw@gmail.com', ' Fast processor', '2017-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `cart_id` int(11) NOT NULL,
  `prod_category` varchar(32) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_quantity` int(11) NOT NULL,
  `price_per_product` double NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`cart_id`, `prod_category`, `prod_id`, `prod_name`, `prod_quantity`, `price_per_product`, `customer_id`) VALUES
(32, 'electronics', 1012, 'Asus PG27AQ-ROG 27 Inch IPS 4K Gaming Monitor', 1, 82000, 1152026),
(33, 'electronics', 1006, 'Asus Zenfone 4', 2, 45000, 1152025),
(40, 'clothes', 1, 'Columbia Boys\' Steens Mt Ii Flee', 1, 2500, 1152025),
(41, 'sports_equipments', 1, 'adidas MLS Glider Soccer Ball', 1, 4500, 1152028),
(42, 'office_supplies', 1, 'HP Paper, LaserJet Poly Wrap , 2', 1, 1000, 1152017);

-- --------------------------------------------------------

--
-- Table structure for table `shop_branch`
--

CREATE TABLE `shop_branch` (
  `id` int(11) NOT NULL,
  `place` varchar(255) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_branch`
--

INSERT INTO `shop_branch` (`id`, `place`, `latitude`, `longitude`) VALUES
(1, 'North Masdair, Narayanganj', 23.631221, 90.488338),
(2, '17 No. West Bakalia Ward, Chittagong', 22.350227, 91.843986);

-- --------------------------------------------------------

--
-- Table structure for table `special_offer`
--

CREATE TABLE `special_offer` (
  `occasion` varchar(20) NOT NULL,
  `percentage` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_offer`
--

INSERT INTO `special_offer` (`occasion`, `percentage`, `image`) VALUES
('summer', 12, 'summer.jpeg'),
('winter', 25, 'winter.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sports_equipments`
--

CREATE TABLE `sports_equipments` (
  `sub_category` varchar(32) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_model` varchar(32) DEFAULT NULL,
  `shipping_weight` varchar(10) DEFAULT NULL,
  `units_in_stock` int(11) DEFAULT NULL,
  `image_1` varchar(64) DEFAULT NULL,
  `image_2` varchar(64) DEFAULT NULL,
  `image_3` varchar(64) DEFAULT NULL,
  `image_4` varchar(64) DEFAULT NULL,
  `item_sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_equipments`
--

INSERT INTO `sports_equipments` (`sub_category`, `id`, `name`, `description`, `price`, `product_model`, `shipping_weight`, `units_in_stock`, `image_1`, `image_2`, `image_3`, `image_4`, `item_sold`) VALUES
('football', 1, 'adidas MLS Glider Soccer Ball', 'Part of the MLS Soccer collection, the design is inspired by the three MLS pillars of club, country, and community<br>\r\nMachine stitched construction and internal nylon wound carcass for maximum durability and long-lasting performance<br>\r\nSpecial TPU exterior material is designed to resist abrasion and last longer<br>\r\nButyl bladder for best air retention to keep the ball\'s shape and stay inflated longer<br>\r\nSize 3 ball suggested for ages 8 and under; size 4 ball suggested for ages 8-12; size 5 ball (official size) suggested for ages 12+. Size 1<br> is a mini ball. Check with your local league for size requirements.', 4500, 'ML5', '650 gm', 649, '51v-NPvUo2L._SY355_.jpg', '818fqUf9YqL._SX355_.jpg', 'AZ3211-2.jpg', 'HEW001420.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_category` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customer_id`, `product_category`, `product_id`, `product_name`) VALUES
(4, 1152022, 'electronics', 1008, 'Intel Kaby Lake Core i7 7700K'),
(6, 1152026, 'electronics', 1012, 'Asus PG27AQ-ROG 27 Inch IPS 4K Gaming Monitor'),
(7, 1152025, 'electronics', 1006, 'Asus Zenfone 4'),
(9, 1152017, 'electronics', 1002, 'Iphone X');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appliances`
--
ALTER TABLE `appliances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_poll`
--
ALTER TABLE `community_poll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`ID`,`Card_Type`,`Credit_No`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer_ordered_products`
--
ALTER TABLE `customer_ordered_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_customer`
--
ALTER TABLE `movie_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_supplies`
--
ALTER TABLE `office_supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recently_viewed`
--
ALTER TABLE `recently_viewed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `prod_category` (`prod_category`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `shop_branch`
--
ALTER TABLE `shop_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_offer`
--
ALTER TABLE `special_offer`
  ADD PRIMARY KEY (`occasion`);

--
-- Indexes for table `sports_equipments`
--
ALTER TABLE `sports_equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appliances`
--
ALTER TABLE `appliances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1152034;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_ordered_products`
--
ALTER TABLE `customer_ordered_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `electronics`
--
ALTER TABLE `electronics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie_customer`
--
ALTER TABLE `movie_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `office_supplies`
--
ALTER TABLE `office_supplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recently_viewed`
--
ALTER TABLE `recently_viewed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `shop_branch`
--
ALTER TABLE `shop_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sports_equipments`
--
ALTER TABLE `sports_equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `customer` (`ID`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD CONSTRAINT `credit_card_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `customer_ordered_products`
--
ALTER TABLE `customer_ordered_products`
  ADD CONSTRAINT `customer_ordered_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`);

--
-- Constraints for table `recently_viewed`
--
ALTER TABLE `recently_viewed`
  ADD CONSTRAINT `recently_viewed_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`ID`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
