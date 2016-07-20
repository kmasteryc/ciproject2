-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2016 at 02:37 PM
-- Server version: 5.7.12
-- PHP Version: 7.0.5-2+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciproject2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `bill_name` varchar(50) NOT NULL,
  `bill_address` varchar(100) NOT NULL,
  `bill_note` varchar(1000) NOT NULL,
  `bill_products` varchar(5000) NOT NULL,
  `bill_phone` int(12) NOT NULL,
  `bill_total` int(20) NOT NULL,
  `bill_state` varchar(5000) NOT NULL,
  `bill_done` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `bill_name`, `bill_address`, `bill_note`, `bill_products`, `bill_phone`, `bill_total`, `bill_state`, `bill_done`) VALUES
(3, 'Ko co gi ca nhe', 'oi ne iu', '</pre></pre></pre></pre></pre></pre></pre></pre></pre></pre></pre>', '{"9a1158154dfa42caddbd0694a4e9bdc8":{"product_id":"52","product_name":"HTC One A10","product_quantity":1,"product_price":11000000,"product_subtotal":11000000}}', 1699999999, 11000000, '{"1":{"state_time":"2016-05-15 15:46:05","state_commiter":"Ko co gi ca nhe"},"2":{"state_time":"2016-05-15 15:46:11","state_commiter":"215"},"3":{"state_time":"2016-05-16 15:08:41","state_commiter":"215"},"4":0}', 0),
(4, 'Tran Duy Khanh', 'Ha Noi', 'Xin chao quy vi', '{"3295c76acbf4caaed33c36b1b5fc2cb1":{"product_id":"66","product_name":"Lenovo Yoga","product_quantity":1,"product_price":4400000,"product_subtotal":4400000}}', 1693007469, 4400000, '{"1":{"state_time":"2016-06-05 14:30:06","state_commiter":"Tran Duy Khanh"},"2":{"state_time":"2016-07-01 13:14:33","state_commiter":"215"},"3":{"state_time":"2016-07-01 13:14:44","state_commiter":"215"},"4":0}', 0),
(5, 'Khanh', 'Son la', 'Ship cho em tai cong truong nhe', '{"a5bfc9e07964f8dddeb95fc584cd965d":{"product_id":"37","product_name":"iPhone 6s Plus","product_quantity":1,"product_price":25000000,"product_subtotal":25000000}}', 1693007469, 25000000, '{"1":{"state_time":"2016-06-29 10:01:22","state_commiter":"Khanh"},"2":{"state_time":"2016-06-29 10:02:22","state_commiter":"215"},"3":{"state_time":"2016-06-29 10:02:40","state_commiter":"215"},"4":{"state_time":"2016-06-29 10:03:06","state_commiter":"215"}}', 1),
(6, 'TESTTTTTTTTTT', 'TESTTTTTTTTTT', 'TESTTTTTTTTTT', '{"a5bfc9e07964f8dddeb95fc584cd965d":{"product_id":"37","product_name":"iPhone 6s Plus","product_quantity":1,"product_price":25000000,"product_subtotal":25000000},"a5771bce93e200c36f7cd9dfd0e5deaa":{"product_id":"38","product_name":"Samsung Galaxy S7 Edge","product_quantity":1,"product_price":18490000,"product_subtotal":18490000}}', 2147483647, 43490000, '{"1":{"state_time":"2016-07-01 12:49:26","state_commiter":"TESTTTTTTTTTT"},"2":{"state_time":"2016-07-01 13:08:00","state_commiter":"215"},"3":{"state_time":"2016-07-01 13:08:06","state_commiter":"215"},"4":{"state_time":"2016-07-01 13:12:53","state_commiter":"215"}}', 1),
(7, 'HEHEHEHE', 'HEHEHEHE', 'HEHEHEHEHEHEHEHE', '{"ea5d2f1c4608232e07d3aa3d998e5135":{"product_id":"64","product_name":"iPad Pro 9","product_quantity":1,"product_price":19000000,"product_subtotal":19000000},"fc490ca45c00b1249bbe3554a4fdf6fb":{"product_id":"65","product_name":"Samsung Galaxy Tab","product_quantity":1,"product_price":6000000,"product_subtotal":6000000}}', 2147483647, 25000000, '{"1":{"state_time":"2016-07-01 13:31:14","state_commiter":"HEHEHEHE"},"2":{"state_time":"2016-07-01 13:31:27","state_commiter":"215"},"3":{"state_time":"2016-07-01 13:31:30","state_commiter":"215"},"4":0}', 0),
(8, 'Dai gia ha thanh', 'Pho nui', 'Anh mua het dong nay :D', '{"093f65e080a295f8076b1c5722a46aa2":{"product_id":"59","product_name":"Laptop Lenovo IdeaPad 100S 11IBY","product_quantity":8,"product_price":3990000,"product_subtotal":31920000},"072b030ba126b2f4b2374f342be9ed44":{"product_id":"60","product_name":"Laptop Lenovo IdeaPad 100 14IB","product_quantity":12,"product_price":5500000,"product_subtotal":66000000},"7f39f8317fbdb1988ef4c628eba02591":{"product_id":"61","product_name":"Laptop Acer ES1 431","product_quantity":15,"product_price":5500000,"product_subtotal":82500000},"44f683a84163b3523afe57c2e008bc8c":{"product_id":"62","product_name":"Laptop Acer Aspire E5 573","product_quantity":14,"product_price":9690000,"product_subtotal":135660000},"03afdbd66e7929b125f8597834fa83a4":{"product_id":"63","product_name":"Laptop Dell Inspiron 3452","product_quantity":13,"product_price":9690000,"product_subtotal":125970000}}', 2147483647, 442050000, '{"1":{"state_time":"2016-07-01 13:50:53","state_commiter":"Dai gia ha thanh"},"2":{"state_time":"2016-07-01 13:51:14","state_commiter":"215"},"3":{"state_time":"2016-07-01 13:51:16","state_commiter":"215"},"4":{"state_time":"2016-07-01 13:51:19","state_commiter":"215"}}', 1),
(9, 'Nha ngheo xuong nui', 'Nha ngheo xuong nui', 'Nha ngheo xuong nui', '{"c0c7c76d30bd3dcaefc96f40275bdc0a":{"product_id":"50","product_name":"Asus Zenfone Selfie","product_quantity":1,"product_price":6490000,"product_subtotal":6490000},"f457c545a9ded88f18ecee47145a72c0":{"product_id":"49","product_name":"HTC One E9 Dual","product_quantity":1,"product_price":6490000,"product_subtotal":6490000},"3295c76acbf4caaed33c36b1b5fc2cb1":{"product_id":"66","product_name":"Lenovo Yoga","product_quantity":1,"product_price":4400000,"product_subtotal":4400000},"67c6a1e7ce56d3d6fa748ab6d9af3fd7":{"product_id":"47","product_name":"HTC Desire Eye","product_quantity":1,"product_price":7500000,"product_subtotal":7500000}}', 2147483647, 24880000, '{"1":{"state_time":"2016-07-01 13:52:34","state_commiter":"Nha ngheo xuong nui"},"2":{"state_time":"2016-07-01 13:52:36","state_commiter":"215"},"3":{"state_time":"2016-07-01 13:52:39","state_commiter":"215"},"4":{"state_time":"2016-07-01 13:52:41","state_commiter":"215"}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id` int(6) UNSIGNED NOT NULL,
  `cate_icon` varchar(20) NOT NULL DEFAULT 'fa-phone',
  `cate_name` varchar(30) NOT NULL,
  `cate_slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `cate_icon`, `cate_name`, `cate_slug`) VALUES
(14, 'fa-phone', 'Phone', 'phone'),
(15, 'fa-tablet', 'Tablet', 'tabet'),
(16, 'fa-laptop', 'Laptop', 'laptop');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0f02799f6423535ebe47258e877c35ad9e711c2c', '192.168.19.1', 1467609098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373630393032343b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a31373939393030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226436376438616234663463313062663232616133353365323738373931333363223b613a363a7b733a323a226964223b733a323a223339223b733a333a22717479223b643a313b733a353a227072696365223b643a31373939393030303b733a343a226e616d65223b733a32373a22536f6e7920587065726961205a35205072656d69756d204475616c223b733a353a22726f776964223b733a33323a226436376438616234663463313062663232616133353365323738373931333363223b733a383a22737562746f74616c223b643a31373939393030303b7d7d757365727c733a353a2261646d696e223b6c6576656c7c733a313a2232223b69647c733a333a22323135223b),
('210b9226762dc4a0696b0c2bf1e33daa87390d37', '192.168.19.1', 1467376056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373337363035353b),
('3dc415037f49f12dcfadf55ab38c31528c580fbf', '192.168.19.1', 1467475831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373437343033373b757365727c733a353a2261646d696e223b6c6576656c7c733a313a2232223b69647c733a333a22323135223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a393639303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223033616664626436366537393239623132356638353937383334666138336134223b613a363a7b733a323a226964223b733a323a223633223b733a333a22717479223b643a313b733a353a227072696365223b643a393639303030303b733a343a226e616d65223b733a32353a224c6170746f702044656c6c20496e737069726f6e2033343532223b733a353a22726f776964223b733a33323a223033616664626436366537393239623132356638353937383334666138336134223b733a383a22737562746f74616c223b643a393639303030303b7d7d),
('3f3ddb9aa42ee4a93afb93daa1105cd493f99446', '192.168.19.1', 1467194226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373139343232363b),
('5eed86ccf1a250231319716a93e4ce2a936095d7', '192.168.19.1', 1467390958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373339303935343b67756573747c733a31303a225472616e204b68616e68223b757365727c733a353a2261646d696e223b6c6576656c7c733a313a2232223b69647c733a333a22323135223b4b4346494e4445527c613a313a7b733a383a2264697361626c6564223b623a303b7d),
('68bcea6720be3285269ee6d9f44ef6247e19d774', '192.168.19.1', 1467292244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373239323233313b),
('6f0a519f90a46f09a70a32ba6d6470e8e12c8576', '192.168.19.1', 1467555937, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373535353635333b757365727c733a353a2261646d696e223b6c6576656c7c733a313a2232223b69647c733a333a22323135223b),
('768b0d1c88468f044f66c4d33f09579bc80fd283', '192.168.19.1', 1466087412, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436363038373334323b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a32383939393030303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226436376438616234663463313062663232616133353365323738373931333363223b613a363a7b733a323a226964223b733a323a223339223b733a333a22717479223b643a313b733a353a227072696365223b643a31373939393030303b733a343a226e616d65223b733a32373a22536f6e7920587065726961205a35205072656d69756d204475616c223b733a353a22726f776964223b733a33323a226436376438616234663463313062663232616133353365323738373931333363223b733a383a22737562746f74616c223b643a31373939393030303b7d733a33323a223334313661373566346365613931303935303763616364386532663261656663223b613a363a7b733a323a226964223b733a323a223431223b733a333a22717479223b643a313b733a353a227072696365223b643a31313030303030303b733a343a226e616d65223b733a31303a22485443204f6e65204139223b733a353a22726f776964223b733a33323a223334313661373566346365613931303935303763616364386532663261656663223b733a383a22737562746f74616c223b643a31313030303030303b7d7d757365727c733a353a2261646d696e223b6c6576656c7c733a313a2232223b69647c733a333a22323135223b),
('94fe2091d875023ff891e2362b79b28e9dae938b', '192.168.10.1', 1465145221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353134353231353b67756573747c733a31323a225472616e2056616e204e616d223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a31383439303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226135373731626365393365323030633336663763643964666430653564656161223b613a363a7b733a323a226964223b733a323a223338223b733a333a22717479223b643a313b733a353a227072696365223b643a31383439303030303b733a343a226e616d65223b733a32323a2253616d73756e672047616c6178792053372045646765223b733a353a22726f776964223b733a33323a226135373731626365393365323030633336663763643964666430653564656161223b733a383a22737562746f74616c223b643a31383439303030303b7d7d),
('a3c23111d151bd6caef2c4ee4a07ba2b8fb09e52', '192.168.19.1', 1467217682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373231373638323b757365727c733a353a2261646d696e223b6c6576656c7c733a313a2232223b69647c733a333a22323135223b4b4346494e4445527c613a313a7b733a383a2264697361626c6564223b623a303b7d636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a34353439303030303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226634353763353435613964656438386631386563656534373134356137326330223b613a363a7b733a323a226964223b733a323a223439223b733a333a22717479223b643a313b733a353a227072696365223b643a363439303030303b733a343a226e616d65223b733a31353a22485443204f6e65204539204475616c223b733a353a22726f776964223b733a33323a226634353763353435613964656438386631386563656534373134356137326330223b733a383a22737562746f74616c223b643a363439303030303b7d733a33323a226135626663396530373936346638646464656239356663353834636439363564223b613a363a7b733a323a226964223b733a323a223337223b733a333a22717479223b643a313b733a353a227072696365223b643a32353030303030303b733a343a226e616d65223b733a31343a226950686f6e6520367320506c7573223b733a353a22726f776964223b733a33323a226135626663396530373936346638646464656239356663353834636439363564223b733a383a22737562746f74616c223b643a32353030303030303b7d733a33323a226436343539323065333935666564616437626262656430656361336665326530223b613a363a7b733a323a226964223b733a323a223430223b733a333a22717479223b643a313b733a353a227072696365223b643a31343030303030303b733a343a226e616d65223b733a32323a224d6963726f736f6674204c756d69612039353020584c223b733a353a22726f776964223b733a33323a226436343539323065333935666564616437626262656430656361336665326530223b733a383a22737562746f74616c223b643a31343030303030303b7d7d),
('beb9a8037d87b6c903d24acb522096e4180c1eef', '192.168.19.1', 1467467233, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373436373233333b),
('d78054219190213fca9b64e5ff7426b18556ab67', '192.168.19.1', 1467536008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373533363030383b),
('df4267eb2bce70622060597c37e766a97180813e', '192.168.19.1', 1467304336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436373330343039383b),
('e8648cdd91c8eafe262d5f11e5043704b82a134a', '192.168.2.144', 1463494142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436333439333933343b67756573747c733a393a22546573742063616920223b757365727c733a353a2261646d696e223b6c6576656c7c733a313a2232223b69647c733a333a22323135223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a31383439303030303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226135373731626365393365323030633336663763643964666430653564656161223b613a363a7b733a323a226964223b733a323a223338223b733a333a22717479223b643a313b733a353a227072696365223b643a31383439303030303b733a343a226e616d65223b733a32323a2253616d73756e672047616c6178792053372045646765223b733a353a22726f776964223b733a33323a226135373731626365393365323030633336663763643964666430653564656161223b733a383a22737562746f74616c223b643a31383439303030303b7d7d4b4346494e4445527c613a313a7b733a383a2264697361626c6564223b623a303b7d),
('f659cabfd87e1cad93d9c6df2e8c704bc7100eeb', '192.168.19.1', 1465306660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436353330363635393b);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(6) UNSIGNED NOT NULL,
  `comment_product` int(6) UNSIGNED DEFAULT NULL,
  `comment_user` int(6) UNSIGNED DEFAULT '0',
  `comment_guest` varchar(50) NOT NULL,
  `comment_mail` varchar(50) NOT NULL,
  `comment_content` varchar(2000) NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment_parent` int(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_product`, `comment_user`, `comment_guest`, `comment_mail`, `comment_content`, `comment_time`, `comment_parent`) VALUES
(3, 37, 215, '', '', 'Xin chao ban nhe', '2016-07-01 14:28:47', 2);

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `config_name` varchar(100) NOT NULL,
  `config_title` varchar(200) NOT NULL,
  `config_value` text,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`config_name`, `config_title`, `config_value`, `id`) VALUES
('slogan', 'Slogan for website', 'Fast - Trust - Smart Store 2', 1),
('site_email', 'Email', 'kmasteryc@gmail.com', 2),
('sale_phone', 'Sale phone', '0186666888', 3),
('store_address', 'Store\'s address', 'Silicon Valley', 4),
('company', 'Company name', 'KmasterYC JSC', 5);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `detail_product` int(6) UNSIGNED NOT NULL,
  `detail_spec` int(6) UNSIGNED NOT NULL,
  `detail_value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`detail_product`, `detail_spec`, `detail_value`) VALUES
(37, 11, '6'),
(37, 12, '13'),
(37, 13, '5'),
(37, 14, '64'),
(37, 15, ' iOS'),
(37, 16, ' Quad Core 1.4 Ghz'),
(37, 17, '151.7x76x7.8'),
(37, 18, 'yes'),
(38, 11, '6'),
(38, 12, '7'),
(38, 13, '7'),
(38, 14, '128'),
(38, 15, 'Android'),
(38, 16, 'Penta Core 1.5 Ghz'),
(38, 17, '100x100x100'),
(38, 18, 'no'),
(38, 19, '1'),
(39, 11, '9'),
(39, 12, '6'),
(39, 13, '21'),
(39, 14, '64'),
(39, 15, ' Linux'),
(39, 16, ' Octa Core 1.6Ghz'),
(39, 17, '152x154x90'),
(39, 18, 'no'),
(39, 19, '3'),
(40, 11, '7'),
(40, 12, '12'),
(40, 13, '13'),
(40, 14, '32'),
(40, 15, ' Linux'),
(40, 16, ' Quad Core 1.4 Ghz'),
(40, 17, '152x154x90'),
(40, 18, 'no'),
(40, 19, '8'),
(41, 11, '8'),
(41, 12, '12'),
(41, 13, '7'),
(41, 14, '64'),
(41, 15, ' iOS'),
(41, 16, ' Quad Core 1.4 Ghz'),
(41, 17, '151.7x76x7.8'),
(41, 18, 'yes'),
(41, 19, '8'),
(46, 11, '3'),
(46, 12, '5'),
(46, 13, '5'),
(46, 14, '4'),
(46, 15, 'Android'),
(46, 16, 'Dual Core 1.2 Ghz'),
(46, 17, '151.7x76x7.8'),
(46, 18, 'yes'),
(46, 19, '0'),
(47, 11, '6.5'),
(47, 12, '10'),
(47, 13, '5'),
(47, 14, '128'),
(47, 15, ' Linux'),
(47, 16, 'Dual Core 1.2 Ghz'),
(47, 17, '152x154x90'),
(47, 18, 'yes'),
(47, 19, '0'),
(48, 11, '4'),
(48, 12, '6'),
(48, 13, '7'),
(48, 14, '4'),
(48, 15, ' Window'),
(48, 16, ' Octa Core 1.6Ghz'),
(48, 17, '50x50x50'),
(48, 18, 'no'),
(48, 19, '8'),
(49, 11, '12.5'),
(49, 12, '12'),
(49, 13, '10'),
(49, 14, '2048'),
(49, 15, ' Linux'),
(49, 16, ' Octa Core 1.6Ghz'),
(49, 17, '100x100x100'),
(49, 18, 'no'),
(49, 19, '3'),
(50, 11, '5'),
(50, 12, '21'),
(50, 13, '13'),
(50, 14, '64'),
(50, 15, ' Window Phone'),
(50, 16, ' Quad Core 1.4 Ghz'),
(50, 17, '100x100x100'),
(50, 18, 'no'),
(50, 19, '3'),
(59, 11, '3'),
(59, 12, '5'),
(59, 13, '5'),
(59, 14, '4'),
(59, 15, 'Android'),
(59, 16, 'Dual Core 1.2 Ghz'),
(59, 17, '151.7x76x7.8'),
(59, 18, 'yes'),
(59, 19, '0'),
(60, 11, '3'),
(60, 12, '5'),
(60, 13, '5'),
(60, 14, '4'),
(60, 15, 'Android'),
(60, 16, 'Dual Core 1.2 Ghz'),
(60, 17, '151.7x76x7.8'),
(60, 18, 'yes'),
(60, 19, '0'),
(61, 11, '7'),
(61, 12, '5'),
(61, 13, '5'),
(61, 14, '64'),
(61, 15, 'Android'),
(61, 16, ' Octa Core 1.6Ghz'),
(61, 17, '100x100x100'),
(61, 18, 'yes'),
(61, 19, '8'),
(62, 11, '3'),
(62, 14, '256'),
(62, 15, 'Android'),
(62, 16, ' Octa Core 1.6Ghz'),
(62, 17, '151.7x76x7.8'),
(62, 18, 'yes'),
(62, 19, '3'),
(63, 11, '6.5'),
(63, 12, '13'),
(63, 13, '12'),
(63, 14, '4'),
(63, 15, ' Linux'),
(63, 16, ' Octa Core 1.6Ghz'),
(63, 17, '100x100x100'),
(63, 18, 'no'),
(63, 19, '3'),
(64, 11, '3'),
(64, 12, '9'),
(64, 13, '8'),
(64, 14, '128'),
(64, 15, 'Android'),
(64, 16, 'Dual Core 1.2 Ghz'),
(64, 17, '151.7x76x7.8'),
(64, 18, 'yes'),
(64, 19, '0'),
(65, 11, '7.5'),
(65, 12, '11'),
(65, 13, '7'),
(65, 14, '256'),
(65, 15, ' Linux'),
(65, 16, 'Dual Core 1.2 Ghz'),
(65, 17, '152x154x90'),
(65, 18, 'yes'),
(65, 19, '0');

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` int(6) UNSIGNED NOT NULL,
  `gift_content` varchar(1000) NOT NULL,
  `gift_startdate` date NOT NULL,
  `gift_enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`id`, `gift_content`, `gift_startdate`, `gift_enddate`) VALUES
(20, 'Bonus 1 girl-friend per 10 products :D', '2016-05-02', '2016-05-31'),
(21, 'Discount 10% when going with a beatiful girl! :D', '2016-05-01', '2016-05-30'),
(22, 'A free mouse', '2016-06-09', '2016-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `gift_product`
--

CREATE TABLE `gift_product` (
  `gift_id` int(6) UNSIGNED NOT NULL,
  `product_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gift_product`
--

INSERT INTO `gift_product` (`gift_id`, `product_id`) VALUES
(20, 37),
(21, 37),
(20, 38),
(21, 38),
(22, 38),
(20, 39),
(21, 39),
(20, 40),
(21, 40),
(21, 49);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(6) UNSIGNED NOT NULL,
  `image_product` int(6) UNSIGNED NOT NULL,
  `image_user` int(6) UNSIGNED NOT NULL,
  `image_type` int(6) UNSIGNED NOT NULL,
  `image_title` varchar(300) NOT NULL,
  `image_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `image_types`
--

CREATE TABLE `image_types` (
  `id` int(6) UNSIGNED NOT NULL,
  `image_type_name` varchar(120) NOT NULL,
  `image_type_info` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(6) UNSIGNED NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `product_slug` varchar(100) NOT NULL,
  `product_price` int(10) UNSIGNED NOT NULL,
  `product_discount` int(10) NOT NULL DEFAULT '0',
  `product_vendor` int(6) UNSIGNED NOT NULL,
  `product_cate` int(6) UNSIGNED NOT NULL,
  `product_img` varchar(150) NOT NULL DEFAULT 'default.png',
  `product_remain` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `product_date` date NOT NULL,
  `product_info` text NOT NULL,
  `product_detail` int(6) UNSIGNED NOT NULL,
  `product_image` int(10) UNSIGNED NOT NULL,
  `product_video` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_slug`, `product_price`, `product_discount`, `product_vendor`, `product_cate`, `product_img`, `product_remain`, `product_date`, `product_info`, `product_detail`, `product_image`, `product_video`) VALUES
(37, 'iPhone 6s Plus', 'iPhone-6s-Plus', 25000000, 1000000, 16, 14, 'iphone-6s-plus-64gb-400-400x450.png', 0, '2016-05-05', '<h1>iPhone 6s Plus l&agrave;&nbsp;phi&ecirc;n bản&nbsp;n&acirc;ng cấp ho&agrave;n hảo từ iPhone 6 Plus với nhiều t&iacute;nh năng mới hấp dẫn.</h1>\r\n\r\n<p><strong>Camera được cải tiến</strong></p>\r\n\r\n<p>iPhone 6s Plus được n&acirc;ng cấp độ ph&acirc;n giải camera sau l&ecirc;n 12 MP (thay v&igrave; 8 MP như tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6-plus-16gb" target="_blank" title="Thông tin điện thoại iPhone 6 Plus 16 GB">iPhone 6 Plus</a>), camera cho tốc độ lấy n&eacute;t v&agrave; chụp nhanh, thao t&aacute;c chạm để chụp nhẹ nh&agrave;ng. Chất lượng ảnh trong c&aacute;c điều kiện chụp kh&aacute;c nhau tốt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb3-1.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb2-1.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>iPhone 6s Plus cho m&agrave;u s&aacute;ng hơn hẳn so với iPhone 6 Plus</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73705/iphone-6s-plus-128gb6-1.jpg" onclick="return false;"><img alt="Lấy nét nhanh, hình ảnh không bị nhòe" src="https://cdn1.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb6-1.jpg" title="Lấy nét nhanh, hình ảnh không bị nhòe" /></a></p>\r\n\r\n<p><em>Lấy n&eacute;t nhanh, h&igrave;nh ảnh kh&ocirc;ng bị nh&ograve;e (Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1691087" target="_blank" title="Thông tin người gửi ảnh">Nguyễn Trung Th&ocirc;ng</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73705/iphone-6s-plus-128gb7.jpg" onclick="return false;"><img alt="Hình ảnh cầu vòng kép rất đẹp mắt" src="https://cdn3.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb7.jpg" title="Hình ảnh cầu vòng kép rất đẹp mắt" /></a></p>\r\n\r\n<p><em>H&igrave;nh ảnh cầu v&ograve;ng rất đẹp mắt&nbsp;</em><em>(Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1691087" target="_blank" title="Thông tin người gửi ảnh">Nguyễn Trung Th&ocirc;ng</a>)</em></p>\r\n\r\n<p>Camera trước với độ ph&acirc;n giải 5 MP cho h&igrave;nh ảnh với độ chi tiết r&otilde; n&eacute;t, đặc biệt m&aacute;y c&ograve;n c&oacute; t&iacute;nh năng Retina Flash, sẽ gi&uacute;p m&agrave;n h&igrave;nh s&aacute;ng l&ecirc;n như đ&egrave;n Flash để bức ảnh khi bạn chụp trong trời tối được tốt hơn.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73705/iphone-6s-plus-128gb45432.gif" onclick="return false;"><img alt=" Để bật tính năng Retina Flash, tại camera trước bạn bật đèn Flash lên" src="https://cdn.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb45432.gif" title=" Để bật tính năng Retina Flash, tại camera trước bạn bật đèn Flash lên" /></a></p>\r\n\r\n<p><em>Để bật t&iacute;nh năng Retina Flash, tại camera trước bạn bật đ&egrave;n Flash l&ecirc;n</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb1-2.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb2-2.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Ảnh chụp khi bật chức năng retina flash cho chủ thể s&aacute;ng hơn</em></p>\r\n\r\n<p><strong>Th&iacute;ch th&uacute; hơn với m&agrave;n h&igrave;nh rộng</strong></p>\r\n\r\n<p>M&agrave;n h&igrave;nh lớn c&ugrave;ng&nbsp;m&agrave;u sắc tươi tắn, độ n&eacute;t cao&nbsp;sẽ mang đến nhiều&nbsp;th&iacute;ch th&uacute; khi lướt web, xem phim hay l&agrave;m việc.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73705/iphone-6s-plus-128gb5-1.jpg" onclick="return false;"><img alt=" Màn hình lớn 5.5 inch thoải mái để làm việc và giải trí" src="https://cdn2.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb5-1.jpg" title=" Màn hình lớn 5.5 inch thoải mái để làm việc và giải trí" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh lớn 5.5 inch thoải m&aacute;i để l&agrave;m việc v&agrave; giải tr&iacute;</em></p>\r\n\r\n<p><strong>Cảm ứng 3D Touch độc đ&aacute;o</strong></p>\r\n\r\n<p>3D Touch l&agrave; t&iacute;nh năng ho&agrave;n to&agrave;n mới tr&ecirc;n iPhone 6s Plus, cho ph&eacute;p người d&ugrave;ng xem trước được c&aacute;c t&ugrave;y chọn nhanh dựa v&agrave;o lực nhấn mạnh hay nhẹ m&agrave; kh&ocirc;ng cần phải nhấp v&agrave;o ứng dụng. Để sử dụng, bạn chỉ cần nhấn v&agrave;o m&agrave;n h&igrave;nh hoặc ứng dụng 1 lực mạnh đến khi m&aacute;y rung nhẹ l&agrave; c&oacute; thể xem được.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73705/iphone-6s-plus-128gb4782.gif" onclick="return false;"><img alt=" Chọn nhanh các lựa chọn trên camera của máy" src="https://cdn4.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb4782.gif" title=" Chọn nhanh các lựa chọn trên camera của máy" /></a></p>\r\n\r\n<p><em>Chọn nhanh c&aacute;c lựa chọn tr&ecirc;n camera của m&aacute;y</em></p>\r\n\r\n<p>Đ&aacute;ng tiếc t&iacute;nh năng 3D Touch n&agrave;y chỉ mới được &aacute;p dụng tr&ecirc;n c&aacute;c&nbsp;ứng dụng của Apple&nbsp;như: danh bạ, camera, mail, m&aacute;y ảnh ...&nbsp;</p>\r\n\r\n<p>Bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m t&iacute;nh năng 3D Touch&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tong-hop-tat-ca-nhung-tien-ich-3d-touch-dem-den-cho-nguoi-dung-714800" target="_blank" title="Tổng hợp tất cả những mẹo dùng 3D Touch trên iPhone 6s cho người mới"><strong>tại&nbsp;đ&acirc;y</strong></a>.</p>\r\n\r\n<p><strong>Sức mạnh của bộ vi xử l&yacute; A9 mới nhất</strong></p>\r\n\r\n<p>iPhone 6s Plus sử dụng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/chip-xu-ly-apple-a9-tren-iphone-6s-va-6s-plus-733695" target="_blank" title="Tìm hiểu rõ hơn về chip xử lý A9">vi xử l&yacute; A9</a>&nbsp;tốc độ 1.8 GHz (iPhone 6 Plus chỉ với 1.4 GHz), gi&uacute;p m&aacute;y chạy c&ugrave;ng l&uacute;c nhiều ứng dụng mượt m&agrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&nbsp;Bạn sẽ thực sự cảm nhận được sức mạnh của iPhone 6s Plus khi chiến c&aacute;c game c&oacute; đồ họa nặng như&nbsp;<a href="https://www.thegioididong.com/tin-tuc/modern-combat-5-blackout-game-bom-tan-do-bo-len-ca-556327" target="_blank" title="Thông tin thêm về game Modern Combat">Modern Combat 5</a>&nbsp;hay&nbsp;Warhammer 40.000</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Người trợ l&yacute; ảo rất hữu dụng tr&ecirc;n c&aacute;c d&ograve;ng m&aacute;y iPhone (Nguồn: Youtube)</p>\r\n\r\n<p>Vi&ecirc;n pin c&oacute; dung lượng 2715 mAh kh&aacute; thấp, tuy nhi&ecirc;n bạn vẫn c&oacute; thể sử dụng m&aacute;y trong một ng&agrave;y với c&aacute;c t&iacute;nh năng cơ bản.&nbsp;Ngo&agrave;i ra iPhone 6s Plus c&ograve;n được trang bị c&aacute;c c&ocirc;ng nghệ: Wifi chuẩn dual-band v&agrave; t&iacute;nh năng kết nối 4G thời thượng, cho tốc độ kết nối v&agrave; tải dữ liệu rất nhanh,&nbsp;cảm biến v&acirc;n tay cải tiến để nhận diện v&agrave; mở kh&oacute;a nhanh hơn.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73705/iphone-6s-plus-128gb1-1.jpg" onclick="return false;"><img alt="Màu hồng vàng độc đáo rất bắt mắt các bạn nữ" src="https://cdn1.tgdd.vn/Products/Images/42/73705/iphone-6s-plus-128gb1-1.jpg" title="Màu hồng vàng độc đáo rất bắt mắt các bạn nữ" /></a></p>\r\n\r\n<p><em>M&agrave;u hồng v&agrave;ng độc đ&aacute;o rất bắt mắt c&aacute;c bạn nữ</em></p>\r\n\r\n<p>Một chiếc điện thoại vừa thể hiện đẳng cấp của bạn vừa mang lại những n&acirc;ng cấp tốt hơn như camera, hiệu năng hoạt động mạnh mẽ hơn, t&iacute;nh năng 3D Touch độc đ&aacute;o, tất cả sẽ l&agrave; trải nghiệm mới mẻ cho bạn khi chọn mua iPhone 6s Plus.</p>\r\n', 0, 0, 0),
(38, 'Samsung Galaxy S7 Edge', 'Samsung-Galaxy-S7-Edge', 18490000, 0, 15, 14, 'samsung-galaxy-a5-2016-400x460.png', 0, '2016-05-05', '<h1>Nhiều t&ugrave;y chỉnh tiện &iacute;ch hơn ở cạnh viền c&ugrave;ng vi xử l&yacute; mạnh mẽ, t&iacute;nh năng độc đ&aacute;o, m&agrave;n h&igrave;nh to mang lại kh&ocirc;ng gian giải tr&iacute; v&agrave; l&agrave;m việc tối ưu nhất.</h1>\r\n\r\n<p><strong>Khả năng chống nước, chống bụi an to&agrave;n cho m&aacute;y</strong></p>\r\n\r\n<p>Nhờ đạt chuẩn IP68 n&ecirc;n&nbsp;ho&agrave;n to&agrave;n c&oacute; thể bảo vệ được tốt cho&nbsp;Galaxy S7 Edge khi v&ocirc; t&igrave;nh d&iacute;nh nước mưa hay l&agrave;m đổ nước, cho bạn th&ecirc;m an t&acirc;m trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-9.jpg" onclick="return false;"><img alt="Máy thật sự an toàn khi vô tình rớt vào nước hay đi dưới mưa" src="https://cdn3.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-9.jpg" title="Máy thật sự an toàn khi vô tình rớt vào nước hay đi dưới mưa" /></a></p>\r\n\r\n<p><em>M&aacute;y thật sự an to&agrave;n khi v&ocirc; t&igrave;nh rớt v&agrave;o nước hay đi dưới mưa</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-24.jpg" onclick="return false;"><img alt="Một tính năng thật sự là điểm sáng mới trên các dòng cao cấp của Samsung so với đối thủ" src="https://cdn.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-24.jpg" title="Một tính năng thật sự là điểm sáng mới trên các dòng cao cấp của Samsung so với đối thủ" /></a></p>\r\n\r\n<p><em>Một t&iacute;nh năng thật sự l&agrave; điểm s&aacute;ng mới tr&ecirc;n c&aacute;c d&ograve;ng cao cấp của Samsung so với đối thủ</em></p>\r\n\r\n<p><strong>Rất nhiều cải tiến cho cạnh viền</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-15.jpg" onclick="return false;"><img alt="Các tác vụ nhanh hiển thị nhiều hơn trong 1 lần vuốt và bạn có thể gắn tới 20 tác vụ nhanh trên này" src="https://cdn2.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-15.jpg" title="Các tác vụ nhanh hiển thị nhiều hơn trong 1 lần vuốt và bạn có thể gắn tới 20 tác vụ nhanh trên này" /></a></p>\r\n\r\n<p><em>C&aacute;c t&aacute;c vụ nhanh hiển thị nhiều hơn trong 1 lần vuốt v&agrave; bạn c&oacute; thể gắn tới 20 t&aacute;c vụ nhanh tr&ecirc;n n&agrave;y</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-5.jpg" onclick="return false;"><img alt="Tùy chỉnh thêm nhiều cột trong cạnh viền màn hình" src="https://cdn4.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-5.jpg" title="Tùy chỉnh thêm nhiều cột trong cạnh viền màn hình" /></a></p>\r\n\r\n<p><em>T&ugrave;y chỉnh th&ecirc;m nhiều cột trong cạnh viền m&agrave;n h&igrave;nh</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge100.gif" onclick="return false;"><img alt="Tùy chọn ứng dụng dễ dàng" src="https://cdn1.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge100.gif" title="Tùy chọn ứng dụng dễ dàng" /></a></p>\r\n\r\n<p><em>Rất dễ d&agrave;ng để bạn c&agrave;i đặt th&ecirc;m bớt hay thay đổi c&aacute;c mục hiển thị ở cạnh viền</em></p>\r\n\r\n<p><strong>Thiết kế cong ho&agrave;n hảo</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge1-1.jpg" onclick="return false;"><img alt="Các chi tiết trên máy đều được hoàn thiện một cách tỉ mỉ và tinh tế nhất" src="https://cdn3.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge1-1.jpg" title="Các chi tiết trên máy đều được hoàn thiện một cách tỉ mỉ và tinh tế nhất" /></a></p>\r\n\r\n<p><em>C&aacute;c chi tiết tr&ecirc;n m&aacute;y đều được ho&agrave;n thiện một c&aacute;ch tỉ mỉ v&agrave; tinh tế nhất</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-17.jpg" onclick="return false;"><img alt="Màn hình lớn hơn mang lại không gian giải trí và làm việc thoải mái hơn, tuy nhiên mặt lưng bằng kính lại khá dễ bám vân tay" src="https://cdn.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-17.jpg" title="Màn hình lớn hơn mang lại không gian giải trí và làm việc thoải mái hơn, tuy nhiên mặt lưng bằng kính lại khá dễ bám vân tay" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh lớn hơn mang lại kh&ocirc;ng gian giải tr&iacute; v&agrave; l&agrave;m việc thoải m&aacute;i hơn, tuy nhi&ecirc;n mặt lưng bằng k&iacute;nh lại kh&aacute; dễ b&aacute;m v&acirc;n tay</em></p>\r\n\r\n<p><strong>Camera tuyệt vời</strong></p>\r\n\r\n<p>Giảm từ độ ph&acirc;n giải 16 MP tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s6-edge" target="_blank" title="Điện thoại Samsung Galaxy S6 Edge">S6 Edge</a>&nbsp;xuống 12 MP nhưng Galaxy S7 Edge được trang bị c&ocirc;ng nghệ Dual Pixel gi&uacute;p b&ugrave; s&aacute;ng rất tốt trong những điều kiện chụp ảnh thiếu s&aacute;ng.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge11.jpg" onclick="return false;"><img alt="Nhiều công nghệ chụp ảnh mới trên máy" src="https://cdn2.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge11.jpg" title="Nhiều công nghệ chụp ảnh mới trên máy" /></a></p>\r\n\r\n<p><em>Nhiều chế độ chụp ảnh cho bạn lựa chọn</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-8.jpg" onclick="return false;"><img alt="Ảnh chụp của Galaxy S7 Edge (Ảnh: Nghĩa Trần)" src="https://cdn4.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-8.jpg" title="Ảnh chụp của Galaxy S7 Edge (Ảnh: Nghĩa Trần)" /></a></p>\r\n\r\n<p><em>Ảnh chụp của Galaxy S7 Edge (Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1004065202/trang-1" target="_blank" title="Thông tin người dùng">Nghĩa Trần</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-21.jpg" onclick="return false;"><img alt="Màu sắc được tái tạo lại rất tốt" src="https://cdn1.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-21.jpg" title="Màu sắc được tái tạo lại rất tốt" /></a></p>\r\n\r\n<p><em>M&agrave;u sắc được t&aacute;i tạo lại rất tốt</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-11.jpg" onclick="return false;"><img alt="Ảnh được chụp trong nhà" src="https://cdn3.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-11.jpg" title="Ảnh được chụp trong nhà" /></a></p>\r\n\r\n<p><em>Ảnh được chụp trong nh&agrave;</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-2.jpg" onclick="return false;"><img alt="Và ảnh chụp thiếu sáng xung quanh hoàn toàn" src="https://cdn.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-2.jpg" title="Và ảnh chụp thiếu sáng xung quanh hoàn toàn" /></a></p>\r\n\r\n<p><em>V&agrave; ảnh chụp thiếu s&aacute;ng xung quanh ho&agrave;n to&agrave;n</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge101.gif" onclick="return false;"><img alt="Cách hoạt động của tính năng nhận diện bàn tay" src="https://cdn2.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge101.gif" title="Cách hoạt động của tính năng nhận diện bàn tay" /></a></p>\r\n\r\n<p><em>T&iacute;nh năng nhận diện b&agrave;n tay tr&ecirc;n camera trước 5 MP hoạt động rất nhạy v&agrave; tiện lợi, c</em><em>&aacute;ch hoạt động của t&iacute;nh năng nhận diện b&agrave;n tay</em></p>\r\n\r\n<p><strong>Phần cứng hoạt động hiệu quả</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-1-1.jpg" onclick="return false;"><img alt="Màn hình kích thước lớn 5.5 inch, công nghệ Super AMOLED mang lại góc nhìn rộng, màu sắc không bị biến đổi, hình ảnh cho màu sắc tươi tắn" src="https://cdn4.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-1-1.jpg" title="Màn hình kích thước lớn 5.5 inch, công nghệ Super AMOLED mang lại góc nhìn rộng, màu sắc không bị biến đổi, hình ảnh cho màu sắc tươi tắn" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh k&iacute;ch thước lớn 5.5 inch, c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank" title="Tìm hiểu công nghệ Super AMOLED">Super AMOLED</a>&nbsp;mang lại g&oacute;c nh&igrave;n rộng, m&agrave;u sắc kh&ocirc;ng bị biến đổi, h&igrave;nh ảnh cho m&agrave;u sắc tươi tắn</em></p>\r\n\r\n<p>M&aacute;y d&ugrave;ng chip Exynos 8890, 8 nh&acirc;n c&ugrave;ng mức RAM 4 GB mang lại hiệu quả hoạt động tuyệt vời, hơn hiệu năng 30% so với d&ograve;ng sản phẩm S6 trước.&nbsp;</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-25.jpg" onclick="return false;"><img alt="Máy được tặng kèm theo 1 USB kết nối nhỏ, giúp bạn có thể gắn các USB type A, tay cầm chơi game..." src="https://cdn1.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-25.jpg" title="Máy được tặng kèm theo 1 USB kết nối nhỏ, giúp bạn có thể gắn các USB type A, tay cầm chơi game..." /></a></p>\r\n\r\n<p><em>&nbsp;M&aacute;y được tặng k&egrave;m theo 1 USB kết nối nhỏ, gi&uacute;p bạn c&oacute; thể gắn c&aacute;c USB type A, tay cầm chơi game...</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Xem th&ecirc;m c&aacute;ch sử dụng USB nhỏ với tay cầm chơi game (Nguồn:&nbsp;adrianisen)</em></p>\r\n\r\n<p>M&aacute;y d&ugrave;ng hệ điều h&agrave;nh&nbsp;<a href="https://www.thegioididong.com/hoi-dap/android-6-marshmallow-co-gi-hot-726146" target="_blank" title="Tìm hiểu thêm về Android 6.0">Marshmallow&nbsp;6.0</a>, đặc biệt với c&ocirc;ng nghệ tản nhiệt bằng chất lỏng gi&uacute;p m&aacute;y kh&ocirc;ng bị qu&aacute; n&oacute;ng trong qu&aacute; tr&igrave;nh sử dụng thời gian d&agrave;i.</p>\r\n\r\n<p><strong>C&aacute;c tiện &iacute;ch đi k&egrave;m</strong></p>\r\n\r\n<p><em><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-20.jpg" onclick="return false;"><img alt="Tính năng Game Tools và Game Laucher cực kì hữu ích cho các game thủ khi chơi game" src="https://cdn3.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-20.jpg" title="Tính năng Game Tools và Game Laucher cực kì hữu ích cho các game thủ khi chơi game" /></a></em></p>\r\n\r\n<p><em><em>T&iacute;nh năng Game Tools v&agrave; Game Laucher cực k&igrave; hữu &iacute;ch cho c&aacute;c game thủ khi chơi game</em></em></p>\r\n\r\n<p>Bạn xem th&ecirc;m 7 ứng dụng cực đỉnh của m&aacute;y&nbsp;<a href="https://www.thegioididong.com/tin-tuc/7-tinh-nang-phan-mem-dinh-tren-galaxy-s7-edge-ban-nen-biet-799285" target="_blank" title="7 tính năng phần mềm "><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><em><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge6.jpg" onclick="return false;"><img alt="Nếu bộ nhớ trong 32 GB vẫn ít, bạn vẫn có thể lựa chọn mở rộng thẻ nhớ lên đến 128 GB, tùy từng phiên bản của từng quốc gia mà máy sẽ hỗ trợ 2 sim hay 1 sim" src="https://cdn.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge6.jpg" title="Nếu bộ nhớ trong 32 GB vẫn ít, bạn vẫn có thể lựa chọn mở rộng thẻ nhớ lên đến 128 GB, tùy từng phiên bản của từng quốc gia mà máy sẽ hỗ trợ 2 sim hay 1 sim" /></a></em></p>\r\n\r\n<p><em><em>Nếu bộ nhớ trong 32 GB vẫn &iacute;t, bạn vẫn c&oacute; thể lựa chọn mở rộng&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai" target="_blank" title="Thẻ nhớ cho điện thoại">thẻ nhớ</a>&nbsp;l&ecirc;n đến&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai/the-nho-microsd-128gb-class-10-uhs1" target="_blank" title="Thông tin thẻ nhớ dung lượng 128 GB">128 GB</a>, t&ugrave;y từng phi&ecirc;n bản của từng quốc gia m&agrave; m&aacute;y sẽ hỗ trợ 2 sim hay 1 sim</em></em></p>\r\n\r\n<p>Xem th&ecirc;m c&aacute;ch c&agrave;i ứng dụng tr&ecirc;n thẻ nhớ&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cai-ung-dung-len-the-nho-ngoai-tren-s7-s7-edge-kha-de-dang-810529" target="_blank" title="Cài ứng dụng lên thẻ nhớ ngoài Galaxy S7, S7 Edge khá dễ dàng"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><em><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge-19.jpg" onclick="return false;"><img alt="Always On Display giúp bạn không bỏ lỡ bất cứ thông báo quan trọng nào và không hề tiêu hao nhiều pin" src="https://cdn2.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge-19.jpg" title="Always On Display giúp bạn không bỏ lỡ bất cứ thông báo quan trọng nào và không hề tiêu hao nhiều pin" /></a></em></p>\r\n\r\n<p><em><em>Always On Display gi&uacute;p bạn kh&ocirc;ng bỏ lỡ bất cứ th&ocirc;ng b&aacute;o quan trọng n&agrave;o v&agrave; kh&ocirc;ng hề ti&ecirc;u hao nhiều pin</em></em></p>\r\n\r\n<p><em><a href="https://www.thegioididong.com/images/42/75180/samsung-galaxy-s7-edge8.jpg" onclick="return false;"><img alt="Khả năng sạc nhanh bằng dây trên Galaxy S7 Edge giúp bạn rút ngắn thời gian sạc để đầy dung lượng pin 3600 mAh" src="https://cdn4.tgdd.vn/Products/Images/42/75180/samsung-galaxy-s7-edge8.jpg" title="Khả năng sạc nhanh bằng dây trên Galaxy S7 Edge giúp bạn rút ngắn thời gian sạc để đầy dung lượng pin 3600 mAh" /></a></em></p>\r\n\r\n<p><em><em>Khả năng sạc nhanh bằng d&acirc;y tr&ecirc;n Galaxy S7 Edge gi&uacute;p bạn r&uacute;t ngắn thời gian sạc để đầy dung lượng pin 3600 mAh</em></em></p>\r\n\r\n<p>Với nhiều những cải tiến mới lạ v&agrave; thực sự hữu &iacute;ch cho người d&ugrave;ng, Galaxy S7 Edge sẽ l&agrave; một sự lựa chọn tốt cho bạn y&ecirc;u th&iacute;ch một chiếc m&aacute;y mạnh v&agrave; c&oacute; thiết kế đẹp mắt.</p>\r\n', 0, 0, 0),
(39, 'Sony Xperia Z5 Premium Dual', 'Sony-Xperia-Z5-Premium-Dual', 17999000, 0, 15, 14, 'sony-xperia-z5-dual-400x460.png', 0, '2016-05-05', '<h1>Z5 Premium thuộc sản phẩm cao cấp nhất, được trang bị m&agrave;n h&igrave;nh 4K, phi&ecirc;n bản mặt lưng gương độc quyền c&ugrave;ng nhiều t&iacute;nh năng tốt.</h1>\r\n\r\n<p><strong>Smartphone đầu ti&ecirc;n sở hữu m&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#4k" target="_blank" title="độ phân giải 4k">độ ph&acirc;n giải 4K</a></strong></p>\r\n\r\n<p>M&agrave;n h&igrave;nh độ ph&acirc;n giải 4K tr&ecirc;n Xperia Z5 Premium Dual c&ugrave;ng nhiều c&ocirc;ng nghệ độc quyền của Sony như: Triluminos (n&acirc;ng cấp chất lượng h&igrave;nh ảnh),&nbsp;<a href="https://www.thegioididong.com/tin-tuc/mang-cong-nghe-man-hinh-x-reality-len-cac-may-xper-554705" target="_blank" title="Tìm hiểu công nghệ X-Reality">X-Reality&trade;</a>&nbsp;(tối ưu h&oacute;a m&agrave;u sắc, độ n&eacute;t)... sẽ gi&uacute;p bạn trải nghiệm h&igrave;nh ảnh, video 1 c&aacute;ch tuyệt vời nhất.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73023/sony-xperia-z5-premium-4k-screen1.jpg" onclick="return false;"><img alt="màn hình độ phân giải 4k" src="https://cdn1.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium-4k-screen1.jpg" title="màn hình độ phân giải 4k" /></a></p>\r\n\r\n<p><strong>Camera c&oacute; tốc độ lấy n&eacute;t si&ecirc;u nhanh</strong></p>\r\n\r\n<p>Camera sau độ ph&acirc;n giải 23 cho tốc độ lấy n&eacute;t cực nhanh (0.03 gi&acirc;y), c&aacute;c chế độ chụp hữu &iacute;ch như HDR, panorama hay x&oacute;a ph&ocirc;ng nền để l&agrave;m nổi bật điểm nhấn. Chụp ảnh dễ d&agrave;ng khi chỉ cần chạm v&agrave;o vị tr&iacute; bất kỳ tr&ecirc;n m&agrave;n h&igrave;nh m&agrave; bạn muốn lấy n&eacute;t v&agrave; camera sẽ chụp ảnh ngay lập tức.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium6-3.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium7-3.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>T&iacute;nh năng HDR tr&ecirc;n m&aacute;y gi&uacute;p ảnh c&acirc;n bằng s&aacute;ng rất tốt</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium20.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium21.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Khả năng ph&oacute;ng to ảnh kh&aacute; ấn tượng của Z5 Premium&nbsp;</em><em>(Ảnh: L&ecirc; Minh Ty)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73023/sony-xperia-z5-premium8-3.jpg" onclick="return false;"><img alt="Ảnh chụp trong tối được bù sáng rất tốt, tuy nhiên ảnh sẽ bị nhiễu hạt đôi chút" src="https://cdn3.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium8-3.jpg" title="Ảnh chụp trong tối được bù sáng rất tốt, tuy nhiên ảnh sẽ bị nhiễu hạt đôi chút" /></a></p>\r\n\r\n<p><em>Ảnh chụp trong tối được b&ugrave; s&aacute;ng rất tốt, tuy nhi&ecirc;n ảnh sẽ bị nhiễu hạt đ&ocirc;i ch&uacute;t (Ảnh: L&ecirc; Minh Ty)</em></p>\r\n\r\n<p>Với camera trước độ ph&acirc;n giải 5 MP vừa đủ để người d&ugrave;ng c&oacute; những tấm h&igrave;nh selfie ấn tượng c&ugrave;ng bạn b&egrave; v&agrave; người th&acirc;n.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73023/sony-xperia-z5-premium11-1.jpg" onclick="return false;"><img alt="Ảnh chụp selfie từ camera trước góc rộng của Xperia Z5 Premium Dual" src="https://cdn.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium11-1.jpg" title="Ảnh chụp selfie từ camera trước góc rộng của Xperia Z5 Premium Dual" /></a></p>\r\n\r\n<p><em>Ảnh chụp selfie từ camera trước</em></p>\r\n\r\n<p><strong>Quay v&agrave; tr&igrave;nh chiếu video 4K dễ d&agrave;ng</strong></p>\r\n\r\n<p>Với khả năng quay được video độ ph&acirc;n giải 4K, sẽ cho độ chi tiết gấp 4 lần so với video Full HD. Sau đ&oacute;, kết nối với&nbsp;<a href="https://www.dienmayxanh.com/tivi?g=tivi-4k" target="_blank" title="tivi 4k">tivi 4K</a>&nbsp;(tivi thường sẽ trở về định dạng ph&aacute;t cao nhất của tivi đ&oacute;) th&ocirc;ng qua&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-chuan-ket-noi-khong-day-giua-smartphone-voi-tv-590540#dlna" target="_blank" title="DLNA">DLNA</a>&nbsp;hay kết nối&nbsp;<a href="https://www.thegioididong.com/tin-tuc/chuyen-noi-dung-hd-tu-dtdd-den-hdtv-qua-chuan-mhl-10618" target="_blank" title="mhl">MHL</a>... để xem c&ugrave;ng gia đ&igrave;nh, bạn b&egrave;. Xem th&ecirc;m c&aacute;ch kết nối&nbsp;<a href="https://www.thegioididong.com/tin-tuc/chia-se-du-lieu-tu-smartphone-xperia-sang-tivi-son-549440" target="_blank" title="Hướng dẫn chia sẻ dữ liệu từ Smartphone Xperia sang Tivi Sony"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73023/sony-xperia-z5-premium-4k-video-show.jpg" onclick="return false;"><img alt="trình chiều video 4k lên tivi" src="https://cdn2.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium-4k-video-show.jpg" title="trình chiều video 4k lên tivi" /></a></p>\r\n\r\n<p><strong>Bảo mật hơn với cảm biến v&acirc;n tay</strong></p>\r\n\r\n<p>Cảm biến v&acirc;n tay 1 chạm được t&iacute;ch hợp tr&ecirc;n n&uacute;t nguồn v&agrave; được đặt ở cạnh phải của m&aacute;y, bạn chỉ cần cầm m&aacute;y l&ecirc;n v&agrave; mở kh&oacute;a bảo mật chỉ với 1 thao t&aacute;c đơn giản.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73023/sony-xperia-z5-premium898.gif" onclick="return false;"><img alt="Sử dụng dễ dàng và nhận dạng dấu tay rất nhanh" src="https://cdn4.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium898.gif" title="Sử dụng dễ dàng và nhận dạng dấu tay rất nhanh" /></a></p>\r\n\r\n<p><em>Mở m&agrave;n h&igrave;nh v&agrave; chạm nhẹ l&ecirc;n n&uacute;t nguồn để mở kh&oacute;a</em></p>\r\n\r\n<p><strong>Thời gian sử dụng pin, thời gian sạc pin ấn tượng</strong></p>\r\n\r\n<p>Dung lượng pin chỉ 3430 mAh nhưng Z5 Premium vẫn đảm bảo được thời gian sử dụng cho cả ng&agrave;y l&agrave;m việc, ngo&agrave;i ra hai chế độ tiết kiệm pin STAMINA v&agrave; Ultra STAMINA sẽ gi&uacute;p bạn k&eacute;o d&agrave;i thời gian sử dụng, bạn tham khảo th&ecirc;m&nbsp;<a href="https://www.thegioididong.com/tin-tuc/de-chiec-xperia-song-lau-hon-gap-4-lan-546501" target="_blank" title="Tìm hiểu chế độ STAMINA của Sony"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73023/sony-xperia-z5-premium17.jpg" onclick="return false;"><img alt="Chế độ Pin STAMINA giúp tiết kiệm pin, tăng thời gian sử dụng nhờ tắt các kết nối, ứng dụng chạy nền không cần thiết." src="https://cdn1.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium17.jpg" title="Chế độ Pin STAMINA giúp tiết kiệm pin, tăng thời gian sử dụng nhờ tắt các kết nối, ứng dụng chạy nền không cần thiết." /></a></p>\r\n\r\n<p><em>Chế độ STAMINA sẽ tắt c&aacute;c ứng dụng chạy ngầm, Ultra STAMINA sẽ đưa m&aacute;y về giao diện cơ bản chỉ c&oacute; nghe gọi, nhắn tin hay b&aacute;o thức</em></p>\r\n\r\n<p>M&aacute;y c&ograve;n hỗ trợ sạc nhanh gi&uacute;p bạn r&uacute;t ngắn thời gian chờ đợi, v&agrave; chỉ trong 10 ph&uacute;t sạc cũng gi&uacute;p bạn sử dụng m&aacute;y trong nhiều giờ liền với c&aacute;c thao c&aacute;c cơ bản như nghe gọi, nhắn tin.&nbsp;</p>\r\n\r\n<p><strong>Phi&ecirc;n bản m&agrave;u chrome độc quyền</strong></p>\r\n\r\n<p>Thuộc d&ograve;ng cao cấp nhất trong bộ ba Z5 n&ecirc;n chỉ ri&ecirc;ng&nbsp;Xperia Z5 Premium Dual được l&agrave;m nổi bật với mặt lưng c&oacute; khả năng d&ugrave;ng th&agrave;nh một chiếc gương soi độc đ&aacute;o.&nbsp;</p>\r\n\r\n<p><img alt="Slider 1" src="file:///C:/Users/THUYDU~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg" /><a href="https://www.thegioididong.com/images/42/73023/sony-xperia-z5-premium13-2.jpg" onclick="return false;"><img alt="Xperia Z5 Premium Dual nổi bật với mặt lưng được thiết kế mặt kính bóng loáng" src="https://cdn.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium13-2.jpg" title="Xperia Z5 Premium Dual nổi bật với mặt lưng được thiết kế mặt kính bóng loáng" /></a></p>\r\n\r\n<p><em>Xperia Z5 Premium Dual nổi bật với mặt lưng được thiết kế mặt k&iacute;nh b&oacute;ng lo&aacute;ng</em></p>\r\n\r\n<p><strong>Nhiều tiện &iacute;ch nổi bật</strong></p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh Hi-res Audio&nbsp;mang lại &acirc;m thanh với độ r&otilde; n&eacute;t vượt trội như trong ph&ograve;ng thu,&nbsp;c&ocirc;ng nghệ khử tiếng ồn kỹ thuật số mang lại những gi&acirc;y ph&uacute;t nghe nhạc thoải m&aacute;i bằng tai nghe hay ph&aacute;t trực tiếp từ loa điện thoại.</p>\r\n\r\n<p>M&aacute;y c&oacute; thể chống được nước khi v&ocirc; t&igrave;nh l&agrave;m đổ nước hay đi mưa, tuy nhi&ecirc;n kh&ocirc;ng khuyến kh&iacute;ch ng&acirc;m m&aacute;y trong nước hay hồ bơi.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73023/sony-xperia-z5-premium18.jpg" onclick="return false;"><img alt="Chống nước chuẩn IP68" src="https://cdn2.tgdd.vn/Products/Images/42/73023/sony-xperia-z5-premium18.jpg" title="Chống nước chuẩn IP68" /></a></p>\r\n\r\n<p>Về cấu h&igrave;nh, Z5 premium sử dụng vi xử l&yacute;&nbsp;<a href="https://www.thegioididong.com/tin-tuc/vi-xu-ly-di-dong-snapdragon-410-610-801-805-808-81-599368#snapdragon810" target="_blank" title="Tìm hiểu thêm về chip xử lý Snapdragon 810">Snapdragon 810</a>,&nbsp;RAM 3 GB cho khả năng duyệt web nhanh, đa nhiệm mượt m&agrave;, chơi game tốc độ, xem video 4K kh&ocirc;ng bị giật, lag.</p>\r\n\r\n<p>Sony Xperia Z5 Premium Dual&nbsp;thuộc ph&acirc;n kh&uacute;c cấp cao với những trang bị tốt nhất v&agrave; độc quyền, sẽ mang đến cho bạn những trải nghiệm th&uacute; vị khi sử dụng.</p>\r\n', 0, 0, 0),
(40, 'Microsoft Lumia 950 XL', 'Microsoft-Lumia-950-XL', 14000000, 0, 19, 14, 'huawei-gr5-hero-400x460.png', 0, '2016-05-19', '<h1>Lumia 950 XL l&agrave; một trong những smartphone cao cấp nhất của Microsoft&nbsp;với cấu h&igrave;nh cao, camera 20 MP ống k&iacute;nh Carl Zeiss kết hợp c&ugrave;ng hệ điều h&agrave;nh Windows 10 Mobile ổn định, mượt m&agrave;.</h1>\r\n\r\n<p><strong>Camera 20 MP &ndash; Ống k&iacute;nh Carl Zeiss danh tiếng</strong></p>\r\n\r\n<p>Camera tr&ecirc;n 950 XL sử dụng ống k&iacute;nh Carl Zeiss c&ugrave;ng c&ocirc;ng nghệ Pureview cho chất lượng ảnh rất tốt trong mọi điều kiện, m&agrave;u sắc tự nhi&ecirc;n ngay cả điều kiện thiếu s&aacute;ng, c&aacute;c chế độ chỉnh tay chuy&ecirc;n nghiệp hữu &iacute;ch như tốc độ m&agrave;n trập, phơi s&aacute;ng hay x&oacute;a ph&ocirc;ng, c&oacute; thể lưu trữ dạng ảnh RAW chuy&ecirc;n nghiệp.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73408/microsoft-lumia-950-xl5-4.jpg" onclick="return false;"><img alt="Các chi tiết nhỏ điều chỉnh lấy nét bằng tay cho ảnh rất tượng, xóa phông tốt" src="https://cdn1.tgdd.vn/Products/Images/42/73408/microsoft-lumia-950-xl5-4.jpg" title="Các chi tiết nhỏ điều chỉnh lấy nét bằng tay cho ảnh rất tượng, xóa phông tốt" /></a></p>\r\n\r\n<p><em>C&aacute;c chi tiết nhỏ điều chỉnh lấy n&eacute;t thủ c&ocirc;ng cho ảnh rất ấn tượng, x&oacute;a ph&ocirc;ng tốt&nbsp;</em><em>(Ảnh: Harris Hưng)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73408/microsoft-lumia-950-xl6-2.jpg" onclick="return false;"><img alt="Tính năng phơi sáng trong máy giúp bạn có được những bức ảnh đẹp mắt (Ảnh: Harris Hưng)" src="https://cdn3.tgdd.vn/Products/Images/42/73408/microsoft-lumia-950-xl6-2.jpg" title="Tính năng phơi sáng trong máy giúp bạn có được những bức ảnh đẹp mắt (Ảnh: Harris Hưng)" /></a></p>\r\n\r\n<p><em>T&iacute;nh năng phơi s&aacute;ng trong m&aacute;y gi&uacute;p bạn c&oacute; được những bức ảnh đẹp mắt (Ảnh: Harris Hưng)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73408/microsoft-lumia-950-xl1-3.jpg" onclick="return false;"><img alt="Camera trước 5 MP cho ảnh dưới điều kiện ngoài trời thu về rất đẹp (Ảnh: Harris Hưng)" src="https://cdn.tgdd.vn/Products/Images/42/73408/microsoft-lumia-950-xl1-3.jpg" title="Camera trước 5 MP cho ảnh dưới điều kiện ngoài trời thu về rất đẹp (Ảnh: Harris Hưng)" /></a></p>\r\n\r\n<p><em>Camera trước 5 MP cho ảnh dưới điều kiện ngo&agrave;i trời thu về rất đẹp (Ảnh: Harris Hưng)</em></p>\r\n\r\n<p><strong>Trải nghiệm nhiều điều mới lạ</strong></p>\r\n\r\n<p>T&iacute;nh năng Continuum gi&uacute;p chuyển đổi&nbsp;điện thoại&nbsp;khi kết nối với tivi th&agrave;nh chiếc&nbsp;m&aacute;y t&iacute;nh&nbsp;chạy hệ điều h&agrave;nh Windows 10 rất hữu &iacute;ch, bạn c&ograve;n c&oacute; thể kết nối với b&agrave;n ph&iacute;m, chuột th&ocirc;ng qua dock kết nối để sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>C&aacute;ch sử dụng t&iacute;nh năng Continuum để biến chiếc điện thoại th&agrave;nh m&aacute;y t&iacute;nh</em></p>\r\n\r\n<p>Lumia 950 XL c&ograve;n nổi bật với bảo mật bằng mống mắt, c&aacute;ch c&agrave;i đặt đơn giản v&agrave; sử dụng dễ d&agrave;ng, m&aacute;y nhận diện rất nhanh ch&oacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>C&aacute;ch sử dụng t&iacute;nh năng qu&eacute;t mống mắt</em></p>\r\n\r\n<p><strong>Cấu h&igrave;nh cao mang đến hiệu năng mạnh mẽ</strong></p>\r\n\r\n<p>Cấu h&igrave;nh cao cấp Snapdragon 810 tốc độ 2 GHz v&agrave; RAM 3 GB gi&uacute;p m&aacute;y hoạt động nhanh v&agrave; mạnh mẽ&nbsp;nhưng kh&ocirc;ng bị n&oacute;ng nhờ c&oacute; hệ thống tản nhiệt bằng chất lỏng.&nbsp;Th&ecirc;m v&agrave;o đ&oacute; đầu sạc theo chuẩn&nbsp;<a href="https://www.thegioididong.com/tin-tuc/nhung-dieu-can-biet-ve-chuan-ket-noi-moi-usb-type--619776" target="_blank" title="Những điều cần biết về chuẩn kết nối mới USB type-C (USB-C)">USB Type-C</a>&nbsp;kết hợp sạc nhanh v&agrave; sạc kh&ocirc;ng d&acirc;y nhiều tiện &iacute;ch cho bạn.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73408/microsoft-lumia-950-xl4-4.jpg" onclick="return false;"><img alt=" Chế độ sạc ko dây theo tiêu chuẩn Qi, thời gian sạc đầy 100% chỉ trong 2 tiếng" src="https://cdn2.tgdd.vn/Products/Images/42/73408/microsoft-lumia-950-xl4-4.jpg" title=" Chế độ sạc ko dây theo tiêu chuẩn Qi, thời gian sạc đầy 100% chỉ trong 2 tiếng" /></a></p>\r\n\r\n<p><em>Chế độ sạc ko d&acirc;y theo chuẩn Qi, thời gian sạc đầy 100% chỉ trong 2 tiếng</em></p>\r\n\r\n<p>Lumia 950 XL d&ugrave;ng hệ điều h&agrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tong-hop-tat-tan-tat-nhung-gi-ban-can-biet-ve-windows-10-692753" target="_blank" title="Tìm hiểu thêm về Windows 10">Windows 10 Mobile</a>&nbsp;mới nhất&nbsp;gi&uacute;p m&aacute;y vận h&agrave;nh nhanh nhẹ v&agrave; tiết kiệm năng lượng hơn, đồng bộ dữ liệu th&ocirc;ng minh gi&uacute;p c&oacute; thể lấy được t&agrave;i liệu của bạn ở bất cứ nơi đ&acirc;u.</p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh 2K mịn m&agrave;ng</strong></p>\r\n\r\n<p>Lumia 950 XL c&oacute; m&agrave;n h&igrave;nh 5.7 inch AMOLED độ ph&acirc;n giải 2K gi&uacute;p h&igrave;nh ảnh hiển thị sống động, mịn m&agrave;ng. M&agrave;u sắc tươi cho chất lượng giải tr&iacute;, xem phim được th&iacute;ch mắt hơn.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73408/microsoft-lumia-950-xl2-3.jpg" onclick="return false;"><img alt="Màn hình 2K cho chất lượng hiển thị tốt nhưng vẫn bị hạn chế khi dùng ngoài trời nắng gắt" src="https://cdn4.tgdd.vn/Products/Images/42/73408/microsoft-lumia-950-xl2-3.jpg" title="Màn hình 2K cho chất lượng hiển thị tốt nhưng vẫn bị hạn chế khi dùng ngoài trời nắng gắt" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh 2K cho chất lượng hiển thị tốt nhưng vẫn bị hạn chế khi d&ugrave;ng ngo&agrave;i trời nắng gắt</em></p>\r\n\r\n<p>Tuy sử dụng c&ocirc;ng nghệ clearblack display nhưng m&agrave;n h&igrave;nh của m&aacute;y thể hiện vẫn chưa thật sự tốt khi ở ngo&agrave;i trời.</p>\r\n\r\n<p>L&agrave; một thiết bị tốt, ho&agrave;n thiện ổn, camera đ&atilde; được khẳng định v&agrave; hiệu năng mạnh mẽ th&igrave; Lumia 950 XL xứng đ&aacute;ng l&agrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank" title="Các mẫu điện thoại nhiều hãng khác nhau">smartphone</a>&nbsp;trong t&uacute;i bạn.</p>\r\n', 0, 0, 0),
(41, 'HTC One A9', 'HTC-One-A9', 11000000, 0, 17, 14, 'oppo-f1-hero-460x529.png', 0, '2016-02-15', '<h1>HTC One A9 với thiết kế kim loại nguy&ecirc;n khối sang trọng, cảm biến v&acirc;n tay 1 chạm nhanh, camera nhiều t&ugrave;y chỉnh chắc chắn sẽ l&agrave; lựa chọn tốt cho 1 chiếc smartphone thời trang v&agrave; sang trọng.</h1>\r\n\r\n<p><strong>Thiết kế kim loại nguy&ecirc;n khối đặ</strong><strong>c</strong><strong>&nbsp;trưng của HTC</strong></p>\r\n\r\n<p>HTC One A9 bắt mắt người d&ugrave;ng bằng c&aacute;c đường sọc ngang ở mặt lưng, kh&ocirc;ng đơn thuần m&agrave;u sắc chỉ l&agrave; x&aacute;m hay v&agrave;ng m&agrave; được h&atilde;ng gọi với t&ecirc;n như Carbon Gray, Opal Silver hay Topaz Gold, c&aacute;ch phản chiếu m&agrave;u sắc tr&ecirc;n m&aacute;y rất đẹp.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73268/htc-one-a9-lung.jpg" onclick="return false;"><img alt="htc one a9" src="https://cdn1.tgdd.vn/Products/Images/42/73268/htc-one-a9-lung.jpg" title="htc one a9" /></a></p>\r\n\r\n<p><em>Mặt lưng bằng kim loại sọc ngang nh&igrave;n rất đẹp mắt</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73268/htc-one-a99-1.jpg" onclick="return false;"><img alt="Nút nguồn được cách điệu nhiều gờ nổi lạ mắt" src="https://cdn3.tgdd.vn/Products/Images/42/73268/htc-one-a99-1.jpg" title="Nút nguồn được cách điệu nhiều gờ nổi lạ mắt" /></a></p>\r\n\r\n<p><em>N&uacute;t nguồn được c&aacute;ch điệu nhiều gờ nổi lạ mắt</em></p>\r\n\r\n<p><strong>Điện thoại t&iacute;ch hợp Android 6.0 đầu ti&ecirc;n</strong></p>\r\n\r\n<p><strong>HTC One A9</strong>&nbsp;l&agrave; chiếc điện thoại đầu ti&ecirc;n tr&ecirc;n thế giới sử dụng hệ điều h&agrave;nh Android 6.0 Marshmallow ngay khi xuất xưởng, bạn sẽ thấy th&uacute; vị hơn với những đổi mới trong c&aacute;c c&agrave;i đặt ứng dụng,&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cai-dung-thu-tinh-nang-tiet-kiem-pin-cua-android-6-0-tren-may-doi-cu-753197" target="_blank" title="Tìm hiểu chế độ tiết kiệm pin Doze">chế độ Doze</a>&nbsp;gi&uacute;p tiết&nbsp;kiệm pin hơn.&nbsp;Bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m về Android 6.0&nbsp;<a href="https://www.thegioididong.com/hoi-dap/android-6-marshmallow-co-gi-hot-726146" target="_blank" title="Tìm hiểu thêm về Android 6.0"><strong>tại đ&acirc;y</strong></a>.&nbsp;</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73268/htc-one-a9-marshmallow-inside.jpg" onclick="return false;"><img alt="htc one a9 sử dụng android M" src="https://cdn.tgdd.vn/Products/Images/42/73268/htc-one-a9-marshmallow-inside.jpg" title="htc one a9 sử dụng android M" /></a></p>\r\n\r\n<p><em>Android 6.0 Marshmallow mới nhất của Google</em></p>\r\n\r\n<p><strong>Giải tr&iacute; th&iacute;ch hơn với &acirc;m thanh Hi-Fi</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73268/htc-one-a9-global-ksp-music.jpg" onclick="return false;"><img alt="âm thanh hi-res 24-bit" src="https://cdn2.tgdd.vn/Products/Images/42/73268/htc-one-a9-global-ksp-music.jpg" title="âm thanh hi-res 24-bit" /></a></p>\r\n\r\n<p>&Acirc;m thanh trong m&aacute;y được chuyển đổi từ 16 bit l&ecirc;n đến 24 bit nhờ v&agrave;o bộ chuyển đổi Hi-Fi DAC c&ugrave;ng hiệu ứng &acirc;m thanh v&ograve;m&nbsp;Dolby&trade; Audio xử l&yacute; nhạc tốt cho chất lượng hay như trong ph&ograve;ng thu.</p>\r\n\r\n<p><strong>Camera được n&acirc;ng cấp với nhiều t&ugrave;y chỉnh chuy&ecirc;n nghiệp</strong></p>\r\n\r\n<p>Camera sau 13 MP của m&aacute;y được bảo vệ bằng mặt k&iacute;nh Sapphire b&ecirc;n ngo&agrave;i c&ugrave;ng nhiều chức năng b&ecirc;n trong như: ổn định quang học,&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-che-do-chup-anh-tren-smartphone-tiep-theo--739084#raw" target="_blank" title="chụp ảnh RAW">chụp ảnh RAW</a>,&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-che-do-chup-anh-tren-smartphone-tiep-theo--739084#manual" target="_blank" title="chế độ manual">chế độ manual</a>&nbsp;gi&uacute;p chỉnh tay c&aacute;c chức năng chụp ảnh như tr&ecirc;n m&aacute;y ảnh chuy&ecirc;n nghiệp.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73268/htc-one-a912-2.jpg" onclick="return false;"><img alt="Camera sau cho bức ảnh có màu sắc và độ nét tốt ở ngoài trời" src="https://cdn4.tgdd.vn/Products/Images/42/73268/htc-one-a912-2.jpg" title="Camera sau cho bức ảnh có màu sắc và độ nét tốt ở ngoài trời" /></a></p>\r\n\r\n<p><em>Camera sau cho bức ảnh c&oacute; m&agrave;u sắc v&agrave; độ n&eacute;t tốt ở ngo&agrave;i trời</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73268/htc-one-a913-2.jpg" onclick="return false;"><img alt="Với ánh sáng trong nhà" src="https://cdn1.tgdd.vn/Products/Images/42/73268/htc-one-a913-2.jpg" title="Với ánh sáng trong nhà" /></a></p>\r\n\r\n<p><em>Với &aacute;nh s&aacute;ng trong nh&agrave;</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73268/htc-one-a914.jpg" onclick="return false;"><img alt="Camera trước 4 MP công nghệ Ultrapixel cho ảnh sáng, góc chụp rộng giúp thu được nhiều cảnh vật xung quanh hơn" src="https://cdn3.tgdd.vn/Products/Images/42/73268/htc-one-a914.jpg" title="Camera trước 4 MP công nghệ Ultrapixel cho ảnh sáng, góc chụp rộng giúp thu được nhiều cảnh vật xung quanh hơn" /></a></p>\r\n\r\n<p><em>Camera trước 4 MP c&ocirc;ng nghệ Ultrapixel cho ảnh s&aacute;ng, g&oacute;c chụp rộng gi&uacute;p thu được nhiều cảnh vật xung quanh hơn</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/73268/htc-one-a910-2.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/73268/htc-one-a911-2.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Chụp thiếu s&aacute;ng hay ngược s&aacute;ng th&igrave; chất ảnh vẫn kh&aacute; mịn v&agrave; tốt</em></p>\r\n\r\n<p><strong>Cảm biến v&acirc;n tay nhanh</strong></p>\r\n\r\n<p>Cảm biến v&acirc;n tay được t&iacute;ch hợp tr&ecirc;n n&uacute;t Home của m&aacute;y l&agrave; loại cảm ứng 1 chạm với 2 chức năng ch&iacute;nh: chạm nhẹ để mở s&aacute;ng m&agrave;n h&igrave;nh v&agrave; chạm để mở kh&oacute;a bảo mật cho m&aacute;y.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73268/htc-one-a9-1234.gif" onclick="return false;"><img alt="Cảm biến tích hợp trên phím cứng Home đăng ký được 5 dấu vân tay" src="https://cdn.tgdd.vn/Products/Images/42/73268/htc-one-a9-1234.gif" title="Cảm biến tích hợp trên phím cứng Home đăng ký được 5 dấu vân tay" /></a></p>\r\n\r\n<p><em>Kh&ocirc;ng cần mở s&aacute;ng m&agrave;n h&igrave;nh bạn vẫn c&oacute; thể mở kh&oacute;a bằng v&acirc;n tay</em></p>\r\n\r\n<p><strong>Cấu h&igrave;nh đầy sức mạnh</strong></p>\r\n\r\n<p><strong>HTC One A9</strong>&nbsp;chạy&nbsp;<a href="https://www.thegioididong.com/hoi-dap/qualcomm-snapdragon-617-761303" target="_blank" title="Tìm hiểu thêm về chip Qualcomm Snapdragon 617">Qualcomm Snapdragon 617</a>&nbsp;tốc độ 1.5 GHz, hỗ trợ RAM 2 GB cho trải nghiệm mượt m&agrave; khi chơi c&aacute;c game c&oacute; đồ họa cao. Hệ điều h&agrave;nh Android 6.0&nbsp;với nhiều cải tiến được c&agrave;i sẵn tr&ecirc;n m&aacute;y một lợi thế lớn m&agrave; nhiều h&atilde;ng kh&aacute;c vẫn chưa theo kịp.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/73268/htc-one-a95-3.jpg" onclick="return false;"><img alt=" Tải game nặng dễ dàng hơn" src="https://cdn2.tgdd.vn/Products/Images/42/73268/htc-one-a95-3.jpg" title=" Tải game nặng dễ dàng hơn" /></a></p>\r\n\r\n<p><em>Chơi game nặng dễ d&agrave;ng hơn</em></p>\r\n\r\n<p>Tuy nhi&ecirc;n loa được đặt ở cạnh dưới sẽ bị hạn chế &acirc;m thanh khi bạn cầm m&aacute;y theo chiều ngang để chơi game hay xem phim.</p>\r\n\r\n<p>M&aacute;y mang lại cảm gi&aacute;c cao cấp nhờ thiết kế nguy&ecirc;n khối kim loại sang trọng, tiện &iacute;ch với cảm biến v&acirc;n tay rất nhạy v&agrave; camera chất lượng cao. HTC One A9 chắc chắn l&agrave; lựa chọn tốt nhất d&agrave;nh cho bạn.</p>\r\n', 0, 0, 0);
INSERT INTO `products` (`id`, `product_name`, `product_slug`, `product_price`, `product_discount`, `product_vendor`, `product_cate`, `product_img`, `product_remain`, `product_date`, `product_info`, `product_detail`, `product_image`, `product_video`) VALUES
(46, 'Samsung Galaxy Note 4', 'Samsung-Galaxy-Note-4', 9900000, 150000, 15, 14, 'oppo-f1-plus2-400x460.png', 0, '2016-05-11', '<h1>Ng&agrave;y c&agrave;ng đổi mới v&agrave; ho&agrave;n thiện hơn ch&iacute;nh l&agrave; những g&igrave; m&agrave; Galaxy Note 4 đang l&agrave;m rất tốt, những t&iacute;nh năng mới lạ sẽ mang lại cho bạn những trải nghiệm th&iacute;ch th&uacute;.</h1>\r\n\r\n<p><strong>Camera được đầu tư nghi&ecirc;m t&uacute;c</strong></p>\r\n\r\n<p>Cả hai camera trước v&agrave; sau của m&aacute;y đều c&oacute; độ ph&acirc;n giải lớn lần lượt l&agrave; 16 MP v&agrave; 3.7 MP, thao t&aacute;c chạm để chụp ảnh rất nhẹ nh&agrave;ng, khả năng lấy n&eacute;t rất tốt v&agrave; nhanh. Note 4 c&ograve;n c&oacute; nhiều những chế độ chụp ảnh kh&aacute;c như chụp to&agrave;n cảnh, chụp chuyển động nhanh/chậm&hellip;</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/68096/samsung-galaxy-note-410-2.jpg" onclick="return false;"><img alt="Màu sắc tái tạo rất tốt" src="https://cdn1.tgdd.vn/Products/Images/42/68096/samsung-galaxy-note-410-2.jpg" title="Màu sắc tái tạo rất tốt" /></a></p>\r\n\r\n<p><em>M&agrave;u sắc t&aacute;i tạo rất tốt (Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1723236" target="_blank" title="Thông tin người gửi ảnh">H&agrave; Trường Sơn</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/68096/samsung-galaxy-note-46-3.jpg" onclick="return false;"><img alt="Chụp ảnh nghệ thuật với Note 4 thật dễ " src="https://cdn3.tgdd.vn/Products/Images/42/68096/samsung-galaxy-note-46-3.jpg" title="Chụp ảnh nghệ thuật với Note 4 thật dễ " /></a></p>\r\n\r\n<p><em>Chụp ảnh nghệ thuật với Note 4 thật dễ (Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1718802" target="_blank" title="Thông tin người chụp ảnh">Ho&agrave;ng Nam</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/68096/samsung-galaxy-note-47-3.jpg" onclick="return false;"><img alt="Bức ảnh ấn tượng của một chiều hoàng hôn" src="https://cdn.tgdd.vn/Products/Images/42/68096/samsung-galaxy-note-47-3.jpg" title="Bức ảnh ấn tượng của một chiều hoàng hôn" /></a></p>\r\n\r\n<p><em>Bức ảnh ấn tượng của một chiều ho&agrave;ng h&ocirc;n (Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1622199" target="_blank" title="Thông tin người gửi ảnh">Dat Trieu Tan</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/68096/samsung-galaxy-note-48-3.jpg" onclick="return false;"><img alt="Camera trước cho góc rộng chụp sáng và lấy nét tốt" src="https://cdn2.tgdd.vn/Products/Images/42/68096/samsung-galaxy-note-48-3.jpg" title="Camera trước cho góc rộng chụp sáng và lấy nét tốt" /></a></p>\r\n\r\n<p><em>Camera trước cho g&oacute;c rộng chụp s&aacute;ng v&agrave; lấy n&eacute;t tốt (Ảnh:&nbsp;<a href="https://www.thegioididong.com/anh-dep/thong-tin-nguoi-choi-1624934" target="_blank" title="Thông tin người chụp ảnh">Duc Pham</a>)</em></p>\r\n\r\n<p>Ngo&agrave;i ra,&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank" title="Danh sách các mẫu điện thoại thương hiệu Samsung">Samsung</a>&nbsp;c&ograve;n t&iacute;ch hợp th&ecirc;m t&iacute;nh năng gi&uacute;p chụp h&igrave;nh selfie nhanh ch&oacute;ng, bạn chỉ cần đặt ng&oacute;n tay ra sau cảm biến đo sức khỏe th&igrave; m&aacute;y sẽ tự động chụp ảnh.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/68096/samsung-galaxy-note-42-3.jpg" onclick="return false;"><img alt=" Đặt ngón tay vào cảm biến để chụp ảnh" src="https://cdn4.tgdd.vn/Products/Images/42/68096/samsung-galaxy-note-42-3.jpg" title=" Đặt ngón tay vào cảm biến để chụp ảnh" /></a></p>\r\n\r\n<p><em>Đặt ng&oacute;n tay v&agrave;o cảm biến để chụp ảnh</em></p>\r\n\r\n<p><strong>B&uacute;t S-pen với nhiều cải tiến</strong></p>\r\n\r\n<p>S-pen tr&ecirc;n Note 4 được cải tiến để b&uacute;t trở n&ecirc;n nhạy hơn, &iacute;t xảy ra hiện tượng chậm n&eacute;t khi bạn lướt b&uacute;t tr&ecirc;n m&agrave;n h&igrave;nh.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/68096/samsung-galaxy-note-43-3.jpg" onclick="return false;"><img alt="Bút S-pen với nhiều cải tiến" src="https://cdn1.tgdd.vn/Products/Images/42/68096/samsung-galaxy-note-43-3.jpg" title="Bút S-pen với nhiều cải tiến" /></a></p>\r\n\r\n<p>B&uacute;t S-pen thao t&aacute;c được rất nhiều chức năng kh&aacute;c nhau như ghi ch&uacute; nhanh, chụp m&agrave;n h&igrave;nh k&egrave;m lưu ghi ch&uacute;, chụp h&igrave;nh v&agrave; thao t&aacute;c chỉnh x&oacute;a sửa trực tiếp tr&ecirc;n tấm h&igrave;nh rất th&uacute; vị</p>\r\n\r\n<p><strong>Mạnh mẽ vượt trội v&agrave; c&aacute;c t&iacute;nh năng mới lạ</strong></p>\r\n\r\n<p>Bạn c&oacute; thể thoải m&aacute;i chạy song song c&aacute;c ứng dụng c&ugrave;ng một l&uacute;c, hay chạy đa nhiệm nhờ v&agrave;o bộ vi xử l&yacute;&nbsp;<a href="https://www.thegioididong.com/tin-tuc/vi-xu-ly-exynos-cua-samsung-593332#Exynos5433" target="_blank" title="Tìm hiểu thêm về Exynos 5433">Exynos 5433</a>,&nbsp;RAM 3 GB c&oacute; tốc độ Quad-core 1.3 GHz Cortex-A53 v&agrave; 1.9 GHz Quad-core Cortex-A57.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Xem th&ecirc;m clip test cấu h&igrave;nh của Galaxy Note 4</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/68096/samsung-galaxy-note-411-2.jpg" onclick="return false;"><img alt="màn hình hiển thị trên máy thật sự rất tốt khi sử dụng công nghệ màn hình Super AMOLED cho màu sắc hiển thị rõ và chính xác, khả năng hiển thị dưới trời nắng cũng được cải thiện." src="https://cdn3.tgdd.vn/Products/Images/42/68096/samsung-galaxy-note-411-2.jpg" title="màn hình hiển thị trên máy thật sự rất tốt khi sử dụng công nghệ màn hình Super AMOLED cho màu sắc hiển thị rõ và chính xác, khả năng hiển thị dưới trời nắng cũng được cải thiện." /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh của Note 4 hiển thị rất tốt khi sử dụng c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#superamoled" target="_blank" title="Tìm hiểu thêm về công nghệ màn hình Super AMOLED">Super AMOLED</a>&nbsp;cho m&agrave;u sắc hiển thị r&otilde; v&agrave; m&agrave;u sắc ch&iacute;nh x&aacute;c</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/68096/samsung-galaxy-note-4455647.gif" onclick="return false;"><img alt="Tính năng mới trên Note 4 cho phép thu nhỏ ứng dụng lại bằng cách kéo từ góc trên phía trái hoặc phải để thu nhỏ" src="https://cdn.tgdd.vn/Products/Images/42/68096/samsung-galaxy-note-4455647.gif" title="Tính năng mới trên Note 4 cho phép thu nhỏ ứng dụng lại bằng cách kéo từ góc trên phía trái hoặc phải để thu nhỏ" /></a></p>\r\n\r\n<p><em>T&iacute;nh năng mới tr&ecirc;n Note 4 cho ph&eacute;p thu nhỏ ứng dụng lại bằng c&aacute;ch k&eacute;o từ g&oacute;c tr&ecirc;n ph&iacute;a tr&aacute;i hoặc phải</em></p>\r\n\r\n<p><strong>T&iacute;nh năng sạc nhanh</strong></p>\r\n\r\n<p>Bạn chỉ mất 30 ph&uacute;t đ&atilde; c&oacute; thể sạc gần 50% v&agrave; sẽ đầy 100% trong khoảng 90 ph&uacute;t, tiết kiệm được nhiều thời gian cho bạn hơn.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/68096/samsung-galaxy-note-45-3.jpg" onclick="return false;"><img alt="Tính năng sạc nhanh hữu ích" src="https://cdn2.tgdd.vn/Products/Images/42/68096/samsung-galaxy-note-45-3.jpg" title="Tính năng sạc nhanh hữu ích" /></a></p>\r\n\r\n<p><em>T&iacute;nh năng sạc nhanh hữu &iacute;ch</em></p>\r\n\r\n<p><strong>Cảm biến v&acirc;n tay đầu ti&ecirc;n tr&ecirc;n d&ograve;ng Galaxy</strong></p>\r\n\r\n<p>Galaxy Note 4 được trang bị hai cảm biến kh&aacute;c nhau, cảm biến v&acirc;n tay ở ph&iacute;m Home gi&uacute;p bạn c&oacute; thể mở kh&oacute;a m&agrave;n h&igrave;nh, v&agrave; một cảm biến ở mặt sau để bạn c&oacute; thể c&oacute; thể đo được nhịp tim hay c&aacute;c ứng dụng đo sức khỏe kh&aacute;c.</p>\r\n\r\n<p>Note 4 tạo được sự kh&aacute;c biệt bằng những đường cắt kim cương sang trọng chạy quanh viền m&aacute;y, nắp lưng giả da đẹp mắt nhưng chất liệu sử dụng vẫn l&agrave; nhựa.</p>\r\n', 0, 0, 0),
(47, 'HTC Desire Eye', 'HTC-Desire-Eye', 7500000, 0, 17, 14, 'samsung-galaxy-a3-2016-400x460.png', 0, '2016-05-23', '<h1>HTC Desire Eye, với thiết kế n&oacute;i l&ecirc;n được sở trường chụp ảnh chuy&ecirc;n nghiệp của m&igrave;nh, c&ugrave;ng t&iacute;nh năng chống nước tốt v&agrave; cấu h&igrave;nh mạnh mẽ.</h1>\r\n\r\n<p><strong>Camera với độ ph&acirc;n giải&nbsp;</strong><strong>tốt</strong></p>\r\n\r\n<p>Với độ ph&acirc;n giải 13 MP c&ugrave;ng rất nhiều t&iacute;nh năng chụp ảnh chuy&ecirc;n nghiệp v&agrave; th&uacute; vị, mang đến nhiều lựa chọn hay cho người chụp.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/70104/htc-desire-eye9-1.jpg" onclick="return false;"><img alt="Cho phép chia đôi màn hình để dùng song song 2 camera trước và sau trên cùng 1 ảnh chụp và có thể dùng để quay phim" src="https://cdn1.tgdd.vn/Products/Images/42/70104/htc-desire-eye9-1.jpg" title="Cho phép chia đôi màn hình để dùng song song 2 camera trước và sau trên cùng 1 ảnh chụp và có thể dùng để quay phim" /></a></p>\r\n\r\n<p><em>Cho ph&eacute;p chia đ&ocirc;i m&agrave;n h&igrave;nh để d&ugrave;ng song song 2 camera trước v&agrave; sau tr&ecirc;n c&ugrave;ng 1 ảnh chụp v&agrave; c&oacute; thể d&ugrave;ng để quay phim</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/70104/htc-desire-eye10-1.jpg" onclick="return false;"><img alt="Ảnh xóa phông tốt (Ảnh: Tiến Dũng)" src="https://cdn3.tgdd.vn/Products/Images/42/70104/htc-desire-eye10-1.jpg" title="Ảnh xóa phông tốt (Ảnh: Tiến Dũng)" /></a></p>\r\n\r\n<p><em>Ảnh x&oacute;a ph&ocirc;ng tốt (Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1015014800/trang-1" target="_blank" title="Thông tin người dùng">Tiến Dũng</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/70104/htc-desire-eye1-3.jpg" onclick="return false;"><img alt="Ảnh cận cảnh lấy nét rất tốt, ảnh mịn" src="https://cdn.tgdd.vn/Products/Images/42/70104/htc-desire-eye1-3.jpg" title="Ảnh cận cảnh lấy nét rất tốt, ảnh mịn" /></a></p>\r\n\r\n<p><em>Ảnh cận cảnh lấy n&eacute;t rất tốt, ảnh mịn (Ảnh: Vũ Ho&agrave;ng Nam)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/70104/htc-desire-eye8-3.jpg" onclick="return false;"><img alt="Với khả năng chống nước tốt, thật dễ dàng để bạn có thể sáng tạo những bức ảnh chụp dưới làn nước ấn tượng (Ảnh: Vũ Hoàng Nam)" src="https://cdn2.tgdd.vn/Products/Images/42/70104/htc-desire-eye8-3.jpg" title="Với khả năng chống nước tốt, thật dễ dàng để bạn có thể sáng tạo những bức ảnh chụp dưới làn nước ấn tượng (Ảnh: Vũ Hoàng Nam)" /></a></p>\r\n\r\n<p><em>Với khả năng chống nước tốt, thật dễ d&agrave;ng để bạn c&oacute; thể s&aacute;ng tạo những bức ảnh chụp dưới l&agrave;n nước ấn tượng&nbsp;</em><em>(Ảnh: Vũ Ho&agrave;ng Nam)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/70104/htc-desire-eye11-1.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/70104/htc-desire-eye12-1.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Ảnh chụp ngược s&aacute;ng v&agrave; d&ugrave;ng chế độ HDR rất đẹp mắt</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/70104/htc-desire-eye4-3.jpg" onclick="return false;"><img alt="Camera trước với 13 MP cùng các hiệu ứng hình ảnh, làm mịn da tự động rất đẹp (Ảnh: Thùy Dương)" src="https://cdn4.tgdd.vn/Products/Images/42/70104/htc-desire-eye4-3.jpg" title="Camera trước với 13 MP cùng các hiệu ứng hình ảnh, làm mịn da tự động rất đẹp (Ảnh: Thùy Dương)" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/70104/htc-desire-eye15-1.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/70104/htc-desire-eye14-1.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Camera trước với 13 MP c&ugrave;ng c&aacute;c hiệu ứng h&igrave;nh ảnh, l&agrave;m mịn da tự động rất đẹp (Ảnh: Th&ugrave;y Dương)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/70104/htc-desire-eye5-4.jpg" onclick="return false;"><img alt="Ảnh chụp tự động rất tốt, góc chụp rộng (Ảnh: Tiến Dũng)" src="https://cdn1.tgdd.vn/Products/Images/42/70104/htc-desire-eye5-4.jpg" title="Ảnh chụp tự động rất tốt, góc chụp rộng (Ảnh: Tiến Dũng)" /></a></p>\r\n\r\n<p><em>Ảnh chụp tự động rất tốt, g&oacute;c chụp rộng</em><em>&nbsp;(Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1015014800/trang-1" target="_blank" title="Thông tin người dùng">Tiến Dũng</a>)</em></p>\r\n\r\n<p>Xem th&ecirc;m đ&aacute;nh gi&aacute; chi tiết camera HTC Desire Eye&nbsp;<a href="https://www.thegioididong.com/tin-tuc/danh-gia-kha-nang-chup-anh-htc-desire-eye-657239" target="_blank" title="Đánh giá khả năng chụp ảnh HTC Desire Eye"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><strong>Chống nước tốt</strong></p>\r\n\r\n<p>HTC Desire Eye c&oacute; khả năng chống nước tốt nhờ chuẩn IPX7, điều n&agrave;y sẽ gi&uacute;p bảo vệ m&aacute;y của bạn được an to&agrave;n hơn khi đi mưa hay v&ocirc; t&igrave;nh l&agrave;m đổ nước, tuy nhi&ecirc;n bạn hạn chế mang m&aacute;y v&agrave;o bể bơi hay ng&acirc;m nước s&acirc;u qu&aacute; l&acirc;u.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/70104/htc-desire-eye298.gif" onclick="return false;"><img alt="Máy vẫn hoạt động bình thường" src="https://cdn3.tgdd.vn/Products/Images/42/70104/htc-desire-eye298.gif" title="Máy vẫn hoạt động bình thường" /></a></p>\r\n\r\n<p><em>M&aacute;y vẫn hoạt động b&igrave;nh thường</em></p>\r\n\r\n<p><strong>Mạnh mẽ từ b&ecirc;n trong</strong></p>\r\n\r\n<p>HTC Desire Eye d&ugrave;ng chip&nbsp;<a href="https://www.thegioididong.com/tin-tuc/vi-xu-ly-di-dong-snapdragon-410-610-801-805-808-81-599368#snapdragon801" target="_blank" title="Tìm hiểu chip xử lý Snapdrgon 801">Snapdragon 801</a>, 8 nh&acirc;n với tốc độ&nbsp;2.3 GHz, RAM 2 GB, khả năng chơi được video với định dạng 4K nhờ chip đồ họa&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-chip-xu-li-do-hoa-tren-smartphone-gpu-adr-593891#adreno330" target="_blank" title="Tìm hiểu chip đồ họa Adreno 330">Adreno 330</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>M&aacute;y chạy game rất mượt (Nguồn: Youtube)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/70104/htc-desire-eye13-1.jpg" onclick="return false;"><img alt="Hiển thị ngoài trời tốt" src="https://cdn.tgdd.vn/Products/Images/42/70104/htc-desire-eye13-1.jpg" title="Hiển thị ngoài trời tốt" /></a></p>\r\n\r\n<p><em>M&aacute;y c&oacute; k&iacute;ch thước 5.2 inch, độ ph&acirc;n giải Full HD c&ugrave;ng c&ocirc;ng nghệ m&agrave;n h&igrave;nh IPS LCD gi&uacute;p cải thiện khả năng hiển thị ngo&agrave;i trời tốt</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Khả năng tr&igrave;nh diễn &acirc;m thanh nhờ d&agrave;n loa Boomsound, mang lại kh&ocirc;ng gian giải tr&iacute; th&uacute; vị nhất cho bạn (Nguồn: Youtube)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/70104/htc-desire-eye-299-1.gif" onclick="return false;"><img alt="Tính năng thông minh - Motion Launch với các chế độ như chạm hai lần mở màn hình, để máy chiều ngang và ấn phím âm lượng để mở nhanh camera" src="https://cdn2.tgdd.vn/Products/Images/42/70104/htc-desire-eye-299-1.gif" title="Tính năng thông minh - Motion Launch với các chế độ như chạm hai lần mở màn hình, để máy chiều ngang và ấn phím âm lượng để mở nhanh camera" /></a></p>\r\n\r\n<p><em>T&iacute;nh năng th&ocirc;ng minh - Motion Launch với c&aacute;c chế độ như chạm hai lần mở m&agrave;n h&igrave;nh, để m&aacute;y chiều ngang v&agrave; ấn ph&iacute;m &acirc;m lượng để mở nhanh camera...</em></p>\r\n\r\n<p>Camera ấn tượng c&ugrave;ng khả năng chống nước tốt, cấu h&igrave;nh mạnh mẽ v&agrave; những t&iacute;nh năng th&ocirc;ng minh th&igrave; HTC Desire Eye sẽ l&agrave; một ưu ti&ecirc;n lựa chọn của bạn.</p>\r\n', 0, 0, 0),
(48, 'Motorola Moto X Play', 'Motorola-Moto-X-Play', 7000000, 0, 20, 14, 'oppo-f1-plus2-400x460.png', 0, '2016-05-23', '<h1>Motorola Moto X Play c&oacute; thiết kế đẹp tinh tế c&ugrave;ng camera nổi bật với độ ph&acirc;n giải lớn, cấu h&igrave;nh mạnh c&ugrave;ng m&agrave;n h&igrave;nh đẹp mắt.</h1>\r\n\r\n<p><strong>Thiết kế độc đ&aacute;o với mặt lưng m&aacute;y</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play2-2.jpg" onclick="return false;"><img alt="Mặt lưng làm bằng cao su giúp chống trầy, nổi bật các đường vân trang trí tinh tế" src="https://cdn1.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play2-2.jpg" title="Mặt lưng làm bằng cao su giúp chống trầy, nổi bật các đường vân trang trí tinh tế" /></a></p>\r\n\r\n<p><em>Mặt lưng l&agrave;m bằng cao su gi&uacute;p chống trầy, nổi bật c&aacute;c đường v&acirc;n trang tr&iacute; tinh tế</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play4-2.jpg" onclick="return false;"><img alt="Máy được làm cong để giúp phần tiếp xúc giữa máy và lòng bàn tay thoải mái hơn" src="https://cdn3.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play4-2.jpg" title="Máy được làm cong để giúp phần tiếp xúc giữa máy và lòng bàn tay thoải mái hơn" /></a></p>\r\n\r\n<p><em>M&aacute;y được l&agrave;m cong để gi&uacute;p phần tiếp x&uacute;c giữa m&aacute;y v&agrave; l&ograve;ng b&agrave;n tay thoải m&aacute;i hơn, viền khung th&eacute;p chạy xung quanh m&aacute;y gi&uacute;p m&aacute;y th&ecirc;m cứng c&aacute;p</em></p>\r\n\r\n<p>Xem th&ecirc;m về thiết kế của m&aacute;y của&nbsp;<a href="https://www.thegioididong.com/tin-tuc/mo-hop-moto-x-play-thiet-ke-dep-camera-21mp-gia-tam-8-trieu-751667" target="_blank" title="Mở hộp Moto X Play: Thiết kế ấn tượng, pin lớn, camera 21MP, giá tầm 8 triệu"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><strong>Camera tuyệt vời trong tầm gi&aacute;</strong></p>\r\n\r\n<p>Camera với độ ph&acirc;n giải 21 MP c&ugrave;ng tốc độ lấy n&eacute;t rất nhanh, giao diện chụp ảnh đơn giản, chỉ cần chạm v&agrave;o bất kỳ điểm n&agrave;o tr&ecirc;n m&agrave;n h&igrave;nh để chụp ảnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play3-2.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play1-2.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Khả năng ph&oacute;ng to ảnh đ&aacute;ng khen tr&ecirc;n Moto X Play (Ảnh: Vũ Ho&agrave;ng Nam)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play5-2.jpg" onclick="return false;"><img alt="Khả năng bắt nét rất nhanh khi đang chạy xe trên đường lên ngọn hải đăng Vũng Tàu (Ảnh: Vũ Hoàng Nam)" src="https://cdn.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play5-2.jpg" title="Khả năng bắt nét rất nhanh khi đang chạy xe trên đường lên ngọn hải đăng Vũng Tàu (Ảnh: Vũ Hoàng Nam)" /></a></p>\r\n\r\n<p><em>M&aacute;y bắt n&eacute;t rất nhanh khi đang chạy xe tr&ecirc;n đường l&ecirc;n ngọn hải đăng Vũng T&agrave;u&nbsp;<em>(Ảnh: Vũ Ho&agrave;ng Nam)</em></em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play8-1.jpg" onclick="return false;"><img alt="Khả năng xóa phông để làm nổi bật chi tiết ảnh (Ảnh: Ken Tài)" src="https://cdn2.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play8-1.jpg" title="Khả năng xóa phông để làm nổi bật chi tiết ảnh (Ảnh: Ken Tài)" /></a></p>\r\n\r\n<p><em>Ảnh x&oacute;a ph&ocirc;ng để l&agrave;m nổi bật chi tiết ảnh (Ảnh: Ken T&agrave;i)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play6-2.jpg" onclick="return false;"><img alt="Ảnh chụp khi trời tối và kéo sáng (Ảnh: Vũ Hoàng Nam)" src="https://cdn4.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play6-2.jpg" title="Ảnh chụp khi trời tối và kéo sáng (Ảnh: Vũ Hoàng Nam)" /></a></p>\r\n\r\n<p><em>Khi trời tối v&agrave; c&oacute; k&eacute;o s&aacute;ng trực tiếp từ m&aacute;y (Ảnh: Vũ Ho&agrave;ng Nam)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play9-1.jpg" onclick="return false;"><img alt="Ảnh selfie trong nhà với camera trước độ phân giải 5 MP" src="https://cdn1.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play9-1.jpg" title="Ảnh selfie trong nhà với camera trước độ phân giải 5 MP" /></a></p>\r\n\r\n<p><em>Ảnh selfie trong nh&agrave; với camera trước độ ph&acirc;n giải 5 MP</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play11.jpg" onclick="return false;"><img alt="Ảnh selfie ngoài trời nắng" src="https://cdn3.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play11.jpg" title="Ảnh selfie ngoài trời nắng" /></a></p>\r\n\r\n<p><em>Selfie ngo&agrave;i trời nắng</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play444.gif" onclick="return false;"><img alt="Tính năng xoay màn hình 2 lần để khởi động nhanh camera hay đổi camera trước/sau chỉ bằng 1 tay khá thú vị" src="https://cdn.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play444.gif" title="Tính năng xoay màn hình 2 lần để khởi động nhanh camera hay để đồi camera trước/sau chỉ bằng 1 tay khá thú vị" /></a></p>\r\n\r\n<p><em>T&iacute;nh năng lắc 2 lần để khởi động nhanh camera hay để đổi camera trước/sau chỉ bằng 1 tay kh&aacute; th&uacute; vị, tuy nhi&ecirc;n bạn n&ecirc;n nhẹ tay khi lắc m&aacute;y</em></p>\r\n\r\n<p><strong>Mạnh mẽ từ b&ecirc;n trong</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play12.jpg" onclick="return false;"><img alt="Với màn hình 5.5 inch, độ phân giải Full HD cho khả hiển thị màu sắc bắt mắt" src="https://cdn2.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play12.jpg" title="Với màn hình 5.5 inch, độ phân giải Full HD cho khả hiển thị màu sắc bắt mắt" /></a></p>\r\n\r\n<p><em>Với m&agrave;n h&igrave;nh 5.5 inch, độ ph&acirc;n giải&nbsp;<a href="https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd" target="_blank" title="Tìm hiểu màn hình độ phân giải Full HD">Full HD</a>&nbsp;cho khả hiển thị m&agrave;u sắc bắt mắt</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Chơi game mượt m&agrave; hơn nhờ chip&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-di-dong-arm-va-qualcomm-snapdrag-592769#snapdragon615" target="_blank" title="Tìm hiểu chip xử lý Snapdragon 615 ">Snapdragon 615</a>, tốc độ&nbsp;4 nh&acirc;n 1.7 GHz Cortex-A53 &amp; 4 nh&acirc;n 1.0 GHz Cortex-A53, RAM 2 GB (Nguồn: Youtube)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72531/motorola-moto-x-play13-1.jpg" onclick="return false;"><img alt=" Ngoài ra 2 tính năng được hãng giới thiệu nhưng lại không thật sự hữu dụng" src="https://cdn4.tgdd.vn/Products/Images/42/72531/motorola-moto-x-play13-1.jpg" title=" Ngoài ra 2 tính năng được hãng giới thiệu nhưng lại không thật sự hữu dụng" /></a></p>\r\n\r\n<p><em>Ngo&agrave;i ra 2 t&iacute;nh năng được h&atilde;ng giới thiệu như khả năng chống nước nhẹ hay sạc nhanh, tuy nhi&ecirc;n bạn cần lưu &yacute; m&aacute;y chỉ c&oacute; thể chống nước như v&ocirc; t&igrave;nh l&agrave;m đổ nước chứ đ&acirc;y kh&ocirc;ng phải l&agrave; một t&iacute;nh năng mạnh của m&aacute;y v&agrave; sạc nhanh bạn cần phải mua ri&ecirc;ng bộ sạc</em></p>\r\n\r\n<p>Motorola Moto X Play mang đến sự th&iacute;ch th&uacute; trong sử dụng cho người d&ugrave;ng khi m&aacute;y sử dụng mượt m&agrave;, chụp ảnh xuất sắc v&agrave; thiết kế độc đ&aacute;o nổi bật.</p>\r\n', 0, 0, 0),
(49, 'HTC One E9 Dual', 'HTC-One-E9-Dual', 6490000, 0, 17, 14, 'iphone-5s-16gb-6-400x460.png', 0, '2016-05-08', '<h1>One E9 Dual mang lại người d&ugrave;ng thiết kế kh&aacute; quen thuộc từ nh&agrave; sản xuất HTC, cấu h&igrave;nh mạnh mẽ, m&agrave;n h&igrave;nh lớn kết hợp c&ugrave;ng hệ thống loa Boomsound đặc trưng, One E9 Dual ch&iacute;nh l&agrave; cỗ m&aacute;y giải tr&iacute; tốt trong tầm gi&aacute;.</h1>\r\n\r\n<p><strong>Thiết bị giải tr&iacute; lớn</strong></p>\r\n\r\n<p>HTC One E9 Dual thiết kế nhựa nguy&ecirc;n khối đẹp, to bản v&agrave; mỏng. Mặt trước nổi bật với hai dải loa Boomsound tr&ecirc;n nền nhựa xước phay giả kim loại mạnh mẽ v&agrave; cứng c&aacute;p.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72751/htc-one-e9-dual-1-10.jpg" onclick="return false;"><img alt="Máy có kích thước khá lớn khi cầm bằng 1 tay" src="https://cdn2.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual-1-10.jpg" title="Máy có kích thước khá lớn khi cầm bằng 1 tay" /></a></p>\r\n\r\n<p><em>M&aacute;y c&oacute; k&iacute;ch thước kh&aacute; lớn khi cầm bằng 1 tay</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72751/htc-one-e9-dual8-1.jpg" onclick="return false;"><img alt="Màu sắc đen xám " src="https://cdn4.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual8-1.jpg" title="Màu sắc đen xám " /></a></p>\r\n\r\n<p><em>M&agrave;u sắc đen x&aacute;m kh&aacute; đẹp mắt</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72751/htc-one-e9-dual-3-1.jpg" onclick="return false;"><img alt="2 dải loa Boomsound đặc trưng của HTC" src="https://cdn1.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual-3-1.jpg" title="2 dải loa Boomsound đặc trưng của HTC" /></a></p>\r\n\r\n<p><em>2 dải loa Boomsound đặc trưng của HTC mang lại &acirc;m thanh lớn v&agrave; &ecirc;m cho bạn khi giải tr&iacute;</em></p>\r\n\r\n<p><strong>Kh&ocirc;ng gian giải tr&iacute; tốt trong tầm gi&aacute;</strong></p>\r\n\r\n<p>M&aacute;y sử dụng chip&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-ve-soc-mediatek-6795-632566" target="_blank" title="Tìm hiểu chip xử lý MT6795 (Helio x10)">MT6795 (Helio x10)</a>&nbsp;8 nh&acirc;n, tốc độ&nbsp;2.0 GHz, RAM 2 GB để bạn thoải m&aacute;i sử dụng m&aacute;y cho c&ocirc;ng việc cũng như giải tr&iacute; với c&aacute;c game đồ họa 3D nặng hiện nay.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72751/htc-one-e9-dual-222.gif" onclick="return false;"><img alt="Cấu hình tốt trong tầm giá" src="https://cdn3.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual-222.gif" title="Cấu hình tốt trong tầm giá" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh lớn 5.5 inch c&ugrave;ng c&ocirc;ng nghệ m&agrave;n h&igrave;nh Super LCD gi&uacute;p hiển thị h&igrave;nh ảnh s&aacute;ng v&agrave; tốt, g&oacute;c nh&igrave;n xung quanh rộng hơn mang lại kh&ocirc;ng gian giải tr&iacute; tốt</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Xem th&ecirc;m video tr&ecirc;n tay nhanh HTC One E9 Dual</em></p>\r\n\r\n<p><strong>Camera độ ph&acirc;n giải lớn</strong></p>\r\n\r\n<p>Đối với HTC camera chưa bao giờ l&agrave; điểm mạnh, v&igrave; thế One E9 Dual được HTC n&acirc;ng l&ecirc;n tối đa với độ ph&acirc;n lớn 13 MP mặt sau v&agrave; 4 MP c&ocirc;ng nghệ Ultra Pixel mặt trước khắc phục phần n&agrave;o điểm yếu tr&ecirc;n camera m&aacute;y.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72751/htc-one-e9-dual-223.gif" onclick="return false;"><img alt="Nhiều chế độ tùy chỉnh cho bạn như phơi sáng, HDR..." src="https://cdn.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual-223.gif" title="Nhiều chế độ tùy chỉnh cho bạn như phơi sáng, HDR..." /></a></p>\r\n\r\n<p><em>Nhiều chế độ t&ugrave;y chỉnh cho bạn như phơi s&aacute;ng, HDR...</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual2-3.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual3-3.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Ảnh chụp bằng chế độ HDR kh&aacute; ấn tượng khi cho ảnh s&aacute;ng r&otilde; (Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1028181437/trang-1" target="_blank" title="Thông tin người dùng">Kh&ocirc;i Quang Hồ</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72751/htc-one-e9-dual1-3.jpg" onclick="return false;"><img alt="Ảnh phơi sáng 2 giây " src="https://cdn2.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual1-3.jpg" title="Ảnh phơi sáng 2 giây " /></a></p>\r\n\r\n<p><em>Ảnh phơi s&aacute;ng ấn tượng 2 gi&acirc;y&nbsp;</em><em>(Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1028181437/trang-1" target="_blank" title="Thông tin người dùng">Kh&ocirc;i Quang Hồ</a>)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual4-3.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual5-3.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Độ ph&acirc;n giải lớn gi&uacute;p h&igrave;nh ảnh &iacute;t bị vỡ n&eacute;t khi ph&oacute;ng to&nbsp;</em><em>(Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1028181437/trang-1" target="_blank" title="Thông tin người dùng">Kh&ocirc;i Quang Hồ</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72751/htc-one-e9-dual6-1.jpg" onclick="return false;"><img alt="Camera trước cho bạn những bức ảnh tự sướng mịn và màu sắc ổn" src="https://cdn4.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual6-1.jpg" title="Camera trước cho bạn những bức ảnh tự sướng mịn và màu sắc ổn" /></a></p>\r\n\r\n<p><em>Camera trước cho bạn những bức ảnh tự sướng mịn v&agrave; m&agrave;u sắc ổn (Ảnh: Vinh Trần)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/72751/htc-one-e9-dual7-1.jpg" onclick="return false;"><img alt="Ảnh chụp ngoài đẹp mắt" src="https://cdn1.tgdd.vn/Products/Images/42/72751/htc-one-e9-dual7-1.jpg" title="Ảnh chụp ngoài đẹp mắt" /></a></p>\r\n\r\n<p><em>Ảnh chụp với &aacute;nh đ&egrave;n trong nh&agrave; đẹp mắt (Ảnh: Ken Trần)</em></p>\r\n\r\n<p>HTC One E9 Dual l&agrave; một lựa chọn hợp l&yacute; nếu bạn cần chiếc m&aacute;y cấu h&igrave;nh hấp dẫn d&agrave;nh cho c&ocirc;ng việc, m&agrave;n h&igrave;nh lớn v&agrave; loa to ph&ugrave; hợp giải tr&iacute;.</p>\r\n', 0, 0, 0),
(50, 'Asus Zenfone Selfie', 'Asus-Zenfone-Selfie', 6490000, 0, 18, 14, 'sony-xperia-z5-dual-400x460.png', 0, '2016-05-24', '<h1>Asus Zenfone Selfie sử dụng ống k&iacute;nh độ ph&acirc;n giải trước sau l&ecirc;n tới 13 MP mang đến những bức ảnh chụp tự sướng với t&iacute;nh năng chỉnh sửa đẹp mắt.</h1>\r\n\r\n<p><strong>Ống k&iacute;nh với độ ph&acirc;n giải lớn</strong></p>\r\n\r\n<p>Ống k&iacute;nh 13 MP c&ugrave;ng t&iacute;nh năng tự động l&agrave;m mịn ảnh kh&aacute; ấn tượng, m&agrave;u sắc được ghi lại tốt.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie7-1.jpg" onclick="return false;"><img alt="Lấy nét bằng Laser giúp bạn bắt trọn được những khoảnh khắc" src="https://cdn1.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie7-1.jpg" title="Lấy nét bằng Laser giúp bạn bắt trọn được những khoảnh khắc" /></a></p>\r\n\r\n<p><em>Lấy n&eacute;t bằng Laser gi&uacute;p bạn bắt trọn được những khoảnh khắc (Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1025572472/trang-1" target="_blank" title="Thông tin người dùng">Tano Trần</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie3.jpg" onclick="return false;"><img alt="Ảnh chụp phơi sáng, tuy nhiên bạn nên sử dụng thêm cây giữ điện thoại để có được ảnh đẹp nhất" src="https://cdn3.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie3.jpg" title="Ảnh chụp phơi sáng, tuy nhiên bạn nên sử dụng thêm cây giữ điện thoại để có được ảnh đẹp nhất" /></a></p>\r\n\r\n<p><em>Ảnh chụp phơi s&aacute;ng, tuy nhi&ecirc;n bạn n&ecirc;n sử dụng th&ecirc;m th&ecirc;m c&acirc;y giữ điện thoại - tripod để c&oacute; được ảnh đẹp nhất (Ảnh: Nguyễn Huy)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src="https://cdn.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie5.jpg" /><img src="https://cdn.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie6-1.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Khả năng chụp ảnh si&ecirc;u độ ph&acirc;n giải cho ảnh n&eacute;t hơn trong c&ugrave;ng một điều kiện chụp&nbsp;</em><em>(Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1025572472/trang-1" target="_blank" title="Thông tin người dùng">Tano Trần</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie10.jpg" onclick="return false;"><img alt="Cụm ống kính cùng đèn Flash rất ấn tượng ở mặt trước" src="https://cdn.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie10.jpg" title="Cụm ống kính cùng đèn Flash rất ấn tượng ở mặt trước" /></a></p>\r\n\r\n<p><em>Cụm ống k&iacute;nh 13 MP c&ugrave;ng đ&egrave;n Flash rất ấn tượng ở mặt trước</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie4.jpg" onclick="return false;"><img alt="Bạn có tin đây là ảnh chụp bằng camera trước" src="https://cdn2.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie4.jpg" title="Bạn có tin đây là ảnh chụp bằng camera trước" /></a></p>\r\n\r\n<p><em>Bạn c&oacute; tin đ&acirc;y l&agrave; ảnh chụp bằng camera trước?&nbsp;</em><em>(Ảnh:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ca-nhan/1025572472/trang-1" target="_blank" title="Thông tin người dùng">Tano Trần</a>)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie2.jpg" onclick="return false;"><img alt="Selfie góc rộng rất tốt, tuy nhiên ảnh ngoài bìa lại bị méo đi đôi chút" src="https://cdn4.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie2.jpg" title="Selfie góc rộng rất tốt, tuy nhiên ảnh ngoài bìa lại bị méo đi đôi chút" /></a></p>\r\n\r\n<p><em>Selfie g&oacute;c rộng rất tốt, tuy nhi&ecirc;n ảnh ngo&agrave;i b&igrave;a lại bị m&eacute;o đi đ&ocirc;i ch&uacute;t&nbsp;</em><em>(Ảnh: Dương Trịnh Giang Ng&acirc;n)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie1-1.jpg" onclick="return false;"><img alt="Điều kiện ánh sáng trong nhà" src="https://cdn1.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie1-1.jpg" title="Điều kiện ánh sáng trong nhà" /></a></p>\r\n\r\n<p><em>Điều kiện &aacute;nh s&aacute;ng trong nh&agrave; (Ảnh: Dương Trịnh Giang Ng&acirc;n)</em></p>\r\n\r\n<p>Xem th&ecirc;m những c&aacute;ch chụp ảnh đẹp&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cach-de-co-buc-hinh-tu-suong-dep-long-lanh-tren-zenfone-selfie-719729" target="_blank" title="Cách để có bức hình tự sướng đẹp long lanh trên Zenfone Selfie"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><strong>Cấu h&igrave;nh m&aacute;y tốt</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Với chip xử l&yacute;&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-di-dong-arm-va-qualcomm-snapdrag-592769#snapdragon615" target="_blank" title="Tìm hiểu chip xử lý Snapdragon 615">Snapdragon 615</a>, RAM 3 GB gi&uacute;p m&aacute;y vận h&agrave;nh tốt game nặng cũng như c&ocirc;ng việc của bạn (Nguồn: Youtube)</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie100.gif" onclick="return false;"><img alt="Những tính năng thú vị nhưng tiện ích trên máy như chạm 2 lần để tắt hay mở màn hình hay chụp màn hình đơn giản" src="https://cdn3.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie100.gif" title="Những tính năng thú vị nhưng tiện ích trên máy như chạm 2 lần để tắt hay mở màn hình hay chụp màn hình đơn giản" /></a></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie-101.gif" onclick="return false;"><img alt="Những tính năng thú vị nhưng tiện ích trên máy như chạm 2 lần để tắt hay mở màn hình hay chụp màn hình đơn giản" src="https://cdn.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie-101.gif" title="Những tính năng thú vị nhưng tiện ích trên máy như chạm 2 lần để tắt hay mở màn hình hay chụp màn hình đơn giản" /></a></p>\r\n\r\n<p><em>Những t&iacute;nh năng th&uacute; vị nhưng tiện &iacute;ch tr&ecirc;n m&aacute;y như chạm 2 lần để tắt hay mở m&agrave;n h&igrave;nh hay chụp m&agrave;n h&igrave;nh đơn giản</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie9-1.jpg" onclick="return false;"><img alt="Màn hình 5.5 inch cùng công nghệ IPS LCD giúp khả năng hiển thị dưới trời nắng tốt" src="https://cdn2.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie9-1.jpg" title="Màn hình 5.5 inch cùng công nghệ IPS LCD giúp khả năng hiển thị dưới trời nắng tốt" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh 5.5 inch c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#ipslcd" target="_blank" title="Tìm hiểu công nghệ màn hình IPS LCD">c&ocirc;ng nghệ IPS LCD</a>&nbsp;gi&uacute;p khả năng hiển thị dưới trời nắng tốt</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/42/71974/asus-zenfone-selfie11.jpg" onclick="return false;"><img alt="3 màu sắc hồng, trắng và xanh dương pastel rất vui tươi" src="https://cdn4.tgdd.vn/Products/Images/42/71974/asus-zenfone-selfie11.jpg" title="3 màu sắc hồng, trắng và xanh dương pastel rất vui tươi" /></a></p>\r\n\r\n<p><em>3 m&agrave;u sắc hồng, trắng v&agrave; xanh dương pastel rất vui tươi, mặt lưng cong gi&uacute;p cầm tay thoải m&aacute;i hơn</em></p>\r\n\r\n<p>Nếu bạn y&ecirc;u th&iacute;ch chụp ảnh c&ugrave;ng nhiều những t&iacute;nh năng chỉnh tay chuy&ecirc;n nghiệp, b&ecirc;n cạnh đ&oacute; l&agrave; cấu h&igrave;nh tốt th&igrave; Asus Zenfone Selfie sẽ l&agrave; sự lựa chọn ưu ti&ecirc;n của bạn.</p>\r\n', 0, 0, 0),
(59, 'Laptop Lenovo IdeaPad 100S 11IBY', 'Laptop-Lenovo-IdeaPad-100S-11IBY', 3990000, 0, 26, 16, 'lenovo-ideapad-100s-1-400x460.png', 0, '2016-05-17', '<h1>Lenovo Ideapad 100s &ndash; Laptop Windows 10 gi&aacute; sinh vi&ecirc;n</h1>\r\n\r\n<p><strong>Với thiết kế nhỏ gọn, thời trang, hiệu năng đ&aacute;p ứng c&ocirc;ng việc văn ph&ograve;ng cơ bản v&agrave; duyệt web,&nbsp;<a href="https://www.thegioididong.com/laptop-lenovo" target="_blank" title="Laptop thương hiệu Lenovo">Lenovo</a>&nbsp;Ideapad 100s gi&uacute;p người d&ugrave;ng c&oacute; th&ecirc;m lựa chọn cho nhu cầu l&agrave;m việc di động của m&igrave;nh.</strong></p>\r\n\r\n<p><strong>Thiết kế nhỏ gọn, tinh tế</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/75558/lenovo-ideapad-100s-1.jpg" onclick="return false;"><img alt="Thiết kế nhỏ gọn, tinh tế" src="https://cdn1.tgdd.vn/Products/Images/44/75558/lenovo-ideapad-100s-1.jpg" title="Thiết kế nhỏ gọn, tinh tế" /></a><img alt="HongNhan:Users:hongnhan:Desktop:Laptop Lenovo Ideapad 100s:1.jpg" src="file://localhost/Users/thuyduong/Library/Group%20Containers/UBF8T346G9.Office/msoclip1/01/clip_image002.png" /></p>\r\n\r\n<p>Lenovo Ideapad 100s c&oacute; thiết kh&ocirc;ng cầu k&igrave;. Đơn giản l&agrave; m&agrave;u sắc l&agrave;m n&ecirc;n điểm nhấn c&ugrave;ng c&aacute;c đường v&aacute;t cạnh gi&uacute;p chiếc m&aacute;y đ&atilde; nhỏ tr&ocirc;ng c&ograve;n mỏng v&agrave; ưa nh&igrave;n hơn. C&oacute; nhiều m&agrave;u cho người d&ugrave;ng chọn lựa như m&agrave;u đỏ rực rỡ v&agrave; đen hoặc bạc sang trọng.</p>\r\n\r\n<p><img alt="HongNhan:Users:hongnhan:Desktop:Laptop Lenovo Ideapad 100s:2.jpg" src="file://localhost/Users/thuyduong/Library/Group%20Containers/UBF8T346G9.Office/msoclip1/01/clip_image004.png" /><a href="https://www.thegioididong.com/images/44/75558/lenovo-ideapad-100s-2.jpg" onclick="return false;"><img alt="Là dòng máy giá rẻ nhưng Ideapad 100s vẫn được nhà sản xuất chăm chút về thiết kế với kiểu dáng mỏng nhẹ và khung kim loại sang trọng" src="https://cdn2.tgdd.vn/Products/Images/44/75558/lenovo-ideapad-100s-2.jpg" title="Là dòng máy giá rẻ nhưng Ideapad 100s vẫn được nhà sản xuất chăm chút về thiết kế với kiểu dáng mỏng nhẹ và khung kim loại sang trọng" /></a></p>\r\n\r\n<p><em>L&agrave; d&ograve;ng m&aacute;y gi&aacute; rẻ nhưng Ideapad 100s vẫn được nh&agrave; sản xuất chăm ch&uacute;t về thiết kế với kiểu d&aacute;ng mỏng nhẹ v&agrave; khung kim loại sang trọng</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/75558/lenovo-ideapad-100s-3.jpg" onclick="return false;"><img alt="Độ mỏng chỉ 17.5 mm và trọng lượng 1 kg" src="https://cdn4.tgdd.vn/Products/Images/44/75558/lenovo-ideapad-100s-3.jpg" title="Độ mỏng chỉ 17.5 mm và trọng lượng 1 kg" /></a></p>\r\n\r\n<p><em>Độ mỏng chỉ 17.5 mm v&agrave; trọng lượng 1 kg</em></p>\r\n\r\n<p>Ideapad 100s c&oacute; đầy đủ c&aacute;c kết nối cần thiết gồm HDMI,&nbsp;<a href="https://www.thegioididong.com/usb/usb-sandisk-sdcz43-16gb-30" target="_blank" title="USB 3.0 cho laptop">USB 3.0</a>, USB 2.0, giắc cắm combo tai nghe/mic, khe cắm thẻ nhớ. C&aacute;c kết nối kh&ocirc;ng c&ograve;n th&ocirc;ng dụng như ổ đĩa CD hay cổng VGA đ&atilde; bị loại bỏ.</p>\r\n\r\n<p><img alt="HongNhan:Users:hongnhan:Desktop:Laptop Lenovo Ideapad 100s:4.jpg" src="file://localhost/Users/thuyduong/Library/Group%20Containers/UBF8T346G9.Office/msoclip1/01/clip_image008.png" /><a href="https://www.thegioididong.com/images/44/75558/lenovo-ideapad-100s-4.jpg" onclick="return false;"><img alt="Cạnh máy bên trái là nơi bố trí cổng HDMI, giắc cắm combo tai nghe/mic, khe cắm thẻ nhớ" src="https://cdn3.tgdd.vn/Products/Images/44/75558/lenovo-ideapad-100s-4.jpg" title="Cạnh máy bên trái là nơi bố trí cổng HDMI, giắc cắm combo tai nghe/mic, khe cắm thẻ nhớ" /></a></p>\r\n\r\n<p><em>Cạnh m&aacute;y b&ecirc;n tr&aacute;i l&agrave; nơi bố tr&iacute; cổng HDMI, giắc cắm combo tai nghe/mic, khe cắm&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai/the-nho-microsd-8gb-class-4" target="_blank" title="Thẻ nhớ 8 GB">thẻ nhớ</a></em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/75558/lenovo-ideapad-100s-5.jpg" onclick="return false;"><img alt="Cạnh bên phải có cổng USB 3.0 và USB 2.0" src="https://cdn.tgdd.vn/Products/Images/44/75558/lenovo-ideapad-100s-5.jpg" title="Cạnh bên phải có cổng USB 3.0 và USB 2.0" /></a></p>\r\n\r\n<p><em>Cạnh b&ecirc;n phải c&oacute; cổng USB 3.0 v&agrave; USB 2.0</em></p>\r\n\r\n<p>Ideapad 100s c&oacute; 2 loa được đặt sau 2 b&ecirc;n c&acirc;n xứng mặt lưng, &acirc;m lượng kh&aacute; ổn, c&oacute; thể đủ đ&aacute;p ứng cho nhu cầu giải tr&iacute; v&agrave; xem phim.</p>\r\n\r\n<p><img alt="HongNhan:Users:hongnhan:Desktop:Laptop Lenovo Ideapad 100s:6.jpg" src="file://localhost/Users/thuyduong/Library/Group%20Containers/UBF8T346G9.Office/msoclip1/01/clip_image012.png" /><a href="https://www.thegioididong.com/images/44/75558/lenovo-ideapad-100s-6.jpg" onclick="return false;"><img alt="Ideapad 100s không cho phép tháo lắp pin" src="https://cdn4.tgdd.vn/Products/Images/44/75558/lenovo-ideapad-100s-6.jpg" title="Ideapad 100s không cho phép tháo lắp pin" /></a></p>\r\n\r\n<p><em>Ideapad 100s kh&ocirc;ng cho ph&eacute;p th&aacute;o lắp pin</em></p>\r\n\r\n<p><strong>Chất lượng hiển thị</strong></p>\r\n\r\n<p>Ideapad 100s được trang bị m&agrave;n h&igrave;nh k&iacute;ch thước 11.6 inch nhỏ gọn, độ ph&acirc;n giải chuẩn HD 1366 x 768 pixels vẫn thường thấy tr&ecirc;n d&ograve;ng laptop 14 inch. Chất lượng h&igrave;nh ảnh mịn m&agrave;ng, sắc n&eacute;t v&agrave; kh&aacute; ch&acirc;n thực.</p>\r\n\r\n<p>C&ocirc;ng nghệ LED Backlit gi&uacute;p h&igrave;nh ảnh hiển thị s&acirc;u hơn v&agrave; chống ch&oacute;i hiệu quả, cho ph&eacute;p bạn c&oacute; thể sử dụng m&aacute;y ngay cả trong điều kiện &aacute;nh s&aacute;ng mạnh.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/75558/lenovo-ideapad-100s-7.jpg" onclick="return false;"><img alt="Màn hình vừa đủ 11.6 inch" src="https://cdn1.tgdd.vn/Products/Images/44/75558/lenovo-ideapad-100s-7.jpg" title="Màn hình vừa đủ 11.6 inch" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh vừa đủ 11.6 inch</em></p>\r\n\r\n<p><strong>Hiệu năng</strong></p>\r\n\r\n<p>Ideapad 100s c&oacute; bộ vi xử l&yacute; Intel Atom Z3735F xung nhịp 1.33 GHz, bộ nhớ RAM 2 GB v&agrave; bộ nhớ trong 32 GB. M&aacute;y chạy tốt c&aacute;c t&aacute;c vụ cơ bản như lướt web, xem video v&agrave; đặc biệt l&agrave; phần mềm văn ph&ograve;ng Microsoft Office gi&uacute;p bạn lu&ocirc;n ho&agrave;n th&agrave;nh tốt c&ocirc;ng việc.</p>\r\n\r\n<p>Hơn nữa, tuy thuộc ph&acirc;n kh&uacute;c gi&aacute; rẻ nhưng m&aacute;y được trang bị chip đồ họa t&iacute;ch hợp Intel HD Graphics để g&oacute;p phần n&acirc;ng cao chất lượng đồ họa, gi&uacute;p bạn giải tr&iacute; hiệu quả hơn với c&aacute;c bộ phim HD hay c&aacute;c game giải tr&iacute; nhẹ nh&agrave;ng.</p>\r\n\r\n<p><strong>T&iacute;ch hợp sẵn hệ điều h&agrave;nh Windows 10 bản quyền</strong></p>\r\n\r\n<p>Ideapad 100s c&ograve;n đặc biệt g&acirc;y ấn tượng khi n&oacute; được biết đến l&agrave; một trong những chiếc laptop gi&aacute; rẻ đầu ti&ecirc;n được c&agrave;i sẵn hệ điều h&agrave;nh Windows 10 mới nhất từ Microsoft c&ugrave;ng 100 GB dung lượng miễn ph&iacute; OneDrive trong 2 năm.</p>\r\n\r\n<p>Với giao diện đẹp mắt, nhiều t&iacute;nh năng mới mẻ v&agrave; hiện đại c&ugrave;ng khả năng bảo mật cao từ phi&ecirc;n bản Windows n&agrave;y, chắc chắn sẽ cho bạn những trải nghiệm tuyệt vời tr&ecirc;n một thiết bị nhỏ gọn.</p>\r\n\r\n<p>Bạn xem th&ecirc;m tổng hợp hướng dẫn cho Windows 10&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tong-hop-tat-tan-tat-nhung-gi-ban-can-biet-ve-windows-10-692753" target="_blank" title="Cẩm nang tổng hợp từ A đến Z những điều cần biết về Windows 10"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><strong>B&agrave;n ph&iacute;m</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/75558/lenovo-ideapad-100s-8.jpg" onclick="return false;"><img alt="Bàn phím" src="https://cdn3.tgdd.vn/Products/Images/44/75558/lenovo-ideapad-100s-8.jpg" title="Bàn phím" /></a><img alt="HongNhan:Users:hongnhan:Desktop:Laptop Lenovo Ideapad 100s:8.jpg" src="file://localhost/Users/thuyduong/Library/Group%20Containers/UBF8T346G9.Office/msoclip1/01/clip_image016.png" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m kh&ocirc;ng c&ograve;n đi theo kiểu AccuType quen thuộc của Lenovo nữa m&agrave; chuyển sang dạng Chiclet với c&aacute;c ph&iacute;m bấm vu&ocirc;ng vức, k&iacute;ch thước lớn, khoảng c&aacute;ch ph&iacute;m rộng. Touchpad cũng c&oacute; k&iacute;ch thước rộng r&atilde;i, bề mặt nh&aacute;m để tăng sự ch&iacute;nh x&aacute;c khi thao t&aacute;c.</p>\r\n\r\n<p><img alt="HongNhan:Users:hongnhan:Desktop:Laptop Lenovo Ideapad 100s:9.jpg" src="file://localhost/Users/thuyduong/Library/Group%20Containers/UBF8T346G9.Office/msoclip1/01/clip_image018.png" /><a href="https://www.thegioididong.com/images/44/75558/lenovo-ideapad-100s-9.jpg" onclick="return false;"><img alt="Lenovo Ideapad 100s" src="https://cdn4.tgdd.vn/Products/Images/44/75558/lenovo-ideapad-100s-9.jpg" title="Lenovo Ideapad 100s" /></a></p>\r\n\r\n<p>Lenovo Ideapad 100s l&agrave; một sản phẩm gi&aacute; rẻ, rất rẻ so với mặt chung c&aacute;c mẫu&nbsp;<a href="https://www.thegioididong.com/laptop" target="_blank" title="Laptop thế giới di động">m&aacute;y t&iacute;nh x&aacute;ch tay</a>&nbsp;hiện nay. V&agrave; tất nhi&ecirc;n khả năng cũng dừng lại ở mức đủ sức đ&aacute;p ứng nhu cầu lướt web, l&agrave;m việc với bộ Office ở mức cơ bản v&agrave; giải tr&iacute; nhẹ nh&agrave;ng.</p>\r\n', 0, 0, 0);
INSERT INTO `products` (`id`, `product_name`, `product_slug`, `product_price`, `product_discount`, `product_vendor`, `product_cate`, `product_img`, `product_remain`, `product_date`, `product_info`, `product_detail`, `product_image`, `product_video`) VALUES
(60, 'Laptop Lenovo IdeaPad 100 14IB', 'Laptop-Lenovo-IdeaPad-100-14IB', 5500000, 0, 28, 16, 'dell-inspiron-3452-n3700-4gb-500gb-win10-300-400-400x4001.png', 0, '2016-05-25', '<h1>Lenovo IdeaPad 100 14IBY c&oacute; mức gi&aacute; thấp ai cũng c&oacute; thể sở hữu, ph&ugrave; hợp với c&aacute;c nhu cầu sử dụng đơn giản.</h1>\r\n\r\n<p><strong>Cấu h&igrave;nh vừa đủ cho c&ocirc;ng việc v&agrave; giải tr&iacute; nhẹ nh&agrave;ng</strong></p>\r\n\r\n<p>Sử dụng CPU Celeron, tốc độ 2.16 GHz, m&aacute;y chỉ c&oacute; 1 khe cắm RAM duy nhất v&agrave; tối đa chỉ 2 GB.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-5.jpg" onclick="return false;"><img alt="Dòng máy này phù hợp với các bạn học sinh/sinh viên với nhu cầu sử dụng thấp" src="https://cdn1.tgdd.vn/Products/Images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-5.jpg" title="Dòng máy này phù hợp với các bạn học sinh/sinh viên với nhu cầu sử dụng thấp" /></a></p>\r\n\r\n<p><em>D&ograve;ng m&aacute;y n&agrave;y ph&ugrave; hợp với c&aacute;c bạn học sinh/sinh vi&ecirc;n với nhu cầu sử dụng thấp hay người d&ugrave;ng cần một chiếc m&aacute;y đơn giản để giải tr&iacute;</em></p>\r\n\r\n<p>Khi sử dụng một thời gian, bạn n&ecirc;n thay thanh RAM với dung lượng lớn hơn (tối đa 8 GB) để gi&uacute;p m&aacute;y chạy nhẹ nh&agrave;ng hơn, kh&ocirc;ng bị đầy RAM.</p>\r\n\r\n<p>Lenovo IdeaPad 100 14IBY sử dụng m&agrave;n h&igrave;nh 14 inch kh&aacute; phổ biến hiện nay, h&igrave;nh ảnh v&agrave; m&agrave;u sắc được hiển thị kh&aacute; tốt. Độ ph&acirc;n giải HD cho chi tiết hiển thị r&otilde;.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-4.jpg" onclick="return false;"><img alt="Màn hình 14 inch cho không gian hiển thị khá thoải mái" src="https://cdn3.tgdd.vn/Products/Images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-4.jpg" title="Màn hình 14 inch cho không gian hiển thị khá thoải mái" /></a></p>\r\n\r\n<p><em><a href="https://www.thegioididong.com/tin-tuc/cac-cong-nghe-hien-thi-tren-man-hinh-laptop-597377#splendvideo" target="_blank" title="Tìm hiểu công nghệ màn hình">C&ocirc;ng nghệ Splend Video Intelligent</a>&nbsp;gi&uacute;p điều chỉnh h&igrave;nh ảnh th&iacute;ch hợp nhất với nhu cầu sử dụng</em></p>\r\n\r\n<p><strong>Vẫn trang bị kh&aacute; đầy đủ c&aacute;c cổng kết nối</strong></p>\r\n\r\n<p>C&oacute; mức gi&aacute; thấp nhất nhưng m&aacute;y vẫn c&oacute; c&aacute;c chuẩn kết nối cơ bản nhất cho người d&ugrave;ng, cụ thể l&agrave;:</p>\r\n\r\n<p>- Cạnh tr&aacute;i c&oacute; cổng HDMI d&ugrave;ng để truyền tải h&igrave;nh ảnh v&agrave; &acirc;m thanh l&ecirc;n m&agrave;n h&igrave;nh lớn hơn qua d&acirc;y c&aacute;p, cổng LAN kết nối với mạng d&acirc;y, 1&nbsp;<a href="https://www.thegioididong.com/usb/usb-transcend-jetflash-790-16gb-30" target="_blank" title="USB 16GB 3.0 Transcend JetFlash 790">USB 3.0</a>,&nbsp;1&nbsp;<a href="https://www.thegioididong.com/usb/usb-8gb-20-apacer-ah328" target="_blank" title="USB 8GB 2.0 Apacer AH328">USB 2.0</a>&nbsp;v&agrave; 1&nbsp;<a href="https://www.thegioididong.com/tai-nghe-day" target="_blank" title="Phụ kiện tai nghe">tai nghe</a>jack chuẩn 3.5 mm.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-den-1-6.jpg" onclick="return false;"><img alt="Cạnh trái" src="https://cdn.tgdd.vn/Products/Images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-den-1-6.jpg" title="Cạnh trái" /></a></p>\r\n\r\n<p>- Cạnh phải m&aacute;y được để trống, cạnh trước m&aacute;y c&oacute; 1 khe nhỏ gắn&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai" target="_blank" title="Phụ kiện thẻ nhớ">thẻ nhớ</a>.</p>\r\n\r\n<p><strong>Windows 10 bản quyền</strong></p>\r\n\r\n<p>Lenovo IdeaPad 100 14IBY được c&agrave;i đặt sẵn Windows 10 bản quyền sẵn trong m&aacute;y khi bạn mua về, hệ điều h&agrave;nh mới với nhiều cải tiến thuận lợi hơn cho người d&ugrave;ng.</p>\r\n\r\n<p>C&oacute; rất nhiều mẹo sử dụng cho Win 10, bạn tham khảo th&ecirc;m cẩm nang&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tong-hop-tat-tan-tat-nhung-gi-ban-can-biet-ve-windows-10-692753" target="_blank" title="Cẩm nang tổng hợp từ A đến Z những điều cần biết về Windows 10"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><strong>Thiết kế nhẹ nh&agrave;ng dễ di chuyển</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-3.jpg" onclick="return false;"><img alt="Máy có thiết kế đặc trưng của Lenovo" src="https://cdn2.tgdd.vn/Products/Images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-3.jpg" title="Máy có thiết kế đặc trưng của Lenovo" /></a></p>\r\n\r\n<p><em>M&aacute;y c&oacute; thiết kế đặc trưng của&nbsp;<a href="https://www.thegioididong.com/laptop-lenovo" target="_blank" title="Laptop hãng Lenovo">Lenovo</a>, bề mặt nh&aacute;m chống b&aacute;m v&acirc;n tay hiệu quả hơn</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-6.jpg" onclick="return false;"><img alt="Trọng lượng máy nhẹ chỉ 1.9 kg, phụ kiện sạc cho máy nhỏ, gọn gàng để bỏ vào balo di chuyển khi đi làm hay đi xa cần mang theo máy" src="https://cdn4.tgdd.vn/Products/Images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-6.jpg" title="Trọng lượng máy nhẹ chỉ 1.9 kg, phụ kiện sạc cho máy nhỏ, gọn gàng để bỏ vào balo di chuyển khi đi làm hay đi xa cần mang theo máy" /></a></p>\r\n\r\n<p><em>Trọng lượng m&aacute;y nhẹ chỉ 1.9 kg, phụ kiện sạc cho m&aacute;y nhỏ, gọn g&agrave;ng để bỏ v&agrave;o balo di chuyển khi đi l&agrave;m hay đi xa cần mang theo m&aacute;y</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-1.jpg" onclick="return false;"><img alt="Bàn phím qwerty quen thuộc " src="https://cdn1.tgdd.vn/Products/Images/44/73844/lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-1.jpg" title="Bàn phím qwerty quen thuộc " /></a></p>\r\n\r\n<p><em>B&agrave;n ph&iacute;m qwerty quen thuộc, với m&agrave;n h&igrave;nh 14 inch n&ecirc;n m&aacute;y kh&ocirc;ng c&oacute; cụm b&agrave;n ph&iacute;m số b&ecirc;n tay phải</em></p>\r\n\r\n<p>Dung lượng pin chỉ 2 cell ph&ugrave; hợp với nhu cầu sử dụng đơn giản của bạn.</p>\r\n\r\n<p>Lược bỏ nhiều t&iacute;nh năng cao cấp để c&oacute; mức gi&aacute; tốt nhưng Lenovo IdeaPad 100 14IBY&nbsp;vẫn c&oacute; thể đ&aacute;p ứng tốt những gi&acirc;y ph&uacute;t giải tr&iacute;, xem phim hay lướt web, c&ocirc;ng việc nhẹ nh&agrave;ng của bạn.</p>\r\n', 0, 0, 0),
(61, 'Laptop Acer ES1 431', 'Laptop-Acer-ES1-431', 5500000, 0, 29, 16, 'lenovo-ideapad-100-14iby-n2840-2gb-500gb-win10-400-400x400.png', 0, '2016-05-25', '<h1>C&ugrave;ng trong ph&acirc;n kh&uacute;c gi&aacute; rẻ nhưng Acer ES1 431 nổi bật l&ecirc;n với thanh RAM 4 GB, m&agrave;n h&igrave;nh c&ocirc;ng nghệ sắc n&eacute;t hơn v&agrave; dung lượng pin 4 cell.</h1>\r\n\r\n<p><strong>Cải thiện cấu h&igrave;nh với RAM 4 GB</strong></p>\r\n\r\n<p>Đặc điểm chung của c&aacute;c d&ograve;ng m&aacute;y gi&aacute; thấp l&agrave; cấu h&igrave;nh kh&ocirc;ng qu&aacute; mạnh mẽ để chạy mượt m&agrave;, nhưng Acer đ&atilde; cải thiện để m&aacute;y chạy tốt hơn với thanh RAM sẵn dung lượng 4 GB.</p>\r\n\r\n<p>Sau một thời gian sử dụng, bạn c&oacute; thể thay mới RAM với dung lượng lớn hơn (tối đa 8 GB) để gi&uacute;p m&aacute;y chạy nhẹ nh&agrave;ng.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73875/acer-es1-431-n3050-4gb-500gb-win10-4.jpg" onclick="return false;"><img alt="Cải thiện cấu hình với RAM 4 GB" src="https://cdn1.tgdd.vn/Products/Images/44/73875/acer-es1-431-n3050-4gb-500gb-win10-4.jpg" title="Cải thiện cấu hình với RAM 4 GB" /></a></p>\r\n\r\n<p><em>M&aacute;y ph&ugrave; hợp với c&aacute;c thao t&aacute;c c&ocirc;ng việc nhẹ nh&agrave;ng, giải tr&iacute; đơn giản như xem phim, lướt web</em></p>\r\n\r\n<p>M&aacute;y d&ugrave;ng chip&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelceleron" target="_blank" title="Tìm hiểu chip Intel Celeron">Intel Celeron</a>, tốc độ&nbsp;1.60 GHz, ổ cứng HDD dung lượng 500 GB kh&aacute; thoải m&aacute;i để bạn lưu trữ dự liệu của ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh tốt hơn</strong></p>\r\n\r\n<p>Acer ES1 431 c&oacute; m&agrave;n h&igrave;nh k&iacute;ch thước 14 inch, c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-cong-nghe-hien-thi-tren-man-hinh-laptop-597377#activematrix" target="_blank" title="Tìm hiểu công nghệ màn hình">Active Matrix TFT Colour LCD</a>&nbsp;với ưu điểm gi&uacute;p&nbsp;m&agrave;n h&igrave;nh&nbsp;s&aacute;ng v&agrave; m&agrave;u sắc ch&iacute;nh x&aacute;c hơn.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73875/acer-es1-431-n3050-4gb-500gb-win10-3.jpg" onclick="return false;"><img alt="Màn hình tốt hơn" src="https://cdn3.tgdd.vn/Products/Images/44/73875/acer-es1-431-n3050-4gb-500gb-win10-3.jpg" title="Màn hình tốt hơn" /></a></p>\r\n\r\n<p><em>Giải tr&iacute; th&iacute;ch hơn</em></p>\r\n\r\n<p><strong>T&iacute;ch hợp sẵn hệ điều h&agrave;nh Windows 10 bản quyền</strong></p>\r\n\r\n<p>M&aacute;y được c&agrave;i đặt sẵn Windows 10 bản quyền nhiều tiện &iacute;ch cho bạn sử dụng, c&oacute; kh&aacute; nhiều mẹo tr&ecirc;n hệ điều h&agrave;nh mới n&agrave;y, bạn c&oacute; thể tham khảo&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tong-hop-tat-tan-tat-nhung-gi-ban-can-biet-ve-windows-10-692753" target="_blank" title="Cẩm nang tổng hợp từ A đến Z những điều cần biết về Windows 10"><strong>tại đ&acirc;y</strong></a>.</p>\r\n\r\n<p><strong>Đầy đủ c&aacute;c tiện &iacute;ch cơ bản nhất</strong></p>\r\n\r\n<p>M&aacute;y trang bị c&aacute;c cổng kết nối cơ bản nhất cho người d&ugrave;ng, được t&iacute;ch hợp hầu hết ở cạnh tr&aacute;i m&aacute;y, cụ thể:</p>\r\n\r\n<p>- Cạnh tr&aacute;i c&oacute; jack sạc, cổng LAN kết nối mạng d&acirc;y, cổng HDMI xuất h&igrave;nh ảnh v&agrave; &acirc;m thanh ra m&agrave;n h&igrave;nh lớn, cổng&nbsp;<a href="https://www.thegioididong.com/usb/usb-16gb-30-apacer-ah354" target="_blank" title="USB 16GB 3.0 Apacer AH354">USB 3.0</a>,&nbsp;<a href="https://www.thegioididong.com/usb/usb-8gb-20-apacer-ah328" target="_blank" title="USB 8GB 2.0 Apacer AH328">USB 2.0</a>&nbsp;v&agrave; 1 jack&nbsp;<a href="https://www.thegioididong.com/tai-nghe-day" target="_blank" title="Phụ kiện tai nghe">tai nghe</a>&nbsp;3.5 mm.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73875/acer-es1-431-n3050-4gb-500gb-win10-5.jpg" onclick="return false;"><img alt="Cạnh trái" src="https://cdn.tgdd.vn/Products/Images/44/73875/acer-es1-431-n3050-4gb-500gb-win10-5.jpg" title="Cạnh trái" /></a></p>\r\n\r\n<p>- Cạnh trước m&aacute;y c&oacute; 1 khe gắn&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai" target="_blank" title="Phụ kiện thẻ nhớ">thẻ nhớ</a>.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/73875/acer-es1-431-n3050-4gb-500gb-win10-6.jpg" onclick="return false;"><img alt="Cạnh trước" src="https://cdn2.tgdd.vn/Products/Images/44/73875/acer-es1-431-n3050-4gb-500gb-win10-6.jpg" title="Cạnh trước" /></a></p>\r\n\r\n<p>M&aacute;y c&oacute; thiết kế kh&ocirc;ng nhiều nổi bật, nhưng mặt trước được tạo hoạ tiết c&aacute;c chấm in ch&igrave;m nhỏ tạo điểm nhấn, bề mặt nh&aacute;m hạn chế b&aacute;m v&acirc;y tay.</p>\r\n', 0, 0, 0),
(62, 'Laptop Acer Aspire E5 573', 'Laptop-Acer-Aspire-E5-573', 9690000, 0, 28, 16, 'acer-aspire-e5-573-i3-5005u-4gb-500gb-win-10-400-400x400.png', 0, '2016-05-25', '<h1>Acer Aspire E5 573 i3 với thiết kế sang trọng hơn, cấu h&igrave;nh Core i3 thế hệ mới ph&ugrave; hợp với nhu cầu c&ocirc;ng việc th&ocirc;ng thường.</h1>\r\n\r\n<p><strong>Thiết kế chắc chắn sang trọng</strong></p>\r\n\r\n<p>Chiếc Acer Aspire E5 i3&nbsp;c&oacute; vẻ ngo&agrave;i thật sự sang trọng với bộ vỏ phay xước giả kim loại sang trọng gi&uacute;p cho m&aacute;y trở n&ecirc;n th&acirc;n thiện với người sử dụng.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/77486/acer-aspire-e5-573-i3-5005u-4gb-500gb-win-10-1.jpg" onclick="return false;"><img alt="Những đường xước được gia công tinh tế, tạo thành những hoa văn độc đáo" src="https://cdn1.tgdd.vn/Products/Images/44/77486/acer-aspire-e5-573-i3-5005u-4gb-500gb-win-10-1.jpg" title="Những đường xước được gia công tinh tế, tạo thành những hoa văn độc đáo" /></a></p>\r\n\r\n<p><em>Những đường xước được gia c&ocirc;ng tinh tế, tạo th&agrave;nh những hoa văn độc đ&aacute;o</em></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, vỏ m&aacute;y cũng hạn chế b&aacute;m dấu v&acirc;n tay, bụi bẩn trong suốt qu&aacute; tr&igrave;nh sử dụng. Nhờ đ&oacute;, chiếc laptop của bạn lu&ocirc;n sạch sẽ, s&aacute;ng b&oacute;ng, sẵn s&agrave;ng c&ugrave;ng bạn tham dự những cuộc họp, gặp đối t&aacute;c&hellip; thật ấn tượng v&agrave; thanh lịch.&nbsp;</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/77486/acer-aspire-e5-573-i3-5005u-4gb-500gb-win-10-2.jpg" onclick="return false;"><img alt="Máy khá nhỏ gọn" src="https://cdn3.tgdd.vn/Products/Images/44/77486/acer-aspire-e5-573-i3-5005u-4gb-500gb-win-10-2.jpg" title="Máy khá nhỏ gọn" /></a></p>\r\n\r\n<p>M&aacute;y kh&aacute; nhỏ gọn, với c&aacute;c k&iacute;ch thước: D&agrave;i 381.6 mm - Ngang 256 mm - D&agrave;y 29.2 mm, trọng lượng 2.4 kg, kh&aacute; ph&ugrave; hợp với người d&ugrave;ng thường xuy&ecirc;n di chuyển. Việc sắp xếp c&aacute;c cổng kết nối kh&aacute; hợp l&yacute;, rộng r&atilde;i để người d&ugrave;ng thao t&aacute;c.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/77486/acer-aspire-e5-573-i3-5005u-4gb-500gb-win-10-3-1.jpg" onclick="return false;"><img alt="Máy khá nhỏ gọn" src="https://cdn.tgdd.vn/Products/Images/44/77486/acer-aspire-e5-573-i3-5005u-4gb-500gb-win-10-3-1.jpg" title="Máy khá nhỏ gọn" /></a></p>\r\n\r\n<p>Tuy nhi&ecirc;n, thay v&igrave; được v&aacute;t mỏng như những d&ograve;ng m&aacute;y hiện nay, chiếc&nbsp;Acer Aspire E5 573 i3&nbsp;chỉ được v&aacute;t rất nhẹ, tạo th&agrave;nh một đế m&aacute;y kh&aacute; bằng phẳng, chắc chắn. Tổng thể,&nbsp;chiếc Aspire E5 573 i3&nbsp;kh&ocirc;ng nổi bật với độ si&ecirc;u mỏng nhưng vẫn tạo được sự gọn g&agrave;ng, năng động.&nbsp;</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/77486/acer-aspire-e5-573-i3-5005u-4gb-500gb-win-10-4.jpg" onclick="return false;"><img alt="Cạnh trái là cổng VGA, cổng LAN, cổng HDMI,  2 cổng USB 3.0 và jack cắm tai nghe" src="https://cdn2.tgdd.vn/Products/Images/44/77486/acer-aspire-e5-573-i3-5005u-4gb-500gb-win-10-4.jpg" title="Cạnh trái là cổng VGA, cổng LAN, cổng HDMI,  2 cổng USB 3.0 và jack cắm tai nghe" /></a></p>\r\n\r\n<p><em>Cạnh tr&aacute;i l&agrave; cổng VGA, cổng LAN, cổng HDMI,&nbsp; 2 cổng&nbsp;<a href="https://www.thegioididong.com/usb/usb-sandisk-sdcz43-16gb-30" target="_blank" title="USB 16GB 3.0 Sandisk SDCZ43">USB 3.0</a>&nbsp;v&agrave; jack cắm&nbsp;<a href="https://www.thegioididong.com/tai-nghe-day/tai-nghe-ep-sony-mdr-e9lp-bc-e-hong" target="_blank" title="Tai nghe EP Sony MDR-E9LP chính hãng">tai nghe</a></em></p>\r\n', 0, 0, 0),
(63, 'Laptop Dell Inspiron 3452', 'Laptop-Dell-Inspiron-3452', 9690000, 0, 29, 16, 'dell-inspiron-3452-n3700-4gb-500gb-win10-300-400-400x400.png', 0, '2016-05-26', '<h1>Dell Inspiron 3452 N3700 - Laptop tốt trong tầm gi&aacute;</h1>\r\n\r\n<p><strong>Để đ&aacute;p ứng nhu cầu sử dụng m&aacute;y t&iacute;nh b&igrave;nh d&acirc;n với mức gi&aacute; rất hấp dẫn.&nbsp;</strong><strong><a href="https://www.thegioididong.com/laptop-dell" target="_blank" title="Laptop thương hiệu Dell">Dell</a></strong><strong>&nbsp;tung ra thế hệ&nbsp;</strong><strong><a href="https://www.thegioididong.com/laptop" target="_blank" title="Laptop các thương hiệu">laptop</a></strong><strong>&nbsp;14 inch Inspiron 3452 N3700. Thiết bị n&agrave;y sở hữu cấu h&igrave;nh rất vừa phải c&acirc;n đối hợp l&yacute; giữa nhu cầu của người d&ugrave;ng v&agrave; t&uacute;i tiền. Đ&aacute;ng ch&uacute; &yacute; Dell Inspiron 3452 c&oacute; thiết kế rất mỏng v&agrave; rất nhẹ.</strong></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win101.jpg" onclick="return false;"><img alt="Dell Inspiron 3452 N3700/4GB/500GB/Win10" src="https://cdn4.tgdd.vn/Products/Images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win101.jpg" title="Dell Inspiron 3452 N3700/4GB/500GB/Win10" /></a></p>\r\n\r\n<p><em>Một sản phẩm c&oacute; mức gi&aacute; hết sức hợp l&yacute; v&agrave; thiết kế đẹp</em></p>\r\n\r\n<p><strong>Thiết kế mỏng nhẹ, t&iacute;nh di động cao</strong></p>\r\n\r\n<p>Dell Inspiron 3452 được tạo n&ecirc;n từ chất liệu nhựa do đ&oacute; th&acirc;n m&aacute;y c&oacute; t&iacute;nh di động cao với ưu thế ch&iacute;nh l&agrave; độ mỏng chỉ 21.4 mm v&agrave; nhẹ chỉ 1.9 kg, rất thuận tiện để mang theo b&ecirc;n m&igrave;nh kể cả khi l&agrave;m việc cũng như phục vụ nhu cầu c&aacute; nh&acirc;n.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win102.jpg" onclick="return false;"><img alt="Mặt lưng của máy được làm nhám cho cảm giác cầm chắc chắn và bớt đi sự nhàm chán" src="https://cdn1.tgdd.vn/Products/Images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win102.jpg" title="Mặt lưng của máy được làm nhám cho cảm giác cầm chắc chắn và bớt đi sự nhàm chán" /></a></p>\r\n\r\n<p><em>Mặt lưng của m&aacute;y được l&agrave;m nh&aacute;m cho cảm gi&aacute;c cầm chắc chắn v&agrave; bớt đi sự nh&agrave;m ch&aacute;n</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win103.jpg" onclick="return false;"><img alt="Cạnh phải máy chỉ có hai cổng kết nối USB 2.0 cùng jack audio 3.5 mm, thiếu đi ổ đĩa DVD như thường thấy" src="https://cdn3.tgdd.vn/Products/Images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win103.jpg" title="Cạnh phải máy chỉ có hai cổng kết nối USB 2.0 cùng jack audio 3.5 mm, thiếu đi ổ đĩa DVD như thường thấy" /></a></p>\r\n\r\n<p><em>Cạnh phải m&aacute;y chỉ c&oacute; hai cổng kết nối&nbsp;<a href="https://www.thegioididong.com/usb/usb-apacer-ah328-8gb-20" target="_blank" title="Thông tin chi tiết USB 8GB 2.0 Apacer AH328">USB 2.0</a>&nbsp;c&ugrave;ng jack audio 3.5 mm, thiếu đi ổ đĩa DVD như thường thấy</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win104.jpg" onclick="return false;"><img alt="Cạnh trái được trang bị cổng kết nối HDMI, cổng USB 3.0, khe cắm thẻ nhớ SD, tuy nhiên lại thiếu đi cổng mạng LAN và VGA" src="https://cdn.tgdd.vn/Products/Images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win104.jpg" title="Cạnh trái được trang bị cổng kết nối HDMI, cổng USB 3.0, khe cắm thẻ nhớ SD, tuy nhiên lại thiếu đi cổng mạng LAN và VGA" /></a></p>\r\n\r\n<p><em>Cạnh tr&aacute;i được trang bị cổng kết nối&nbsp;<a href="https://www.thegioididong.com/tin-tuc/hdmi-la-gi--590061" target="_blank" title="Tìm hiểu cổng HDMI là gì?">HDMI</a>, cổng&nbsp;<a href="https://www.thegioididong.com/usb/usb-apacer-ah354-16gb-30" target="_blank" title="Thông tin chi tiết USB 16GB 3.0 Apacer AH354">USB 3.0</a>, khe cắm&nbsp;</em><em><a href="https://www.thegioididong.com/tin-tuc/the-nho-la-gi-cach-chon-the-nho-595430" target="_blank" title="Thẻ nhớ là gì, cách chọn thẻ nhớ">thẻ nhớ</a></em><em>&nbsp;SD, tuy nhi&ecirc;n lại thiếu đi cổng mạng LAN v&agrave; VGA</em></p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh 14 inch hiển thị r&otilde; n&eacute;t</strong></p>\r\n\r\n<p>Dell Inspiron 3452 được trang bị m&agrave;n h&igrave;nh như nhiều sản phẩm tầm gi&aacute; 15 triệu trở xuống. Với k&iacute;ch thước 14 inch&nbsp;<a href="https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#hd" target="_blank" title="Tìm hiểu độ phân giải màn hình HD là gì?">độ ph&acirc;n giải HD</a>&nbsp;1366 x 768 px, c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/cac-chuan-man-hinh-su-dung-tren-laptop-747028#truelife" target="_blank" title="Tìm hiểu chuẩn công nghệ màn hình HD WLED TrueLife">HD WLED TrueLife</a>&nbsp;gi&uacute;p h&igrave;nh ảnh được hiển thị đẹp v&agrave; r&otilde; r&agrave;ng. Đối với nhu cầu lướt web, xem phim, l&agrave;m việc th&igrave; ho&agrave;n to&agrave;n ph&ugrave; hợp.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win105.jpg" onclick="return false;"><img alt="Màn hình có chất lượng tốt, độ sáng cao" src="https://cdn2.tgdd.vn/Products/Images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win105.jpg" title="Màn hình có chất lượng tốt, độ sáng cao" /></a></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh c&oacute; chất lượng tốt, độ s&aacute;ng cao</em></p>\r\n\r\n<p><strong>Cấu h&igrave;nh hợp l&yacute; trong mức gi&aacute;</strong></p>\r\n\r\n<p>Intel đ&atilde; ra mắt d&ograve;ng N để sử dụng cho c&aacute;c d&ograve;ng m&aacute;y gi&aacute; rẻ, đem đến hiệu năng vừa phải vừa th&iacute;ch hợp với t&uacute;i tiền.&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-vi-xu-ly-may-tinh-cpu-intel-596066#intelpentinum" target="_blank" title="Tìm hiểu vi xử lý máy tính CPU Intel Pentium">Intel Pentium</a>&nbsp;c&ugrave;ng mức&nbsp;<a href="https://www.thegioididong.com/tin-tuc/ram-laptop-599009" target="_blank" title="Tìm hiểu các loại RAM trên laptop ">RAM</a>&nbsp;4GB b&ecirc;n trong m&aacute;y l&agrave; điều kiện rất th&iacute;ch hợp với nhu cầu phổ th&ocirc;ng như c&ocirc;ng việc văn ph&ograve;ng, lướt web, xem phim.</p>\r\n\r\n<p>Ngo&agrave;i ra thiết bị n&agrave;y được c&agrave;i sẵn hệ điều h&agrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-cac-he-dieu-hanh-tren-laptop-599737#windows10" target="_blank" title="Tìm hiểu hệ điều hành Windows 10 trên máy tính">Windows 10</a>&nbsp;bản quyền với giao diện hiện đại v&agrave; t&iacute;ch hợp c&aacute;c t&iacute;nh năng ti&ecirc;n tiến phục vụ mọi nhu cầu của người d&ugrave;ng.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win106.jpg" onclick="return false;"><img alt="Hệ điều hành hiện đại thuận tiện cho mọi công việc" src="https://cdn4.tgdd.vn/Products/Images/44/74399/dell-inspiron-3452-n3700-4gb-500gb-win106.jpg" title="Hệ điều hành hiện đại thuận tiện cho mọi công việc" /></a></p>\r\n\r\n<p><em>Hệ điều h&agrave;nh hiện đại thuận tiện cho mọi c&ocirc;ng việ</em></p>\r\n', 0, 0, 0),
(64, 'iPad Pro 9', 'iPad-Pro-9', 19000000, 200000, 25, 15, 'ipad-pro-97-inch-wifi-128gb-300a-300x300.jpg', 0, '2016-05-26', '<h1>iPad Pro 9.7 inch được n&acirc;ng cấp chất lượng hiển thị, chất lượng camera tốt hơn rất nhiều, c&ugrave;ng c&aacute;c phụ kiện như b&agrave;n ph&iacute;m rời v&agrave; b&uacute;t Pencil chuy&ecirc;n dụng.</h1>\r\n\r\n<p><strong>Thiết kế sang trọng</strong></p>\r\n\r\n<p>iPad Pro 9.7 inch c&oacute; k&iacute;ch thước v&agrave; thiết kế rất giống với iPad Air 2 nhưng vẫn c&oacute; sự kh&aacute;c biệt l&agrave; c&oacute; th&ecirc;m m&agrave;u v&agrave;ng hồng rất hiện đại v&agrave; c&oacute; đến 4 chiếc loa ngo&agrave;i đem đến trải nghiệm tốt hơn.</p>\r\n\r\n<p>Th&acirc;n m&aacute;y c&oacute; trọng lượng chỉ 437 g v&agrave; mỏng chỉ 6.1 mm, sử dụng chất liệu nh&ocirc;m nguy&ecirc;n khối sang trọng, giống phong c&aacute;ch thường thấy tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/may-tinh-bang-apple-ipad" target="_blank" title="Máy tính bảng iPad">iPad</a>&nbsp;kh&aacute;c của Apple.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/76976/ipad-pro-97-inch-wifi-128gb-2.jpg" onclick="return false;"><img alt="Màu vàng hồng quý phái" src="https://cdn4.tgdd.vn/Products/Images/522/76976/ipad-pro-97-inch-wifi-128gb-2.jpg" title="Màu vàng hồng quý phái" /></a></p>\r\n\r\n<p><em>M&agrave;u v&agrave;ng hồng qu&yacute; ph&aacute;i</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/76976/ipad-pro-97-inch-wifi-128gb-3.jpg" onclick="return false;"><img alt="Thiết bị có đến 4 loa, 2 loa cạnh trên cùng và 2 loa dưới" src="https://cdn1.tgdd.vn/Products/Images/522/76976/ipad-pro-97-inch-wifi-128gb-3.jpg" title="Thiết bị có đến 4 loa, 2 loa cạnh trên cùng và 2 loa dưới" /></a></p>\r\n\r\n<p><em>Thiết bị c&oacute; đến 4 loa, 2 loa cạnh tr&ecirc;n c&ugrave;ng v&agrave; 2 loa dưới</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/76976/ipad-pro-97-inch-wifi-128gb-4.jpg" onclick="return false;"><img alt="Góc này tập trung khá nhiều chi tiết của máy, camera được làm lồi rõ ràng" src="https://cdn3.tgdd.vn/Products/Images/522/76976/ipad-pro-97-inch-wifi-128gb-4.jpg" title="Góc này tập trung khá nhiều chi tiết của máy, camera được làm lồi rõ ràng" /></a></p>\r\n\r\n<p><em>G&oacute;c n&agrave;y tập trung kh&aacute; nhiều chi tiết của m&aacute;y, camera được l&agrave;m lồi r&otilde; r&agrave;ng</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/76976/ipad-pro-97-inch-wifi-128gb-5.jpg" onclick="return false;"><img alt="Phía dưới màn hình là cảm biến dấu vân tay, tốc độ của nó không được nhanh bằng TouchID trên iPhone 6s" src="https://cdn.tgdd.vn/Products/Images/522/76976/ipad-pro-97-inch-wifi-128gb-5.jpg" title="Phía dưới màn hình là cảm biến dấu vân tay, tốc độ của nó không được nhanh bằng TouchID trên iPhone 6s" /></a></p>\r\n\r\n<p><em>Ph&iacute;a dưới m&agrave;n h&igrave;nh l&agrave; cảm biến dấu v&acirc;n tay, tốc độ của n&oacute; kh&ocirc;ng được nhanh bằng TouchID tr&ecirc;n iPhone 6s</em></p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh 9.7 inch</strong></p>\r\n\r\n<p>C&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh l&agrave; 9.7 inch, độ ph&acirc;n giải 1536 x 2048 pixels, với chất lượng hiển thị rất tốt, thiết bị n&agrave;y c&ograve;n được trang bị th&ecirc;m khả năng điều chỉnh tự động nhờ c&aacute;c cảm biến gắn tr&ecirc;n m&aacute;y, gi&uacute;p biến đổi m&agrave;u sắc m&ocirc;i trường.</p>\r\n\r\n<p>So với&nbsp;<a href="https://www.thegioididong.com/may-tinh-bang/ipad-air-2-cellular" target="_blank" title="Máy tính bảng iPad Air 2">iPad Air 2</a>&nbsp;thiết bị n&agrave;y c&oacute; độ s&aacute;ng cao hơn v&agrave; được hỗ trợ th&ecirc;m tấm nền chống ch&oacute;i, rất hiệu quả khi sử dụng ngo&agrave;i trời.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/76976/ipad-pro-97-inch-wifi-128gb-6.jpg" onclick="return false;"><img alt="Tính năng True Tone giúp màn hình thích nghi tốt hơn với môi trường" src="https://cdn2.tgdd.vn/Products/Images/522/76976/ipad-pro-97-inch-wifi-128gb-6.jpg" title="Tính năng True Tone giúp màn hình thích nghi tốt hơn với môi trường" /></a></p>\r\n\r\n<p><em>T&iacute;nh năng True Tone gi&uacute;p m&agrave;n h&igrave;nh th&iacute;ch nghi tốt hơn với m&ocirc;i trường</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/76976/ipad-pro-97-inch-wifi-128gb-7.jpg" onclick="return false;"><img alt="Chất lượng hiển thị tuyệt vời" src="https://cdn4.tgdd.vn/Products/Images/522/76976/ipad-pro-97-inch-wifi-128gb-7.jpg" title="Chất lượng hiển thị tuyệt vời" /></a></p>\r\n\r\n<p><em>Chất lượng hiển thị tuyệt vời</em></p>\r\n\r\n<p><strong>Mạnh mẽ với chip A9X</strong></p>\r\n\r\n<p>iPad Pro 9.7 inch d&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/chip-xu-ly-apple-a9-tren-iphone-6s-va-6s-plus-733695" target="_blank" title="Tìm hiểu chip A9">chip A9X</a>, mạnh mẽ hơn nhiều so với con chip A8X tr&ecirc;n iPad Air 2, tốc độ 2.16 GHz, c&oacute; RAM 2 GB v&agrave; bộ nhớ trong 128 GB.</p>\r\n\r\n<p>C&ugrave;ng hệ điều h&agrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/he-dieu-hanh-ios-la-gi--592559" target="_blank" title="Tìm hiểu hệ điều hành iOS ">iOS 9.3</a>&nbsp;c&aacute;c t&aacute;c vụ đa nhiệm chia đ&ocirc;i m&agrave;n h&igrave;nh hoạt động rất mượt m&agrave;, mặc d&ugrave; chỉ c&oacute; 2 GB RAM.</p>\r\n\r\n<p>Thiết bị trang bị vi&ecirc;n pin sử dụng trung b&igrave;nh được khoảng 10 giờ, rất tốt v&agrave; bền bỉ.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/76976/ipad-pro-97-inch-wifi-128gb-8.jpg" onclick="return false;"><img alt="Cấu hình tốt giúp thiết bị có khả năng giải trí tốt" src="https://cdn1.tgdd.vn/Products/Images/522/76976/ipad-pro-97-inch-wifi-128gb-8.jpg" title="Cấu hình tốt giúp thiết bị có khả năng giải trí tốt" /></a></p>\r\n\r\n<p><em>Cấu h&igrave;nh tốt gi&uacute;p thiết bị c&oacute; khả năng giải tr&iacute; tốt</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/76976/ipad-pro-97-inch-wifi-128gb-9.jpg" onclick="return false;"><img alt="Apple thiết bị thêm phụ kiện bút Apple Pencil và bàn phím rời" src="https://cdn3.tgdd.vn/Products/Images/522/76976/ipad-pro-97-inch-wifi-128gb-9.jpg" title="Apple thiết bị thêm phụ kiện bút Apple Pencil và bàn phím rời" /></a></p>\r\n\r\n<p><em>Apple trang bị th&ecirc;m phụ kiện b&uacute;t Apple Pencil v&agrave; b&agrave;n ph&iacute;m rời</em></p>\r\n\r\n<p><strong>Camera 12 MP</strong></p>\r\n\r\n<p>iPad Pro 9.7 inch được n&acirc;ng cấp camera kh&aacute; ấn tượng với độ ph&acirc;n giải camera sau đến 12 MP hỗ trợ khả năng quay video 4K (đầu ti&ecirc;n tr&ecirc;n iPad). C&oacute; c&aacute;c t&iacute;nh năng tương tự tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-6-128gb" target="_blank" title="Điện thoại iPhone 6 128 GB">iPhone 6</a>&nbsp;v&agrave; 6s như chụp ảnh động Live Photos, lấy n&eacute;t điểm ảnh Focus Pixel, đ&egrave;n Flash 2 tone m&agrave;u&hellip;</p>\r\n\r\n<p>Camera trước của m&aacute;y đến 5 MP cũng hỗ trợ nh&aacute;y Flash m&agrave;n h&igrave;nh để tăng độ s&aacute;ng cho bức ảnh ch&acirc;n dung.</p>\r\n', 0, 0, 0),
(65, 'Samsung Galaxy Tab', 'Samsung-Galaxy-Tab', 6000000, 300000, 25, 15, 'samsung-galaxy-tab-e-96-sm-t561-400-400x400.png', 0, '2016-05-26', '<h1>Samsung Galaxy Tab E 9.6 l&agrave; một sự lựa chọn cho bạn th&iacute;ch một chiếc m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn để giải tr&iacute; thoải m&aacute;i hơn nhưng cấu h&igrave;nh kh&ocirc;ng qu&aacute; thấp.</h1>\r\n\r\n<p><strong>Thiết kế với mặt lưng đẹp</strong></p>\r\n\r\n<p>Với m&agrave;n h&igrave;nh lớn 9.6 inch n&ecirc;n m&aacute;y c&oacute;&nbsp;k&iacute;ch thuớc kh&aacute; lớn, trọng lượng&nbsp;495 g&nbsp;kh&aacute; chắc tay khi cầm.</p>\r\n\r\n<p>Mặt lưng c&oacute; c&aacute;c hoạ tiết c&aacute;c chấm nổi vừa tạo điểm nhấn, vừa gi&uacute;p bạn cầm m&aacute;y được chắc chắn hơn, hạn chế trơn tay khi sử dụng.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/73280/samsung-galaxy-tab-e-96-sm-t5612.jpg" onclick="return false;"><img alt="Mặt lưng được làm nhám với hoa văn nổi, cho cảm giác cầm tốt hơn, phần này có thể tháo rời" src="https://cdn1.tgdd.vn/Products/Images/522/73280/samsung-galaxy-tab-e-96-sm-t5612.jpg" title="Mặt lưng được làm nhám với hoa văn nổi, cho cảm giác cầm tốt hơn, phần này có thể tháo rời" /></a></p>\r\n\r\n<p><em>Hoạ tiết ở mặt lưng m&aacute;y, logo&nbsp;<a href="https://www.thegioididong.com/may-tinh-bang-samsung" target="_blank" title="Máy tính bảng hãng Samsung">Samsung</a>&nbsp;đặc trưng</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/73280/samsung-galaxy-tab-e-96-sm-t561-2-1.jpg" onclick="return false;"><img alt="Máy mỏng đẹp, các phím vật lí được tập trung nhiều ở cạnh trái máy" src="https://cdn3.tgdd.vn/Products/Images/522/73280/samsung-galaxy-tab-e-96-sm-t561-2-1.jpg" title="Máy mỏng đẹp, các phím vật lí được tập trung nhiều ở cạnh trái máy" /></a></p>\r\n\r\n<p><em>M&aacute;y mỏng đẹp, kh&ocirc;ng qu&aacute; d&agrave;y</em></p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/73280/samsung-galaxy-tab-e-96-sm-t561-6-1.jpg" onclick="return false;"><img alt="Khe gắn sim và mở rộng thẻ nhớ tối đa 128 GB" src="https://cdn.tgdd.vn/Products/Images/522/73280/samsung-galaxy-tab-e-96-sm-t561-6-1.jpg" title="Khe gắn sim và mở rộng thẻ nhớ tối đa 128 GB" /></a></p>\r\n\r\n<p><em>Khe gắn sim v&agrave; mở rộng&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai" target="_blank" title="Thẻ nhớ cho điện thoại">thẻ nhớ</a>&nbsp;tối đa&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai/the-nho-microsd-128gb-class-10-uhs1" target="_blank" title="Phụ kiện thẻ nhớ 128 GB">128 GB</a></em></p>\r\n\r\n<p><strong>Giải tr&iacute; th&iacute;ch hơn</strong></p>\r\n\r\n<p>M&agrave;n h&igrave;nh lớn 9.6 inch đem lại nhiều kh&ocirc;ng gian để giải tr&iacute; cũng như cho c&ocirc;ng việc ri&ecirc;ng của bạn, m&agrave;n h&igrave;nh sử dụng&nbsp;<a href="https://www.thegioididong.com/tin-tuc/loai-man-hinh-tft-lcd-amoled-la-gi--592346#tftlcd" target="_blank" title="Công nghệ màn hình TFT">c&ocirc;ng nghệ TFT</a>&nbsp;kh&ocirc;ng cho h&igrave;nh ảnh qu&aacute; xuất sắc nhưng vẫn ở mức tốt.</p>\r\n\r\n<p><a href="https://www.thegioididong.com/images/522/73280/samsung-galaxy-tab-e-96-sm-t561-1-1.jpg" onclick="return false;"><img alt="Không gian giải trí lớn là điểm sáng lớn của Galaxy Tab E" src="https://cdn2.tgdd.vn/Products/Images/522/73280/samsung-galaxy-tab-e-96-sm-t561-1-1.jpg" title="Không gian giải trí lớn là điểm sáng lớn của Galaxy Tab E" /></a></p>\r\n\r\n<p><em>Kh&ocirc;ng gian giải tr&iacute; lớn l&agrave; điểm s&aacute;ng lớn của Galaxy Tab E</em></p>\r\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) NOT NULL,
  `report_date` date NOT NULL,
  `report_cate` int(10) UNSIGNED NOT NULL,
  `report_content` text NOT NULL,
  `report_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `report_date`, `report_cate`, `report_content`, `report_total`) VALUES
(3, '2016-06-27', 14, '[{"product_id":37,"product_sold":15},{"product_id":38,"product_sold":1}]', 1500365),
(4, '2016-06-25', 14, '[{"product_id":39,"product_sold":5},{"product_id":40,"product_sold":15}]', 1500365),
(9, '2016-06-26', 14, '[{"product_id":"37","product_sold":4},{"product_id":"50","product_sold":1},{"product_id":"49","product_sold":1},{"product_id":"47","product_sold":1}]', 0),
(10, '2016-06-26', 15, '[{"product_id":"64","product_sold":6},{"product_id":"65","product_sold":3}]', 0),
(11, '2016-06-27', 16, '[{"product_id":"59","product_sold":8},{"product_id":"60","product_sold":12},{"product_id":"61","product_sold":15},{"product_id":"62","product_sold":14},{"product_id":"63","product_sold":13}]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `specs`
--

CREATE TABLE `specs` (
  `id` int(6) UNSIGNED NOT NULL,
  `spec_name` varchar(100) NOT NULL,
  `spec_unit` varchar(50) NOT NULL,
  `spec_presetvalue` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specs`
--

INSERT INTO `specs` (`id`, `spec_name`, `spec_unit`, `spec_presetvalue`) VALUES
(11, 'Screen', 'inch', '3;4;4.5;5;5.5;6;6.5;7;7.5;8;8.5;9;9.5;10;10.5;11;11.5;12;12.5;13;13.5;14;14.5;15;15.6;17;17.5;18;18.5;19;20'),
(12, 'Back Camera', 'MP', '5;6;7;8;9;10;11;12;13;21;23'),
(13, 'Front Camera', 'MP', '5;6;7;8;9;10;11;12;13;21;23'),
(14, 'Memory', 'GB', '4;8;16;32;64;128;256;512;1024;2048'),
(15, 'OS', '', 'Android; iOS; Window Phone; Linux; Window'),
(16, 'CPU', '', 'Dual Core 1.2 Ghz; Quad Core 1.4 Ghz; Octa Core 1.6Ghz;Penta Core 1.5 Ghz'),
(17, 'Size', 'mm', '151.7x76x7.8;152x154x90;100x100x100;50x50x50'),
(18, 'Flash', '', 'yes;no'),
(19, 'RAM', 'GB', '0,5;1;1,5;2;3;4;6;8;0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pass` varchar(100) DEFAULT NULL,
  `user_mail` varchar(255) DEFAULT NULL,
  `user_level` mediumint(9) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_pass`, `user_mail`, `user_level`) VALUES
(1, 'guest', '', '', 0),
(3, 'Hedley', '0845 46 49', 'sodales@mauriserat.co.uk', 1),
(4, 'Patrick', '(01780) 595796', 'porttitor@non.ca', 1),
(6, 'Sade', '0500 592609', 'Mauris@luctus.co.uk', 2),
(7, 'Zeus', 'dasdasdasdd', 'luctus.Curabitur@pendisse.com', 1),
(9, 'Madonnasdas', '(01388) 21785', 'et@nislelementumpurus.ca', 2),
(10, 'Lionel51', '0500 237282', 'lacinia.at.iaculis@temporeratneque.edu', 1),
(12, 'Isaac', '(019053) 00286', 'euismod.et@mollisnec.com', 1),
(13, 'Quamar', '(01592) 448634', 'non.leo@Infaucibus.co.uk', 2),
(14, 'Rudyard', '055 7214 8434', 'nisi.sem.semper@ut.ca', 2),
(15, 'Fiona', '(0101) 728 7336', 'a@intempuseu.org', 2),
(27, 'Tamara', '076 2681 9755', 'nec@leoMorbineque.co.uk', 1),
(28, 'Scarlet', '056 9841 7467', 'lacus@dignissim.edu', 1),
(29, 'Amir878', '07566 501183', 'nibh.Phasellus@odio.com', 2),
(31, 'Kaye44y', '$2y$10$/Nq7Bdo4Ztan1RPK5o9ZJOVg/4syqvlbOqPwCyEJJqMfXyokrqydG', 'metus.In.nec@nonnisi.net', 1),
(32, 'Dominique', '070 0827 9942', 'libero.mauris.aliquam@ametconsectetuer.net', 2),
(33, 'Blaze444', '(016977) 1678', 'mauris.id@Phasellusataugue.co.uk', 1),
(35, 'Elton', '(0111) 699 7017', 'augue.ut@molestie.edu', 2),
(40, 'Ralph', '(01312) 692995', 'tempor.est@quisurnaNunc.co.uk', 1),
(41, 'Shelly', '0800 452718', 'adipiscing.elit.Aliquam@nisi.edu', 2),
(42, 'Dylan', '055 9623 8862', 'at.velit@adipiscingMauris.org', 1),
(43, 'Hilary', '(0131) 437 3011', 'sed.pede.nec@non.ca', 1),
(44, 'Martha', '056 5383 3943', 'nulla.Cras@Phasellusinfelis.net', 1),
(45, 'Amery', '0800 1111', 'cursus@Vivamus.org', 2),
(46, 'Florence', '0800 303273', 'nibh.lacinia.orci@mattis.co.uk', 1),
(47, 'Maya', '070 0187 9903', 'sociis@non.co.uk', 1),
(48, 'Adrienne', '(016977) 1978', 'est.mollis@liberoDonecconsectetuer.co.uk', 1),
(49, 'Ulric', '056 3167 1332', 'elit.Etiam@tempus.co.uk', 1),
(51, 'Burton', '0994 120 9704', 'sociis@famesacturpis.net', 2),
(52, 'Miranda', '0800 853102', 'lorem@tellus.edu', 1),
(53, 'Randall', '(016977) 1720', 'Quisque@Maurisvel.org', 2),
(54, 'Ignatius', '(01858) 49833', 'eu.elit@enimMauris.com', 1),
(58, 'Tad', '0317 366 0445', 'velit.Pellentesque@in.com', 1),
(59, 'Pearl', '0800 127 4060', 'non@et.com', 1),
(60, 'Henry', '(01752) 66033', 'malesuada@ipsum.net', 1),
(61, 'Christen', '0500 831673', 'eleifend.Cras.sed@vehiculaet.edu', 1),
(62, 'Summer', '07624 766850', 'nunc.In.at@semegestas.ca', 2),
(63, 'Jameson', '0800 827 8466', 'orci@odiotristique.edu', 2),
(64, 'Jael', '070 7146 4490', 'interdum@nislQuisque.ca', 2),
(65, 'Jenna', '07104 584918', 'Pellentesque.tincidunt@antelectusconvallis.ca', 1),
(66, 'Freya', '055 3678 0218', 'Duis@quam.org', 1),
(67, 'Lysandra', '(01427) 94286', 'Cras.pellentesque@massaSuspendisse.edu', 2),
(68, 'Jerry', '(023) 3066 9103', 'arcu@non.net', 1),
(69, 'Magee', '0500 411778', 'felis.ullamcorper@elementum.org', 1),
(70, 'Suki', '(022) 2803 9712', 'non@Quisqueaclibero.edu', 2),
(71, 'Logan', '07680 635799', 'Ut@semvitaealiquam.ca', 1),
(72, 'Stephanie', '0800 174 2030', 'felis.purus@veliteusem.org', 1),
(73, 'Sage', '(01168) 64093', 'nunc@montesnasceturridiculus.ca', 1),
(74, 'Yolanda', '0818 486 3114', 'Sed.eget@Aliquam.org', 2),
(75, 'Shoshana', '0800 1111', 'enim.mi@utmolestie.ca', 1),
(76, 'Molly', '070 6348 2329', 'id.erat@orciluctuset.ca', 2),
(77, 'Susan', '(01143) 678386', 'mi.Aliquam@congueInscelerisque.org', 1),
(78, 'Armando', '07624 289947', 'enim.commodo@luctus.com', 1),
(79, 'Igor', '(0171) 783 3829', 'Nunc@venenatislacusEtiam.com', 1),
(80, 'Irene', '07624 073722', 'nunc.ullamcorper@loremfringillaornare.co.uk', 2),
(81, 'Quinlan', '0800 1111', 'luctus@nasceturridiculus.org', 1),
(82, 'Imani', '056 3512 9313', 'eget.laoreet@luctuset.edu', 1),
(83, 'Xena', '0800 429 8936', 'neque.Nullam@rutrum.com', 1),
(84, 'Piper', '07624 566660', 'Nam@sodalesnisi.org', 1),
(85, 'Blaze', '(018209) 58492', 'Ut.nec@convallisconvallisdolor.co.uk', 1),
(86, 'Baker', '0360 411 7875', 'risus.at@nibh.org', 2),
(87, 'Nolan', '0810 789 4130', 'risus.a.ultricies@velitinaliquet.ca', 2),
(88, 'Hadassah', '0500 183117', 'malesuada.fames@sed.org', 2),
(89, 'Yuli', '0855 713 3641', 'consectetuer.rhoncus@tristique.org', 2),
(90, 'Briar', '0500 881526', 'eros.turpis@sapienimperdiet.net', 2),
(91, 'Micah', '(01980) 78586', 'ornare.egestas@CrasinterdumNunc.edu', 1),
(92, 'Lane', '(021) 2971 4086', 'vulputate@risusDonecegestas.co.uk', 2),
(93, 'Rudyard', '(01295) 854873', 'mauris.sapien.cursus@imperdietnon.net', 1),
(94, 'Brenda', '0800 1111', 'Vestibulum@Phasellusliberomauris.net', 1),
(95, 'Steven', '070 4489 8304', 'at.auctor@duiquis.edu', 1),
(96, 'Perry', '(0191) 093 2204', 'egestas.nunc.sed@tortorIntegeraliquam.com', 1),
(97, 'Summer', '(016977) 5742', 'tempus.lorem@interdum.net', 1),
(98, 'Dennis', '0800 774597', 'ligula.Donec.luctus@eleifend.net', 2),
(99, 'Idona', '056 2031 3276', 'risus.a.ultricies@consequatenimdiam.org', 2),
(100, 'Bee5rly', '(0181) 481 2553', 'ds@dd.dd', 1),
(101, '2Aldn3', '0845 46 45', 'Morbi.quis@auctorquistristique.co.uk', 1),
(102, 'Xaviera', '07624 773174', 'tempus@mollis.net', 2),
(103, 'Paul', '0845 46 41', 'sed.hendrerit.a@Nullamvelit.com', 2),
(104, 'Nehru', '0800 372 7460', 'varius@Suspendisse.net', 1),
(105, 'Herrod', '055 0465 3508', 'Maecenas.libero@acmattisornare.co.uk', 1),
(106, 'Fitzgerald', '0800 908007', 'Fusce.feugiat@consectetuer.org', 1),
(107, 'Gareth', '0500 675622', 'neque.tellus@Aeneaneuismod.org', 1),
(108, 'Willa', '0800 1111', 'sit@eratVivamusnisi.net', 1),
(109, 'Inga', '0374 895 9254', 'Aliquam.nec@duinectempus.com', 1),
(110, 'Petra', '(01235) 984302', 'sed.consequat.auctor@quamelementum.net', 1),
(111, 'Tamara', '07454 549352', 'et.magnis@Etiamvestibulum.ca', 2),
(112, 'Thomas', '(014512) 43758', 'fringilla.mi@scelerisquesedsapien.net', 1),
(113, 'Mikayla', '055 4173 2007', 'quis.tristique@nislNullaeu.edu', 1),
(114, 'Shaine', '07479 698623', 'justo.eu.arcu@inmagna.ca', 1),
(115, 'Abbot', '0800 1111', 'ipsum.dolor@Etiamimperdietdictum.ca', 1),
(116, 'Lee', '07624 366049', 'nunc@laoreetposuereenim.net', 2),
(117, 'Jemima', '055 5686 4107', 'Aliquam.fringilla@pharetranibh.org', 2),
(118, 'Colton', '(0118) 904 1462', 'est.ac@purusMaecenas.com', 1),
(119, 'Amal', '0956 771 6410', 'augue.ut.lacus@eu.org', 1),
(120, 'Hayley', '(019646) 07853', 'quis.diam.Pellentesque@arcuSed.ca', 2),
(121, 'Neville', '0331 215 4724', 'nibh.vulputate@tellus.net', 2),
(123, 'Emmanuel', '056 0475 9605', 'ac.urna@felis.net', 1),
(124, 'Natalie', '0354 925 1739', 'non.justo@dolor.com', 1),
(125, 'Chandler', '(01538) 61536', 'eu@dui.com', 2),
(126, 'Sigourney', '076 9222 4422', 'erat@utipsum.ca', 2),
(127, 'Geoffrey', '0800 1111', 'mus.Aenean@Suspendissenon.edu', 1),
(128, 'Darrel', '070 8153 6676', 'tempor.augue@dictum.com', 1),
(129, 'Richard', '0500 278013', 'porttitor@bibendum.com', 1),
(130, 'Rooney', '0500 465592', 'dolor.Quisque.tincidunt@magnanecquam.com', 1),
(131, 'Blaze', '076 0557 5109', 'ut@egetlacus.ca', 2),
(132, 'Shay', '(0141) 644 9242', 'augue@sitamet.co.uk', 2),
(133, 'Hyatt', '0500 369852', 'nonummy.ipsum@ametdiameu.edu', 1),
(134, 'Ruth', '0957 875 4881', 'Sed.molestie.Sed@egetmetuseu.edu', 2),
(135, 'Gage', '056 5153 5058', 'ipsum@feugiatSednec.com', 2),
(136, 'Hakeem', '0800 490 8681', 'magna.Phasellus@Sedpharetrafelis.co.uk', 2),
(137, 'Brielle', '(021) 0965 5388', 'pede@antelectusconvallis.org', 1),
(138, 'Jayme', '07624 804858', 'pharetra@vestibulum.com', 2),
(139, 'Maia', '(0117) 494 2870', 'et.ipsum.cursus@eleifendnecmalesuada.ca', 2),
(140, 'Paloma', '0370 023 3643', 'erat.volutpat@imperdietornareIn.ca', 2),
(141, 'Gil', '0500 233375', 'adipiscing.lobortis@quis.co.uk', 2),
(142, 'Kyle', '0884 660 0165', 'Sed.nunc@atlibero.net', 1),
(143, 'Tanisha', '(016977) 2742', 'dolor@neque.net', 1),
(144, 'Hayley', '(022) 0394 4023', 'mauris.aliquam.eu@malesuadavel.org', 2),
(145, 'Xena', '076 6883 6689', 'elit.Aliquam@semPellentesque.org', 1),
(146, 'Cain', '0877 214 2665', 'consequat.dolor.vitae@aliquetdiam.co.uk', 1),
(147, 'Chava', '(0171) 321 1918', 'vulputate@ipsumnonarcu.org', 1),
(148, 'Chelsea', '(0181) 173 7414', 'arcu@eleifendegestasSed.edu', 2),
(149, 'Jarrod', '0800 1111', 'adipiscing.elit@sociosquad.org', 2),
(150, 'Emerson', '(016977) 0033', 'tempus.scelerisque.lorem@ullamcorperviverraMaecenas.edu', 2),
(151, 'Jada', '0500 884262', 'nulla.at.sem@enim.org', 1),
(152, 'Damian', '(0117) 102 7360', 'at@necleo.net', 1),
(153, 'Signe', '055 3887 0570', 'sed.consequat.auctor@dignissim.com', 1),
(154, 'Wanda', '056 9482 8386', 'Suspendisse.dui.Fusce@convallisdolorQuisque.co.uk', 1),
(155, 'Tarik', '055 3464 7588', 'ac.mi@maurisSuspendisse.org', 2),
(156, 'Latifah', '076 6196 2824', 'erat.Sed@dignissimMaecenasornare.ca', 1),
(157, 'Adria4', '(01653) 524735', 'ullamcorper@acorciUt.ca', 2),
(158, 'Thomas', '0310 661 9181', 'odio.sagittis@tincidunt.co.uk', 2),
(159, 'Todd', '(026) 0787 7324', 'Pellentesque@vulputaterisusa.com', 2),
(160, 'Elliott', '056 2236 0522', 'nisi.sem.semper@Donecfringilla.ca', 2),
(161, 'Illiana', '070 3831 7303', 'primis.in.faucibus@euligula.com', 2),
(162, 'Camden', '056 4977 3892', 'diam.lorem@Nunclectus.org', 1),
(163, 'Abraham', '0845 46 43', 'congue.In@massaQuisque.edu', 2),
(164, 'Tanya', '076 7501 3451', 'felis.Nulla.tempor@pedeacurna.net', 1),
(165, 'Kerry', '(026) 6495 0788', 'in.consequat@ornare.org', 2),
(166, 'Britanney', '055 2170 5032', 'tellus@dolorFuscefeugiat.co.uk', 2),
(167, 'Mira', '07624 779287', 'sem.elit@sitamet.com', 2),
(168, 'Inga', '(01847) 82136', 'eros.nec@Nunc.org', 2),
(169, 'Darius', '(01815) 490197', 'eu.ligula.Aenean@a.edu', 2),
(170, 'Quinlan', '070 7039 0149', 'metus@eratsemper.com', 2),
(171, 'Gil', '(01655) 67849', 'lobortis.augue.scelerisque@Suspendissecommodotincidunt.co.uk', 1),
(172, 'Adrian', '(01022) 617619', 'est.Nunc@montes.co.uk', 1),
(173, 'Kelsey', '0801 098 5654', 'lacus.varius.et@interdumlibero.edu', 1),
(174, 'Shelley', '(01328) 53920', 'eget.lacus.Mauris@pede.ca', 1),
(175, 'Belle', '055 8702 5927', 'Curabitur.massa.Vestibulum@odioEtiamligula.net', 1),
(176, 'Galvin', '07994 974827', 'penatibus.et.magnis@tristique.edu', 2),
(177, 'Mari', '0845 46 49', 'eu@feugiatSed.ca', 1),
(178, 'Micah', '(01369) 505378', 'nulla.Integer.urna@maurisMorbinon.co.uk', 1),
(179, 'Giselle', '0996 893 8322', 'nascetur.ridiculus@Sed.edu', 1),
(180, 'Evan', '0800 783 0237', 'quam.dignissim.pharetra@pellentesqueSed.com', 1),
(181, 'Uriah', '0983 767 59862', 'lobortis@nunc.com', 2),
(182, 'Drake', '0383 844 7570', 'tristique@fringillapurusmauris.org', 2),
(183, 'Madison', '(016977) 1418', 'fermentum.risus.at@nonleoVivamus.coms', 2),
(211, 'member', '$2y$10$Lkw1njYzVsGRfKTnvQDAFe.tiyJuL6.ajLbO.1dYhW1QCwMjPTWae', '123465@132.c123', 1),
(213, 'kmasteryc', '$2y$10$GWGBW8xoW1aKVNA99.LgCe/IorLTMOayOt8qsBEpf3hbke51.IRCu', 'kmasteryc@ok.com', 2),
(214, 'guest', NULL, NULL, 0),
(215, 'admin', '$2y$10$n3oZeGpLaDgtIZkEtjqzMOKi9R/3m0YgrOegEVGAWrBd3vpVMHHuO', 'admin@xxxxx.ccc', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(6) UNSIGNED NOT NULL,
  `vendor_name` varchar(20) NOT NULL,
  `vendor_img` varchar(250) NOT NULL,
  `vendor_slug` varchar(100) NOT NULL,
  `vendor_cate` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_name`, `vendor_img`, `vendor_slug`, `vendor_cate`) VALUES
(15, 'Samsung', 'samsung.gif', 'Samsung', 14),
(16, 'Apple', 'apple.gif', 'Apple', 14),
(17, 'HTC', 'htc.gif', 'HTC', 14),
(18, 'ASUS', 'asus.gif', 'ASUS', 14),
(19, 'Nokia', 'nokia.gif', 'Nokia', 14),
(20, 'Oppo', 'oppo.gif', 'Oppo', 14),
(21, 'BLACKBERRY', 'lg_bberry.gif', 'BLACKBERRY', 14),
(22, 'Lenovo', 'lg_lenovo.gif', 'Lenovo', 14),
(24, 'ASUS Tablet', 'asus1.gif', 'ASUS-Tablet', 14),
(25, 'HUAWEI Tablet', 'lg_huawei.gif', 'HUAWEI-Tablet', 15),
(26, 'Laptop Acer', 'lg_acer.gif', 'Laptop-Acer', 16),
(27, 'Laptop Dell', 'lg_dell.gif', 'Laptop-Dell', 16),
(28, 'Laptop HP', 'lg_hp.gif', 'Laptop-HP', 16),
(29, 'Laptop Alienware', 'lg_lava.gif', 'Laptop-Alienware', 16),
(30, 'LG', 'lg_lg.gif', 'LG', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_product` (`comment_product`),
  ADD KEY `comment_user` (`comment_user`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`detail_product`,`detail_spec`),
  ADD KEY `detail_spec` (`detail_spec`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `gift_product`
--
ALTER TABLE `gift_product`
  ADD PRIMARY KEY (`gift_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_product` (`image_product`),
  ADD KEY `image_user` (`image_user`),
  ADD KEY `image_type` (`image_type`);

--
-- Indexes for table `image_types`
--
ALTER TABLE `image_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_vendor` (`product_vendor`),
  ADD KEY `product_spec` (`product_detail`),
  ADD KEY `product_vendor_2` (`product_vendor`),
  ADD KEY `product_cate` (`product_cate`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_cate` (`vendor_cate`),
  ADD KEY `vendor_cate_2` (`vendor_cate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image_types`
--
ALTER TABLE `image_types`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`comment_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`comment_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`detail_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `details_ibfk_2` FOREIGN KEY (`detail_spec`) REFERENCES `specs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gift_product`
--
ALTER TABLE `gift_product`
  ADD CONSTRAINT `gift_product_ibfk_1` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gift_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`image_type`) REFERENCES `image_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `images_ibfk_2` FOREIGN KEY (`image_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `images_ibfk_3` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_cate`) REFERENCES `cates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_vendor`) REFERENCES `vendors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`vendor_cate`) REFERENCES `cates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
