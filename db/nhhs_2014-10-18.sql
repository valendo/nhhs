-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 17, 2014 at 06:37 PM
-- Server version: 5.6.20
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nhhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip_administrator`
--

CREATE TABLE IF NOT EXISTS `ip_administrator` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `hash` text NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `resetSecret` varchar(32) DEFAULT NULL,
  `resetTime` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_administrator`
--

INSERT INTO `ip_administrator` (`id`, `username`, `hash`, `email`, `resetSecret`, `resetTime`) VALUES
(1, 'admin', '$P$BJED6CGJyM9Vkbfsmq7.qzIWNjluBM.', 'vothanhtai86@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_email_queue`
--

CREATE TABLE IF NOT EXISTS `ip_email_queue` (
`id` int(11) NOT NULL,
  `email` mediumtext NOT NULL,
  `to` varchar(255) NOT NULL,
  `toName` varchar(255) DEFAULT NULL,
  `from` varchar(255) NOT NULL,
  `fromName` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `immediate` tinyint(1) NOT NULL DEFAULT '0',
  `html` tinyint(1) NOT NULL,
  `send` timestamp NULL DEFAULT NULL,
  `lock` varchar(32) DEFAULT NULL,
  `lockedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `files` mediumtext,
  `fileNames` mediumtext,
  `fileMimeTypes` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_gridExample`
--

CREATE TABLE IF NOT EXISTS `ip_gridExample` (
`id` int(11) NOT NULL,
  `personOrder` double DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `DateModified` date DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Url` varchar(255) DEFAULT NULL,
  `Comment` text,
  `Enabled` tinyint(1) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_gridExample`
--

INSERT INTO `ip_gridExample` (`id`, `personOrder`, `FirstName`, `LastName`, `Sex`, `DateModified`, `Phone`, `Email`, `Url`, `Comment`, `Enabled`, `cv`) VALUES
(1, 1, 'tai', 'vo', 'male', NULL, '23535', 'test@test.com', 'www.abc.no', 'ssg', 1, NULL),
(2, 0, 'hello', 'world', 'female', NULL, '', '', '', '', 0, NULL),
(3, -1, 'Cate5', 'cate6', 'female', NULL, '', '', '', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_inline_value_global`
--

CREATE TABLE IF NOT EXISTS `ip_inline_value_global` (
  `plugin` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_inline_value_language`
--

CREATE TABLE IF NOT EXISTS `ip_inline_value_language` (
  `plugin` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `languageId` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_inline_value_page`
--

CREATE TABLE IF NOT EXISTS `ip_inline_value_page` (
  `plugin` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `pageId` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_language`
--

CREATE TABLE IF NOT EXISTS `ip_language` (
`id` int(11) NOT NULL,
  `abbreviation` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `languageOrder` double NOT NULL DEFAULT '0',
  `isVisible` int(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL,
  `textDirection` varchar(10) NOT NULL DEFAULT 'ltr'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_language`
--

INSERT INTO `ip_language` (`id`, `abbreviation`, `title`, `languageOrder`, `isVisible`, `url`, `code`, `textDirection`) VALUES
(1, 'VI', 'Vietnamese', 2, 1, '', 'vi', 'ltr');

-- --------------------------------------------------------

--
-- Table structure for table `ip_log`
--

CREATE TABLE IF NOT EXISTS `ip_log` (
`id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `context` mediumtext
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_log`
--

INSERT INTO `ip_log` (`id`, `time`, `level`, `message`, `context`) VALUES
(1, '2014-10-13 14:00:59', 'info', 'Admin.loggedIn: {username} from {ip}', '{"username":"admin","ip":"::1"}'),
(2, '2014-10-13 14:01:03', 'info', 'Cron.started', '{"firstTimeThisYear":true,"firstTimeThisMonth":true,"firstTimeThisWeek":true,"firstTimeThisDay":true,"firstTimeThisHour":true,"lastTime":null,"test":null}'),
(3, '2014-10-13 14:01:07', 'info', 'Cron.finished', '[]'),
(4, '2014-10-13 14:03:39', 'info', 'Admin.loggedIn: {username} from {ip}', '{"username":"admin","ip":"::1"}'),
(5, '2014-10-15 14:27:31', 'info', 'Cron.started', '{"firstTimeThisYear":false,"firstTimeThisMonth":false,"firstTimeThisWeek":true,"firstTimeThisDay":true,"firstTimeThisHour":true,"lastTime":1413208867,"test":null}'),
(6, '2014-10-15 14:27:35', 'info', 'Cron.finished', '[]'),
(7, '2014-10-15 14:34:03', 'info', 'Admin.loggedIn: {username} from {ip}', '{"username":"admin","ip":"::1"}'),
(8, '2014-10-15 14:37:35', 'info', 'Admin.loggedIn: {username} from {ip}', '{"username":"admin","ip":"::1"}'),
(9, '2014-10-15 15:00:02', 'info', 'Cron.started', '{"firstTimeThisYear":false,"firstTimeThisMonth":false,"firstTimeThisWeek":false,"firstTimeThisDay":false,"firstTimeThisHour":true,"lastTime":1413383255,"test":null}'),
(10, '2014-10-15 15:00:02', 'info', 'Cron.finished', '[]'),
(11, '2014-10-15 15:05:07', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"AsdSlider","version":"1.00"}'),
(12, '2014-10-15 15:17:46', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"AsdBlog","version":"1.00"}'),
(13, '2014-10-17 15:50:50', 'info', 'Cron.started', '{"firstTimeThisYear":false,"firstTimeThisMonth":false,"firstTimeThisWeek":true,"firstTimeThisDay":true,"firstTimeThisHour":true,"lastTime":1413385202,"test":null}'),
(14, '2014-10-17 15:50:54', 'info', 'Cron.finished', '[]'),
(15, '2014-10-17 16:02:55', 'info', 'Cron.started', '{"firstTimeThisYear":false,"firstTimeThisMonth":false,"firstTimeThisWeek":false,"firstTimeThisDay":false,"firstTimeThisHour":true,"lastTime":1413561054,"test":null}'),
(16, '2014-10-17 16:02:55', 'info', 'Cron.finished', '[]'),
(17, '2014-10-17 16:08:16', 'info', 'Admin.loggedIn: {username} from {ip}', '{"username":"admin","ip":"::1"}'),
(18, '2014-10-17 16:08:41', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"Product","version":"1.00"}'),
(19, '2014-10-17 16:19:29', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"GridExample","version":"1.00"}'),
(20, '2014-10-17 16:20:12', 'info', 'Ip.pluginDeactivated: {plugin} {version} deactivated.', '{"plugin":"Product","version":"1.00"}'),
(21, '2014-10-17 16:20:18', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"Product","version":"1.00"}'),
(22, '2014-10-17 16:23:27', 'info', 'Ip.pluginDeactivated: {plugin} {version} deactivated.', '{"plugin":"Product","version":"1.00"}'),
(23, '2014-10-17 16:23:34', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"Product","version":"1.00"}'),
(24, '2014-10-17 16:24:32', 'info', 'Ip.pluginDeactivated: {plugin} {version} deactivated.', '{"plugin":"Product","version":"1.00"}'),
(25, '2014-10-17 16:24:37', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"Product","version":"1.00"}'),
(26, '2014-10-17 16:24:47', 'info', 'Ip.pluginDeactivated: {plugin} {version} deactivated.', '{"plugin":"Product","version":"1.00"}'),
(27, '2014-10-17 16:25:28', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"Products","version":"1"}'),
(28, '2014-10-17 16:26:45', 'info', 'Ip.pluginDeactivated: {plugin} {version} deactivated.', '{"plugin":"Products","version":"1.00"}'),
(29, '2014-10-17 16:27:43', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"Products","version":"1"}'),
(30, '2014-10-17 16:28:30', 'info', 'Ip.pluginDeactivated: {plugin} {version} deactivated.', '{"plugin":"Products","version":"1.00"}'),
(31, '2014-10-17 16:28:44', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"GridExample1","version":"1"}'),
(32, '2014-10-17 16:29:03', 'info', 'Ip.pluginDeactivated: {plugin} {version} deactivated.', '{"plugin":"GridExample1","version":"1.00"}'),
(33, '2014-10-17 16:31:21', 'info', 'Ip.pluginActivated: {plugin} {version} activated.', '{"plugin":"Products","version":"1.00"}'),
(34, '2014-10-17 17:00:02', 'info', 'Cron.started', '{"firstTimeThisYear":false,"firstTimeThisMonth":false,"firstTimeThisWeek":true,"firstTimeThisDay":true,"firstTimeThisHour":true,"lastTime":1413561775,"test":null}'),
(35, '2014-10-17 17:00:05', 'info', 'Cron.finished', '[]'),
(36, '2014-10-17 17:06:43', 'error', 'Notice: Undefined index: parentID in {file}:{line}', '{"file":"D:\\\\AMPPS\\\\www\\\\nhhs\\\\Ip\\\\Internal\\\\Grid\\\\Model\\\\Field\\\\Select.php","line":38}'),
(37, '2014-10-17 17:07:10', 'error', 'Notice: Undefined index: parentID in {file}:{line}', '{"file":"D:\\\\AMPPS\\\\www\\\\nhhs\\\\Ip\\\\Internal\\\\Grid\\\\Model\\\\Field\\\\Select.php","line":38}'),
(38, '2014-10-17 17:07:27', 'error', 'Notice: Undefined index: parentID in {file}:{line}', '{"file":"D:\\\\AMPPS\\\\www\\\\nhhs\\\\Ip\\\\Internal\\\\Grid\\\\Model\\\\Field\\\\Select.php","line":38}'),
(39, '2014-10-17 17:08:00', 'error', 'Notice: Undefined index: parentID in {file}:{line}', '{"file":"D:\\\\AMPPS\\\\www\\\\nhhs\\\\Ip\\\\Internal\\\\Grid\\\\Model\\\\Field\\\\Select.php","line":38}'),
(40, '2014-10-17 17:22:56', 'error', 'Notice: Undefined variable: config in {file}:{line}', '{"file":"D:\\\\AMPPS\\\\www\\\\nhhs\\\\Plugin\\\\Products\\\\AdminController.php","line":79}'),
(41, '2014-10-17 17:22:58', 'error', 'Notice: Undefined variable: config in {file}:{line}', '{"file":"D:\\\\AMPPS\\\\www\\\\nhhs\\\\Plugin\\\\Products\\\\AdminController.php","line":79}');

-- --------------------------------------------------------

--
-- Table structure for table `ip_page`
--

CREATE TABLE IF NOT EXISTS `ip_page` (
`id` int(11) NOT NULL,
  `languageCode` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `urlPath` varchar(140) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `pageOrder` double NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `metaTitle` mediumtext,
  `keywords` mediumtext,
  `description` mediumtext,
  `type` varchar(255) NOT NULL DEFAULT 'default',
  `alias` varchar(255) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `redirectUrl` varchar(255) DEFAULT NULL,
  `isVisible` tinyint(1) NOT NULL DEFAULT '0',
  `isDisabled` tinyint(1) NOT NULL DEFAULT '0',
  `isSecured` tinyint(1) NOT NULL DEFAULT '0',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `isBlank` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Open page in new window',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_page`
--

INSERT INTO `ip_page` (`id`, `languageCode`, `urlPath`, `parentId`, `pageOrder`, `title`, `metaTitle`, `keywords`, `description`, `type`, `alias`, `layout`, `redirectUrl`, `isVisible`, `isDisabled`, `isSecured`, `isDeleted`, `isBlank`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'vi', NULL, 0, 0, 'Menu1', NULL, NULL, NULL, 'default', 'menu1', 'main.php', NULL, 1, 0, 0, 0, 0, '2014-10-15 14:37:13', '2014-10-13 14:00:56', NULL),
(2, 'vi', NULL, 0, 1, 'Menu2', NULL, NULL, NULL, 'default', 'menu2', 'main.php', NULL, 1, 0, 0, 0, 0, '2014-10-15 14:37:13', '2014-10-13 14:00:56', NULL),
(3, 'vi', NULL, 0, 2, 'Menu3', NULL, NULL, NULL, 'default', 'menu3', 'main.php', NULL, 1, 0, 0, 0, 0, '2014-10-15 14:37:13', '2014-10-13 14:00:56', NULL),
(4, 'vi', '', 1, 0, 'Trang chủ', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-15 15:01:36', '2014-10-14 17:00:00', NULL),
(5, 'vi', 'gioi-thieu', 1, 1, 'Giới thiệu', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-15 14:39:23', '2014-10-12 17:00:00', NULL),
(6, 'vi', 'de-nui-ninh-binh-khai-vi', 2, 0, 'DÊ NÚI NINH BÌNH KHAI VỊ', '', '', '', 'default', '', NULL, '', 1, 0, 0, 1, 0, '2014-10-15 14:51:49', '2014-10-12 17:00:00', '2014-10-15 14:51:49'),
(7, 'vi', 'page2', 2, 1, 'Page2', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 1, 0, '2014-10-15 14:51:53', '2014-10-13 14:00:56', '2014-10-15 14:51:53'),
(8, 'vi', 'example1', 3, 0, 'Example 1', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 14:37:13', '2014-10-13 14:00:56', NULL),
(9, 'vi', 'example2', 3, 1, 'Example 2', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 14:37:13', '2014-10-13 14:00:56', NULL),
(15, 'vi', NULL, 0, 3, 'Tin tức', NULL, NULL, NULL, 'tree', 'news-post', NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 15:23:01', '2014-10-15 15:22:20', NULL),
(10, 'vi', 'thuc-don-2', 1, 2, 'Thực đơn', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-15 14:40:29', '2014-10-14 17:00:00', NULL),
(11, 'vi', 'tin-tuc-su-kien', 1, 3, 'Tin tức - Sự Kiện', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-15 15:24:24', '2014-10-14 17:00:00', NULL),
(12, 'vi', 'thu-vien-anh-2', 1, 4, 'Thư viện ảnh', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-15 14:41:57', '2014-10-14 17:00:00', NULL),
(13, 'vi', 'lien-he-2', 1, 5, 'Liên hệ', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-15 14:42:05', '2014-10-14 17:00:00', NULL),
(14, 'vi', 'tiet-canh-de-nui-ninh-binh', 6, 1, 'Tiết canh dê núi Ninh Bình', '', '', '', 'default', '', NULL, '', 1, 0, 0, 1, 0, '2014-10-15 14:51:45', '2014-10-14 17:00:00', '2014-10-15 14:51:45'),
(16, 'vi', 'lorem-ipsum-dolor-sit-amet,-consectetur-adipiscing-elit-', 15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 15:29:11', '2014-10-14 17:00:00', NULL),
(17, 'vi', 'morbi-id-fermentum-augue-', 15, 2, 'Morbi id fermentum augue.', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 15:28:03', '2014-10-14 17:00:00', NULL),
(18, 'vi', 'suspendisse-molestie-magna-a-quam-lobortis,-vitae-vulputate-lectus-rutrum-', 15, 3, 'Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum.', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 15:25:52', '2014-10-14 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_page_storage`
--

CREATE TABLE IF NOT EXISTS `ip_page_storage` (
  `pageId` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_page_storage`
--

INSERT INTO `ip_page_storage` (`pageId`, `key`, `value`) VALUES
(15, 'asdBlog-date', '"2014-10-15"'),
(15, 'asdBlog-time', '"22:22:20"'),
(16, 'asdBlog-date', '"2014-10-15"'),
(16, 'asdBlog-time', '"22:23:10"'),
(17, 'asdBlog-date', '"2014-10-15"'),
(17, 'asdBlog-time', '"22:23:21"'),
(18, 'asdBlog-date', '"2014-10-15"'),
(18, 'asdBlog-time', '"22:23:30"');

-- --------------------------------------------------------

--
-- Table structure for table `ip_permission`
--

CREATE TABLE IF NOT EXISTS `ip_permission` (
  `administratorId` int(11) NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_permission`
--

INSERT INTO `ip_permission` (`administratorId`, `permission`) VALUES
(1, 'Super admin');

-- --------------------------------------------------------

--
-- Table structure for table `ip_plugin`
--

CREATE TABLE IF NOT EXISTS `ip_plugin` (
  `title` varchar(100) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `version` decimal(10,2) NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_plugin`
--

INSERT INTO `ip_plugin` (`title`, `name`, `version`, `isActive`) VALUES
('Application', 'Application', '1.00', 1),
('Colorbox', 'Colorbox', '1.00', 1),
('Slider Widget', 'AsdSlider', '1.00', 1),
('Blog Widget', 'AsdBlog', '1.00', 1),
('Products', 'Product', '1.00', 0),
('Grid example', 'GridExample', '1.00', 1),
('Products', 'Products', '1.00', 1),
('GridExample1', 'GridExample1', '1.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_product`
--

CREATE TABLE IF NOT EXISTS `ip_product` (
`id` int(11) NOT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `content` text,
  `dateModified` datetime DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  `option1` tinyint(1) DEFAULT NULL,
  `option2` tinyint(1) DEFAULT NULL,
  `option3` tinyint(1) DEFAULT NULL,
  `option4` tinyint(1) DEFAULT NULL,
  `option5` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_product`
--

INSERT INTO `ip_product` (`id`, `categoryID`, `name`, `summary`, `content`, `dateModified`, `picture`, `option1`, `option2`, `option3`, `option4`, `option5`) VALUES
(1, 1, '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget nunc elementum, pellentesque justo ut, aliquam dui. Sed ultrices, ipsum eu aliquam rhoncus, nisl ipsum interdum risus, sit amet consequat ipsum sapien vitae quam. Donec in purus volutpat, tincidunt diam eu, malesuada ipsum. ', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget nunc elementum, pellentesque justo ut, aliquam dui. Sed ultrices, ipsum eu aliquam rhoncus, nisl ipsum interdum risus, sit amet consequat ipsum sapien vitae quam. Donec in purus volutpat, tincidunt diam eu, malesuada ipsum. Phasellus maximus, felis eget imperdiet blandit, arcu dui congue ligula, ut cursus quam eros eu eros. Phasellus erat est, mattis eu felis at, lobortis fermentum nunc. Proin et consectetur dolor, in malesuada arcu. Integer dictum magna ut consectetur tempus. Vivamus fermentum egestas leo, ut egestas sapien. Nullam mollis sagittis tortor nec scelerisque. Cras euismod urna enim, quis euismod mauris tempus a. Duis quis tincidunt felis. Donec cursus laoreet erat, aliquam pellentesque justo dignissim sit amet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vitae hendrerit lacus. Morbi nec malesuada orci.</p>\r\n<p>Maecenas egestas mi quis velit scelerisque, id lobortis leo auctor. Curabitur tortor ligula, varius sagittis sagittis a, dignissim vel tortor. Morbi et lorem consectetur ante sollicitudin finibus mattis id sem. Morbi eu dolor varius, rhoncus quam id, ullamcorper nulla. Praesent facilisis, enim hendrerit iaculis condimentum, mi justo porta arcu, malesuada malesuada dolor sapien nec mauris. Nulla vitae rutrum purus. Nam faucibus suscipit suscipit. Vestibulum a consectetur nulla. Etiam eu est congue, tincidunt ipsum a, scelerisque lacus. Phasellus nibh nisi, maximus at bibendum a, volutpat at nibh. Nulla eget magna tempor, laoreet purus et, ullamcorper elit. Nulla porttitor orci pharetra pellentesque dictum.</p>\r\n<p>Vestibulum vestibulum ac enim non ultrices. Suspendisse potenti. Fusce velit ex, commodo ut tortor sit amet, placerat scelerisque ipsum. Aenean ligula dolor, porta at bibendum quis, rhoncus id elit. Integer sit amet ante posuere libero euismod porttitor. Duis iaculis malesuada leo, sit amet blandit elit euismod non. Curabitur elit ipsum, tincidunt tincidunt fringilla at, tristique at sapien. Duis eleifend metus non quam porttitor, sit amet sollicitudin ipsum sagittis. Nullam at tempus tortor. Vestibulum facilisis id eros in venenatis. Aliquam sit amet lacus in libero vulputate consectetur sed in nulla. Cras et vestibulum eros, a interdum nisl. Nunc elit orci, malesuada ut nisi ac, suscipit bibendum mi. Quisque varius aliquet libero non malesuada.</p>\r\n<p>Nulla in felis in tortor eleifend semper. Curabitur pulvinar, velit ac scelerisque pharetra, libero ex scelerisque lacus, id commodo leo velit eget justo. Integer ornare pulvinar turpis vitae ornare. Donec ac tristique quam, eu rutrum est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus felis justo, ornare a mi eget, laoreet elementum erat. Phasellus eget lacus nec massa consectetur condimentum. Ut viverra ac odio eu consectetur. Sed sodales leo sed vehicula accumsan. Curabitur consequat nisl sit amet orci pellentesque feugiat vel ut lectus. Ut vel lorem eget ex posuere accumsan. In consequat augue in enim pellentesque lobortis. Sed lobortis neque est, sit amet tincidunt massa consectetur vitae. Curabitur sapien leo, facilisis vel feugiat id, interdum vitae augue.</p>', NULL, 'img12.jpg', 1, NULL, NULL, NULL, NULL),
(2, 1, 'cate6', 'sgdgd', '', NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_productCategory`
--

CREATE TABLE IF NOT EXISTS `ip_productCategory` (
`id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_productCategory`
--

INSERT INTO `ip_productCategory` (`id`, `name`, `parentId`) VALUES
(12, '1', 1),
(13, 'cate6', 1),
(14, 'cate7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ip_repository_file`
--

CREATE TABLE IF NOT EXISTS `ip_repository_file` (
`fileId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `plugin` varchar(255) NOT NULL,
  `baseDir` varchar(255) NOT NULL,
  `instanceId` int(11) NOT NULL COMMENT 'Unique identificator. Tells in which part of the module the file is used. Teoretically there could be two identical records. The same module binds the same file to the same instance. For example: gallery widget adds the same photo twice.',
  `createdAt` int(11) NOT NULL COMMENT 'Time, when this module started to use this resource.'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='File usage table. Track which modules uses which files';

--
-- Dumping data for table `ip_repository_file`
--

INSERT INTO `ip_repository_file` (`fileId`, `filename`, `plugin`, `baseDir`, `instanceId`, `createdAt`) VALUES
(1, 'img7.jpg', 'Content', 'file/repository/', 47, 1413387618),
(2, 'img8.jpg', 'Content', 'file/repository/', 47, 1413387618),
(3, 'img9.jpg', 'Content', 'file/repository/', 47, 1413387618),
(4, 'img10.jpg', 'Content', 'file/repository/', 47, 1413387618),
(5, 'img11.jpg', 'Content', 'file/repository/', 47, 1413387618),
(6, 'img12.jpg', 'Content', 'file/repository/', 47, 1413387618),
(7, 'img7.jpg', 'Content', 'file/repository/', 50, 1413387645),
(8, 'img8.jpg', 'Content', 'file/repository/', 50, 1413387645),
(9, 'img9.jpg', 'Content', 'file/repository/', 50, 1413387645),
(10, 'img10.jpg', 'Content', 'file/repository/', 50, 1413387645),
(11, 'img11.jpg', 'Content', 'file/repository/', 50, 1413387645),
(12, 'img12.jpg', 'Content', 'file/repository/', 50, 1413387645),
(13, 'img12.jpg', 'Table_product_picture', 'file/repository/', 1, 1413563953);

-- --------------------------------------------------------

--
-- Table structure for table `ip_repository_reflection`
--

CREATE TABLE IF NOT EXISTS `ip_repository_reflection` (
`reflectionId` int(11) NOT NULL,
  `options` text CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `optionsFingerprint` char(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL COMMENT 'unique cropping options key',
  `original` varchar(255) NOT NULL,
  `reflection` varchar(255) NOT NULL COMMENT 'Cropped version of original file.',
  `createdAt` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Cropped versions of original image file';

--
-- Dumping data for table `ip_repository_reflection`
--

INSERT INTO `ip_repository_reflection` (`reflectionId`, `options`, `optionsFingerprint`, `original`, `reflection`, `createdAt`) VALUES
(1, '{"type":"fit","width":140,"height":140,"forced":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'img7.jpg', '2014/10/15/img7.jpg', 1413387603),
(2, '{"type":"fit","width":140,"height":140,"forced":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'img8.jpg', '2014/10/15/img8.jpg', 1413387605),
(3, '{"type":"fit","width":140,"height":140,"forced":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'img9.jpg', '2014/10/15/img9.jpg', 1413387607),
(4, '{"type":"fit","width":140,"height":140,"forced":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'img10.jpg', '2014/10/15/img10.jpg', 1413387609),
(5, '{"type":"fit","width":140,"height":140,"forced":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'img11.jpg', '2014/10/15/img11.jpg', 1413387611),
(6, '{"type":"fit","width":140,"height":140,"forced":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'img12.jpg', '2014/10/15/img12.jpg', 1413387613),
(7, '{"type":"fit","width":800,"height":600}', '41db051fa26a4946666a03e9c8575ac6', 'img7.jpg', '2014/10/15/img7_1.jpg', 1413387618),
(8, '{"type":"center","width":200,"height":200,"quality":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'img7.jpg', '2014/10/15/img7_2.jpg', 1413387618),
(9, '{"type":"fit","width":800,"height":600}', '41db051fa26a4946666a03e9c8575ac6', 'img8.jpg', '2014/10/15/img8_1.jpg', 1413387618),
(10, '{"type":"center","width":200,"height":200,"quality":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'img8.jpg', '2014/10/15/img8_2.jpg', 1413387618),
(11, '{"type":"fit","width":800,"height":600}', '41db051fa26a4946666a03e9c8575ac6', 'img9.jpg', '2014/10/15/img9_1.jpg', 1413387618),
(12, '{"type":"center","width":200,"height":200,"quality":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'img9.jpg', '2014/10/15/img9_2.jpg', 1413387618),
(13, '{"type":"fit","width":800,"height":600}', '41db051fa26a4946666a03e9c8575ac6', 'img10.jpg', '2014/10/15/img10_1.jpg', 1413387618),
(14, '{"type":"center","width":200,"height":200,"quality":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'img10.jpg', '2014/10/15/img10_2.jpg', 1413387618),
(15, '{"type":"fit","width":800,"height":600}', '41db051fa26a4946666a03e9c8575ac6', 'img11.jpg', '2014/10/15/img11_1.jpg', 1413387618),
(16, '{"type":"center","width":200,"height":200,"quality":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'img11.jpg', '2014/10/15/img11_2.jpg', 1413387618),
(17, '{"type":"fit","width":800,"height":600}', '41db051fa26a4946666a03e9c8575ac6', 'img12.jpg', '2014/10/15/img12_1.jpg', 1413387618),
(18, '{"type":"center","width":200,"height":200,"quality":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'img12.jpg', '2014/10/15/img12_2.jpg', 1413387618);

-- --------------------------------------------------------

--
-- Table structure for table `ip_revision`
--

CREATE TABLE IF NOT EXISTS `ip_revision` (
`revisionId` int(11) NOT NULL,
  `pageId` int(11) NOT NULL DEFAULT '0',
  `isPublished` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_revision`
--

INSERT INTO `ip_revision` (`revisionId`, `pageId`, `isPublished`, `createdAt`) VALUES
(1, 4, 0, 1413208856),
(2, 5, 1, 1413208856),
(3, 4, 1, 1413208868),
(4, 7, 1, 1413383538),
(5, 6, 1, 1413383542),
(6, 4, 0, 1413384826),
(7, 5, 0, 1413385949),
(8, 10, 1, 1413386019),
(9, 10, 0, 1413386019),
(10, 11, 0, 1413386304),
(11, 11, 1, 1413386304),
(12, 18, 0, 1413386719),
(13, 18, 0, 1413386719),
(14, 18, 0, 1413386752),
(15, 18, 0, 1413386817),
(16, 17, 0, 1413386852),
(17, 17, 0, 1413386852),
(18, 17, 1, 1413386883),
(19, 16, 0, 1413386916),
(20, 16, 1, 1413386916),
(21, 16, 0, 1413386951),
(22, 11, 0, 1413386979),
(23, 17, 0, 1413387029),
(24, 18, 1, 1413387054),
(25, 18, 0, 1413387066),
(26, 13, 0, 1413387217),
(27, 13, 1, 1413387222),
(28, 13, 0, 1413387391),
(29, 13, 0, 1413387453),
(30, 12, 0, 1413387488),
(31, 12, 1, 1413387498),
(32, 12, 0, 1413387645);

-- --------------------------------------------------------

--
-- Table structure for table `ip_storage`
--

CREATE TABLE IF NOT EXISTS `ip_storage` (
  `plugin` varchar(40) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_storage`
--

INSERT INTO `ip_storage` (`plugin`, `key`, `value`) VALUES
('Ip', 'version', '"4.2.3"'),
('Ip', 'dbVersion', '59'),
('Ip', 'theme', '"Air"'),
('Ip', 'cachedBaseUrl', '"http:\\/\\/localhost\\/nhhs\\/"'),
('Ip', 'lastSystemMessageSent', '"dc1c8b0e367b0b75c8f03bb682f2d886"'),
('Ip', 'lastSystemMessageShown', '"dc1c8b0e367b0b75c8f03bb682f2d886"'),
('Ip', 'themeChanged', '0'),
('Ip', 'cacheVersion', '1'),
('Config', 'Config.multilingual', '"1"'),
('Config', 'Config.automaticCron', '"1"'),
('Config', 'Config.cronPassword', '336123'),
('Config', 'Config.defaultImageQuality', '80'),
('Config', 'Config.availableFonts', '"Arial,Arial,Helvetica,sans-serif\\nArial Black,Arial Black,Gadget,sans-serif\\nComic Sans MS,Comic Sans MS,cursive\\nCourier New,Courier New,Courier,monospace\\nGeorgia,Georgia,serif\\nImpact,Charcoal,sans-serif\\nLucida Console,Monaco,monospace\\nLucida Sans Unicode,Lucida Grande,sans-serif\\nPalatino Linotype,Book Antiqua,Palatino,serif\\nTahoma,Geneva,sans-serif\\nTimes New Roman,Times,serif\\nTrebuchet MS,Helvetica,sans-serif\\nVerdana,Geneva,sans-serif\\nGill Sans,Geneva,sans-serif"'),
('Config', 'Config.reservedDirs', '["file","install","Ip","Plugin","update","Theme","index.php","admin","admin.php"]'),
('Config', 'Content.widgetGalleryQuality', '90'),
('Config', 'Content.widgetImageWidth', '1160'),
('Config', 'Content.widgetImageHeight', '800'),
('Config', 'Content.widgetGalleryWidth', '200'),
('Config', 'Content.widgetGalleryHeight', '200'),
('Config', 'Config.lightboxWidth', '800'),
('Config', 'Config.lightboxHeight', '600'),
('Config', 'Design.themeDirs', '""'),
('Config', 'Email.hourlyLimit', '100'),
('Config', 'Pages.hideNewPages', '0'),
('Config', 'Config.vi.websiteEmail', '"vothanhtai86@gmail.com"'),
('Config', 'Config.vi.websiteTitle', '"NH Hoa Son"'),
('Ip', 'websiteId', '"YEqWr9DizXy5kGTDbpRO5KcXwL6Ts5iY"'),
('Ip', 'getImpressPagesSupport', '"1"'),
('Cron', 'lastExecutionStart', '1413565202'),
('Admin', 'failedLogins', '[]'),
('Cron', 'lastExecutionEnd', '1413565205'),
('Config', 'AsdSlider.imageHeight', '"300"'),
('Config', 'AsdSlider.imageWidth', '"600"'),
('Config', 'AsdSlider.bigImageHeight', '"800"'),
('Config', 'AsdSlider.bigImageWidth', '"600"'),
('Config', 'AsdBlog.introLimit', '"300"'),
('Config', 'AsdBlog.postLimit', '"10"'),
('Config', 'AsdBlog.addTitlelink', '"Yes"'),
('Config', 'AsdBlog.showReadMore', '"Yes"'),
('Config', 'AsdBlog.showDate', '"No"'),
('Config', 'AsdBlog.dateFormat', '"Y-m-d"'),
('Config', 'AsdBlog.showTime', '"No"'),
('Config', 'AsdBlog.timeFormat', '"H:i:s"'),
('Config', 'AsdBlog.allowedTags', '"<b><span><i><strong><em><a><img><p>"'),
('Config', 'AsdBlog.blockName', '"main"');

-- --------------------------------------------------------

--
-- Table structure for table `ip_theme_storage`
--

CREATE TABLE IF NOT EXISTS `ip_theme_storage` (
  `theme` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_widget`
--

CREATE TABLE IF NOT EXISTS `ip_widget` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `skin` varchar(25) NOT NULL,
  `data` text NOT NULL,
  `revisionId` int(11) NOT NULL,
  `languageId` int(11) NOT NULL,
  `blockName` varchar(25) NOT NULL,
  `position` double NOT NULL,
  `isVisible` tinyint(1) NOT NULL DEFAULT '1',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` int(11) NOT NULL COMMENT 'unix timestamp',
  `updatedAt` int(11) NOT NULL,
  `deletedAt` int(11) DEFAULT NULL COMMENT 'unix timestamp'
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_widget`
--

INSERT INTO `ip_widget` (`id`, `name`, `skin`, `data`, `revisionId`, `languageId`, `blockName`, `position`, `isVisible`, `isDeleted`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Heading', 'default', '{"title":"Home page","level":"1"}', 1, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(2, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 1, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(3, 'Heading', 'default', '{"title":"Page content","level":"1"}', 2, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(4, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0<\\/p>"}', 2, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(5, 'Heading', 'default', '{"title":"Home page","level":"1"}', 3, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(6, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 3, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(7, 'Heading', 'default', '{"title":"TH\\u1ef0C \\u0110\\u01a0N","level":"3"}', 0, 1, 'side1', 0, 1, 0, 1413384732, 1413384732, NULL),
(8, 'Text', 'default', '{"text":"<p>\\u00a0D\\u00ca NU\\u0301I NINH BI\\u0300NH KHAI VI\\u0323<br \\/>- Ti\\u1ebft canh d\\u00ea nu\\u0301i Ninh Bi\\u0300nh<br \\/>- \\u00d3c d\\u00ea h\\u1ea7m ng\\u1ea3i c\\u1ee9u<br \\/>- Ch\\u00e2n d\\u00ea h\\u1ea7m ng\\u1ea3i c\\u1ee9u<br \\/>- Khoai t\\u00e2y chi\\u00ean<br \\/>- Ng\\u00f4 chi\\u00ean b\\u01a1<br \\/>- Rau s\\u1ea1ch c\\u00e1c lo\\u1ea1i<br \\/>- Salad rau qu\\u1ea3<br \\/>- C\\u1ee7 qu\\u1ea3 c\\u00e1c lo\\u1ea1i<br \\/>D\\u00ca NU\\u0301I MO\\u0301N CHI\\u0301NH<br \\/>- N\\u1ea7m d\\u00ea Ninh B\\u00ecnh n\\u01b0\\u1edbng<br \\/>- T\\u00e1i d\\u00ea n\\u00fai Ninh B\\u00ecnh<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh h\\u1ea5p x\\u1ea3<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh x\\u00e0o l\\u0103n<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh n\\u01b0\\u1edbng<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh \\u00e1p ch\\u1ea3o<br \\/>- D\\u00ea n\\u00e9 Ninh B\\u00ecnh<br \\/>- Ng\\u1ecdc d\\u01b0\\u01a1ng h\\u1ea7m<br \\/>D\\u00ca NU\\u0301I MO\\u0301N CU\\u00d4\\u0301I<br \\/>- D\\u00ea Ninh B\\u00ecnh s\\u1ed1t vang<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh om m\\u1ebb<br \\/>- D\\u00ea Ninh B\\u00ecnh x\\u00e1o m\\u0103ng<br \\/>- L\\u1ea9u d\\u00ea Ninh B\\u00ecnh<br \\/>- C\\u01a1m ch\\u00e1y Ninh B\\u00ecnh<br \\/>- Ch\\u00e1o d\\u00ea \\u0111\\u1eadu xanh<br \\/>- C\\u01a1m ch\\u00e1y - tim c\\u1eadt s\\u1ed1t<br \\/>D\\u00ca N\\u00daI NINH B\\u00ccNH \\/SU\\u1ea4T<br \\/>- Su\\u1ea5t 100.000\\/kh\\u00e1ch<br \\/>- Su\\u1ea5t 120.000\\/kh\\u00e1ch<br \\/>- Su\\u1ea5t 150.000\\/kh\\u00e1ch<br \\/>- Su\\u1ea5t 200.000\\/kh\\u00e1ch<br \\/>D\\u00ca NU\\u0301I NINH BI\\u0300NH T\\u01af\\u01a0I<br \\/>- Ch\\u00e2n d\\u00ea Ninh B\\u00ecnh t\\u01b0\\u01a1i<br \\/>- Th\\u1ecbt d\\u00ea Ninh B\\u00ecnh t\\u01b0\\u01a1i<br \\/>- Ng\\u1ecdc d\\u01b0\\u01a1ng (c\\u00e0 d\\u00ea)<br \\/>- D\\u00ea thui nguy\\u00ean con<br \\/>- D\\u00ea s\\u1ed1ng nguy\\u00ean con<br \\/>- S\\u1ea3n ph\\u1ea9m kh\\u00e1c t\\u1eeb d\\u00ea<br \\/>- Cao d\\u00ea Ninh B\\u00ecnh<br \\/>\\u0110\\u1eb6C S\\u1ea2N NINH BINH<br \\/>- M\\u1eafm t\\u00e9p Gia Vi\\u1ec5n<\\/p>"}', 0, 1, 'side1', 40, 1, 0, 1413384772, 1413384772, NULL),
(9, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 6, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(10, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 6, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(11, 'AsdSlider', 'default', '[]', 6, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(12, 'Heading', 'default', '{"title":"Page content","level":"1"}', 7, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(13, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0<\\/p>"}', 7, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(14, 'Heading', 'default', '[]', 9, 0, 'main', 0, 1, 0, 1413386123, 1413386123, NULL),
(15, 'AsdBlogList', 'default', '{"serialized":"securityToken=1680fcf8d0d5878b1c11721e8a83810d&antispam%5B%5D=91aa45e0904539b3f515477626be0ad2&antispam%5B%5D=91aa45e0904539b3f515477626be0ad2&data%5Bblog%5D%5BpageId%5D=11&data%5Bblog%5D%5Bplace%5D=15&data%5Bblog%5D%5Bparent%5D=0&data%5Bblog%5D%5Bpagination%5D%5Btype%5D=3&data%5Bblog%5D%5Bpagination%5D%5Blimit%5D=10&data%5Bblog%5D%5Boptions%5D%5Border%5D=0&data%5Bblog%5D%5Boptions%5D%5Bintrolimit%5D=300&data%5Bblog%5D%5Boptions%5D%5Ballowedtags%5D=%3Cb%3E%3Cspan%3E%3Ci%3E%3Cstrong%3E%3Cem%3E%3Ca%3E%3Cimg%3E%3Cp%3E&data%5Bblog%5D%5Boptions%5D%5Breadmore%5D=1&data%5Bblog%5D%5Boptions%5D%5Btitlelink%5D=1&data%5Bblog%5D%5Boptions%5D%5Bblockname%5D=main&data%5Bblog%5D%5Binfo%5D%5Bdate%5D=0&data%5Bblog%5D%5Binfo%5D%5Bcategory%5D=0&data%5Bblog%5D%5Bimage%5D%5Benable%5D=0&data%5Bblog%5D%5Bimage%5D%5Bwidth%5D=&data%5Bblog%5D%5Bimage%5D%5Bheight%5D="}', 11, 0, 'main', 0, 1, 0, 1413386314, 1413386314, NULL),
(16, 'Heading', 'default', '{"title":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros.","level":"3"}', 13, 0, 'main', 0, 1, 0, 1413386735, 1413386735, NULL),
(17, 'Text', 'default', '{"text":"<p>\\u00a0<\\/p>\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros. Morbi est nisl, hendrerit vitae felis non, ultricies hendrerit quam. Donec interdum quam eget massa faucibus, sit amet scelerisque nibh condimentum. Cras quis tortor eu nisi viverra tempor. Aliquam pellentesque sem in elit aliquam consectetur. Donec at augue non massa efficitur iaculis. Nam a neque pretium, euismod mi nec, auctor nunc. Vestibulum a suscipit metus. Proin mattis ipsum ut purus varius, sit amet tristique augue vestibulum. Ut dapibus gravida auctor. Vestibulum euismod nibh id ligula facilisis venenatis. Nunc id rhoncus leo. Curabitur quam nisl, gravida et aliquet ut, aliquam in eros. Etiam condimentum turpis id lorem porta, a volutpat dui tincidunt. Duis blandit velit sit amet orci sollicitudin, ac aliquam mauris maximus. Proin blandit, nisi id elementum ullamcorper, ipsum dui semper massa, nec commodo risus arcu eu urna.<\\/p>\\n<p>Morbi id fermentum augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas nec quam et elit posuere rhoncus quis mattis nibh. Aliquam sodales ante in dolor porta, nec tincidunt urna laoreet. Maecenas porta finibus enim at feugiat. Donec posuere auctor suscipit. Fusce rhoncus at tellus non hendrerit. Nunc tincidunt at lacus ut ultrices. Curabitur eget nulla ac dui malesuada sollicitudin eu quis dui. Nulla eu diam lacinia, commodo ipsum non, iaculis neque. Integer commodo est vitae diam imperdiet, sed aliquet quam aliquet.<\\/p>\\n<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>"}', 13, 0, 'main', 40, 1, 0, 1413386742, 1413386742, NULL),
(18, 'Heading', 'default', '{"title":"1 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros.","level":"3"}', 14, 0, 'main', 0, 1, 0, 1413386735, 1413386735, NULL),
(19, 'Text', 'default', '{"text":"<p>\\u00a0<\\/p>\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros. Morbi est nisl, hendrerit vitae felis non, ultricies hendrerit quam. Donec interdum quam eget massa faucibus, sit amet scelerisque nibh condimentum. Cras quis tortor eu nisi viverra tempor. Aliquam pellentesque sem in elit aliquam consectetur. Donec at augue non massa efficitur iaculis. Nam a neque pretium, euismod mi nec, auctor nunc. Vestibulum a suscipit metus. Proin mattis ipsum ut purus varius, sit amet tristique augue vestibulum. Ut dapibus gravida auctor. Vestibulum euismod nibh id ligula facilisis venenatis. Nunc id rhoncus leo. Curabitur quam nisl, gravida et aliquet ut, aliquam in eros. Etiam condimentum turpis id lorem porta, a volutpat dui tincidunt. Duis blandit velit sit amet orci sollicitudin, ac aliquam mauris maximus. Proin blandit, nisi id elementum ullamcorper, ipsum dui semper massa, nec commodo risus arcu eu urna.<\\/p>\\n<p>Morbi id fermentum augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas nec quam et elit posuere rhoncus quis mattis nibh. Aliquam sodales ante in dolor porta, nec tincidunt urna laoreet. Maecenas porta finibus enim at feugiat. Donec posuere auctor suscipit. Fusce rhoncus at tellus non hendrerit. Nunc tincidunt at lacus ut ultrices. Curabitur eget nulla ac dui malesuada sollicitudin eu quis dui. Nulla eu diam lacinia, commodo ipsum non, iaculis neque. Integer commodo est vitae diam imperdiet, sed aliquet quam aliquet.<\\/p>\\n<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>"}', 14, 0, 'main', 40, 1, 0, 1413386742, 1413386742, NULL),
(20, 'Heading', 'default', '{"title":"1 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros.","level":"3"}', 15, 0, 'main', 0, 1, 0, 1413386735, 1413386735, NULL),
(21, 'Text', 'default', '{"text":"<p>\\u00a0Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros. Morbi est nisl, hendrerit vitae felis non, ultricies hendrerit quam. Donec interdum quam eget massa faucibus, sit amet scelerisque nibh condimentum. Cras quis tortor eu nisi viverra tempor. Aliquam pellentesque sem in elit aliquam consectetur. Donec at augue non massa efficitur iaculis. Nam a neque pretium, euismod mi nec, auctor nunc. Vestibulum a suscipit metus. Proin mattis ipsum ut purus varius, sit amet tristique augue vestibulum. Ut dapibus gravida auctor. Vestibulum euismod nibh id ligula facilisis venenatis. Nunc id rhoncus leo. Curabitur quam nisl, gravida et aliquet ut, aliquam in eros. Etiam condimentum turpis id lorem porta, a volutpat dui tincidunt. Duis blandit velit sit amet orci sollicitudin, ac aliquam mauris maximus. Proin blandit, nisi id elementum ullamcorper, ipsum dui semper massa, nec commodo risus arcu eu urna.<\\/p>\\n<p>Morbi id fermentum augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas nec quam et elit posuere rhoncus quis mattis nibh. Aliquam sodales ante in dolor porta, nec tincidunt urna laoreet. Maecenas porta finibus enim at feugiat. Donec posuere auctor suscipit. Fusce rhoncus at tellus non hendrerit. Nunc tincidunt at lacus ut ultrices. Curabitur eget nulla ac dui malesuada sollicitudin eu quis dui. Nulla eu diam lacinia, commodo ipsum non, iaculis neque. Integer commodo est vitae diam imperdiet, sed aliquet quam aliquet.<\\/p>\\n<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>"}', 15, 0, 'main', 40, 1, 0, 1413386742, 1413386742, NULL),
(22, 'Heading', 'default', '{"title":"Morbi id fermentum augue.","level":"3"}', 17, 0, 'main', 0, 1, 0, 1413386859, 1413386859, NULL),
(23, 'Text', 'default', '{"text":"<p>\\u00a0<\\/p>\\n<p>Morbi id fermentum augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas nec quam et elit posuere rhoncus quis mattis nibh. Aliquam sodales ante in dolor porta, nec tincidunt urna laoreet. Maecenas porta finibus enim at feugiat. Donec posuere auctor suscipit. Fusce rhoncus at tellus non hendrerit. Nunc tincidunt at lacus ut ultrices. Curabitur eget nulla ac dui malesuada sollicitudin eu quis dui. Nulla eu diam lacinia, commodo ipsum non, iaculis neque. Integer commodo est vitae diam imperdiet, sed aliquet quam aliquet.<\\/p>\\n<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>"}', 17, 0, 'main', 40, 1, 0, 1413386873, 1413386873, NULL),
(24, 'Heading', 'default', '{"title":"Morbi id fermentum augue.","level":"3"}', 18, 0, 'main', 0, 1, 0, 1413386859, 1413386859, NULL),
(25, 'Text', 'default', '{"text":"<p>\\u00a0Morbi id fermentum augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas nec quam et elit posuere rhoncus quis mattis nibh. Aliquam sodales ante in dolor porta, nec tincidunt urna laoreet. Maecenas porta finibus enim at feugiat. Donec posuere auctor suscipit. Fusce rhoncus at tellus non hendrerit. Nunc tincidunt at lacus ut ultrices. Curabitur eget nulla ac dui malesuada sollicitudin eu quis dui. Nulla eu diam lacinia, commodo ipsum non, iaculis neque. Integer commodo est vitae diam imperdiet, sed aliquet quam aliquet.<\\/p>\\n<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>"}', 18, 0, 'main', 40, 1, 0, 1413386873, 1413386873, NULL),
(26, 'Heading', 'default', '[]', 20, 0, 'main', 0, 1, 1, 1413386922, 1413386922, 1413386939),
(27, 'Heading', 'default', '{"title":"Nam at erat dictum, elementum arcu id, volutpat nulla.","level":"1"}', 20, 0, 'main', -40, 1, 0, 1413386924, 1413386924, NULL),
(28, 'Text', 'default', '{"text":"<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>\\n<p>\\u00a0<\\/p>"}', 20, 0, 'main', 0, 1, 0, 1413386944, 1413386944, NULL),
(29, 'Heading', 'default', '{"title":"Nam at erat dictum, elementum arcu id, volutpat nulla.","level":"1"}', 21, 0, 'main', -40, 1, 0, 1413386924, 1413386924, NULL),
(30, 'Text', 'default', '{"text":"<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>\\n<p>\\u00a0<\\/p>"}', 21, 0, 'main', 0, 1, 0, 1413386944, 1413386944, NULL),
(31, 'AsdBlogList', 'default', '{"serialized":"securityToken=1680fcf8d0d5878b1c11721e8a83810d&antispam%5B%5D=91aa45e0904539b3f515477626be0ad2&antispam%5B%5D=91aa45e0904539b3f515477626be0ad2&data%5Bblog%5D%5BpageId%5D=11&data%5Bblog%5D%5Bplace%5D=15&data%5Bblog%5D%5Bparent%5D=0&data%5Bblog%5D%5Bpagination%5D%5Btype%5D=3&data%5Bblog%5D%5Bpagination%5D%5Blimit%5D=10&data%5Bblog%5D%5Boptions%5D%5Border%5D=0&data%5Bblog%5D%5Boptions%5D%5Bintrolimit%5D=300&data%5Bblog%5D%5Boptions%5D%5Ballowedtags%5D=%3Cb%3E%3Cspan%3E%3Ci%3E%3Cstrong%3E%3Cem%3E%3Ca%3E%3Cimg%3E%3Cp%3E&data%5Bblog%5D%5Boptions%5D%5Breadmore%5D=1&data%5Bblog%5D%5Boptions%5D%5Btitlelink%5D=1&data%5Bblog%5D%5Boptions%5D%5Bblockname%5D=main&data%5Bblog%5D%5Binfo%5D%5Bdate%5D=0&data%5Bblog%5D%5Binfo%5D%5Bcategory%5D=0&data%5Bblog%5D%5Bimage%5D%5Benable%5D=0&data%5Bblog%5D%5Bimage%5D%5Bwidth%5D=&data%5Bblog%5D%5Bimage%5D%5Bheight%5D="}', 22, 0, 'main', 0, 1, 0, 1413386314, 1413386314, NULL),
(32, 'Heading', 'default', '{"title":"Morbi id fermentum augue.","level":"3"}', 23, 0, 'main', 0, 1, 0, 1413386859, 1413386859, NULL),
(33, 'Text', 'default', '{"text":"<p>\\u00a0Morbi id fermentum augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas nec quam et elit posuere rhoncus quis mattis nibh. Aliquam sodales ante in dolor porta, nec tincidunt urna laoreet. Maecenas porta finibus enim at feugiat. Donec posuere auctor suscipit. Fusce rhoncus at tellus non hendrerit. Nunc tincidunt at lacus ut ultrices. Curabitur eget nulla ac dui malesuada sollicitudin eu quis dui. Nulla eu diam lacinia, commodo ipsum non, iaculis neque. Integer commodo est vitae diam imperdiet, sed aliquet quam aliquet.<\\/p>\\n<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>"}', 23, 0, 'main', 40, 1, 0, 1413386873, 1413386873, NULL),
(34, 'Heading', 'default', '{"title":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros.","level":"3"}', 24, 0, 'main', 0, 1, 0, 1413386735, 1413386735, NULL),
(35, 'Text', 'default', '{"text":"<p>\\u00a0Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros. Morbi est nisl, hendrerit vitae felis non, ultricies hendrerit quam. Donec interdum quam eget massa faucibus, sit amet scelerisque nibh condimentum. Cras quis tortor eu nisi viverra tempor. Aliquam pellentesque sem in elit aliquam consectetur. Donec at augue non massa efficitur iaculis. Nam a neque pretium, euismod mi nec, auctor nunc. Vestibulum a suscipit metus. Proin mattis ipsum ut purus varius, sit amet tristique augue vestibulum. Ut dapibus gravida auctor. Vestibulum euismod nibh id ligula facilisis venenatis. Nunc id rhoncus leo. Curabitur quam nisl, gravida et aliquet ut, aliquam in eros. Etiam condimentum turpis id lorem porta, a volutpat dui tincidunt. Duis blandit velit sit amet orci sollicitudin, ac aliquam mauris maximus. Proin blandit, nisi id elementum ullamcorper, ipsum dui semper massa, nec commodo risus arcu eu urna.<\\/p>\\n<p>Morbi id fermentum augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas nec quam et elit posuere rhoncus quis mattis nibh. Aliquam sodales ante in dolor porta, nec tincidunt urna laoreet. Maecenas porta finibus enim at feugiat. Donec posuere auctor suscipit. Fusce rhoncus at tellus non hendrerit. Nunc tincidunt at lacus ut ultrices. Curabitur eget nulla ac dui malesuada sollicitudin eu quis dui. Nulla eu diam lacinia, commodo ipsum non, iaculis neque. Integer commodo est vitae diam imperdiet, sed aliquet quam aliquet.<\\/p>\\n<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>"}', 24, 0, 'main', 40, 1, 0, 1413386742, 1413386742, NULL),
(36, 'Heading', 'default', '{"title":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros.","level":"3"}', 25, 0, 'main', 0, 1, 0, 1413386735, 1413386735, NULL),
(37, 'Text', 'default', '{"text":"<p>\\u00a0Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut luctus eros. Morbi est nisl, hendrerit vitae felis non, ultricies hendrerit quam. Donec interdum quam eget massa faucibus, sit amet scelerisque nibh condimentum. Cras quis tortor eu nisi viverra tempor. Aliquam pellentesque sem in elit aliquam consectetur. Donec at augue non massa efficitur iaculis. Nam a neque pretium, euismod mi nec, auctor nunc. Vestibulum a suscipit metus. Proin mattis ipsum ut purus varius, sit amet tristique augue vestibulum. Ut dapibus gravida auctor. Vestibulum euismod nibh id ligula facilisis venenatis. Nunc id rhoncus leo. Curabitur quam nisl, gravida et aliquet ut, aliquam in eros. Etiam condimentum turpis id lorem porta, a volutpat dui tincidunt. Duis blandit velit sit amet orci sollicitudin, ac aliquam mauris maximus. Proin blandit, nisi id elementum ullamcorper, ipsum dui semper massa, nec commodo risus arcu eu urna.<\\/p>\\n<p>Morbi id fermentum augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas nec quam et elit posuere rhoncus quis mattis nibh. Aliquam sodales ante in dolor porta, nec tincidunt urna laoreet. Maecenas porta finibus enim at feugiat. Donec posuere auctor suscipit. Fusce rhoncus at tellus non hendrerit. Nunc tincidunt at lacus ut ultrices. Curabitur eget nulla ac dui malesuada sollicitudin eu quis dui. Nulla eu diam lacinia, commodo ipsum non, iaculis neque. Integer commodo est vitae diam imperdiet, sed aliquet quam aliquet.<\\/p>\\n<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>"}', 25, 0, 'main', 40, 1, 0, 1413386742, 1413386742, NULL),
(38, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 27, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(39, 'Form', 'default', '{"fields":[{"type":"Text","label":"Name","options":[]},{"type":"Email","label":"Email","options":[]},{"type":"Textarea","label":"Text","options":[]}]}', 27, 0, 'main', 40, 1, 0, 1413387248, 1413387248, NULL),
(40, 'Map', 'default', '{"lat":"20.16137443109328","lng":"466.006178855896","zoom":"17","mapTypeId":"roadmap","height":"250","markerlat":"20.161495288243938","markerlng":"106.00512206554413"}', 27, 0, 'main', 20, 1, 0, 1413387264, 1413387264, NULL),
(41, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 28, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(42, 'Map', 'default', '{"lat":"20.16137443109328","lng":"106.006178855896","zoom":"17","mapTypeId":"roadmap","height":"250","markerlat":"20.16144493111002","markerlng":"106.00525081157684","width":"399"}', 28, 0, 'main', 20, 1, 0, 1413387264, 1413387264, NULL),
(43, 'Form', 'default', '{"fields":[{"type":"Text","label":"Name","options":[]},{"type":"Email","label":"Email","options":[]},{"type":"Textarea","label":"Text","options":[]}]}', 28, 0, 'main', 40, 1, 0, 1413387248, 1413387248, NULL),
(44, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 29, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(45, 'Map', 'default', '{"lat":"20.16137443109328","lng":"106.006178855896","zoom":"17","mapTypeId":"roadmap","height":"250","markerlat":"20.161495288243938","markerlng":"106.00512206554413"}', 29, 0, 'main', 20, 1, 0, 1413387264, 1413387264, NULL),
(46, 'Form', 'default', '{"fields":[{"type":"Text","label":"Name","options":[]},{"type":"Email","label":"Email","options":[]},{"type":"Textarea","label":"Text","options":[]}]}', 29, 0, 'main', 40, 1, 0, 1413387248, 1413387248, NULL),
(47, 'Gallery', 'default', '{"images":[{"imageOriginal":"img7.jpg","title":"img7.jpg"},{"imageOriginal":"img8.jpg","title":"img8.jpg"},{"imageOriginal":"img9.jpg","title":"img9.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img12.jpg","title":"img12.jpg"}]}', 31, 0, 'main', 0, 1, 0, 1413387508, 1413387508, NULL),
(48, 'Heading', 'default', '{"title":"Th\\u01b0 vi\\u1ec7n \\u1ea3nh","level":"3"}', 31, 0, 'main', -40, 1, 0, 1413387630, 1413387630, NULL),
(49, 'Heading', 'default', '{"title":"Th\\u01b0 vi\\u1ec7n \\u1ea3nh","level":"3"}', 32, 0, 'main', -40, 1, 0, 1413387630, 1413387630, NULL),
(50, 'Gallery', 'default', '{"images":[{"imageOriginal":"img7.jpg","title":"img7.jpg"},{"imageOriginal":"img8.jpg","title":"img8.jpg"},{"imageOriginal":"img9.jpg","title":"img9.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img12.jpg","title":"img12.jpg"}]}', 32, 0, 'main', 0, 1, 0, 1413387508, 1413387508, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_widget_order`
--

CREATE TABLE IF NOT EXISTS `ip_widget_order` (
  `widgetName` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_widget_order`
--

INSERT INTO `ip_widget_order` (`widgetName`, `priority`) VALUES
('Heading', 10),
('Text', 20),
('Divider', 30),
('Image', 40),
('Gallery', 50),
('File', 60),
('Html', 80),
('Video', 90),
('Map', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip_administrator`
--
ALTER TABLE `ip_administrator`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `ip_email_queue`
--
ALTER TABLE `ip_email_queue`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_gridExample`
--
ALTER TABLE `ip_gridExample`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_inline_value_global`
--
ALTER TABLE `ip_inline_value_global`
 ADD PRIMARY KEY (`plugin`,`key`);

--
-- Indexes for table `ip_inline_value_language`
--
ALTER TABLE `ip_inline_value_language`
 ADD PRIMARY KEY (`plugin`,`key`,`languageId`);

--
-- Indexes for table `ip_inline_value_page`
--
ALTER TABLE `ip_inline_value_page`
 ADD PRIMARY KEY (`plugin`,`key`,`pageId`);

--
-- Indexes for table `ip_language`
--
ALTER TABLE `ip_language`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_log`
--
ALTER TABLE `ip_log`
 ADD PRIMARY KEY (`id`), ADD KEY `time` (`time`), ADD KEY `message` (`message`);

--
-- Indexes for table `ip_page`
--
ALTER TABLE `ip_page`
 ADD PRIMARY KEY (`id`), ADD KEY `url` (`urlPath`,`languageCode`);

--
-- Indexes for table `ip_page_storage`
--
ALTER TABLE `ip_page_storage`
 ADD UNIQUE KEY `pageKey` (`pageId`,`key`);

--
-- Indexes for table `ip_permission`
--
ALTER TABLE `ip_permission`
 ADD PRIMARY KEY (`administratorId`,`permission`);

--
-- Indexes for table `ip_plugin`
--
ALTER TABLE `ip_plugin`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ip_product`
--
ALTER TABLE `ip_product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_productCategory`
--
ALTER TABLE `ip_productCategory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_repository_file`
--
ALTER TABLE `ip_repository_file`
 ADD PRIMARY KEY (`fileId`), ADD KEY `filename` (`filename`);

--
-- Indexes for table `ip_repository_reflection`
--
ALTER TABLE `ip_repository_reflection`
 ADD PRIMARY KEY (`reflectionId`), ADD KEY `optionsFingerprint` (`optionsFingerprint`,`original`);

--
-- Indexes for table `ip_revision`
--
ALTER TABLE `ip_revision`
 ADD PRIMARY KEY (`revisionId`);

--
-- Indexes for table `ip_storage`
--
ALTER TABLE `ip_storage`
 ADD UNIQUE KEY `pluginkey` (`plugin`,`key`);

--
-- Indexes for table `ip_theme_storage`
--
ALTER TABLE `ip_theme_storage`
 ADD UNIQUE KEY `themeKey` (`theme`,`key`);

--
-- Indexes for table `ip_widget`
--
ALTER TABLE `ip_widget`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_widget_order`
--
ALTER TABLE `ip_widget_order`
 ADD UNIQUE KEY `widgetName` (`widgetName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ip_administrator`
--
ALTER TABLE `ip_administrator`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ip_email_queue`
--
ALTER TABLE `ip_email_queue`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ip_gridExample`
--
ALTER TABLE `ip_gridExample`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ip_language`
--
ALTER TABLE `ip_language`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ip_log`
--
ALTER TABLE `ip_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `ip_page`
--
ALTER TABLE `ip_page`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ip_product`
--
ALTER TABLE `ip_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ip_productCategory`
--
ALTER TABLE `ip_productCategory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ip_repository_file`
--
ALTER TABLE `ip_repository_file`
MODIFY `fileId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ip_repository_reflection`
--
ALTER TABLE `ip_repository_reflection`
MODIFY `reflectionId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ip_revision`
--
ALTER TABLE `ip_revision`
MODIFY `revisionId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `ip_widget`
--
ALTER TABLE `ip_widget`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
