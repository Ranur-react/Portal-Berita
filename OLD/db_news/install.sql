

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news365v_vs4`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_s`
--

CREATE TABLE `ad_s` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `ad_position` int(11) NOT NULL,
  `embed_code` text NOT NULL,
  `large_status` int(11) NOT NULL DEFAULT '1',
  `mobile_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_s`
--

INSERT INTO `ad_s` (`id`, `page`, `ad_position`, `embed_code`, `large_status`, `mobile_status`) VALUES
(123, 3, 31, '<a href=\"http://\"><img width=\"100%\" src=\"http://demonewspaper.bdtask.com/DemoNewsPaper-Modern-v2.0/uploads/Advertizement/861f77f14df507d780e2558a650ede31.png\" alt=\"\"></a>', 1, 1),
(124, 3, 32, '<a href=\"http://\"><img width=\"100%\" src=\"http://demonewspaper.bdtask.com/DemoNewsPaper-Modern-v2.0/uploads/Advertizement/ea2b7334d4763b588d5ce084209038ee.png\" alt=\"\"></a>', 1, 1),
(125, 3, 33, '<a href=\"http://\"><img width=\"100%\" src=\"http://demonewspaper.bdtask.com/DemoNewsPaper-Modern-v2.0/uploads/Advertizement/dbdf6b6339d25acc4fad4a18c82724a7.png\" alt=\"\"></a>', 1, 1),
(127, 1, 18, '<a href=\"http://\"><img width=\"100%\" src=\"http://demonewspaper.bdtask.com/DemoNewsPaper-Modern-v2.0/uploads/Advertizement/f0816eeda9bf2d692e003f35a9aea8cf.png\" alt=\"\"></a>', 1, 1),
(128, 1, 11, '<a href=\"http://\"><img width=\"100%\" src=\"http://localhost/MainNewsPaper-v2.0/18-08-2017/uploads/Advertizement/2cae51675b59edb47ab93e0359c25425.png\" alt=\"\"></a>', 1, 1),
(129, 1, 12, '<a href=\"http://\"><img width=\"100%\" src=\"http://localhost/MainNewsPaper-v2.0/18-08-2017/uploads/Advertizement/62fb69babdf5e9fc4aa65a150adc2512.png\" alt=\"\"></a>', 1, 1),
(130, 1, 13, '<a href=\"http://\"><img width=\"100%\" src=\"http://localhost/MainNewsPaper-v2.0/18-08-2017/uploads/Advertizement/aaec81819cf3d2f551be068420455818.png\" alt=\"\"></a>', 1, 1),
(131, 1, 14, '<a href=\"http://\"><img width=\"100%\" src=\"http://localhost/MainNewsPaper-v2.0/18-08-2017/uploads/Advertizement/a36a8823352bf08b51f8228d0b28c7fc.png\" alt=\"\"></a>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `breaking_news`
--

CREATE TABLE `breaking_news` (
  `id` int(9) NOT NULL,
  `title` text NOT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `breaking_news`
--

INSERT INTO `breaking_news` (`id`, `title`, `time_stamp`, `status`) VALUES
(1, '{\"news_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"url\":\"http:\\/\\/tuhin.eyekoo.com\\/newspaper-vs15\\/International\\/details\\/93\\/Lorem-Ipsum-is-simply-dummy-text-of-the-printing\"}', 1488182313, 1),
(2, '{\"news_title\":\"blanditiis praesentium voluptatum deleniti atque corrupti \",\"url\":\"http:\\/\\/tuhin.eyekoo.com\\/newspaper-vs15\\/Business\\/details\\/97\\/blanditiis-praesentium-voluptatum-deleniti-atque-corrupti\"}', 1488189672, 1),
(3, '{\"news_title\":\"blanditiis praesentium voluptatum deleniti atque corrupti \",\"url\":\"http:\\/\\/tuhin.eyekoo.com\\/newspaper-vs15\\/Business\\/details\\/97\\/blanditiis-praesentium-voluptatum-deleniti-atque-corrupti\"}', 1488190879, 1),
(4, '{\"news_title\":\"printer took a galley of type and scrambled it\",\"url\":\"http:\\/\\/tuhin.eyekoo.com\\/newspaper-vs15\\/International\\/details\\/99\\/printer-took-a-galley-of-type-and-scrambled-it\"}', 1488190985, 1),
(5, '{\"news_title\":\"blanditiis praesentium voluptatum deleniti atque corrupti \",\"url\":\"http:\\/\\/tuhin.eyekoo.com\\/newspaper-vs15\\/Technology\\/details\\/102\\/blanditiis-praesentium-voluptatum-deleniti-atque-corrupti\"}', 1488191399, 1),
(6, '{\"news_title\":\"Flood victims in north find it hard to save or sell their livestock\",\"url\":\"\"}', 1502901394, 1),
(7, '{\"news_title\":\" Provides the Best Software Development Service at reasonable price around the world\",\"url\":\"http:\\/\\/news365v3.bdtask.com\\/main_v4\\/Technology\\/details\\/133\\/Bdtask-Provides-the-Best-Software-Development-Service-at-reasonable-price-around-the-world\"}', 1519063200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` int(11) NOT NULL,
  `cache_path` text,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`id`, `cache_path`, `status`) VALUES
(1, 'FALSE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `slug` text NOT NULL,
  `menu` int(11) NOT NULL DEFAULT '0' COMMENT '0=not in menu, 1=in menu',
  `position` int(11) NOT NULL DEFAULT '1',
  `parents_id` varchar(100) NOT NULL,
  `category_imgae` varchar(200) DEFAULT NULL,
  `img_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `slug`, `menu`, `position`, `parents_id`, `category_imgae`, `img_status`) VALUES
(2, 'TRAVEL', 'Travel', 1, 2, '', 'uploads/category_img/Travel1.jpg', 0),
(3, 'FOOD', 'Food', 1, 3, '', 'uploads/category_img/food1.jpg', 0),
(4, 'TECHNOLOGY', 'Technology', 1, 4, '', 'uploads/category_img/tec_5.jpg', 0),
(5, 'LIFESTYLE', 'Lifestyle', 1, 5, '', 'uploads/category_img/lifest1.jpg', 0),
(6, 'EDITOR CHOICE', 'Editor-Choice', 1, 6, '', 'uploads/category_img/editor.jpg', 0),
(7, 'VIDEO', 'Video', 0, 7, '', 'uploads/category_img/video.jpg', 0),
(8, 'POLITICS', 'Politics', 1, 8, '', 'uploads/category_img/polati.jpg', 0),
(9, 'WEEKLY NEWS', 'weekly-news', 1, 9, '', 'uploads/category_img/weekly.jpg', 0),
(10, 'WORLD', 'world', 1, 1, '', 'uploads/category_img/cherry.jpg', 0),
(11, 'SCIENCE', 'science', 0, 1, '', 'uploads/category_img/cherry1.jpg', 0),
(12, 'BUSINESS', 'Business', 0, 1, '', 'uploads/category_img/1350X3.png', 0),
(13, 'SPORTS', 'Sports', 0, 1, '', 'uploads/category_img/1350X31.png', 0),
(14, 'HEALTH', 'Health', 0, 1, '', 'uploads/category_img/1350X32.png', 0),
(15, 'RECENT NEWS', 'Recent-News', 0, 1, '', 'uploads/category_img/1350X33.png', 0),
(16, 'International', 'International', 1, 1, '', '', 0),
(17, 'Modern Life', 'Life', 0, 1, '', 'uploads/category_img/downlo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('333kh31rkocp1et4k0bhfj0ho05mcfhk', '162.158.167.130', 1519110492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131303439313b),
('92p35a36c8da30qa5vcjh77f7qr44r2h', '162.158.167.130', 1519111098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131303833313b),
('5uir7vcuuep4l58tt75fdu6hdciienjp', '162.158.167.130', 1519113361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131333138373b),
('pbs9g1ls1lpo4ok5sljfsim4buf0o2bo', '162.158.167.130', 1519113988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131333837323b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a227062733967316c73316c706f346f6b35736c6a6673696d34627566306f32626f223b6c6f676765645f696e7c623a313b),
('jb176qt5k694c29kv2cadamaimk7uiut', '162.158.167.130', 1519114300, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131343330303b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a227062733967316c73316c706f346f6b35736c6a6673696d34627566306f32626f223b6c6f676765645f696e7c623a313b),
('s26pnm3b1p9kbohqmb480o2eqa29ejbc', '162.158.167.130', 1519114600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131343330303b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a227062733967316c73316c706f346f6b35736c6a6673696d34627566306f32626f223b6c6f676765645f696e7c623a313b6d6573736167657c4e3b),
('e2mg6vcedgg6imaat8oov2g2k5geqp97', '162.158.167.130', 1519114820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131343630363b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a227062733967316c73316c706f346f6b35736c6a6673696d34627566306f32626f223b6c6f676765645f696e7c623a313b),
('n89m5qdm6984hiasnko72a85g0elhq59', '162.158.167.130', 1519115109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131353034393b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a227062733967316c73316c706f346f6b35736c6a6673696d34627566306f32626f223b6c6f676765645f696e7c623a313b4642524c485f73746174657c733a33323a223333323766623661303735323838396361393139626662353532323634383937223b),
('2hmv3hpcvsiiapc36nkt7a2grci51qt8', '162.158.167.130', 1519115184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131353138343b),
('akkojt2f4jdm0dltsb66mqa1pggddl98', '172.68.65.196', 1519116305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393131363330353b),
('76k5s9142i789h51jo678qqhrs5hrlki', '172.68.174.32', 1519120923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132303932333b),
('gdjg04ag14pandph7snb3v8ld05iag5s', '162.158.167.130', 1519121211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132303938313b),
('tae0vitbtuc10vtmjn34qh1uo00hacb0', '172.68.174.110', 1519121034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132313033343b),
('lkir5u0s2e6g1iesb8jt176qalgei4hv', '172.68.174.92', 1519121046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132313034363b),
('97654ehaojtcmcu8prq19v787g7hhu3p', '172.68.174.74', 1519121064, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132313036343b),
('eeoa7ulukh659eqv1ov6bkdj2d8k0ann', '172.68.174.86', 1519121110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132313131303b),
('hm2btqm1ove9u3i2fqib4vlo1eqmoj4v', '162.158.234.14', 1519122953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132323935323b),
('9tubb3s6tm06h5nnal46da3n5psivnl8', '162.158.167.130', 1519123413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132333131333b4642524c485f73746174657c733a33323a226433623065343565653436386661323262373733323836356439323635653164223b69647c733a313a2231223b6e616d657c733a383a224d6420547568696e223b70656e5f6e616d657c733a353a22547568696e223b757365725f747970657c733a313a2233223b656d61696c7c733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a223974756262337336746d303668356e6e616c34366461336e35707369766e6c38223b6c6f676765645f696e7c623a313b),
('e6228mhu0lnnf65en687941s5j9tcso7', '162.158.167.130', 1519123293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132333239333b),
('gjrnim01narqctsuhirnnk9erdn2paqa', '162.158.167.130', 1519123735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132333434363b4642524c485f73746174657c733a33323a226433623065343565653436386661323262373733323836356439323635653164223b69647c733a313a2231223b6e616d657c733a383a224d6420547568696e223b70656e5f6e616d657c733a353a22547568696e223b757365725f747970657c733a313a2233223b656d61696c7c733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a223974756262337336746d303668356e6e616c34366461336e35707369766e6c38223b6c6f676765645f696e7c623a313b6d6573736167657c4e3b),
('ci35lim77gpfrqm17842tfesi22arpga', '162.158.78.86', 1519123627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132333632373b),
('k3m9os4lrf1ii0ndsdq9dgup32t6okmr', '162.158.167.130', 1519123819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132333738373b4642524c485f73746174657c733a33323a226433623065343565653436386661323262373733323836356439323635653164223b69647c733a313a2231223b6e616d657c733a383a224d6420547568696e223b70656e5f6e616d657c733a353a22547568696e223b757365725f747970657c733a313a2233223b656d61696c7c733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a223974756262337336746d303668356e6e616c34366461336e35707369766e6c38223b6c6f676765645f696e7c623a313b6d6573736167657c4e3b),
('olvsl4fgmdjdjvbopk9m4m2pecpsau1l', '162.158.167.130', 1519123872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132333738373b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226f6c76736c3466676d646a646a76626f706b396d346d3270656370736175316c223b6c6f676765645f696e7c623a313b),
('8s1qredd6tcr7p3k73hd6ltai8732tlo', '162.158.167.130', 1519124854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132343630393b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226f6c76736c3466676d646a646a76626f706b396d346d3270656370736175316c223b6c6f676765645f696e7c623a313b),
('v33utfmra8ikr1asfg3igq6caag34afb', '162.158.167.130', 1519124809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132343830393b4642524c485f73746174657c733a33323a226433623065343565653436386661323262373733323836356439323635653164223b69647c733a313a2231223b6e616d657c733a383a224d6420547568696e223b70656e5f6e616d657c733a353a22547568696e223b757365725f747970657c733a313a2233223b656d61696c7c733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a223974756262337336746d303668356e6e616c34366461336e35707369766e6c38223b6c6f676765645f696e7c623a313b6d6573736167657c4e3b),
('oloddtcju85bh9m6re079ll5p2qbro98', '162.158.234.14', 1519125216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132343934393b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226f6c76736c3466676d646a646a76626f706b396d346d3270656370736175316c223b6c6f676765645f696e7c623a313b),
('i6q646qi1hforgeang885o0aoh6mhctk', '162.158.234.14', 1519125579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132353332303b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226f6c76736c3466676d646a646a76626f706b396d346d3270656370736175316c223b6c6f676765645f696e7c623a313b),
('1nvg280fu2846ld4c9nj4kbrd4t6hdhe', '162.158.167.130', 1519126759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132363735393b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226f6c76736c3466676d646a646a76626f706b396d346d3270656370736175316c223b6c6f676765645f696e7c623a313b),
('d7q8bvb4vumecl3rrc0jcll1o5icn5ss', '162.158.167.130', 1519127662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531393132373338393b69647c733a313a2238223b6e616d657c733a31333a224d64204e6165656d204b68616e223b70656e5f6e616d657c733a353a224e6165656d223b757365725f747970657c733a313a2234223b656d61696c7c733a31353a2261646d696e40676d61696c2e636f6d223b73657373696f6e5f69647c733a33323a226f6c76736c3466676d646a646a76626f706b396d346d3270656370736175316c223b6c6f676765645f696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `comments_info`
--

CREATE TABLE `comments_info` (
  `com_id` int(11) NOT NULL,
  `comments` text NOT NULL,
  `com_rating` int(11) DEFAULT NULL,
  `news_id` varchar(255) NOT NULL,
  `com_user_id` int(11) NOT NULL,
  `com_replay_id` int(11) NOT NULL,
  `com_date_time` varchar(50) NOT NULL,
  `com_type` int(11) DEFAULT NULL,
  `com_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments_info`
--

INSERT INTO `comments_info` (`com_id`, `comments`, `com_rating`, `news_id`, `com_user_id`, `com_replay_id`, `com_date_time`, `com_type`, `com_status`) VALUES
(2, 'Teste', NULL, '130', 12, 0, '2018-02-13 05:29:54', 1, 1),
(3, 'tesss', NULL, '130', 12, 0, '2018-02-13 05:34:05', 1, 1),
(6, 'ssss', NULL, '131', 1, 0, '2018-02-13 06:11:54', 1, 1),
(7, 'sfsdf', NULL, '131', 1, 5, '2018-02-13 06:16:23', 2, 1),
(12, 'ss', NULL, '76', 1, 0, '2018-02-14 06:34:00', 1, 1),
(13, 'testess', NULL, '131', 20, 7, '2018-02-14 07:46:50', 2, 1),
(14, 'tesss', NULL, '131', 10, 0, '2018-02-14 08:14:25', 1, 1),
(15, 'tesss', NULL, '131', 10, 0, '2018-02-14 08:14:25', 1, 0),
(16, '*****\r\nTo remove (subscribe footer)\r\nTop header facebook login and registration page should be fixed\r\n\r\n*****\r\nRemove the logins appearing on the interface of connection\r\n\r\n*****\r\nSet up a moderation module for the comments to come.\r\n\r\n*****\r\nTo program publications in advance through an automatic system of post for a specific date', NULL, '131', 10, 7, '2018-02-14 08:15:12', 2, 1),
(17, 'fffaa', NULL, '131', 10, 6, '2018-02-14 09:20:05', 2, 1),
(18, 'teste', NULL, '136', 1, 0, '2018-02-15 06:50:07', 1, 0),
(19, 'tes', NULL, '136', 1, 0, '2018-02-15 07:00:29', 1, 0),
(20, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever sinc', NULL, '36', 19, 0, '2018-02-17 05:19:32', 1, 1),
(21, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever sinc', NULL, '36', 10, 20, '2018-02-17 05:29:32', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `smtp_protocol` varchar(200) DEFAULT NULL,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_username` varchar(200) DEFAULT NULL,
  `smtp_password` varchar(200) DEFAULT NULL,
  `smtp_mailtype` varchar(200) DEFAULT NULL,
  `smtp_charset` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `smtp_protocol`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `smtp_mailtype`, `smtp_charset`, `status`) VALUES
(1, 'smtp', 'ssl://smtp.googleemail.com', 465, 'workbd60@gmail.com', 'Work#Bd123', 'html', 'utf-8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text,
  `bangla` text,
  `spanish` text,
  `hindi` text,
  `chinese` text,
  `urdu` text,
  `arabic` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`, `spanish`, `hindi`, `chinese`, `urdu`, `arabic`) VALUES
(1, 'test', 'Test', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'postposition', 'Post Position', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'photovideos', 'Photo/Videos', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'optional', 'Optional', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'slider', 'Slider', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'category', 'Category', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'position', 'Position', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'photo', 'Photo', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'photo_name', 'Photo Name', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ref', 'Ref', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'video_url', 'Video Url', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'reporter', 'Reporter', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'date', 'Date', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'library', 'Library', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'news_title', 'News Title', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'short_head', 'Short Head', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'head_line', 'Head Line', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'details', 'Details', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'keyword_and_description_area', 'Keyword and description area', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'keyword', 'Keyword', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'description', 'Description', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'dynamic_post', 'Dynamic Post', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'static_post', 'Static Post', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'latest_news', 'Latest news', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'breaking_news', 'Breaking News', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'status', 'Status', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'reset', 'Reset', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'post', 'Post', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'update', 'Update', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'form_date', 'Form Date', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'to_date', 'To Date', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'search', 'Search', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'hit', 'Hit', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'title', 'Title', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'news_id', 'News Id', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'time', 'Time', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'action', 'Action', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'update_by', 'Update By', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'post_by', 'Post By', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'publish', 'Release ', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'unpublish', 'Unpublish', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'positioning_settings', 'Positioning Settings ', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'home', 'HOME', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'picture_url', 'Picture Url', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'insert_breaking_news', 'Insert Brecking News', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'breaking_news_list', 'Breaking News List', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'post_time', 'Post Time', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'save', 'Save', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'edit', 'Edit', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'off', 'Off', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'on', 'One', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'entry_question', 'Entry Question', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'question', 'Question', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'question_list', 'Question List', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'yes', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'no', 'NO', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'nc', 'NC', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'submit_new_ads', 'Submit New Ads', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'page', 'Page', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'ad_type', 'Ads Type', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'ad_position', 'Ads Position', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'ad_list', 'Ads List', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'url', 'Url', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'image', 'Image', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'embed_code', 'Embaded Code', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'update_ad', 'Update Ads', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'back', 'Back', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'maximum_archive_settings', 'Maximum archive settings', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'maximum_news', 'Maximum News', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'available_for_archive', 'Available for archive', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'archive', 'Archive', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'archive_news', 'Archive News', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'start_archive', 'Start Archive', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'close', 'Close', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'category_name', 'Category Name', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'slug', 'Slug', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'in_menu', 'In Menu', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'category_image', 'Category Image', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'all_category', 'All Category', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'add_category', 'Add Category', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'page_slug', 'Page Slug', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'related_id', 'Related Id', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'menu', 'Menu', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'add_menu', 'Add Menu', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'menu_position', 'Menu Position', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'menu_name', 'Menu Name', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'setup', 'Setup', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'reload', 'Reload', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'edit_menu', 'Edit Menu', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'link', 'Link', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'addnewlink', 'Add New Link', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'add_page', 'Add Page', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'parents', 'Parents', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'menu_level', 'Menu Level', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'full_name', 'Full Name', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'create', 'Create', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'mobile', 'Mobile', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'password', 'Password', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'registration', 'Registration', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'address', 'Address', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'post_approval_status', 'Post approval status', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'in_out_time', 'In/out time', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'user_list', 'User List', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'email', 'E-mail', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'picture', 'Picture', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'user_profile', 'User Profile', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'profile', 'Profile', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'new_password', 'New Password', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'home_page_view_setup', 'Home Page View Setup', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'max_news', 'Max News', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'position_id', 'Position No', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'add_position', 'Add Position', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'content', 'Content', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'phone_two', 'Phone Two', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'phone', 'Phone', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'website', 'Websit', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'google_map', 'Google Map', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'contact_page_setting', 'Contact Page Setting', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'most_read', 'Most Read', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'whole_country', 'Whole Country', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'headline', 'Headline', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'such_more_news', 'Such More News', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'language_settings', 'Language Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'website_title', 'Website Title', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'website_footer', 'Website Footer', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'copy_right', 'Copy Right', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'website_logo', 'Website Logo', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'logo', 'Logo', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'footer_logo', 'Footer Logo', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'website_favicon', 'Website Favicon', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'favicon', 'Favicon', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'website_time_zone', 'Website Time Zone', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'google_analytics_setting', 'Google Analytics Setting', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'google_analytics_code', 'Google Analytics Code', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'facebook_url', 'Facebook URL', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'show_on', 'Show On', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'twitter_url', 'Twitter URL', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'google_plus', 'Google Plus', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'linkedin', 'Linkedin', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'social_site_link', 'Social Site Link', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'facebook', 'Facebook', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'twitter', 'Twitter', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'google', 'Google+', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'pinterest', 'Pinterest', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'vimeo', 'Vimemo', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'youtube', 'Youtube', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'flickr', 'Flicker', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'vk', 'VK', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'comment_settings', 'Comment Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'comment_code', 'Comment Code', NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'fixed_keyword_settings', 'Fixed Keyword Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'fixed_keyword_comm_separated', 'Fixed Keyword', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'alexa_settings', 'Alexa Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'alexa_code', 'Alexa Code', NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'social_site_settings', 'Social Site Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'upload_new_theme', 'Upload New Theme', NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'theme_name', 'Theme name', NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'upload', 'Upload', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'active', 'Active', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'cache_setting', 'Cache Setting', NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'delete_cache_file', 'Delete Cache File', NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'cache_on', 'Cache On', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'cache_off', 'Cache Off', NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'delete_message', 'Delete Successfully.', NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'update_message', 'Update Successfully.', NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'add_post', 'Add Post', NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'news_list', 'News List', NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'positioning', 'Positioning', NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'media_library', 'Media Library', NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'add_picture', 'Add Picture', NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'picture_list', 'Picture List', NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'other_post', 'Other Post', NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'polling', 'Polling', NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'advertise_settings', 'Advertise Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'new_advertise', 'New Advertise', NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'update_advertise', 'Update Advertise', NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'archive_setting', 'Archive Setting', NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'category_list', 'Category List', NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'add_new_page', 'Add New Page', NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'page_list', 'Page List', NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'user', 'User', NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'last_20_access', 'Last 20 Access', NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'reporter_news_list', 'Reporter news List', NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'seo', 'SEO', NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'googleanalytics', 'Google Analytics', NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'social_site', 'Social_site', NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'social_sites', 'Social Site', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'comments', 'Comments', NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'fixed_keyword', 'Fixed keyword', NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'alexa', 'Alexa', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'settings', 'Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'home_page', 'Home Page', NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'category_page_setup', 'Category Page Setup', NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'website_timezone', 'Website Timezone', NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'theme', 'Theme', NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'theme_activation', 'Theme Activation', NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'cache_system', 'Cache System', NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'nick_name', 'Nick Name', NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'sex', 'Sex', NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'blood', 'Blood', NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'birth_date', 'Birth Date', NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'address_line_one', 'Address Line One', NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'address_line_two', 'Address Line Two', NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'city', 'City', NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'country', 'Country', NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'zip', 'Zip', NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'verification_document_id', 'Verification Document Id', NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'verification_type', 'Verification Type', NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'login_time', 'Login Time', NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'logout_time', 'Logout Time', NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'ip_address', 'Ip Address', NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'password_change', 'Password Change', NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'confirm_password', 'Confirm Password', NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'state', 'State', NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'signout', 'Sign Out', NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'clear_log', 'Clear Log', NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'user_agent', 'User Agent', NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'last_activity', 'Last Activity', NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'user_reagistration_message', 'User Registration successfully', NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'error_message', 'Error Message', NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'ad_save_message', 'Ad Save Successfully.', NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'ad_exist_msg', 'Ad Already Exist, if you want please update.', NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'url_requerd', 'Please select image and URL.', NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'max_archive_save_msg', 'Maximum Archive Settings has been updated successfully', NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'cache_on_msg', 'Cache On Successfully', NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'cache_off_msg', 'Cache Off Successfully', NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'category_exist_msg', 'Category already exist', NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'category_save_msg', 'Category Saved Successfully', NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'breaking_add_msg', 'Breaking news inserted successfully', NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'log_error_msg', 'Email or Password is invalid.', NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'menu_save_msg', 'Add successfull.', NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'news_post_msg', 'News successfully posted.', NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'page_add_msg', 'Page Create successfully.', NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'setting_message', 'Settings Saved Successfully', NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'social_pixel', 'SOCIAL PIXEL', NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'online_vot', 'ONLINE VOTE', NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'search_artical', 'Search articles here ...', NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'contact', 'CONTACT', NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'send', 'Send', NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'subject', 'Subject', NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'message', 'Message', NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'first_name', 'First Name', NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'last_name', 'Last Name', NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'send_us', 'Send Us A Message', NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'contact_message', 'Your mail has been sent successfully!', NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'login_and_registration', 'REGISTRATION', NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'login_to_your_account', 'LOGIN TO YOUR ACCOUNT', NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'login_with_facebook', 'Login With Facebook', NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'login_with_google', 'Login With Google', NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'remember_me', 'Remember me', NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'forget_username_password', 'Forget username/password', NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'login', 'Login', NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'no_comment', 'On Comment', NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'submit', 'Submit', NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'result', 'Result', NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'vot_save_msg', 'Thank you for your Vot.', NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'vot_exist_msg', 'You already get this vot', NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'click_to_dashbord', 'Click to Dashbord', NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'video_striming', 'Streaming Videos', NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'get_in_touch', 'Get In Touch', NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'access_category', 'Access category', NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'male', 'Male', NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'female', 'Female', NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'post_date', 'Post date', NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'publish_date', 'Release Date', NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'sl', 'SL', NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'approved', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'pending', 'Pending', NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'comment_list', 'Comment List', NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'analytics', 'Analytics', NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'subscribers', 'Subscribers', NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'general_user', 'General User', NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'email_configaretion', 'Email Configuration', NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'view_email_config', 'View Email config', NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'social_authentication', 'Social Authentication', NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'live_now', 'Live Now', NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'location_based', 'Location Based', NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'news_based', 'News Based', NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'clear_analytics', 'Clear_analytics', NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'in_time', 'In Time', NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'admin', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'writer', 'Writer', NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'moderator', 'Moderator', NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'last_update', 'Last Update', NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'app_id', 'App id', NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'api_key', 'Api Key', NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'app_secret', 'App Secret', NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'subscribers_list', 'Subscription', NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'name', 'Name', NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'select', 'Select', NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'desktop_tablet', 'Desktop tablet', NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'disable_analytics', 'Disable Analytics', NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'anable_analytics', 'Enable  Analytics', NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'smtp_protocol', 'Smtp Protocol', NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'smtp_host', 'Smtp Host', NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'smtp_port', 'Smtp Prot', NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'smtp_username', 'Smtp Username', NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'smtp_password', 'Smtp Password', NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'smtp_mailtype', 'Smtp Mailtype', NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'smtp_charset', 'Smtp Charset', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lg_setting`
--

CREATE TABLE `lg_setting` (
  `id` int(11) NOT NULL,
  `language` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lg_setting`
--

INSERT INTO `lg_setting` (`id`, `language`) VALUES
(1, 'english');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `link_id` int(11) NOT NULL,
  `link_level` text NOT NULL,
  `link_url` varchar(120) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `link_level`, `link_url`, `status`) VALUES
(1, 'LINK', '', 1),
(2, 'FACEBOOK.COM', 'http://facebook.com/', 1),
(3, 'GOOGLEPLUS.COM', 'https://plus.google.com/', 1),
(4, 'RSS FEED', 'http://demonewspaper.bdtask.com/DemoNewsPaper-v1.5/rss.xml', 1);

-- --------------------------------------------------------

--
-- Table structure for table `max_archive_settings`
--

CREATE TABLE `max_archive_settings` (
  `category_id` int(11) NOT NULL,
  `max_archive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `max_archive_settings`
--

INSERT INTO `max_archive_settings` (`category_id`, `max_archive`) VALUES
(2, 5),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text,
  `menu_position` int(11) DEFAULT NULL,
  `menu_style` text,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_position`, `menu_style`, `status`) VALUES
(1, 'Main Menu', 1, NULL, 1),
(2, 'Category', 2, NULL, 1),
(17, 'Footer Menu', 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_content`
--

CREATE TABLE `menu_content` (
  `menu_content_id` int(11) NOT NULL,
  `content_type` text,
  `content_id` int(11) DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL,
  `menu_lavel` varchar(222) DEFAULT NULL,
  `link_url` varchar(250) DEFAULT NULL,
  `slug` text,
  `parents_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_content`
--

INSERT INTO `menu_content` (`menu_content_id`, `content_type`, `content_id`, `menu_position`, `menu_lavel`, `link_url`, `slug`, `parents_id`, `menu_id`, `status`) VALUES
(1, 'categories', 1, 1, 'INTERNATIONAL', NULL, 'International', NULL, 1, 1),
(4, 'categories', 4, 2, 'TECHNOLOGY', NULL, 'Technology', NULL, 1, 1),
(5, 'categories', 5, 3, 'LIFESTYLE', NULL, 'Lifestyle', NULL, 1, 1),
(6, 'categories', 8, 4, 'POLITICS', NULL, 'Politics', NULL, 1, 1),
(7, 'categories', 9, 5, 'WEEKLY NEWS', NULL, 'weekly-news', NULL, 1, 1),
(9, 'categories', 17, 7, 'SPORTS', NULL, 'Sports', NULL, 1, 1),
(10, 'categories', 18, 8, 'HEALTH', NULL, 'Health', NULL, 1, 1),
(11, 'categories', 1, NULL, 'INTERNATIONAL', NULL, 'International', NULL, 2, 1),
(12, 'categories', 2, NULL, 'TRAVEL', NULL, 'Travel', NULL, 2, 1),
(13, 'categories', 3, NULL, 'FOOD', NULL, 'Food', NULL, 2, 1),
(14, 'categories', 4, NULL, 'TECHNOLOGY', NULL, 'Technology', NULL, 2, 1),
(15, 'categories', 5, NULL, 'LIFESTYLE', NULL, 'Lifestyle', NULL, 2, 1),
(16, 'categories', 6, NULL, 'EDITOR CHOICE', NULL, 'Editor-Choice', NULL, 2, 1),
(17, 'categories', 7, NULL, 'VIDEO', NULL, 'Video', NULL, 2, 1),
(18, 'categories', 8, NULL, 'POLITICS', NULL, 'Politics', NULL, 2, 1),
(23, 'links', 1, 4, 'SITEMAP', 'http://demonewspaper.bdtask.com/DemoNewsPaper-v1.5/sitemap.xml', NULL, 0, 17, 1),
(26, 'links', NULL, 9, 'LINK', '', NULL, 0, 1, 1),
(31, 'categories', 12, 6, 'BUSINESS', NULL, 'Business', NULL, 1, 1),
(32, 'pages', 1, 1, 'ABOUT US', NULL, 'About-us', NULL, 17, 1),
(33, 'pages', 2, 2, 'PRIVACY POLICY', NULL, 'PRIVACY-POLICY', NULL, 17, 1),
(34, 'pages', 3, 3, 'TERMS OF USE', NULL, 'TERMS-OF', NULL, 17, 1),
(35, 'links', 4, 5, 'RSS FEED', 'http://demonewspaper.bdtask.com/DemoNewsPaper-v1.5/rss.xml', NULL, NULL, 17, 1),
(36, 'links', NULL, 10, 'GOOGLEPLUS.COM', 'https://plus.google.com/', NULL, 26, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_archive`
--

CREATE TABLE `news_archive` (
  `id` int(9) NOT NULL,
  `news_id` int(11) NOT NULL,
  `stitle` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `news` text NOT NULL,
  `image` varchar(56) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `reporter` varchar(56) DEFAULT NULL,
  `page` varchar(56) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `ref_date` varchar(56) DEFAULT NULL,
  `post_by` varchar(56) DEFAULT NULL,
  `update_by` varchar(56) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `post_date` varchar(20) DEFAULT NULL,
  `is_latest` int(2) DEFAULT NULL,
  `reader_hit` int(5) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news_mst`
--

CREATE TABLE `news_mst` (
  `id` int(9) NOT NULL,
  `news_id` int(11) NOT NULL,
  `stitle` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `news` longtext NOT NULL,
  `image` varchar(56) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `reporter` varchar(56) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `ref_date` varchar(56) DEFAULT NULL,
  `post_by` varchar(56) DEFAULT NULL,
  `update_by` varchar(56) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `is_latest` int(2) DEFAULT NULL,
  `reader_hit` int(5) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_mst`
--

INSERT INTO `news_mst` (`id`, `news_id`, `stitle`, `title`, `news`, `image`, `videos`, `reporter`, `page`, `reference`, `ref_date`, `post_by`, `update_by`, `time_stamp`, `post_date`, `publish_date`, `last_update`, `is_latest`, `reader_hit`, `status`) VALUES
(1, 2, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Editor-Choice', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(2, 3, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Editor-Choice', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(3, 4, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Editor-Choice', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(4, 5, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Editor-Choice', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(5, 6, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Editor-Choice', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(6, 7, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Editor-Choice', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(7, 8, '', 'Contrary to popular belief, Lorem Ipsum is not simply random', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Editor-Choice', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(8, 9, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Editor-Choice', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 2, 0),
(9, 10, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(11, 12, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 5, 0),
(12, 13, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(13, 14, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(14, 15, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(15, 16, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(16, 17, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(17, 18, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 2, 0),
(18, 19, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Technology', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(19, 20, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Technology', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(20, 21, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Technology', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(21, 22, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Technology', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(22, 23, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Technology', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(23, 24, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Technology', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 3, 0),
(24, 25, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'science', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(25, 26, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Technology', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(26, 27, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Technology', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 13, 0),
(27, 28, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n\r\n<p>ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â </p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(28, 29, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(29, 30, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(30, 31, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(31, 32, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(32, 33, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(33, 34, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(34, 35, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(35, 36, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 18, 0),
(36, 37, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Video', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(37, 38, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Video', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(38, 39, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Video', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0);
INSERT INTO `news_mst` (`id`, `news_id`, `stitle`, `title`, `news`, `image`, `videos`, `reporter`, `page`, `reference`, `ref_date`, `post_by`, `update_by`, `time_stamp`, `post_date`, `publish_date`, `last_update`, `is_latest`, `reader_hit`, `status`) VALUES
(39, 40, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(40, 41, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(41, 42, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>', '1502887485.jpeg', '', '', 'Travel', '', '18-02-2017', '1', '0', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(42, 43, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(43, 44, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(44, 45, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(45, 46, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(46, 47, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(47, 48, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(48, 49, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(49, 50, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Lifestyle', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(50, 51, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Lifestyle', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(51, 52, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Lifestyle', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(52, 53, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Lifestyle', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(53, 54, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Lifestyle', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(54, 55, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Lifestyle', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(55, 56, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Lifestyle', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 3, 0),
(56, 57, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Health', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(57, 58, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Health', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(58, 59, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Health', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(59, 60, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Health', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(60, 61, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Health', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(61, 62, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Health', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(62, 63, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>', '1502887485.jpeg', '', '', 'Sports', '', '18-02-2017', '1', '0', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(63, 64, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 2, 0),
(64, 65, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 2, 0),
(65, 66, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(66, 67, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(67, 68, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(68, 69, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 4, 0),
(69, 70, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(70, 71, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'weekly-news', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(71, 72, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'weekly-news', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 2, 0),
(72, 73, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'weekly-news', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(73, 74, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'weekly-news', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(74, 75, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'weekly-news', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(75, 76, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n', '1502887485.jpeg', '', '', 'weekly-news', NULL, '2017-02-18', '1', '1', 1517439600, '2017-02-18', '2018-02-01', '0000-00-00 00:00:00', 1, 5, 0),
(76, 77, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', 'fRvBpuNyjiE', '', 'Video', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0);
INSERT INTO `news_mst` (`id`, `news_id`, `stitle`, `title`, `news`, `image`, `videos`, `reporter`, `page`, `reference`, `ref_date`, `post_by`, `update_by`, `time_stamp`, `post_date`, `publish_date`, `last_update`, `is_latest`, `reader_hit`, `status`) VALUES
(77, 78, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', 'https://www.youtube.com/watch?v=fRvBpuNyjiE', '', 'Video', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 5, 0),
(78, 79, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Food', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(79, 80, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â </p>\r\n\r\n<p>ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¦Ãƒâ€šÃ‚Â¡ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â </p>\r\n', '1502887485.jpeg', '', '', 'Food', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(80, 81, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Food', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(81, 82, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Food', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(82, 83, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Business', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(83, 84, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Business', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(84, 85, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Business', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(85, 86, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Business', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(86, 87, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Business', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(87, 88, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Business', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(88, 89, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'Business', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(89, 90, '', 'There are many variations of passages of Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', 'Md Tuhin', 'world', '', '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '2018-02-15 06:24:00', 1, 0, 0),
(90, 91, '', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(91, 92, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing eli', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-02-19', '1', '1', 1517439600, '2017-02-19', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(92, 93, '', 'Lorem Ipsum is simply dummy text of the printing', '<p>Lorem IpsumÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem IpsumÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem IpsumÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem IpsumÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. I</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>t has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem IpsumÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '1502887485.jpeg', '', 'Tanzil', 'International', NULL, '2017-02-27', '1', '1', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 3, 0),
(93, 94, '', 'blanditiis praesentium voluptatum deleniti atque corrupti ', '<p>industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â </p>', '1502887485.jpeg', '', '', 'home', '', '27-02-2017', '2', '0', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 1),
(94, 95, '', ' omnis voluptas assumenda est, omnis dolor ', '<p>industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â </p>', '1502887485.jpeg', '', '', 'International', '', '27-02-2017', '2', '0', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 1),
(95, 96, '', 'blanditiis praesentium voluptatum deleniti atque corrupti ', '<p>industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â </p>\r\n', '1502887485.jpeg', '', '', 'Politics', NULL, '2017-02-27', '2', '1', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 8, 0),
(97, 97, '', 'blanditiis praesentium voluptatum deleniti atque corrupti ', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '1502887485.jpeg', '', '', 'Business', NULL, '2017-02-27', '1', '1', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(98, 99, '', 'UPdate printer took a galley of type and scrambled it tttt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-02-27', '1', '1', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 16, 0),
(99, 100, '', 'blanditiis praesentium voluptatum deleniti atque corrupti ', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-02-27', '1', '1', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 2, 0),
(100, 101, '', 'Business Page  praesentium voluptatum deleniti atque corrupti ', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-02-27', '1', '1', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 8, 0),
(101, 102, '', 'blanditiis praesentium voluptatum deleniti atque corrupti ', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '1502887485.jpeg', '', '', 'Technology', NULL, '2017-02-27', '1', '1', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 16, 0);
INSERT INTO `news_mst` (`id`, `news_id`, `stitle`, `title`, `news`, `image`, `videos`, `reporter`, `page`, `reference`, `ref_date`, `post_by`, `update_by`, `time_stamp`, `post_date`, `publish_date`, `last_update`, `is_latest`, `reader_hit`, `status`) VALUES
(102, 103, '', 'UPdate Business  to popular belief, Lorem Ipsum is not simply random text', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eu cursus lacus. Pellentesque tincidunt elit sit amet ligula viverra, ac congue diam sodales. Aenean elementum, felis vitae malesuada euismod, lorem neque faucibus nulla, sed pulvinar tellus eros vel ex. Sed erat nisi, aliquam at erat vitae, condimentum interdum orci. Quisque fringilla velit a tincidunt suscipit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eget convallis tortor, nec cursus est. Vivamus risus nulla, ullamcorper ut facilisis ac, tempor vitae lacus. Proin vel sollicitudin nisi.</p>\r\n\r\n<p>Suspendisse nec arcu ut orci aliquam egestas. Donec fringilla ante et ultrices malesuada. Phasellus odio nisi, posuere id rhoncus eu, convallis id enim. Nullam venenatis turpis ac ex bibendum, et gravida dolor interdum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam eu lectus non nisl mattis imperdiet in vitae enim. Suspendisse id varius enim. Donec dictum vestibulum mi, vel pharetra ligula luctus ut. In tristique ipsum sit amet ultrices auctor.</p>\r\n\r\n<p>Phasellus nec pellentesque massa, a auctor nisl. Suspendisse elementum consectetur vestibulum. Vivamus placerat vel libero in varius. Nulla congue, enim eu aliquet hendrerit, tortor ante tincidunt dolor, in pretium velit odio quis enim. Aenean rhoncus bibendum quam, eu dapibus mauris aliquam sed. Integer eu dui fermentum libero elementum congue. Fusce fermentum mollis turpis, porta placerat massa. Cras semper tincidunt dolor, euismod ornare nibh imperdiet tempor. Duis eu nisi ut nulla tincidunt mattis quis non justo. Sed vel varius metus, accumsan tincidunt lacus. Fusce a erat sit amet ipsum feugiat cursus. Sed auctor, nisl commodo tincidunt viverra, leo dolor consectetur urna, quis vulputate turpis sem sed magna. Etiam aliquam elit pulvinar urna eleifend vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean lobortis purus eu erat tempor, non finibus justo euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>\r\n', '1502887485.jpeg', '', '', 'Business', NULL, '2017-02-27', '1', '1', 1517439600, '2017-02-27', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(103, 104, '', 'There are many variations of passages of Lorem Ipsum available', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '1502887485.jpeg', '', '', 'International', '', '09-08-2017', '1', '0', 1517439600, '2017-08-09', '2018-02-01', '0000-00-00 00:00:00', 1, 3, 0),
(104, 105, '', 'The generated Lorem Ipsum is therefore always free from repetition', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-08-09', '1', '1', 1517439600, '2017-08-09', '2018-02-01', '0000-00-00 00:00:00', 1, 3, 0),
(105, 106, '', 'Lorem Ipsum which looks reasonable. The generated', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '1502887485.jpeg', '', '', 'International', '', '09-08-2017', '1', '0', 1517439600, '2017-08-09', '2018-02-01', '0000-00-00 00:00:00', 1, 1, 0),
(106, 107, '', 'making this the first true generator on the Internet.', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-08-09', '1', '1', 1517439600, '2017-08-09', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(107, 108, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed nisl in felis ultrices tempus. Suspendisse non tellus felis. In ultrices non nulla vel scelerisque. Nunc quis diam quis orci vestibulum fermentum nec sit amet orci. Sed id lacinia quam. Morbi quis nunc lacinia, rutrum mauris vitae, pharetra metus. Morbi interdum gravida pellentesque. Phasellus ornare lacinia elit, sed pellentesque est porta ut. Morbi tincidunt efficitur dolor, nec consectetur diam dignissim eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent at ligula malesuada, rutrum neque nec, sagittis mauris. Nam vel volutpat turpis. Nullam fringilla commodo justo, vitae fermentum sem fermentum quis. Sed sit amet pharetra felis, nec tristique ex. Cras eu ultricies odio. Ut mollis purus sem, a blandit felis eleifend vitae.</p>', '1502887485.jpeg', '', '', 'world', '', '13-08-2017', '1', '0', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(108, 109, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed nisl in felis ultrices tempus. Suspendisse non tellus felis. In ultrices non nulla vel scelerisque. Nunc quis diam quis orci vestibulum fermentum nec sit amet orci. Sed id lacinia quam. Morbi quis nunc lacinia, rutrum mauris vitae, pharetra metus. Morbi interdum gravida pellentesque. Phasellus ornare lacinia elit, sed pellentesque est porta ut. Morbi tincidunt efficitur dolor, nec consectetur diam dignissim eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent at ligula malesuada, rutrum neque nec, sagittis mauris. Nam vel volutpat turpis. Nullam fringilla commodo justo, vitae fermentum sem fermentum quis. Sed sit amet pharetra felis, nec tristique ex. Cras eu ultricies odio. Ut mollis purus sem, a blandit felis eleifend vitae.</p>\r\n', '1502887485.jpeg', '', 'Md Tuhin', 'science', '', '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '2018-02-15 06:23:22', 1, 0, 0),
(109, 110, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed nisl in felis ultrices tempus. Suspendisse non tellus felis. In ultrices non nulla vel scelerisque. Nunc quis diam quis orci vestibulum fermentum nec sit amet orci. Sed id lacinia quam. Morbi quis nunc lacinia, rutrum mauris vitae, pharetra metus. Morbi interdum gravida pellentesque. Phasellus ornare lacinia elit, sed pellentesque est porta ut. Morbi tincidunt efficitur dolor, nec consectetur diam dignissim eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent at ligula malesuada, rutrum neque nec, sagittis mauris. Nam vel volutpat turpis. Nullam fringilla commodo justo, vitae fermentum sem fermentum quis. Sed sit amet pharetra felis, nec tristique ex. Cras eu ultricies odio. Ut mollis purus sem, a blandit felis eleifend vitae.</p>', '1502887485.jpeg', '', '', 'Lifestyle', '', '13-08-2017', '1', '0', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(110, 111, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>', '1502887485.jpeg', '', '', 'Lifestyle', '', '13-08-2017', '1', '0', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(111, 112, '', 'Business Page  praesentium voluptatum deleniti atque corrupti', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>', '1502887485.jpeg', '', '', 'Lifestyle', '', '13-08-2017', '1', '0', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(112, 113, '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>', '1502887485.jpeg', '', '', 'world', '', '13-08-2017', '1', '0', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(113, 114, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>', '1502887485.jpeg', '', '', 'Health', '', '13-08-2017', '1', '0', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(114, 115, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(115, 116, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(116, 117, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n', '1502887485.jpeg', '', '', 'Health', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(117, 118, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(119, 120, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(120, 121, '', 'Business Page  praesentium voluptatum deleniti atque corrupti', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(121, 122, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(122, 123, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 0, 0),
(123, 124, '', 'There are many variations of passages of Lorem Ipsum available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 3, 0),
(124, 125, '', 'Lorem Ipsum which looks reasonable. The generated', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dictum, neque ac vestibulum tincidunt, purus libero tristique tortor, euismod fermentum massa mi non nisi. Proin gravida dui non scelerisque dictum. Donec condimentum malesuada quam, non suscipit sem bibendum quis. Nam quam tellus, laoreet eget risus ut, dignissim consectetur ante. Pellentesque bibendum magna a ex ultrices imperdiet. In congue efficitur pharetra. Ut ornare ex nec urna condimentum faucibus.</p>\r\n\r\n<p>Cras pulvinar lorem vitae diam porta placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi ac felis dolor. Donec hendrerit nisl velit, a lobortis nunc viverra nec. Maecenas tincidunt risus vitae augue tristique pulvinar. Pellentesque vestibulum tortor erat, non tempus ligula vehicula nec. Aenean vestibulum risus tincidunt magna maximus, convallis porttitor lorem sagittis. Integer tincidunt rhoncus velit rutrum mattis. Sed luctus lorem tortor, non vehicula lorem vestibulum ac. Cras et urna sed turpis ultrices dapibus. Duis non mattis purus. Suspendisse molestie molestie sem, ut rhoncus ligula pulvinar in. Sed non purus nunc. Maecenas quis faucibus purus, sed lobortis tortor.</p>\r\n\r\n<p>Maecenas ex ex, aliquam eu velit a, mollis mattis dolor. Phasellus quis facilisis dolor, ut feugiat odio. Curabitur sodales vel magna sed elementum. Vivamus a fermentum erat. Praesent id sem augue. Integer lobortis fermentum volutpat. Donec pulvinar enim non ultricies feugiat.</p>\r\n', '1502887485.jpeg', '', '', 'Travel', NULL, '2017-08-13', '1', '1', 1517439600, '2017-08-13', '2018-02-01', '0000-00-00 00:00:00', 1, 9, 0),
(126, 127, '', 'Escalation of tension between India, China will be disruptive', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '1502887485.jpeg', '', '', 'International', NULL, '2017-08-16', '1', '1', 1517439600, '2017-08-16', '2018-02-01', '0000-00-00 00:00:00', 1, 4, 0),
(127, 128, 'cricket', 'Australian cricket team in Bangladesh in 2017', '<p>TheÂ <a href=\"https://en.wikipedia.org/wiki/Australia_national_cricket_team\" title=\"Australia national cricket team\">Australia cricket team</a>Â are scheduled to tour Bangladesh in August and September 2017 to play twoÂ <a href=\"https://en.wikipedia.org/wiki/Test_cricket\" title=\"Test cricket\">Test matches</a>Â and a tour match.<sup><a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2017#cite_note-Fixtures-1\">[1]</a></sup>Â It will be Australia&#39;s first tour to BangladeshÂ <a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2011\" title=\"Australian cricket team in Bangladesh in 2011\">since 2011</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2017#cite_note-2011tour-2\">[2]</a></sup></p>\r\n\r\n<p>Australia were originally scheduled toÂ <a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2015â€“16\" title=\"Australian cricket team in Bangladesh in 2015â€“16\">tour Bangladesh</a>Â in September 2015, but this was cancelled due to security concerns.<sup><a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2017#cite_note-postponed-3\">[3]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2017#cite_note-BBC-PP-4\">[4]</a></sup>Â FollowingÂ <a href=\"https://en.wikipedia.org/wiki/English_cricket_team_in_Bangladesh_in_2016â€“17\" title=\"English cricket team in Bangladesh in 2016â€“17\">England&#39;s tour to Bangladesh</a>Â in October 2016,Â <a href=\"https://en.wikipedia.org/wiki/James_Sutherland_(cricket_administrator)\" title=\"James Sutherland (cricket administrator)\">James Sutherland</a>, CEO ofÂ <a href=\"https://en.wikipedia.org/wiki/Cricket_Australia\" title=\"Cricket Australia\">Cricket Australia</a>Â (CA), said the chances of Australia playing in Bangladesh were \"quite high\".<sup><a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2017#cite_note-Sutherland-5\">[5]</a></sup>Â In April 2017, both CA and theÂ <a href=\"https://en.wikipedia.org/wiki/Bangladesh_Cricket_Board\" title=\"Bangladesh Cricket Board\">Bangladesh Cricket Board</a>Â (BCB) were negotiating the fixtures for the tour.<sup><a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2017#cite_note-neg-6\">[6]</a></sup>Â Nizamuddin Chowdhury, the BCB&#39;s chief executive, said they \"are now working on the schedule and other details with CA\".<sup><a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2017#cite_note-BCB-7\">[7]</a></sup>Â In May 2017, security assessments were continuing.<sup><a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2017#cite_note-2011tour-2\">[2]</a></sup>Â Later the same month, Cricket Australia sent a security team to Bangladesh to finalise arrangements for the tour.<sup><a href=\"https://en.wikipedia.org/wiki/Australian_cricket_team_in_Bangladesh_in_2017#cite_note-security-8\">[</a></sup></p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '1502887485.jpeg', '', '', 'Sports', NULL, '2017-08-17', '1', '1', 1517439600, '2017-08-17', '2018-02-01', '0000-00-00 00:00:00', 1, 7, 0);
INSERT INTO `news_mst` (`id`, `news_id`, `stitle`, `title`, `news`, `image`, `videos`, `reporter`, `page`, `reference`, `ref_date`, `post_by`, `update_by`, `time_stamp`, `post_date`, `publish_date`, `last_update`, `is_latest`, `reader_hit`, `status`) VALUES
(128, 129, '', 'There are many variations of passages ', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-12-12', '1', '1', 1517439600, '2017-12-12', '2018-02-01', '0000-00-00 00:00:00', 1, 6, 0),
(129, 130, '', 'Contrary to popular belief, Lorem Ipsum is not simply', '<p><img alt=\"\" src=\"http://localhost/MainNewsPaper-v2.0/12-12-2017/assets/ckfinder/core/connector/php/uploads/images/11949de63edaaff315e74f67b57485cd.jpg\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p><span class=\"marker\">Contrary to popular belief,</span> Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-12-12', '1', '1', 1517439600, '2017-12-12', '2018-02-01', '0000-00-00 00:00:00', 1, 7, 0),
(130, 131, '', 'But I must explain to you how all this mistaken idea', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n', '1502887485.jpeg', '', '', 'world', NULL, '2017-12-12', '1', '1', 1517439600, '2017-12-12', '2018-02-01', '0000-00-00 00:00:00', 1, 81, 0),
(131, 132, '', 'Lorem Ipsum is simply dummy text of the printing', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '1502887485.jpeg', '', 'Md Tuhin', 'world', '', '2017-12-14', '1', '1', 1517443200, '2017-12-14', '2018-02-01', '2018-02-20 10:45:29', 1, 8, 0),
(139, 133, '', ' Provides the Best Software Development Service at reasonable price around the world', '<p>Because of being subservient for more than two centuries, the fear of the inhospitable atmosphere of the bounded Bangladesh sky, but it has turned into hope within the four-decade of independence by the unimaginable path to the adventurous life-force and creativity of adventurous people. Already Bangladesh has achieved 7.4 percent growth per capita, 100 percent literacy, ensuring women&#39;s rights, and many other achievements. Through the development of trade and industry, Bangladesh has already left the level of developing country and has been acquired its place in the list of LDC of the world. And in the efforts of some enthusiastic creative people, Bangladeshi has progressed equally in the computer technology software industry.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Bangladesh Software Association and Information Service (BASIS) was established in 1997 to carry forward the software industry of Bangladesh. Initially, there were only 17 members out of its of its approximate 1,500 registered members, of which at least 500 IT companies were, directly and indirectly, involved in software development and marketing. These companies are promoting the country&#39;s reserve by selling their products in foreign markets, as well as creating huge online income generating jobs. As a result, thousands of youth are getting the chance of a lightening future. It is to be noted that Bangladesh has occupied second place in Outsourcing, behind the world&#39;s biggest country. Which is very interesting for us.</p>\r\n\r\n<p> </p>\r\n\r\n<p>We think this software industry is going to be the best way to go forward for millions of young people. So, keeping them in mind, we are launching the details of a successful software company of Bangladesh named by ASK. So that our talented youngsters can make a dream of their dreams.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Journey and Naming history of ASK</strong></p>\r\n\r\n<p> </p>\r\n\r\n<p>Talking with Mr. Sumch Mohammad Tarek, Managing director of <a href=\"https://www.abcd.com/\">abcd</a> we learn many things about it. Mr. Sumch Mohammad Tareq said that we have started the journey of first from our own home. Initially, we used to work in some freelancing marketplace such as upwork, freelancer and Fiverr. ASK means Bangladeshi work, our aim and purpose are to provide software affordable with purchase power of the people, so that everyone can be digital and buy & automation software in their daily task management.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Speaking to the Chief Operating Officer Mr. Tanzil Ahmed, he said, \"Actually, our journey was a little challenging, we used to do freelancing as well as IT training at the earliest. But we did not extend it to the attention of software development. That makes our journey even more intense.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Mr. Sumch Mohammad Tarek also said that success will come by the hard work and patience, and so, we have never been frustrated and now I have been transformed my organization into a successful software company in Bangladesh.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Chairman of the company Mr. Shamsul Alam said that ASK is a BASIS registered software company that develops business-related multifunctional software. Even though it was launched in 2012, it has proved itself as a software manufacturer and market leader by 2013 and is currently making significant contributions to the world&#39;s largest online software marketplace Envato Marketplace. We have developed more than 3 hundred online news portal on worldwide  & more than 3 hundred including Bangladesh. So far we have sold 3,000 software.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Position and human resources of ASK</strong></p>\r\n\r\n<p>ASK  has well-furnished office over 1200 sqft of land in Farmgate, Dhaka. Its location is 98-Green Road, Dhaka-1215. At present, more than 30 skilled workers are working in the organization. Most of the 18 software engineers. Besides, there is also a complete human resources system to provide standard technological facilities including Graphics and Web designer, Search Engine Optimizer, Online Marketer.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Services and Products of ASK</strong></p>\r\n\r\n<p>ASK is producing the necessary quality multifunctional software for the business organizations to meet the emerging technology demands. Besides, this company is offering various technological services including Custom Software Development, Web Development, Web Design, Graphics Design, SEO, Digital Marketing Services.</p>\r\n\r\n<p> </p>\r\n\r\n<p>ASK has a special project called \" <a href=\"http://sebaghar.com/\">Sebaghor</a> ” for making the online doctor appointment, getting medicine and disease information at any given time.It is  a digital media that is making important contributions to ensure digital healthcare by creating a relation between the patient and the doctor. This service is a cloud-based software service. Through which anyone can make appointments of registered doctors at any time by making profiles at any of the services, from anywhere in the world. Besides, people can save and share his lifetime medical records at any time. The service offers the most benefits to doctors. Because they can go close to a huge number of patients through online very easily. In order to ensure the highest healthcare, there is the facility of creating digital prescriptions, scheduling management, preserving all the information of patients, providing customer support services. \"Sebaghor\" is a digital healthcare platform dedicated to all patients.</p>\r\n\r\n<p> </p>\r\n\r\n<p>There is another very popular e-commerce service “ <a href=\"http://styledunea.com/\">Styledunea</a> ” of ASK, which is being managed by Mr. Tohidul Islam, he said, our goal is that people of the remote areas of Bangladesh would purchase any products according to their needs at a very short notice and purchase capacity. May We can send goods within 1-2 days to any corner of Bangladesh.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>ASK Software:</strong></p>\r\n\r\n<p>In addition to 18 custom software for daily business management of small and medium businesses, daily work management of healthcare organizations and other B2B business organizations, there is a rich portfolio of ASK with 10 different types of WordPress theme and template.</p>\r\n\r\n<p> </p>\r\n\r\n<p><a href=\"https://www.abcd.com/software-list.php\"><strong>ASK Software list</strong></a><strong> </strong></p>\r\n\r\n<p>1. <a href=\"https://www.abcd.com/hospital-management-system.php\">Hospital management system</a></p>\r\n\r\n<p>2. <a href=\"https://www.bdtask.com/doctor-appointment-system.php\">Doctor appointment & schedule management system</a></p>\r\n\r\n<p>3. <a href=\"https://www.bdtask.com/pharmacy-management-system.php\">Pharmacy management system</a></p>\r\n\r\n<p>4. Clinic management system</p>\r\n\r\n<p>5. Gynecology & OBS Consultation software</p>\r\n\r\n<p>6. Multi-hospital management system</p>\r\n\r\n<p>7.<a href=\"https://www.bdtask.com/inventory-management-system.php\"> Inventory management system</a></p>\r\n\r\n<p>8. <a href=\"https://www.bdtask.com/erp-software/\">ERP Software</a></p>\r\n\r\n<p>9. Human Resource Management system</p>\r\n\r\n<p>10. Online Exam system</p>\r\n\r\n<p>11. <a href=\"https://www.bdtask.com/newspaper-script/\">Online Newspaper System-News365</a></p>\r\n\r\n<p>12. Software for file sharing youtube download & blogging</p>\r\n\r\n<p>13. Easy Comment & review system</p>\r\n\r\n<p>14. Advanced E-Commerce Software</p>\r\n\r\n<p>15. <a href=\"https://www.bdtask.com/bus-reservation-system.php\">Online Bus Reservation System</a></p>\r\n\r\n<p>16. <a href=\"https://www.bdtask.com/vehicle-management-system.php\">Vehicle Management System</a></p>\r\n\r\n<p> </p>\r\n\r\n<p><a href=\"https://themeforest.net/user/bdtask/portfolio?sso=1&_ga=2.262430348.1652803851.1518670506-1567311266.1518670506\"><strong>BDTASK Theme and Plugin</strong></a></p>\r\n\r\n<p>1. <a href=\"https://www.bdtask.com/travel-wordpress-theme.php\">Tour & Travel WordPress Theme</a></p>\r\n\r\n<p>2.<a href=\"https://www.bdtask.com/newspaper-theme/\"> Newspaper WordPress Theme</a></p>\r\n\r\n<p>3. Wordpress theme for Resume or Portfolio</p>\r\n\r\n<p>4. Travel hotel booking HTML Template</p>\r\n\r\n<p>5. Multi-purpose HTML template for newspaper / blog, etc</p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p><a href=\"https://www.bdtask.com/service.php\"><strong>BDTASK Services:</strong></a></p>\r\n\r\n<p>In addition to software, BDTASK offers other custom services</p>\r\n\r\n<p>(1) News Portal Development</p>\r\n\r\n<p>(2) Website development</p>\r\n\r\n<p>(3) Wordpress Theme Development</p>\r\n\r\n<p>(4) Domain Hosting Services</p>\r\n\r\n<p>(5) Web Design Service</p>\r\n\r\n<p>(6) Graphics Design - Logo, Book Cover, Business Card, 3D Animation etc.</p>\r\n\r\n<p>(7) SEO and digital marketing services</p>\r\n\r\n<p>(8) Custom Software Development</p>\r\n\r\n<p> </p>\r\n\r\n<p>At the end, Bdtask always customer oriented Software Company.it develops Software & Website based on customer project requirements. Bdtask all employees are very dedicated to provide support to its honourable customers.</p>\r\n\r\n<p> </p>\r\n', '1519114488.jpg', '', 'Md Naeem Khan', 'Technology', '', '2018-02-20', '8', '1', 1519084800, '2018-02-20', '2018-02-20', '2018-02-20 10:49:47', 1, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_position`
--

CREATE TABLE `news_position` (
  `id` int(9) NOT NULL,
  `news_id` int(11) NOT NULL,
  `page` varchar(25) DEFAULT NULL,
  `position` int(2) DEFAULT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_position`
--

INSERT INTO `news_position` (`id`, `news_id`, `page`, `position`, `status`) VALUES
(30, 8, 'Editor-Choice', 2, 1),
(31, 7, 'Editor-Choice', 3, 1),
(32, 6, 'Editor-Choice', 4, 1),
(33, 5, 'Editor-Choice', 5, 1),
(34, 4, 'Editor-Choice', 6, 1),
(35, 3, 'Editor-Choice', 7, 1),
(36, 2, 'Editor-Choice', 8, 1),
(37, 9, 'Editor-Choice', 1, 1),
(340, 75, 'weekly-news', 2, 1),
(341, 74, 'weekly-news', 3, 1),
(342, 73, 'weekly-news', 4, 1),
(343, 72, 'weekly-news', 5, 1),
(344, 71, 'weekly-news', 6, 1),
(345, 76, 'weekly-news', 1, 1),
(350, 77, 'Video', 2, 1),
(351, 39, 'Video', 3, 1),
(352, 38, 'Video', 4, 1),
(353, 37, 'Video', 5, 1),
(354, 78, 'Video', 1, 1),
(361, 81, 'Food', 2, 1),
(362, 80, 'Food', 3, 1),
(363, 79, 'Food', 4, 1),
(364, 82, 'Food', 1, 1),
(450, 36, 'Politics', 2, 1),
(451, 35, 'Politics', 3, 1),
(452, 34, 'Politics', 4, 1),
(453, 33, 'Politics', 5, 1),
(454, 32, 'Politics', 6, 1),
(455, 31, 'Politics', 7, 1),
(456, 30, 'Politics', 8, 1),
(457, 29, 'Politics', 9, 1),
(458, 28, 'Politics', 10, 1),
(459, 96, 'Politics', 1, 1),
(585, 97, 'Business', 2, 1),
(586, 89, 'Business', 4, 1),
(587, 88, 'Business', 5, 1),
(588, 87, 'Business', 6, 1),
(589, 86, 'Business', 7, 1),
(590, 85, 'Business', 8, 1),
(591, 84, 'Business', 9, 1),
(592, 83, 'Business', 10, 1),
(593, 103, 'Business', 3, 1),
(822, 10, 'International', 15, 1),
(843, 106, 'International', 2, 1),
(1022, 111, 'Lifestyle', 2, 1),
(1023, 110, 'Lifestyle', 3, 1),
(1024, 56, 'Lifestyle', 4, 1),
(1025, 55, 'Lifestyle', 5, 1),
(1026, 54, 'Lifestyle', 6, 1),
(1027, 53, 'Lifestyle', 7, 1),
(1028, 52, 'Lifestyle', 8, 1),
(1029, 51, 'Lifestyle', 9, 1),
(1030, 50, 'Lifestyle', 10, 1),
(1031, 112, 'Lifestyle', 1, 1),
(1172, 114, 'Health', 2, 1),
(1173, 62, 'Health', 3, 1),
(1174, 61, 'Health', 4, 1),
(1175, 60, 'Health', 5, 1),
(1176, 59, 'Health', 6, 1),
(1177, 58, 'Health', 7, 1),
(1178, 57, 'Health', 8, 1),
(1179, 117, 'Health', 1, 1),
(1428, 125, 'Travel', 2, 1),
(1429, 100, 'Travel', 3, 1),
(1430, 49, 'Travel', 4, 1),
(1431, 48, 'Travel', 5, 1),
(1432, 47, 'Travel', 6, 1),
(1433, 46, 'Travel', 7, 1),
(1434, 45, 'Travel', 8, 1),
(1435, 44, 'Travel', 9, 1),
(1436, 43, 'Travel', 10, 1),
(1437, 42, 'Travel', 11, 1),
(1438, 41, 'Travel', 12, 1),
(1439, 40, 'Travel', 13, 1),
(1577, 2, 'home', 31, 1),
(1600, 10, 'home', 31, 1),
(1636, 105, 'International', 2, 1),
(1637, 107, 'International', 3, 1),
(1638, 104, 'International', 5, 1),
(1639, 93, 'International', 6, 1),
(1640, 95, 'International', 7, 0),
(1641, 99, 'International', 8, 1),
(1642, 18, 'International', 9, 1),
(1643, 17, 'International', 10, 1),
(1644, 16, 'International', 11, 1),
(1645, 15, 'International', 12, 1),
(1646, 14, 'International', 13, 1),
(1647, 13, 'International', 0, 1),
(1648, 12, 'International', 0, 1),
(1649, 127, 'International', 1, 1),
(1668, 105, 'home', 31, 1),
(1702, 108, 'home', 31, 1),
(1728, 110, 'home', 31, 1),
(1739, 111, 'home', 31, 1),
(1749, 118, 'Sports', 2, 1),
(1750, 116, 'Sports', 3, 1),
(1751, 115, 'Sports', 4, 1),
(1752, 70, 'Sports', 5, 1),
(1753, 101, 'Sports', 6, 1),
(1754, 69, 'Sports', 7, 1),
(1755, 68, 'Sports', 8, 1),
(1756, 67, 'Sports', 9, 1),
(1757, 66, 'Sports', 10, 1),
(1758, 65, 'Sports', 11, 1),
(1759, 64, 'Sports', 12, 1),
(1760, 63, 'Sports', 13, 1),
(1761, 128, 'Sports', 1, 1),
(1778, 112, 'home', 31, 1),
(1793, 113, 'home', 31, 1),
(1824, 114, 'home', 31, 1),
(1839, 116, 'home', 31, 1),
(1877, 107, 'home', 31, 1),
(1891, 106, 'home', 31, 1),
(1902, 120, 'home', 31, 1),
(1914, 104, 'home', 31, 1),
(1924, 121, 'home', 31, 1),
(1933, 100, 'home', 31, 1),
(1941, 122, 'home', 31, 1),
(1950, 99, 'home', 31, 1),
(1958, 123, 'home', 31, 1),
(1965, 103, 'home', 31, 1),
(2008, 95, 'home', 31, 1),
(2013, 125, 'home', 31, 1),
(2017, 94, 'home', 31, 1),
(2052, 90, 'world', 0, 1),
(2095, 91, 'world', 15, 1),
(2113, 92, 'world', 15, 1),
(2121, 109, 'science', 2, 1),
(2122, 25, 'science', 3, 1),
(2185, 108, 'world', 15, 1),
(2205, 113, 'world', 15, 1),
(2226, 27, 'Technology', 1, 1),
(2227, 102, 'Technology', 2, 1),
(2228, 26, 'Technology', 3, 1),
(2229, 24, 'Technology', 4, 1),
(2230, 23, 'Technology', 5, 1),
(2231, 22, 'Technology', 6, 1),
(2232, 21, 'Technology', 8, 1),
(2233, 20, 'Technology', 9, 1),
(2234, 19, 'Technology', 10, 1),
(2235, 133, 'Technology', 7, 1),
(2241, 127, 'home', 31, 1),
(2247, 132, 'world', 7, 1),
(2248, 131, 'world', 8, 1),
(2249, 130, 'world', 9, 1),
(2250, 129, 'world', 10, 1),
(2251, 124, 'world', 11, 1),
(2252, 123, 'world', 12, 1),
(2253, 122, 'world', 13, 1),
(2254, 121, 'world', 14, 1),
(2255, 120, 'world', 15, 1),
(2258, 132, 'home', 13, 1),
(2259, 131, 'home', 17, 1),
(2260, 130, 'home', 19, 1),
(2261, 129, 'home', 22, 1),
(2262, 128, 'home', 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_routing`
--

CREATE TABLE `news_routing` (
  `news_id` varchar(50) NOT NULL DEFAULT '',
  `table_name` text,
  `routing_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `title` text,
  `page_slug` text,
  `description` longtext,
  `image_id` varchar(100) DEFAULT NULL,
  `galary_id` int(11) DEFAULT NULL,
  `video_url` varchar(100) DEFAULT NULL,
  `publishar_id` int(11) DEFAULT NULL,
  `seo_keyword` text,
  `seo_description` text,
  `publish_date` datetime DEFAULT NULL,
  `reader_view` int(11) DEFAULT NULL,
  `releted_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `page_slug`, `description`, `image_id`, `galary_id`, `video_url`, `publishar_id`, `seo_keyword`, `seo_description`, `publish_date`, `reader_view`, `releted_id`, `status`) VALUES
(1, 'ABOUT US', 'About-us', '<div>\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n', './uploads/page_img/148292.png', NULL, '', 1, '', '', '2017-02-28 04:02:16', NULL, '', 1),
(2, 'PRIVACY POLICY', 'PRIVACY-POLICY', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', './uploads/page_img/1482921.png', NULL, '', 1, 'privacy', 'Lorem Ipsum is simply dummy text of the', '2017-02-28 04:02:29', NULL, NULL, 1),
(3, 'TERMS OF USE', 'TERMS-OF', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', './uploads/page_img/1482922.png', NULL, '', 1, 'TERMS,use', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '2017-02-28 04:02:43', NULL, NULL, 1),
(4, 'Report News', 'Report-News', '<p>asddf dfsfs</p>\r\n', './uploads/page_img/hfw110.jpg', NULL, '', 1, '', '', '2017-08-16 10:08:17', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photo_library`
--

CREATE TABLE `photo_library` (
  `id` int(9) NOT NULL,
  `actual_image_name` varchar(35) NOT NULL,
  `picture_name` varchar(35) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `category` int(2) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photo_library`
--

INSERT INTO `photo_library` (`id`, `actual_image_name`, `picture_name`, `title`, `category`, `time_stamp`, `status`) VALUES
(1, '1488182295.jpg', 'pink', NULL, NULL, 2017, NULL),
(2, '1488186296.jpg', 'DFGDS', NULL, NULL, 2017, NULL),
(3, '1488186420.jpg', 'dfe', NULL, NULL, 2017, NULL),
(4, '1488188781.jpg', 'wf', NULL, NULL, 2017, NULL),
(5, '1488188781.jpg', 'fdggf', NULL, NULL, 2017, NULL),
(6, '1488190861.jpg', 'nature', NULL, NULL, 2017, NULL),
(7, '1488190967.jpg', 'water', NULL, NULL, 2017, NULL),
(8, '1488191065.jpg', 'woman', NULL, NULL, 2017, NULL),
(9, '1488191255.jpg', 'ride', NULL, NULL, 2017, NULL),
(10, '1488191381.jpg', 'sports', NULL, NULL, 2017, NULL),
(11, '1488202856.jpeg', '2', NULL, NULL, 2017, NULL),
(12, '1502281156.jpg', 'ddd', NULL, NULL, 2017, NULL),
(13, '1502281210.jpg', 'ss', NULL, NULL, 2017, NULL),
(14, '1502281248.jpg', 'ddd', NULL, NULL, 2017, NULL),
(15, '1502281330.jpg', 'ss', NULL, NULL, 2017, NULL),
(16, '1502605768.jpg', 'ss', NULL, NULL, 2017, NULL),
(17, '1502605863.jpg', 'ss', NULL, NULL, 2017, NULL),
(18, '1502605956.jpeg', 'ss', NULL, NULL, 2017, NULL),
(19, '1502610976.jpg', 'ddd', NULL, NULL, 2017, NULL),
(20, '1502611107.jpeg', 'ddd', NULL, NULL, 2017, NULL),
(21, '1502611500.jpeg', 'ddd', NULL, NULL, 2017, NULL),
(22, '1502611810.jpg', 'ddd', NULL, NULL, 2017, NULL),
(23, '', 'ddd', NULL, NULL, 2017, NULL),
(24, '1502612931.jpg', 'ddd', NULL, NULL, 2017, NULL),
(25, '1502613172.jpg', 'ddd', NULL, NULL, 2017, NULL),
(26, '1502614413.jpg', 'ddd', NULL, NULL, 2017, NULL),
(27, '1502615650.jpg', 'ddd', NULL, NULL, 2017, NULL),
(28, '1502615948.jpeg', 'ddd', NULL, NULL, 2017, NULL),
(29, '1502616485.jpeg', 'ddd', NULL, NULL, 2017, NULL),
(30, '1502616646.jpeg', 'ddd', NULL, NULL, 2017, NULL),
(31, '1502617078.jpeg', 'ddd', NULL, NULL, 2017, NULL),
(34, '1502617895.jpg', 'ddd', NULL, NULL, 2017, NULL),
(35, '1502877208.jpg', 'china india', NULL, NULL, 2017, NULL),
(36, '1502950871.PNG', 'series', NULL, NULL, 2017, NULL),
(37, '', '353', NULL, NULL, 2017, NULL),
(38, '1513074964.jpg', '353', NULL, NULL, 2017, NULL),
(39, '1513080111.jpg', 'test', NULL, NULL, 2017, NULL),
(40, '', 'test', NULL, NULL, 2017, NULL),
(48, '1518604562.jpg', 'world', NULL, NULL, 2018, NULL),
(49, '1518604875.jpeg', 'world', NULL, NULL, 2018, NULL),
(50, '1518607650.jpg', 'world', NULL, NULL, 2018, NULL),
(51, '1518859535.jpg', 'world', NULL, NULL, 2018, NULL),
(52, '1518859675.jpeg', 'world', NULL, NULL, 2018, NULL),
(53, '1518860490.jpg', 'world', NULL, NULL, 2018, NULL),
(54, '1519114488.jpg', 'bdtask news', NULL, NULL, 2018, NULL),
(55, '1518860490.jpg', 'ggg', NULL, NULL, 2018, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_seo_onpage`
--

CREATE TABLE `post_seo_onpage` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_seo_onpage`
--

INSERT INTO `post_seo_onpage` (`id`, `news_id`, `meta_keyword`, `meta_description`) VALUES
(1, 93, 'centuries,survived,dummy', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially.'),
(2, 95, 'sfds,d,fs', 'sdfsdfsd'),
(3, 97, 'nature,student,spor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(4, 99, 'water', 'Lorem Ipsum is simply dummy text of the printing and typesetting'),
(5, 100, 'woman,home', 'Lorem Ipsum is simply dummy text of the printing'),
(6, 101, 'ride,cycle', 'Lorem Ipsum is simply dummy text of the'),
(7, 102, 'business,sports', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(8, 132, 'test.,test2', ''),
(9, 133, 'bd,software company,best software company,best software company in bangladesh,custom software development company in the world', ' is a most creative Software company in the World'),
(10, 133, 'bd,software company,best software company,best software company in bangladesh,custom software development company in the world', ' is a most creative Software company in the World'),
(11, 141, 'home,data,soft', 'demo');

-- --------------------------------------------------------

--
-- Table structure for table `pulling`
--

CREATE TABLE `pulling` (
  `id` int(9) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `yes` int(5) DEFAULT NULL,
  `no` int(5) DEFAULT NULL,
  `on_comment` int(5) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pulling`
--

INSERT INTO `pulling` (`id`, `question`, `yes`, `no`, `on_comment`, `time_stamp`, `status`) VALUES
(3, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin', 1, 0, 0, 1518610147, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reporter_post_news_info`
--

CREATE TABLE `reporter_post_news_info` (
  `id` int(9) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `page` varchar(35) DEFAULT NULL,
  `page_position` int(11) NOT NULL,
  `home_position` int(11) NOT NULL DEFAULT '-1',
  `reporter_id` varchar(35) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `event` text NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `event`, `details`) VALUES
(3, 'lang_settings', '{\"latest_news\":\"LATEST NEWS\",\"most_read\":\"MOST POPULAR\",\"whole_country\":\"Whole Country\",\"headline\":\"Headline\",\"home\":\"HOME\",\"such_more_news\":\"Related News\",\"details\":\"Read More\"}'),
(4, 'home_page_cat_style', '{\"1\":{\"cat_name\":\"TECHNOLOGY\",\"slug\":\"Technology\",\"max_news\":\"5\",\"category_id\":\"4\",\"status\":\"1\"},\"2\":{\"cat_name\":\"POLITICS\",\"slug\":\"Politics\",\"max_news\":\"5\",\"category_id\":\"8\",\"status\":\"1\"},\"3\":{\"cat_name\":\"VIDEO\",\"slug\":\"Video\",\"max_news\":\"5\",\"category_id\":\"7\",\"status\":\"1\"},\"4\":{\"cat_name\":\"International\",\"slug\":\"International\",\"max_news\":\"5\",\"category_id\":\"16\",\"status\":\"1\"},\"5\":{\"cat_name\":\"HEALTH\",\"slug\":\"Health\",\"max_news\":\"5\",\"category_id\":\"14\",\"status\":\"1\"},\"6\":{\"cat_name\":\"LIFESTYLE\",\"slug\":\"Lifestyle\",\"max_news\":\"5\",\"category_id\":\"5\",\"status\":\"1\"},\"7\":{\"cat_name\":\"TRAVEL\",\"slug\":\"Travel\",\"max_news\":\"5\",\"category_id\":\"2\",\"status\":\"1\"},\"8\":{\"cat_name\":\"SPORTS\",\"slug\":\"Sports\",\"max_news\":\"5\",\"category_id\":\"13\",\"status\":\"1\"},\"9\":{\"cat_name\":\"WORLD\",\"slug\":\"world\",\"max_news\":\"5\",\"category_id\":\"10\",\"status\":\"1\"},\"10\":{\"cat_name\":\"POLITICS\",\"slug\":\"Politics\",\"max_news\":\"5\",\"category_id\":\"8\",\"status\":\"1\"},\"11\":{\"cat_name\":\"EDITOR CHOICE\",\"slug\":\"Editor-Choice\",\"max_news\":\"5\",\"category_id\":\"6\",\"status\":\"1\"},\"12\":{\"cat_name\":\"SCIENCE\",\"slug\":\"science\",\"max_news\":\"5\",\"category_id\":\"11\",\"status\":\"1\"},\"14\":{\"cat_name\":\"BUSINESS\",\"slug\":\"Business\",\"max_news\":\"5\",\"category_id\":\"12\",\"status\":\"1\"},\"15\":{\"cat_name\":\"FOOD\",\"slug\":\"Food\",\"max_news\":\"5\",\"category_id\":\"3\",\"status\":\"1\"},\"13\":{\"cat_name\":\"POLITICS\",\"slug\":\"Politics\",\"max_news\":\"5\",\"category_id\":\"8\",\"status\":\"1\"}}'),
(5, 'analytics_code', ''),
(6, 'social_sites', '{\"fb\":{\"URL\":\"                                                                                                                                                                                                <div class=\\\"fb-page\\\" data-href=\\\"https:\\/\\/www.facebook.com\\/bdtaskteam\\/?ref=br_rs\\\" data-tabs=\\\"timeline\\\" data-height=\\\"300\\\" data-small-header=\\\"false\\\" data-adapt-container-width=\\\"true\\\" data-hide-cover=\\\"false\\\" data-show-facepile=\\\"true\\\"><blockquote cite=\\\"https:\\/\\/www.facebook.com\\/bdtaskteam\\/?ref=br_rs\\\" class=\\\"fb-xfbml-parse-ignore\\\"><a href=\\\"https:\\/\\/www.facebook.com\\/bdtaskteam\\/?ref=br_rs\\\">Bdtask<\\/a><\\/blockquote><\\/div>                                                                                                                                                                        \",\"h_p\":\"1\",\"c_p\":\"1\",\"d_p\":\"1\"},\"tw\":{\"URL\":\"                                                                                                                                                                                                  <a class=\\\"twitter-timeline\\\" data-height=\\\"280\\\" data-dnt=\\\"true\\\" href=\\\"https:\\/\\/twitter.com\\/TwitterDev\\\">Tweets by TwitterDev<\\/a> <script async src=\\\"\\/\\/platform.twitter.com\\/widgets.js\\\" charset=\\\"utf-8\\\"><\\/script>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      \",\"h_p\":\"1\",\"c_p\":\"1\",\"d_p\":\"1\"},\"gplus\":{\"URL\":\"\",\"c_p\":\"1\",\"d_p\":\"1\"},\"ln\":{\"URL\":\"                                                                                                                                                                                                                                                                                                                                                                                                                                               \",\"c_p\":\"1\",\"d_p\":\"1\"}}'),
(7, 'comments_code', ''),
(8, 'user_analytics', '{\"user_analytics\":\"inactive\"}'),
(10, 'fixed_keyword', ''),
(11, 'alexa_code', ''),
(12, 'website_title', '{\"website_title\":\"Demo Newspaper\"}'),
(13, 'website_footer', '{\"website_footer\":\"14L.E Goulburn St, Sydney 2000NSW Tell: 01922296392 Email: bdk@gmail.com | Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain  toil and pain\",\"copy_right\":\"<p><a href=\'http:\\/\\/bask.com\\/\' class=\'color-1\'>abcd<\\/a> Theme | All right Reserved 2016<\\/p>\"}'),
(14, 'website_logo', '{\"website_logo\":\"uploads\\/images\\/logo.png\"}'),
(15, 'website_favicon', '{\"website_favicon\":\"uploads\\/images\\/favicon.png\"}'),
(16, 'default_theme', '{\"default_theme\":\"News365-Modern\"}'),
(17, 'website_timezone', '{\"website_timezone\":\"Asia\\/Dhaka\"}'),
(18, 'prayer_time', '{\"prayer_time\":\"\"}'),
(111, 'social_link', '{\"fb\":\"https:\\/\\/www.facebook.com\\/\",\"tw\":\"https:\\/\\/twitter.com\\/\",\"linkd\":\"https:\\/\\/plus.google.com\\/\",\"google\":\"https:\\/\\/plus.google.com\\/\",\"pin\":\"https:\\/\\/au.pinterest.com\\/\",\"vimo\":\"https:\\/\\/vimeo.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/?gl=CO&hl=es-419\",\"flickr\":\"https:\\/\\/www.flickr.com\\/\",\"vk\":\"https:\\/\\/vk.com\\/\",\"save1\":\"Update\"}'),
(112, 'footer_logo', '{\"footer_logo\":\"uploads\\/images\\/footer_logo.png\"}'),
(113, 'contact_page_setup', '{\"content\":\"                                                                                                                                                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br\\/> Lorem Ipsum has been the industry\'s standard dummy text ever         sssssss   s                                                                                                                                 \",\"address\":\"     14L.E Goulburn St,     <br\\/>Sydney 2000NSWssssssss\",\"phone\":\"+8801620214460\",\"phone_two\":\"+8801821450144\",\"email\":\"bdk@gmail.com\",\"website\":\"www.companyweb.com\",\"googlemap\":\"                                                                                                                                                                        <iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m23!1m12!1m3!1d58403.685586307096!2d90.377498600828!3d23.81040657382374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3755b8b087026b81%3A0x8fa563bbdd5904c2!2z4Kai4Ka-4KaV4Ka-!3m2!1d23.810332!2d90.4125181!5e0!3m2!1sbn!2sbd!4v1477485026665\\\" width=\\\"100%\\\" height=\\\"300\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen><\\/iframe>                                                                                                                                            \",\"save1\":\"Update\"}');

-- --------------------------------------------------------

--
-- Table structure for table `social_auth`
--

CREATE TABLE `social_auth` (
  `id` int(11) NOT NULL,
  `name` text,
  `app_id` text,
  `app_secret` text,
  `api_key` text,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_auth`
--

INSERT INTO `social_auth` (`id`, `name`, `app_id`, `app_secret`, `api_key`, `status`) VALUES
(1, 'facebook', '493761004294417', 'f300ac96772fd89adbf417fbdb6ef77c', '', 1),
(2, 'googleplus', '39648987978-9pj8230slkn3qf50est5a2nsd0eictpj.apps.googleusercontent.com', 'M9J__-v3kbAZK6-UUw8oq8vh', 'AIzaSyCOUwQA-jnpUYAaQZFBbm2BpbqyUQPmEf0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subs_id` int(11) NOT NULL,
  `name` text,
  `email` varchar(111) DEFAULT NULL,
  `phone` varchar(111) DEFAULT NULL,
  `category` text,
  `frequency` int(11) DEFAULT NULL,
  `number_of_news` varchar(111) DEFAULT NULL,
  `subs_auth_code` int(11) NOT NULL,
  `payment_status` int(11) DEFAULT '1',
  `social_sheare` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subs_id`, `name`, `email`, `phone`, `category`, `frequency`, `number_of_news`, `subs_auth_code`, `payment_status`, `social_sheare`) VALUES
(1, 'MOST HAMIDA AKTER', 'hamidaakter@gmail.com', '2154666962', '[\"International\",\"Travel\",\"Food\",\"Lifestyle\"]', 1, '4', 0, 1, 1),
(2, 'MItali akter ddd', 'makter@gmail.com', '232342342345', '[\"International\",\"Travel\",\"Food\",\"Technology\"]', 1, '12', 0, 1, 1),
(3, 'NURI AKTER', 'doctor@sebaghar.com', '45456456456456', '[\"Travel\",\"Food\",\"Technology\",\"Lifestyle\",\"Editor-Choice\",\"Video\",\"Politics\"]', 30, '4', 0, 1, 1),
(4, 'ithome', 'ye@ymail.com', '51651516', '[\"Travel\"]', 1, '2', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `temp_news`
--

CREATE TABLE `temp_news` (
  `id` int(9) UNSIGNED NOT NULL,
  `news_id` int(11) NOT NULL,
  `stitle` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `news` text NOT NULL,
  `image` varchar(56) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `reporter` varchar(56) DEFAULT NULL,
  `page` varchar(56) DEFAULT NULL,
  `post_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `time_stamp` int(15) DEFAULT NULL,
  `post_date` varchar(20) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL COMMENT '1=not published, 2=published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_analiytics`
--

CREATE TABLE `user_analiytics` (
  `id` int(11) NOT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `country` text,
  `city` text,
  `link` text,
  `news_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `browser` text,
  `session` text,
  `device` varchar(250) DEFAULT NULL,
  `keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(9) UNSIGNED NOT NULL,
  `email` varchar(35) NOT NULL,
  `mobile` varchar(35) DEFAULT NULL,
  `transaction` varchar(35) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `pen_name` varchar(35) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `blood` varchar(20) DEFAULT NULL,
  `birth_date` varchar(100) DEFAULT NULL,
  `photo` varchar(300) DEFAULT NULL,
  `address_one` text,
  `address_two` text,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `verification_id_no` varchar(100) DEFAULT NULL,
  `verification_type` varchar(100) DEFAULT NULL,
  `user_type` int(25) DEFAULT NULL,
  `login_time` int(25) DEFAULT NULL,
  `logout_time` int(25) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `post_ap_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `email`, `mobile`, `transaction`, `password`, `name`, `pen_name`, `sex`, `blood`, `birth_date`, `photo`, `address_one`, `address_two`, `city`, `state`, `country`, `zip`, `verification_id_no`, `verification_type`, `user_type`, `login_time`, `logout_time`, `ip`, `status`, `post_ap_status`) VALUES
(1, 'administrator@gmail.com', '01751194212', '12345678952', 'e10adc3949ba59abbe56e057f20f883e', 'Md Tuhin', 'Tuhin', 'male', 'O+', '13-11-2016', './uploads/user/Man.png', '98 Green Road', 'Farmgate', 'Dhaka', 'Dhaka', 'Bangladesh', '1215', 'Just write here your id if you want', '', 3, NULL, 1518881081, NULL, 1, 1),
(8, 'admin@gmail.com', '1234234234', '', 'e10adc3949ba59abbe56e057f20f883e', 'Md Naeem Khan 1', 'Naeem', NULL, '', '', './uploads/user/Man2.png', '', '', '', '', '', '', '', '', 4, NULL, 1518634442, NULL, 1, 0),
(9, 'writer@gmail.com', '1242543453456', '', 'e10adc3949ba59abbe56e057f20f883e', 'Md Jahangir alom', NULL, NULL, NULL, NULL, './uploads/user/Man1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1518634473, NULL, 1, 0),
(10, 'moderator@gmail.com', '123456234234', '', 'e10adc3949ba59abbe56e057f20f883e', 'Md Alamin', 'Alamin', NULL, '', '', './uploads/user/user2.png', '', '', '', '', '', '', '', '', 1, NULL, 1518866406, NULL, 1, 0),
(13, 'villageboy.cst@gmail.com', NULL, '', '7da2b629f3e5f74230234dc002791df1', 'পড়ন্ত বিকেল', 'পড়ন্ত বিকেল', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 2018, NULL, 1, 0),
(15, 'sumon@gmail.com', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', 'Sumon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 1518532102, NULL, 1, 0),
(16, 'ss@gmail.com', NULL, '', '827ccb0eea8a706c4c34a16891f84e7b', 'sss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 1, 0),
(17, 'aa@gmail.com', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 1, 0),
(20, 'moderator1@gmail.com', '123456234234', '', 'e10adc3949ba59abbe56e057f20f883e', 'moderaton1', NULL, NULL, NULL, NULL, 'uploads/user/00d7495dc24a21d2e2a9c449f8fff7bd.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1518613391, NULL, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_s`
--
ALTER TABLE `ad_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breaking_news`
--
ALTER TABLE `breaking_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments_info`
--
ALTER TABLE `comments_info`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lg_setting`
--
ALTER TABLE `lg_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `max_archive_settings`
--
ALTER TABLE `max_archive_settings`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_content`
--
ALTER TABLE `menu_content`
  ADD PRIMARY KEY (`menu_content_id`);

--
-- Indexes for table `news_archive`
--
ALTER TABLE `news_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_mst`
--
ALTER TABLE `news_mst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_position`
--
ALTER TABLE `news_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_routing`
--
ALTER TABLE `news_routing`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `photo_library`
--
ALTER TABLE `photo_library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_seo_onpage`
--
ALTER TABLE `post_seo_onpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pulling`
--
ALTER TABLE `pulling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reporter_post_news_info`
--
ALTER TABLE `reporter_post_news_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_auth`
--
ALTER TABLE `social_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `temp_news`
--
ALTER TABLE `temp_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_analiytics`
--
ALTER TABLE `user_analiytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_s`
--
ALTER TABLE `ad_s`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `breaking_news`
--
ALTER TABLE `breaking_news`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comments_info`
--
ALTER TABLE `comments_info`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `lg_setting`
--
ALTER TABLE `lg_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu_content`
--
ALTER TABLE `menu_content`
  MODIFY `menu_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `news_archive`
--
ALTER TABLE `news_archive`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_mst`
--
ALTER TABLE `news_mst`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `news_position`
--
ALTER TABLE `news_position`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2263;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `photo_library`
--
ALTER TABLE `photo_library`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `post_seo_onpage`
--
ALTER TABLE `post_seo_onpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pulling`
--
ALTER TABLE `pulling`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reporter_post_news_info`
--
ALTER TABLE `reporter_post_news_info`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth`
--
ALTER TABLE `social_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp_news`
--
ALTER TABLE `temp_news`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_analiytics`
--
ALTER TABLE `user_analiytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
