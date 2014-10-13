-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2014 at 03:36 PM
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
(1, 'EN', 'English', 2, 1, '', 'en', 'ltr');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_log`
--

INSERT INTO `ip_log` (`id`, `time`, `level`, `message`, `context`) VALUES
(1, '2014-10-13 14:00:59', 'info', 'Admin.loggedIn: {username} from {ip}', '{"username":"admin","ip":"::1"}'),
(2, '2014-10-13 14:01:03', 'info', 'Cron.started', '{"firstTimeThisYear":true,"firstTimeThisMonth":true,"firstTimeThisWeek":true,"firstTimeThisDay":true,"firstTimeThisHour":true,"lastTime":null,"test":null}'),
(3, '2014-10-13 14:01:07', 'info', 'Cron.finished', '[]'),
(4, '2014-10-13 14:03:39', 'info', 'Admin.loggedIn: {username} from {ip}', '{"username":"admin","ip":"::1"}');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_page`
--

INSERT INTO `ip_page` (`id`, `languageCode`, `urlPath`, `parentId`, `pageOrder`, `title`, `metaTitle`, `keywords`, `description`, `type`, `alias`, `layout`, `redirectUrl`, `isVisible`, `isDisabled`, `isSecured`, `isDeleted`, `isBlank`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'en', NULL, 0, 0, 'Menu1', NULL, NULL, NULL, 'default', 'menu1', 'main.php', NULL, 1, 0, 0, 0, 0, '2014-10-13 14:00:56', '2014-10-13 14:00:56', NULL),
(2, 'en', NULL, 0, 1, 'Menu2', NULL, NULL, NULL, 'default', 'menu2', 'main.php', NULL, 1, 0, 0, 0, 0, '2014-10-13 14:00:56', '2014-10-13 14:00:56', NULL),
(3, 'en', NULL, 0, 2, 'Menu3', NULL, NULL, NULL, 'default', 'menu3', 'main.php', NULL, 1, 0, 0, 0, 0, '2014-10-13 14:00:56', '2014-10-13 14:00:56', NULL),
(4, 'en', 'home', 1, 0, 'Home', NULL, NULL, NULL, 'default', NULL, 'home.php', NULL, 1, 0, 0, 0, 0, '2014-10-13 14:00:56', '2014-10-13 14:00:56', NULL),
(5, 'en', 'lorem-ipsumy', 1, 1, 'Lorem ipsum', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-13 14:00:56', '2014-10-13 14:00:56', NULL),
(6, 'en', 'page1', 2, 0, 'Page1', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-13 14:00:56', '2014-10-13 14:00:56', NULL),
(7, 'en', 'page2', 2, 1, 'Page2', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-13 14:00:56', '2014-10-13 14:00:56', NULL),
(8, 'en', 'example1', 3, 0, 'Example 1', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-13 14:00:56', '2014-10-13 14:00:56', NULL),
(9, 'en', 'example2', 3, 1, 'Example 2', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-13 14:00:56', '2014-10-13 14:00:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_page_storage`
--

CREATE TABLE IF NOT EXISTS `ip_page_storage` (
  `pageId` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
('Colorbox', 'Colorbox', '1.00', 1);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='File usage table. Track which modules uses which files';

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cropped versions of original image file';

-- --------------------------------------------------------

--
-- Table structure for table `ip_revision`
--

CREATE TABLE IF NOT EXISTS `ip_revision` (
`revisionId` int(11) NOT NULL,
  `pageId` int(11) NOT NULL DEFAULT '0',
  `isPublished` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_revision`
--

INSERT INTO `ip_revision` (`revisionId`, `pageId`, `isPublished`, `createdAt`) VALUES
(1, 4, 1, 1413208856),
(2, 5, 1, 1413208856),
(3, 4, 0, 1413208868);

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
('Ip', 'lastSystemMessageSent', ''),
('Ip', 'lastSystemMessageShown', '"18ee961f7585f2ab8dd0727d628bbbbd"'),
('Ip', 'themeChanged', '0'),
('Ip', 'cacheVersion', '1'),
('Config', 'Config.en.websiteTitle', '"NH Hoa Son"'),
('Config', 'Config.en.websiteEmail', '"vothanhtai86@gmail.com"'),
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
('Ip', 'websiteId', '"YEqWr9DizXy5kGTDbpRO5KcXwL6Ts5iY"'),
('Ip', 'getImpressPagesSupport', '"1"'),
('Cron', 'lastExecutionStart', '1413208863'),
('Admin', 'failedLogins', '[]'),
('Cron', 'lastExecutionEnd', '1413208867');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_widget`
--

INSERT INTO `ip_widget` (`id`, `name`, `skin`, `data`, `revisionId`, `languageId`, `blockName`, `position`, `isVisible`, `isDeleted`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Heading', 'default', '{"title":"Home page","level":"1"}', 1, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(2, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 1, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(3, 'Heading', 'default', '{"title":"Page content","level":"1"}', 2, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(4, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0<\\/p>"}', 2, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(5, 'Heading', 'default', '{"title":"Home page","level":"1"}', 3, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(6, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 3, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL);

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
-- AUTO_INCREMENT for table `ip_language`
--
ALTER TABLE `ip_language`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ip_log`
--
ALTER TABLE `ip_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ip_page`
--
ALTER TABLE `ip_page`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ip_repository_file`
--
ALTER TABLE `ip_repository_file`
MODIFY `fileId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ip_repository_reflection`
--
ALTER TABLE `ip_repository_reflection`
MODIFY `reflectionId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ip_revision`
--
ALTER TABLE `ip_revision`
MODIFY `revisionId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ip_widget`
--
ALTER TABLE `ip_widget`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
