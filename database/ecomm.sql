-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 11:00 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--
CREATE DATABASE IF NOT EXISTS `ecomm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecomm`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pincode` int(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `streetaddress` varchar(255) NOT NULL,
  `addresstype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(197, 17, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cat_slug` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`, `photo`) VALUES
(1, 'MEN', 'MEN', '_1582097755.webp'),
(2, 'WOMEN', 'WOMEN', '_1582103598.webp'),
(4, 'KIDS', 'KIDS', '.webp');

-- --------------------------------------------------------

--
-- Table structure for table `category_banner`
--

CREATE TABLE `category_banner` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_banner`
--

INSERT INTO `category_banner` (`id`, `photo`, `type`, `url`) VALUES
(10, '1k6ads3ab4s2_1582191194.jpg', '2', 'local'),
(11, 'a15bhsk4da63_1582191320.jpg', '1', 'local'),
(13, '54sd3as1ba6h.jpg', '4', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` int(11) NOT NULL,
  `deals_id` varchar(100) NOT NULL,
  `d_name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `d_img` varchar(20) NOT NULL,
  `d_price` varchar(100) NOT NULL,
  `old_price` varchar(100) NOT NULL,
  `discount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `deals_id`, `d_name`, `slug`, `d_img`, `d_price`, `old_price`, `discount`) VALUES
(1, '99', 'sk', 'sk', 'banner/banner4.jpg', '100', '200', '-20%');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(23, 36, 2, 1),
(24, 38, 4, 1),
(25, 40, 1, 1),
(26, 41, 2, 1),
(27, 41, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` int(11) NOT NULL,
  `pincode` int(6) NOT NULL,
  `courier_company` varchar(255) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `state_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`id`, `pincode`, `courier_company`, `city_name`, `state_name`) VALUES
(1, 410206, 'DHL Courier', 'Panvel', 'MAHARASHTRA'),
(3, 400612, 'FEDEX', 'Thane', 'MAHARASHTRA'),
(4, 416001, 'Akash Ganga Courier Limited\r\n', 'Kolhapur ', 'MAHARASHTRA');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` int(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `deals` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `size` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `old_price` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `discount` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `category_id`, `deals`, `color`, `brand`, `name`, `size`, `description`, `slug`, `old_price`, `price`, `discount`, `photo`, `date_view`, `counter`) VALUES
(1, 121121, 1, '99', 'Black', 'Hanes ', 'Hanes Men\'s Pullover EcoSmart Fleece Black Hooded Sweatshirt', 'S, M', '<blockquote>\r\n<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n</blockquote>\r\n', 'hanes-men-s-pullover-ecosmart-fleece-black-hooded-sweatshirt', '110', 100, '20%', 'hanes-men-s-pullover-ecosmart-fleece-black-hooded-sweatshirt.jpg', '2019-12-08', 2),
(2, 121232, 1, '99', 'GREY', 'BALEAF', 'BALEAF Men\'s UPF 50+ Sun Protection Hoodie', 'S', '<ul>\r\n	<li>100% Polyester; Sun Protection; Fashionable(Mode Size M)</li>\r\n	<li>Imported</li>\r\n	<li>Technical breathable fabric wicks moisture away from your skin, breathes freely and dries quickly for cool comfort</li>\r\n	<li>Low profile thumbholes help keep sleeves in place &amp; trap warmth</li>\r\n</ul>\r\n', 'baleaf-men-s-upf-50-sun-protection-hoodie', '150', 123, '20%', 'baleaf-men-s-upf-50-sun-protection-hoodie-long-sleeve-performance-hiking-fishing-t-shirt_1572846099.jpg', '2019-11-22', 2),
(3, 455656, 1, '99', 'White', 'SHADABZONE', 'YOUTUBE T-SHIRT FOR MEN', 'S', '<p>YOUTUBE T-SHIRT FOR MEN</p>\r\n', 'youtube-t-shirt-men', '150', 130, '20%', 'youtube-t-shirt-men.jpg', '2019-11-22', 7),
(4, 532131, 1, '99', 'Black', 'ADIDAS', 'Black T-Shirt with Graphic Printed', 'S, M,', '<p>Hleoo</p>\r\n', 'black-t-shirt-graphic-printed', '126', 123, '24%', 'black-t-shirt-graphic-printed.jpeg', '2019-11-21', 10),
(5, 1215156, 1, '99', 'White', 'ADIDAS', 'White Adidas White Printed', 'S', '<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n', 'white-adidas-white-printed', '350', 321, '20%', 'white-adidas-white-printed.jpeg', '2019-11-22', 1),
(6, 112132, 1, '99', 'GREY', 'ADIDAS', 'Grey Adidas Graphic Printed', 'L,XL', '<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n', 'grey-adidas-graphic-printed', '350', 345, '10%', 'grey-adidas-graphic-printed.jpeg', '2019-11-17', 1),
(7, 254578, 1, '99', 'GREY', 'ADIDAS', 'Grey Adidas Graphic Print', 'L', '<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n', 'grey-adidas-graphic-print', '450', 400, '24%', 'grey-adidas-graphic-print.jpeg', '2019-11-22', 7),
(8, 147858, 1, '99', 'Black', 'ADIDAS', 'Black Adidas No print', 'L', '<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n', 'black-adidas-no-print', '245', 200, '24%', 'black-adidas-no-print.jpeg', '2019-11-17', 1),
(9, 254569, 1, '99', 'White', 'ADIDAS', 'Adidas White Printed t-shirt  For Men', 'xl', '<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n', 'adidas-white-printed-t-shirt-men', '250', 234, '12%', 'adidas-white-printed-t-shirt-men.jpeg', '2008-08-08', 1),
(10, 324587, 1, '99', 'Black', 'ADIDAS', 'Black Adidas Graphic Print', 'XL', '<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n', 'black-adidas-graphic-print', '299', 234, '20%', 'black-adidas-graphic-print.jpeg', '2019-11-17', 3),
(11, 215487, 1, '99', 'GREY', 'ADIDAS', 'Adidas Light Grey T-shirt For Men', 'S, X', '<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n', 'adidas-light-grey-t-shirt-men', '150', 120, '24%', 'adidas-light-grey-t-shirt-men.jpeg', '0000-00-00', 0),
(12, 324568, 1, '99', 'Black', 'ADIDAS', 'Adidas Black Printed t-shirt  For Men', 'XL', '<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n', 'adidas-black-printed-t-shirt-men', '249', 200, '24%', 'adidas-black-printed-t-shirt-men.jpeg', '0000-00-00', 0),
(13, 254785, 1, '99', 'Black', 'ADIDAS', 'Adidas Black Print For Men', 'S XL', '<ul>\r\n	<li>5% polyester created from recycled plastic bottles</li>\r\n	<li>Imported</li>\r\n	<li>Pull On closure</li>\r\n	<li>Machine Wash</li>\r\n	<li>0.7&quot; high</li>\r\n	<li>14&quot; wide</li>\r\n	<li>50% cotton 50% polyester</li>\r\n</ul>\r\n', 'adidas-black-print-men', '256', 200, '24%', 'adidas-black-print-men.jpeg', '2019-11-16', 1),
(14, 245697, 2, '99', 'Orange', 'Anouk', 'Anouk Orange Dress For Women/Girls Traditional Dresses', 'M XL', '<p><br />\r\n<br />\r\n&nbsp;&nbsp; &nbsp;5% polyester created from recycled plastic bottles&lt;/li&gt;<br />\r\n&nbsp; &nbsp; imported<br />\r\n&nbsp;&nbsp; Pull On closure<br />\r\n&nbsp;&nbsp; Machine Wash<br />\r\n&nbsp;&nbsp; 0.7&amp;quot; high<br />\r\n&nbsp;&nbsp; 14&amp;quot; wide<br />\r\n&nbsp;&nbsp;50% cotton 50% polyester<br />\r\n&lt;/ul&gt;<br />\r\n&lt;/blockquote&gt;</p>\r\n', 'anouk-orange-dress-women-girls-traditional-dresses', '150', 125, '35%', 'anouk-orange-dress-women-girls-traditional-dresses.jpg', '2019-11-22', 8),
(15, 154878, 1, '99', 'Black', 'Jack and Jones', 'Jack and Jones black graphic Printed', ' S M ', '<p>Ace weekend dressing in this black stripe Polo Neck T-shirt from Jack and Jones</p>\r\n', 'jack-and-jones-black-graphic-printed', '277', 245, '20%', 'jack-and-jones-black-graphic-printed.jpeg', '2019-11-21', 9),
(16, 214737, 2, '', 'Olive, Green, White', 'Libas', 'Libas Women Olive-Green-White Block Print Kurta with Trouse', 'S M L XL', '<p>Libas Women Olive-Green-White Block Print Kurta with Trouse</p>\r\n\r\n<p>Libas Women Olive-Green-White Block Print Kurta with TrouseLibas Women Olive-Green-White Block Print Kurta with Trousev</p>\r\n\r\n<p>Libas Women Olive-Green-White Block Print Kurta with Trouse</p>\r\n\r\n<p>Libas Women Olive-Green-White Block Print Kurta with Trouse</p>\r\n\r\n<p>Libas Women Olive-Green-White Block Print Kurta with TrouseLibas Women Olive-Green-White Block Print Kurta with Trouse</p>\r\n', 'libas-women-olive-green-white-block-print-kurta-trouse', '245', 200, '30%', 'libas-women-olive-green-white-block-print-kurta-trouse.jpg', '0000-00-00', 0),
(17, 200123, 3, '21', 'RED', 'Ginni and Joy', 'Ginni and Joy Red T-Shirts ', 'L XL', '<h3 style=\"font-style: italic;\"><small><big>Red self-design sweatshirt, has a kangaroo pocket, a round neck, long sleeves, straight hem</big></small></h3>\r\n\r\n<h3 style=\"font-style: italic;\"><small><big>Material &amp; Care</big></small></h3>\r\n\r\n<h3 style=\"font-style: italic;\"><small><big>Cotton<br />\r\nMachine-wash</big></small></h3>\r\n\r\n<h3 style=\"font-style: italic;\"><small><big><strong>Specifications</strong></big></small></h3>\r\n\r\n<p>Sleeve Length&nbsp;</p>\r\n\r\n<p>Long Sleeves</p>\r\n', 'ginni-and-joy-red-t-shirts', '150', 123, '70%', 'ginni-and-joy-red-t-shirts.jpg', '2019-12-01', 1),
(18, 0, 3, '22', 'red', 'Ginni and Joy', 'Ginni and joy red T-shirt', 'L', '<p><strong>Ginni and Joy</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ginni-and-joy-red-t-shirt', '450', 400, '2%', 'ginni-and-joy-red-t-shirt.jpg', '0000-00-00', 0),
(19, 0, 3, '', 'Sky Blue', 'Indian Terrain', 'Indian Terrain Blue T-Shirts ', 'S', '<p>Indian Terrain Blue T-Shirts&nbsp;</p>\r\n\r\n<p>Indian Terrain Blue T-Shirts&nbsp;</p>\r\n\r\n<p>Indian Terrain Blue T-Shirts&nbsp;</p>\r\n', 'indian-terrain-blue-t-shirts', '50020', 50000, '20%', 'indian-terrain-blue-t-shirts_1575487752.jpg', '0000-00-00', 0),
(21, 0, 1, '', 'red', 'ks', 'Shadab Khan', 'standard', '<p>as</p>\r\n', 'shadab-khan', '15', 12, '12%', 'shadab-khan.jpeg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(36, 2, 'MOJO0218H05N63080432', '2020-02-18'),
(38, 2, 'MOJO0218W05A63080477', '2020-02-18'),
(39, 2, 'MOJO0218W05A63080477', '2020-02-18'),
(40, 18, 'MOJO0218T05N63080519', '2020-02-18'),
(41, 18, 'MOJO0218Q05A63080540', '2020-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sub_catslug` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `sub_catslug`, `type`, `photo`) VALUES
(2, 'Innerwear & Sleepwears', 'Innerwear and Sleepwear', 'men', '_1581970950.jpg'),
(4, 'Topwear', 'Topwear', 'men', '_1581970976.jpg'),
(5, 'Sport & Active Wear', 'Sport and Active Wear', 'men', '_1581970993.jpg'),
(7, 'Beauty & Personal Care', 'Beauty and Personal Care', 'women', '_1581972503.jpg'),
(8, 'Women Footwear', 'Women Footwear', 'women', '_1581972489.jpg'),
(9, 'Western Wear', 'Western Wear', 'women', '_1581972468.jpg'),
(10, 'Boys Clothing', 'Boys Clothing', 'kids', '_1581975114.jpg'),
(11, 'Girls Clothing', 'Girls Clothing', 'kids', '_1581975146.jpg'),
(12, 'Boys Footwear', 'Boys Footwear', 'kids', '_1581975165.jpg'),
(13, 'Girls Footwear', 'Girls Footwear', 'kids', '_1581975175.jpg'),
(15, 'Jeans', 'Jeans', 'Bottomwear', '_1581974061.jpg'),
(16, 'Casual Trousers', 'Casual Trousers', 'Bottomwear', '_1581974075.jpg'),
(17, 'Formal Trousers', 'Formal Trousers', 'Bottomwear', '_1581974087.jpg'),
(18, 'Shorts', 'Shorts', 'Bottomwear', '_1581975366.jpg'),
(19, 'Briefs & Trunks', 'Briefs and Trunks', 'Innerwear and Sleepwear', '_1581971217.jpg'),
(20, 'Boxers', 'Boxers', 'Innerwear and Sleepwear', '_1581971204.jpg'),
(21, 'Vests', 'Vests', 'Innerwear and Sleepwear', '_1581971185.jpg'),
(22, 'Thermals', 'Thermals', 'Innerwear and Sleepwear', '_1581971171.jpg'),
(23, 'Casual Shoes', 'Casual Shoes', 'Footwear', '_1581973158.jpg'),
(24, 'Sports Shoes', 'Sports Shoes', 'Footwear', '_1581973172.jpg'),
(25, 'Formal Shirts', 'Formal Shirts', 'Topwear', '_1581973521.jpg'),
(26, 'Formal Shoes', 'Formal Shoes', 'Footwear', '_1581973201.jpeg'),
(27, 'Sneakers', 'Sneakers', 'Footwear', '_1581973182.jpeg'),
(30, 'Socks', 'Socks', 'Footwear', '_1581973139.png'),
(31, 'T-Shirts', 'T-Shirts', 'Topwear', '_1581973552.jpg'),
(32, 'Casual Shirts', 'Casual Shirts', 'Topwear', '_1581973571.jpg'),
(34, 'Sweaters', 'Sweaters', 'Topwear', '_1581973586.jpg'),
(35, 'Jackets', 'Jackets', 'Topwear', '_1581973599.jpg'),
(38, 'Sports Shoes', 'Sports Shoes', 'Sport and Active Wear', '_1581973898.jpg'),
(39, 'Sports Sandals', 'Sports Sandals', 'Sport and Active Wear', '_1581973819.jpeg'),
(40, 'Active T-Shirts', 'Active T-Shirts', 'Sport and Active Wear', '_1581973808.jpg'),
(41, 'Track Pants & Shorts', 'Track Pants and Shorts', 'Sport and Active Wear', '_1581973795.jpg'),
(47, 'Dresses & Jumpsuits', 'Dresses and Jumpsuits', 'Western Wear', '_1581974800.jpg'),
(48, 'T-Shirts', 'T-Shirts', 'Western Wear', '_1581974820.webp'),
(49, 'Jeans & Jeggings', 'Jeans and Jeggings', 'Western Wear', '_1581974830.jpg'),
(50, 'Makeup', 'Makeup', 'Beauty and Personal Care', '_1581974397.webp'),
(51, 'Skincare', 'Skincare', 'Beauty and Personal Care', '_1581974385.jpg'),
(52, 'Fragrances', 'Fragrances', 'Beauty and Personal Care', '_1581974373.jpg'),
(53, 'Casual Shoes', 'Casual Shoes', 'Women Footwear', '_1581974624.jpg'),
(54, 'Sports Shoes & Floaters', 'Sports', 'Women Footwear', '_1581974580.jpg'),
(56, 'Sports Accessories', 'Sports and Accessories', 'Women Footwear', '_1581974592.jpg'),
(58, 'T-Shirts', 'T-Shirts', 'Boys Clothing', '_1581975353.jpg'),
(59, 'Shorts', 'Shorts', 'Boys Clothing', '_1581975529.jpg'),
(60, 'Clothing Sets', 'Clothing Sets', 'Boys Clothing', '_1581975381.jpg'),
(61, 'Jacket, Sweater & Sweatshirt', 'Jacket, Sweater and Sweatshirt', 'Boys Clothing', '_1581975397.jpeg'),
(62, 'Dresses', 'Dresses', 'Girls Clothing', '_1581975599.jpg'),
(64, 'Jeans, Trousers & Capris', 'Jeans, Trousers and Capris', 'Girls Clothing', '_1581975686.jpg'),
(65, 'Casual Shoes', 'Casual Shoes', 'Boys Footwear', '_1581975815.jpg'),
(66, 'Sports Shoes', 'Sports Shoes', 'Boys Footwear', '_1581975793.jpg'),
(67, 'Flats', 'Flats', 'Girls Footwear', '_1581975960.jpg'),
(68, 'Casual Shoes', 'Casual Shoes', 'Girls Footwear', '_1581975972.jpg'),
(69, 'heels', 'heels', 'Girls Footwear', '_1581975948.jpg'),
(74, 'shadab', '', 'shadab', ''),
(75, 'ssk', '', 'ssk', ''),
(76, 'meh', '', 'meh', ''),
(79, 'aa', 'aa', 'AA', 'aa.jpg'),
(80, 'Bottomwear', 'Bottomwear', 'men', '_1581971006.webp'),
(83, 'Footwear', 'Footwear', 'men', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(12) NOT NULL,
  `pincode` int(6) NOT NULL,
  `billingad_type` varchar(255) NOT NULL,
  `billing_add` varchar(255) NOT NULL,
  `billing_state` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_pincode` int(6) NOT NULL,
  `billing_mb` varchar(255) NOT NULL,
  `shippingaddress` varchar(255) NOT NULL,
  `shippingstate` varchar(255) NOT NULL,
  `shippingcity` varchar(255) NOT NULL,
  `shippingpincode` varchar(255) NOT NULL,
  `shippingad_type` varchar(11) NOT NULL,
  `shipping_mb` varchar(255) NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `city`, `state`, `pincode`, `billingad_type`, `billing_add`, `billing_state`, `billing_city`, `billing_pincode`, `billing_mb`, `shippingaddress`, `shippingstate`, `shippingcity`, `shippingpincode`, `shippingad_type`, `shipping_mb`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'offical@admin.com', '$2y$10$wBHwxev2QtoswmAsZGTokeLmw7EMBC23wg8abymd3kNB0ItTqkf.q', 1, 'Khan', 'Shadab', 'sayeed manzil121', 'Dunstan', 'South Austra', 400612, '', '', '', '', 0, '', '', '', '', '', '0', '', '', '.jpg', 1, '', '5kU3wiLICtjlqNG', '2018-05-01'),
(3, 'anasshaikh@gmail.com', '$2y$10$uLq.51bDz3FM9O1hIEI6P.kD2tFCpjO8QHXYinIePYgDbUARrhoQm', 0, 'Anas', 'Shaikh', 'mumbra', 'Andheri  ', 'Mumbai  ', 400612, 'Home', '', '', '', 0, '', '', '', '', '', '', '', '7021918970', 'favicon.jpg', 1, '', '', '2019-12-09'),
(6, 'shadab@gmail.com', '$2y$10$YJXUI4EJW2WsIGpufpC40u9VRW20.SYgcKVvyn.apLGBT7T8/K.VO', 2, 'Shadab', 'Khan', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', '', '', 'PicsArt_11-21-08.jpg', 1, '', '', '2020-01-10'),
(14, 'madihasayyed99@gmail.com', '$2y$10$OiyirtsGjnUhzIdkvBjlke2ekPlV7jkLoGlsH/GQ1yoNtO0H6Kwzm', 0, 'madiha', 'kadiri', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 0, 'h5k41ss6ab3d', '', '2020-01-21'),
(18, 'ks615044@gmail.com', '$2y$10$V4YO0Eb.Yvo6a.MWA6bW1eGbDz/7IkEM5kv4tfNFje31J.HzHAjHG', 0, 'khan', 'shadab', '', '', '', 0, '', '', '', '', 0, '', '', '', '', '', '', '', '', '.jpg', 1, 'dhkb6a21a34s', '', '2020-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_banner`
--
ALTER TABLE `category_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
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
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_banner`
--
ALTER TABLE `category_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- Database: `ede`
--
CREATE DATABASE IF NOT EXISTS `ede` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ede`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `strength` varchar(255) NOT NULL,
  `strength2` varchar(255) NOT NULL,
  `strength3` varchar(255) NOT NULL,
  `strength4` varchar(255) NOT NULL,
  `strength5` varchar(255) NOT NULL,
  `strength6` varchar(255) NOT NULL,
  `weakness` varchar(255) NOT NULL,
  `weakness2` varchar(255) NOT NULL,
  `weakness3` varchar(255) NOT NULL,
  `weakness4` varchar(255) NOT NULL,
  `weakness5` varchar(255) NOT NULL,
  `weakness6` varchar(255) NOT NULL,
  `opportunity` varchar(255) NOT NULL,
  `opportunity2` varchar(255) NOT NULL,
  `opportunity3` varchar(255) NOT NULL,
  `opportunity4` varchar(255) NOT NULL,
  `opportunity5` varchar(255) NOT NULL,
  `opportunity6` varchar(255) NOT NULL,
  `threads` varchar(255) NOT NULL,
  `threads2` varchar(255) NOT NULL,
  `threads3` varchar(255) NOT NULL,
  `threads4` varchar(255) NOT NULL,
  `threads5` varchar(255) NOT NULL,
  `threads6` varchar(255) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `contact_info`, `photo`, `strength`, `strength2`, `strength3`, `strength4`, `strength5`, `strength6`, `weakness`, `weakness2`, `weakness3`, `weakness4`, `weakness5`, `weakness6`, `opportunity`, `opportunity2`, `opportunity3`, `opportunity4`, `opportunity5`, `opportunity6`, `threads`, `threads2`, `threads3`, `threads4`, `threads5`, `threads6`, `created_on`) VALUES
(4, 'ks615044@gmail.com', '$2y$10$hOT5xFFRneLy/gu1ptLNk.6NXfwsSTCyCJlwSTRxSJH69w9Vu8xZ6', 1, 'Shadab', 'Khan', '', '', 'Leadership', 'Problem-solving and decision-making.', 'Teamwork', 'Analytical', 'Strong work ethic.', 'Computer/Technology.', 'Disorganized', 'Self-Critical/Sensitive.', 'Shy/Not adept at public speaking.', 'Lacking confidence', 'Difficulty asking questions', 'Lacking experience', 'Management ', 'Brand Promotion', 'Customer Relations', 'Google Analytics', 'Team Management', 'Product Launches', 'Risks ', 'Result Display', 'Stage Fear', 'Personal Health', 'Personal Issue', 'to present some thing on front of people', '2020-01-06'),
(5, 'suleman@gmail.com', '$2y$10$GvBQiG0AwDzW/KdiDEbWOOu00IJ2SUm3/TqlLtpYweJWS.U7g5pMC', 1, 'suleman', 'khan', '8108384484', '', 'Leadership', 'Problem-solving and decision-making.', 'Teamwork', 'higher capability', 'Strong work ethic.', 'Computer/Technology.', 'Disorganized', 'Self-Critical/Sensitive.', 'Shy/Not adept at public speaking.', 'Lacking confidence', 'Difficulty asking questions', 'Lacking experience', 'Marketing Research', 'Brand Promotions', 'Customer Relations', 'Google Analytics', 'Team Management', 'Product Launches', 'Risks ', 'Result Display', 'Stage Fear', 'Personal Health', 'Personal Issue', 'to present some thing on front of people', '2020-01-06'),
(6, 'haider@gmail.com', '$2y$10$qZMcMf4nH6ryH5Mw53WDOemlYigtPAU6wi2KPzjqn8Fj8BXVDDR6O', 1, 'haider', 'khan', '9326611710', '', 'leadership', 'higher capabilities', 'Teamwork', 'pratically effecient', 'Strong work ethic.', 'Computer/Technology.', 'difficulty in asking question', 'lacking confidence', 'feared in front of audience', 'disorganized', 'lacking experience', 'shyness', 'Marketing Research', 'Brand Promotion', 'Customer Relations', 'Google Analytics', 'Team Management', 'Product Launches', 'Risks ', 'Result Display', 'Stage Fear', 'Personal Health', 'Personal Issue', 'to present some thing on front of people', '2020-01-06'),
(7, 'tafarak@gmail.com', '$2y$10$qZMcMf4nH6ryH5Mw53WDOemlYigtPAU6wi2KPzjqn8Fj8BXVDDR6O', 1, 'Tafarak', 'Mohd.', '9326611710', '', 'leadership', 'higher capabilities', 'Teamwork', 'pratically effecient', 'Strong work ethic.', 'Computer/Technology.', 'difficulty in asking question', 'lacking confidence', 'feared in front of audience', 'disorganized', 'lacking experience', 'shyness', 'Marketing Research', 'Brand Promotion', 'Customer Relations', 'Google Analytics', 'Team Management', 'Product Launches', 'Risks ', 'Result Display', 'Stage Fear', 'Personal Health', 'Personal Issue', 'to present some thing on front of people', '2020-01-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `micro`
--
CREATE DATABASE IF NOT EXISTS `micro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `micro`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'ecomm', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ecomm\",\"table\":\"category_banner\"},{\"db\":\"ecomm\",\"table\":\"products\"},{\"db\":\"ecomm\",\"table\":\"subcategory\"},{\"db\":\"ecomm\",\"table\":\"wishlist\"},{\"db\":\"ecomm\",\"table\":\"cart\"},{\"db\":\"anaa\",\"table\":\"user\"},{\"db\":\"ecomm\",\"table\":\"users\"},{\"db\":\"library\",\"table\":\"admin\"},{\"db\":\"library\",\"table\":\"tblstudents\"},{\"db\":\"ecomm\",\"table\":\"category\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-02-20 10:00:30', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
