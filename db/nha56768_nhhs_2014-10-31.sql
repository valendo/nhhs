-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 31, 2014 at 04:19 PM
-- Server version: 5.5.35-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nha56768_nhhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip_administrator`
--

CREATE TABLE IF NOT EXISTS `ip_administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `hash` text NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `resetSecret` varchar(32) DEFAULT NULL,
  `resetTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ip_administrator`
--

INSERT INTO `ip_administrator` (`id`, `username`, `hash`, `email`, `resetSecret`, `resetTime`) VALUES
(1, 'admin', '$P$BowtXuyqrap6OFJv2GP6FIxDNWz9Xi0', 'nson2007@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_email_queue`
--

CREATE TABLE IF NOT EXISTS `ip_email_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `fileMimeTypes` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `ip_email_queue`
--

INSERT INTO `ip_email_queue` (`id`, `email`, `to`, `toName`, `from`, `fromName`, `subject`, `immediate`, `html`, `send`, `lock`, `lockedAt`, `files`, `fileNames`, `fileMimeTypes`) VALUES
(1, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        thong tin lien he<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '008b7e40d310f52cd9f4acda0dfebaf8', '2014-10-24 17:26:18', '', '', ''),
(2, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\r\n</h1>\r\n<p>            <b>Tên:</b> tai vo<br/>\r\n     \r\n            <b>Email:</b> vothanhtai@hotmail.com<br/>\r\n     \r\n            <b>Nội dung:</b><br/>\r\n        test send mail<br/>\r\n     \r\n</p>\r\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\r\n<p>\r\n            NH Hoa Son        <br/>\r\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\r\n    </p>\r\n<p> </p>\r\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\r\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '421569de81fab151cc82c3d95921a5f7', '2014-10-29 02:52:15', '', '', ''),
(3, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\r\n</h1>\r\n<p>            <b>Tên:</b> tai test<br/>\r\n     \r\n            <b>Email:</b> vothanhtai@hotmail.com<br/>\r\n     \r\n            <b>Nội dung:</b><br/>\r\n        test send new mail<br/>\r\n     \r\n</p>\r\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\r\n<p>\r\n            NH Hoa Son        <br/>\r\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\r\n    </p>\r\n<p> </p>\r\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\r\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'd836da0819d3bd79e6ad8771b8b3ea1a', '2014-10-29 02:54:47', '', '', ''),
(4, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\r\n</h1>\r\n<p>            <b>Tên:</b> test<br/>\r\n     \r\n            <b>Email:</b> vothanhtai@hotmail.com<br/>\r\n     \r\n            <b>Nội dung:</b><br/>\r\n        test<br/>\r\n     \r\n</p>\r\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\r\n<p>\r\n            NH Hoa Son        <br/>\r\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\r\n    </p>\r\n<p> </p>\r\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\r\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '5dcc8e05efcdc1cd054423da9ed67ec2', '2014-10-29 02:57:53', '', '', ''),
(5, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\r\n</h1>\r\n<p>            <b>Tên:</b> test 2<br/>\r\n     \r\n            <b>Email:</b> vothanhtai@hotmail.com<br/>\r\n     \r\n            <b>Nội dung:</b><br/>\r\n        test 2<br/>\r\n     \r\n</p>\r\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\r\n<p>\r\n            NH Hoa Son        <br/>\r\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\r\n    </p>\r\n<p> </p>\r\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\r\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'b3135d28bbb4726fe663da9ce9314c4c', '2014-10-29 03:01:49', '', '', ''),
(6, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\r\n</h1>\r\n<p>            <b>Tên:</b> test 3<br/>\r\n     \r\n            <b>Email:</b> vothanhtai@hotmail.com<br/>\r\n     \r\n            <b>Nội dung:</b><br/>\r\n        sgsdg<br/>\r\n     \r\n</p>\r\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\r\n<p>\r\n            NH Hoa Son        <br/>\r\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\r\n    </p>\r\n<p> </p>\r\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\r\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'ee4429ee8e1882e904fa676b63beee59', '2014-10-29 03:06:59', '', '', ''),
(7, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\r\n</h1>\r\n<p>            <b>Tên:</b> test tls<br/>\r\n     \r\n            <b>Email:</b> vothanhtai@hotmail.com<br/>\r\n     \r\n            <b>Nội dung:</b><br/>\r\n        sgsdg<br/>\r\n     \r\n</p>\r\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\r\n<p>\r\n            NH Hoa Son        <br/>\r\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\r\n    </p>\r\n<p> </p>\r\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\r\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'e3e0a6140c6d4cc188af2bd6e2c3462d', '2014-10-29 03:09:50', '', '', ''),
(8, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\r\n</h1>\r\n<p>            <b>Tên:</b> test123<br/>\r\n     \r\n            <b>Email:</b> vothanhtai@hotmail.com<br/>\r\n     \r\n            <b>Nội dung:</b><br/>\r\n        sgsdgs3535<br/>\r\n     \r\n</p>\r\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\r\n<p>\r\n            NH Hoa Son        <br/>\r\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\r\n    </p>\r\n<p> </p>\r\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\r\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'e29a95e7d76e4e078b77823bee342da5', '2014-10-29 03:21:30', '', '', ''),
(9, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> taivo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        thanhtai<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '38499b95b1ded1311a5a2636775afce2', '2014-10-31 02:51:10', '', '', ''),
(10, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> taivo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        test abc<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '68ff94d4b1feec8cb08ad617231f8f97', '2014-10-31 02:53:41', '', '', ''),
(11, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> taivo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        test 09:56<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '67d4d2f2a341046855bff6d4e4c19801', '2014-10-31 02:56:50', '', '', ''),
(12, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> taivo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        test 9:57<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '78a1c4bb91a6fa7627654e55246c358e', '2014-10-31 02:58:12', '', '', ''),
(13, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        test 10:04<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'bc5248dbf2f30f88180bc543d318d65e', '2014-10-31 03:04:25', '', '', ''),
(14, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        test 10:05<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'e5154860347153e0d96925274448c62f', '2014-10-31 03:06:06', '', '', ''),
(15, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> thanhtai_info@yahoo.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        test 10:06<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'thanhtai_info@yahoo.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '8aca7e720b0f2ba03ef76cbd21c7412a', '2014-10-31 03:07:14', '', '', ''),
(16, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        test 10:31<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '37df989a0af64b9fb1a1302e7bfaaa46', '2014-10-31 03:11:09', '', '', ''),
(17, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> sgd<br/>\n     \n            <b>Email:</b> sgsg@gd.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sdgdg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'sgsg@gd.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'aade37627bf2e3b1509c465b394bae02', '2014-10-31 03:13:21', '', '', ''),
(18, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> gdsg<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sgsdg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '6e66dd6f9acb474d38eada70779aa6d2', '2014-10-31 03:13:43', '', '', ''),
(19, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> dgds<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sgdg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'e7d504114fb53c9b4bbef54951c8a0a8', '2014-10-31 03:14:58', '', '', ''),
(20, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> sgds<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        32535<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '69164cfd7c42eb1c9c9008f6f68acdf1', '2014-10-31 03:19:26', '', '', ''),
(21, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> sdgdg<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        353<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'c65001b12c7b55441ae0dc0a2fe19731', '2014-10-31 03:25:12', '', '', ''),
(22, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> sdg<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sdg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '5b3d1f23d057bc8e9d061ca29abe94d8', '2014-10-31 03:26:15', '', '', ''),
(23, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> drgfg<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sgdg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, '2014-10-31 03:31:41', NULL, '0000-00-00 00:00:00', '', '', ''),
(24, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> helo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sdfjgld<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, '2014-10-31 03:33:13', NULL, '0000-00-00 00:00:00', '', '', ''),
(25, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> sdg<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sgd<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '0f684da1eee9020dd2c6f31a2eb4775d', '2014-10-31 03:36:58', '', '', ''),
(26, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sssssssssssss<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '12b1ab141198f444bc6cc9aa80b9846a', '2014-10-31 03:39:27', '', '', ''),
(27, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sdgdsgsd<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '6aa9df0465de1ccb8d4be7e842c65982', '2014-10-31 03:40:18', '', '', ''),
(28, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sdg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '146e47a0d7f844e5e191aebc5cc3bfe6', '2014-10-31 03:40:42', '', '', ''),
(29, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        5555<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'fb7dc4570a579be0a290ce8d68598ab5', '2014-10-31 03:44:25', '', '', ''),
(30, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> sgdsg<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'e64058687a4cce160b705a6f1c7a9c76', '2014-10-31 03:50:51', '', '', ''),
(31, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        ssssssssss<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '3aa995cde1b19174919144a069fe499c', '2014-10-31 03:51:47', '', '', ''),
(32, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> sdg<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sdgdg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'e451c58ea2a1f66dc42a9a84ebc33533', '2014-10-31 04:01:02', '', '', ''),
(33, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        123<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'ddc938e142d9e20776be5b2d81333067', '2014-10-31 04:02:23', '', '', ''),
(34, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        667788<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '49e8618fbc6009c539e912bb63dbb4ec', '2014-10-31 04:04:25', '', '', ''),
(35, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        112233<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '1bf1a8ea1de2236565b285372d4fcb66', '2014-10-31 04:23:53', '', '', ''),
(36, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        dddddddddd<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '9e8110f3a5ff9ebab39cf813117310fe', '2014-10-31 04:25:37', '', '', ''),
(37, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> sdg<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        ss<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '1da51360c1d610f9664cb88b484b1ab9', '2014-10-31 04:30:52', '', '', ''),
(38, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> fh<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        fdh<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '94fbeecb98fa46098b787f5be066c42d', '2014-10-31 04:33:03', '', '', ''),
(39, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        11<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '171fd55a94b42c9eb522fabf85934c37', '2014-10-31 04:33:52', '', '', ''),
(40, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        aaa<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '49dda060cfd9be89dec589afc439df14', '2014-10-31 04:37:32', '', '', ''),
(41, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        aaaa<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '1ab23f7fbdcefbbea63a0dbad0733e7a', '2014-10-31 04:38:21', '', '', ''),
(42, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        aaa<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'af2f20fd4bc76bf987582f33a2a37b28', '2014-10-31 04:54:45', '', '', ''),
(43, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sdgg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '8e5bf57e8ad5ec3f9dab9afcb8d3ffda', '2014-10-31 04:56:49', '', '', ''),
(44, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sgdg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, 'd96b99c6486b6c283f7943c63c482c42', '2014-10-31 04:59:44', '', '', ''),
(45, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> tai vo<br/>\n     \n            <b>Email:</b> vothanhtai@hotmail.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        sdgdg<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'vothanhtai@hotmail.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '65c987c8bbb4d89dea64574c09b83826', '2014-10-31 05:01:27', '', '', ''),
(46, '<h1 style="font-family: Trebuchet MS, Verdana, Tahoma; font-size: 28px; color: #00a8da;">\n</h1>\n<p>            <b>Tên:</b> test<br/>\n     \n            <b>Email:</b> test@test.com<br/>\n     \n            <b>Nội dung:</b><br/>\n        hello<br/>\n     \n</p>\n<p style="border-top: 1px dotted #7db113; height: 1px; font-size: 1px;"> </p>\n<p>\n            NH Hoa Son        <br/>\n        <a href="mailto:vothanhtai86@gmail.com">vothanhtai86@gmail.com</a>\n    </p>\n<p> </p>\n    <p style="text-align: right;"><span style="color: #6d6b70; font-family: Verdana, Tahoma, Arial; font-size: 10px;">Powered by </span><a style="text-decoration: underline; font-family: Verdana, Tahoma, Arial; font-size: 10px; color: #6d6b70;" href="http://www.impresspages.org">ImpressPages</a></p>\n', 'vothanhtai86@gmail.com', '', 'test@test.com', '', 'NH Hoa Son: Liên hệ', 0, 1, NULL, '83292775fb42d9437397a1c94849893c', '2014-10-31 06:46:50', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ip_gridExample`
--

CREATE TABLE IF NOT EXISTS `ip_gridExample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `cv` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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
  `value` text NOT NULL,
  PRIMARY KEY (`plugin`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_inline_value_global`
--

INSERT INTO `ip_inline_value_global` (`plugin`, `key`, `value`) VALUES
('inline_management', 'logo_', '{"type":"image","imageOrig":"logo.png","x1":"-53","y1":"-14","x2":"269","y2":"62","text":"NH Hoa Son","color":"rgb(0, 0, 0)","font":"Arial, ''Helvetica Neue'', Helvetica, sans-serif","requiredWidth":"224","requiredHeight":"53"}');

-- --------------------------------------------------------

--
-- Table structure for table `ip_inline_value_language`
--

CREATE TABLE IF NOT EXISTS `ip_inline_value_language` (
  `plugin` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `languageId` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`plugin`,`key`,`languageId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_inline_value_language`
--

INSERT INTO `ip_inline_value_language` (`plugin`, `key`, `languageId`, `value`) VALUES
('inline_management', 'txt_themeName', 1, '<p>Theme "Air" sdg sgksg jskg jskdg sjdg sg sdgs;d gsd gsdgsdgsdg</p>'),
('inline_management', 'txt_leftFooter', 1, '<p><strong style="font-size: 16px;">NHÀ HÀNG HOA SƠN</strong></p>\n<p> </p>\n<p><span style="font-size: 14px;">Địa chỉ : Đường 12C, khu Quèn Ổi, xã Ninh Hòa, huyện Hoa Lư, tỉnh Ninh Bình.</span></p>\n<p> </p>\n<p><span style="font-size: 14px;">Website: <a href="http://nhahanghoason.com" target="_blank">www.nhahanghoason.com</a></span></p>'),
('inline_management', 'txt_rightFooter', 1, '<p><span style="font-size: 14px;">ĐT : 030.3626727 – 0986711048</span></p>\n<p><span style="font-size: 14px;"> </span></p>\n<p><span style="font-size: 14px;">Fax : 030.3626656</span></p>\n<p><span style="font-size: 14px;"> </span></p>\n<p><span style="font-size: 14px;">Email: <a href="mailto:hoasonnhahang@gmail.com">hoasonnhahang@gmail.com</a><span></span></span></p>'),
('inline_management', 'txt_test', 1, '<p>NHÀ HÀNG HOA S?N</p>');

-- --------------------------------------------------------

--
-- Table structure for table `ip_inline_value_page`
--

CREATE TABLE IF NOT EXISTS `ip_inline_value_page` (
  `plugin` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `pageId` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`plugin`,`key`,`pageId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_language`
--

CREATE TABLE IF NOT EXISTS `ip_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbreviation` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `languageOrder` double NOT NULL DEFAULT '0',
  `isVisible` int(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL,
  `textDirection` varchar(10) NOT NULL DEFAULT 'ltr',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `context` mediumtext,
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `message` (`message`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4173 ;

--
-- Dumping data for table `ip_log`
--

INSERT INTO `ip_log` (`id`, `time`, `level`, `message`, `context`) VALUES
(4169, '2014-10-31 08:18:25', 'info', 'Admin.loggedIn: {username} from {ip}', '{"username":"admin","ip":"42.117.67.186"}'),
(4170, '2014-10-31 09:00:36', 'info', 'Cron.started', '{"firstTimeThisYear":false,"firstTimeThisMonth":false,"firstTimeThisWeek":false,"firstTimeThisDay":false,"firstTimeThisHour":true,"lastTime":1414742482,"test":null}'),
(4171, '2014-10-31 09:00:36', 'info', 'Cron.finished', '[]'),
(4172, '2014-10-31 09:07:43', 'info', 'Admin.loggedIn: {username} from {ip}', '{"username":"admin","ip":"42.117.67.186"}');

-- --------------------------------------------------------

--
-- Table structure for table `ip_page`
--

CREATE TABLE IF NOT EXISTS `ip_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`urlPath`,`languageCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `ip_page`
--

INSERT INTO `ip_page` (`id`, `languageCode`, `urlPath`, `parentId`, `pageOrder`, `title`, `metaTitle`, `keywords`, `description`, `type`, `alias`, `layout`, `redirectUrl`, `isVisible`, `isDisabled`, `isSecured`, `isDeleted`, `isBlank`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'vi', NULL, 0, 0, 'Menu', NULL, NULL, NULL, 'tree', 'menu1', NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 14:37:13', '2014-10-13 14:00:56', NULL),
(4, 'vi', '', 1, 0, 'Trang chủ', 'Nha Hang Hoa Son', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-20 17:00:00', '2014-10-30 17:00:00', NULL),
(5, 'vi', 'gioi-thieu', 1, 1, 'Giới thiệu', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-21 15:34:15', '2014-10-30 17:00:00', NULL),
(15, 'vi', NULL, 0, 3, 'Tin tức', NULL, NULL, NULL, 'tree', 'news-post', NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 15:23:01', '2014-10-15 15:22:20', NULL),
(10, 'vi', 'thuc-don', 1, 2, 'Thực đơn', '', '', '', 'default', '', NULL, '', 0, 0, 0, 0, 0, '2014-10-17 17:00:00', '2014-10-21 17:00:00', NULL),
(11, 'vi', 'tin-tuc-su-kien', 1, 3, 'Tin tức - Sự Kiện', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-15 15:24:24', '2014-10-28 17:00:00', NULL),
(12, 'vi', 'thu-vien-anh', 1, 4, 'Thư viện ảnh', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-14 17:00:00', '2014-10-30 17:00:00', NULL),
(13, 'vi', 'lien-he', 1, 5, 'Liên hệ', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2014-10-14 17:00:00', '2014-10-29 17:00:00', NULL),
(16, 'vi', 'lorem-ipsum-dolor-sit-amet,-consectetur-adipiscing-elit-', 15, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 15:29:11', '2014-10-24 17:00:00', NULL),
(17, 'vi', 'morbi-id-fermentum-augue-', 15, 0, 'Morbi id fermentum augue.', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 15:28:03', '2014-10-14 17:00:00', NULL),
(18, 'vi', 'suspendisse-molestie-magna-a-quam-lobortis,-vitae-vulputate-lectus-rutrum-', 15, 3, 'Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum.', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2014-10-15 15:25:52', '2014-10-14 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_page_storage`
--

CREATE TABLE IF NOT EXISTS `ip_page_storage` (
  `pageId` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `pageKey` (`pageId`,`key`)
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
  `permission` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`administratorId`,`permission`)
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
  `isActive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_plugin`
--

INSERT INTO `ip_plugin` (`title`, `name`, `version`, `isActive`) VALUES
('Application', 'Application', '1.00', 1),
('Colorbox', 'Colorbox', '1.00', 1),
('Slider', 'Slider', '1.03', 1),
('Blog Widget', 'AsdBlog', '1.00', 1),
('Products', 'Product', '1.00', 0),
('Nested columns', 'NestedColumns', '1.00', 1),
('Thực đơn', 'Products', '1.00', 1),
('GridExample1', 'GridExample1', '1.00', 0),
('Full TinyMCE', 'FullTinyMCE', '2.00', 0),
('TinyMCE Complete Editor', 'TinyMceComplete', '1.01', 1),
('SMTP Config', 'SMTPConfig', '1.01', 1),
('AddThis', 'AddThis', '1.00', 0),
('Import/export site', 'ImportExport', '1.01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ip_product`
--

CREATE TABLE IF NOT EXISTS `ip_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `option5` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `ip_product`
--

INSERT INTO `ip_product` (`id`, `categoryID`, `name`, `summary`, `content`, `dateModified`, `picture`, `option1`, `option2`, `option3`, `option4`, `option5`) VALUES
(8, 20, 'Dê xào lăn ', NULL, '', NULL, NULL, 1, 0, NULL, NULL, NULL),
(9, 20, 'Dê tái chanh', NULL, '', NULL, NULL, 1, 0, NULL, NULL, NULL),
(10, 20, 'Dê áp chảo', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 20, 'Tiết canh dê', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 20, 'Dê nấu lá lốt', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 20, 'Dê chiên lá móc mật', NULL, '', NULL, '', 1, 0, NULL, NULL, NULL),
(14, 20, 'Dê quay nguyên con', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 20, 'Dê hấp nguyên con', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 20, 'Nầm dê', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 20, 'Ngọc dương hầm thuốc bắc', NULL, '', NULL, '', 1, 0, NULL, NULL, NULL),
(18, 20, 'Dê sữa hầm thuốc bắc', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 20, 'Chân dê hầm thuốc bắc', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, 'Lẩu dê', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 20, 'Cháo dê', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 21, 'Gà hấp lá chanh', NULL, '', NULL, '', 0, 1, NULL, NULL, NULL),
(23, 21, 'Gà xào xả ớt', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 21, 'Gà quay', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 21, 'Gà rang muối', NULL, '', NULL, '', 1, 0, NULL, NULL, NULL),
(26, 22, 'Vịt hấp', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 22, 'Vịt om sấu', NULL, '', NULL, '', 0, 1, NULL, NULL, NULL),
(28, 22, 'Vịt rang muối', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 23, 'Trâu xào rau muống', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 23, 'Trâu luộc mẻ trưng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 23, 'Bò bít tết', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 23, 'Bò lúc lắc', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 23, 'Bò sốt tiêu đen', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 24, 'Cá lóc kho', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 24, 'Cá lóc nấu canh chua', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 24, 'Cá chép om dưa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 24, 'Cá hấp xì dầu', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 25, 'Ba ba nấu chuối', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 25, 'Ba ba nấu lá lốt', NULL, '', NULL, '', 0, 1, NULL, NULL, NULL),
(40, 25, 'Ba ba nướng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 26, 'Tôm : xào, hấp, nướng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 26, 'Mực : xào, hấp, nướng', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 27, 'Cơm tám thơm', NULL, '', NULL, '', 0, 1, NULL, NULL, NULL),
(44, 27, 'Cơm rang thập cẩm', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 27, 'Cơm cháy', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 28, 'Mì xào bò', NULL, '', NULL, '', 0, 1, NULL, NULL, NULL),
(47, 28, 'Mìa xào gà', NULL, '', NULL, '', 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_productCategory`
--

CREATE TABLE IF NOT EXISTS `ip_productCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `ip_productCategory`
--

INSERT INTO `ip_productCategory` (`id`, `name`, `parentId`) VALUES
(20, 'Các món dê', NULL),
(21, 'Các món gà', NULL),
(22, 'Các món vịt', NULL),
(23, 'Các món trâu, bò', NULL),
(24, 'Các món cá', NULL),
(25, 'Các món ba ba', NULL),
(26, 'Các món hải sản', NULL),
(27, 'Các món cơm, canh', NULL),
(28, 'Các món ăn nhanh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_repository_file`
--

CREATE TABLE IF NOT EXISTS `ip_repository_file` (
  `fileId` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `plugin` varchar(255) NOT NULL,
  `baseDir` varchar(255) NOT NULL,
  `instanceId` int(11) NOT NULL COMMENT 'Unique identificator. Tells in which part of the module the file is used. Teoretically there could be two identical records. The same module binds the same file to the same instance. For example: gallery widget adds the same photo twice.',
  `createdAt` int(11) NOT NULL COMMENT 'Time, when this module started to use this resource.',
  PRIMARY KEY (`fileId`),
  KEY `filename` (`filename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='File usage table. Track which modules uses which files' AUTO_INCREMENT=90 ;

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
(17, '', 'Table_product_picture', 'file/repository/', 2, 1413639664),
(19, '', 'Table_product_picture', 'file/repository/', 2, 1413640489),
(24, 'img12.jpg', 'Content', 'file/repository/', 65, 1413900037),
(25, 'img11.jpg', 'Content', 'file/repository/', 65, 1413900037),
(26, 'img8.jpg', 'Content', 'file/repository/', 65, 1413900037),
(27, 'img7.jpg', 'Content', 'file/repository/', 65, 1413900037),
(28, 'img12.jpg', 'Content', 'file/repository/', 67, 1413900081),
(29, 'img11.jpg', 'Content', 'file/repository/', 67, 1413900081),
(30, 'img8.jpg', 'Content', 'file/repository/', 67, 1413900081),
(31, 'img7.jpg', 'Content', 'file/repository/', 67, 1413900081),
(71, '', 'Table_product_picture', 'file/repository/', 25, 1414652057),
(41, 'logo.png', 'developer/inline_management', 'file/repository/', 1, 1414163209),
(42, 'img12.jpg', 'Content', 'file/repository/', 133, 1414171810),
(43, 'img11.jpg', 'Content', 'file/repository/', 133, 1414171810),
(44, 'img10.jpg', 'Content', 'file/repository/', 133, 1414171810),
(45, 'img12.jpg', 'Content', 'file/repository/', 135, 1414171831),
(46, 'img11.jpg', 'Content', 'file/repository/', 135, 1414171831),
(47, 'img10.jpg', 'Content', 'file/repository/', 135, 1414171831),
(48, 'img12.jpg', 'Content', 'file/repository/', 139, 1414171947),
(49, 'img11.jpg', 'Content', 'file/repository/', 139, 1414171947),
(50, 'img10.jpg', 'Content', 'file/repository/', 139, 1414171947),
(59, '', 'Table_product_picture', 'file/repository/', 8, 1414489742),
(60, '', 'Table_product_picture', 'file/repository/', 9, 1414489747),
(61, '', 'Table_product_picture', 'file/repository/', 22, 1414571497),
(62, '', 'Table_product_picture', 'file/repository/', 27, 1414571501),
(63, '', 'Table_product_picture', 'file/repository/', 39, 1414571505),
(64, '', 'Table_product_picture', 'file/repository/', 43, 1414571509),
(65, '', 'Table_product_picture', 'file/repository/', 46, 1414571513),
(66, '', 'Table_product_picture', 'file/repository/', 47, 1414571517),
(69, '', 'Table_product_picture', 'file/repository/', 13, 1414652045),
(70, '', 'Table_product_picture', 'file/repository/', 17, 1414652051),
(72, 'Hydrangeas.jpg', 'Content', 'file/repository/', 50, 1414738965),
(73, 'Hydrangeas.jpg', 'Content', 'file/repository/', 328, 1414738970),
(74, 'img7.jpg', 'Content', 'file/repository/', 328, 1414738970),
(75, 'img8.jpg', 'Content', 'file/repository/', 328, 1414738970),
(76, 'img9.jpg', 'Content', 'file/repository/', 328, 1414738970),
(77, 'img10.jpg', 'Content', 'file/repository/', 328, 1414738970),
(78, 'img11.jpg', 'Content', 'file/repository/', 328, 1414738970),
(79, 'img12.jpg', 'Content', 'file/repository/', 328, 1414738970),
(80, 'img8.jpg', 'Content', 'file/repository/', 337, 1414746480),
(81, 'img10.jpg', 'Content', 'file/repository/', 337, 1414746480),
(82, 'img12.jpg', 'Content', 'file/repository/', 337, 1414746480),
(83, 'img11.jpg', 'Content', 'file/repository/', 337, 1414746480),
(84, 'img7.jpg', 'Content', 'file/repository/', 337, 1414746480),
(85, 'img8.jpg', 'Content', 'file/repository/', 339, 1414746481),
(86, 'img10.jpg', 'Content', 'file/repository/', 339, 1414746481),
(87, 'img12.jpg', 'Content', 'file/repository/', 339, 1414746481),
(88, 'img11.jpg', 'Content', 'file/repository/', 339, 1414746481),
(89, 'img7.jpg', 'Content', 'file/repository/', 339, 1414746481);

-- --------------------------------------------------------

--
-- Table structure for table `ip_repository_reflection`
--

CREATE TABLE IF NOT EXISTS `ip_repository_reflection` (
  `reflectionId` int(11) NOT NULL AUTO_INCREMENT,
  `options` text CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `optionsFingerprint` char(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL COMMENT 'unique cropping options key',
  `original` varchar(255) NOT NULL,
  `reflection` varchar(255) NOT NULL COMMENT 'Cropped version of original file.',
  `createdAt` int(11) NOT NULL,
  PRIMARY KEY (`reflectionId`),
  KEY `optionsFingerprint` (`optionsFingerprint`,`original`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Cropped versions of original image file' AUTO_INCREMENT=95 ;

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
(18, '{"type":"center","width":200,"height":200,"quality":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'img12.jpg', '2014/10/15/img12_2.jpg', 1413387618),
(19, '""', '9d4568c009d203ab10e33ea9953a0264', 'img12.jpg', '2014/10/18/img12', 1413643614),
(20, '""', '9d4568c009d203ab10e33ea9953a0264', 'img10.jpg', '2014/10/18/img10', 1413643614),
(21, '""', '9d4568c009d203ab10e33ea9953a0264', 'img8.jpg', '2014/10/18/img8', 1413643614),
(22, '""', '9d4568c009d203ab10e33ea9953a0264', 'img11.jpg', '2014/10/18/img11', 1413643614),
(23, 'null', '37a6259cc0c1dae299a7866489dff0bd', 'img12.jpg', '2014/10/18/img12_1', 1413643938),
(24, 'null', '37a6259cc0c1dae299a7866489dff0bd', 'img10.jpg', '2014/10/18/img10_1', 1413643938),
(25, 'null', '37a6259cc0c1dae299a7866489dff0bd', 'img8.jpg', '2014/10/18/img8_1', 1413643938),
(26, 'null', '37a6259cc0c1dae299a7866489dff0bd', 'img11.jpg', '2014/10/18/img11_1', 1413643938),
(27, '{"type":"width","width":200,"forced":true}', '7f74d76a9c416821336f294d1dd4453f', 'img12.jpg', '2014/10/18/img12.jpg', 1413644476),
(28, '{"type":"width","width":200,"forced":true}', '7f74d76a9c416821336f294d1dd4453f', 'img10.jpg', '2014/10/18/img10.jpg', 1413644476),
(29, '{"type":"width","width":200,"forced":true}', '7f74d76a9c416821336f294d1dd4453f', 'img8.jpg', '2014/10/18/img8.jpg', 1413644476),
(30, '{"type":"width","width":200,"forced":true}', '7f74d76a9c416821336f294d1dd4453f', 'img11.jpg', '2014/10/18/img11.jpg', 1413644476),
(31, '{"type":"width","width":100,"forced":true}', '1823449246b5b8869573ebae27a30a1b', 'img12.jpg', '2014/10/18/img12_1.jpg', 1413644593),
(32, '{"type":"width","width":100,"forced":true}', '1823449246b5b8869573ebae27a30a1b', 'img10.jpg', '2014/10/18/img10_1.jpg', 1413644593),
(33, '{"type":"width","width":100,"forced":true}', '1823449246b5b8869573ebae27a30a1b', 'img8.jpg', '2014/10/18/img8_1.jpg', 1413644593),
(34, '{"type":"width","width":100,"forced":true}', '1823449246b5b8869573ebae27a30a1b', 'img11.jpg', '2014/10/18/img11_1.jpg', 1413644593),
(35, '{"type":"fit","width":"2000","height":"1300"}', 'c8a9d0771de83ffc256aa31204002cfc', 'img12.jpg', '2014/10/21/img12.jpg', 1413900038),
(36, '{"type":"fit","width":"2000","height":"1300"}', 'c8a9d0771de83ffc256aa31204002cfc', 'img11.jpg', '2014/10/21/img11.jpg', 1413900038),
(37, '{"type":"fit","width":"2000","height":"1300"}', 'c8a9d0771de83ffc256aa31204002cfc', 'img8.jpg', '2014/10/21/img8.jpg', 1413900038),
(38, '{"type":"fit","width":"2000","height":"1300"}', 'c8a9d0771de83ffc256aa31204002cfc', 'img7.jpg', '2014/10/21/img7.jpg', 1413900038),
(39, '{"type":"width","width":"100%","forced":true}', '25d4efa06ff81f133e70b792596c4478', 'img12.jpg', '2014/10/22/img12.jpg', 1413987546),
(40, '{"type":"width","width":"100%","forced":true}', '25d4efa06ff81f133e70b792596c4478', 'img10.jpg', '2014/10/22/img10.jpg', 1413987546),
(41, '{"forced":true}', 'c17ddb590bca13a7dd1231c457542d5d', 'img12.jpg', '2014/10/22/img12_1.jpg', 1413987594),
(42, '{"forced":true}', 'c17ddb590bca13a7dd1231c457542d5d', 'img10.jpg', '2014/10/22/img10_1.jpg', 1413987594),
(43, '{"type":"width","width":"200","forced":true}', '08710d2c7fec5024f5ca637396c324be', 'img12.jpg', '2014/10/22/img12_2.jpg', 1413987630),
(44, '{"type":"width","width":"200","forced":true}', '08710d2c7fec5024f5ca637396c324be', 'img10.jpg', '2014/10/22/img10_2.jpg', 1413987630),
(45, '{"type":"width","width":100,"forced":true}', '1823449246b5b8869573ebae27a30a1b', 'img7.jpg', '2014/10/22/img7.jpg', 1413987994),
(46, '{"type":"width","width":"200","forced":true}', '08710d2c7fec5024f5ca637396c324be', 'img8.jpg', '2014/10/22/img8.jpg', 1413987999),
(47, '{"type":"width","width":"200","forced":true}', '08710d2c7fec5024f5ca637396c324be', 'img7.jpg', '2014/10/22/img7_1.jpg', 1413987999),
(48, '{"type":"fit","width":140,"height":140,"forced":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'logo.png', '2014/10/24/logo.png', 1414163201),
(49, '{"type":"crop","x1":"0","y1":"0","x2":"224","y2":"53","width":"224","height":"53","quality":100}', 'e069bbabc63f0973853105496fd7bc82', 'logo.png', '2014/10/24/nh_hoa_son.png', 1414163209),
(50, '{"type":"crop","x1":"-276","y1":"-65","x2":"496","y2":"118","width":"224","height":"53","quality":100}', '865b8852d50de57948bb1648fd929d73', 'logo.png', '2014/10/24/nh_hoa_son_1.png', 1414163442),
(51, '{"type":"crop","x1":"-53","y1":"-14","x2":"269","y2":"62","width":"224","height":"53","quality":100}', 'b795c9d8612e16a330e7b94f3571fa63', 'logo.png', '2014/10/24/nh_hoa_son_2.png', 1414163457),
(52, '{"type":"width","width":"300","forced":true}', 'db06634a770902fd234e02d8fa632fe3', 'img12.jpg', '2014/10/24/img12.jpg', 1414166142),
(53, '{"type":"width","width":"300","forced":true}', 'db06634a770902fd234e02d8fa632fe3', 'img10.jpg', '2014/10/24/img10.jpg', 1414166142),
(54, '{"type":"width","width":"300","forced":true}', 'db06634a770902fd234e02d8fa632fe3', 'img8.jpg', '2014/10/24/img8.jpg', 1414166142),
(55, '{"type":"width","width":"300","forced":true}', 'db06634a770902fd234e02d8fa632fe3', 'img7.jpg', '2014/10/24/img7.jpg', 1414166142),
(56, '{"type":"center","width":295,"height":164,"quality":90}', '67a94e830545c03ce8927acebb7357ba', 'img12.jpg', '2014/10/25/img12.jpg', 1414171810),
(57, '{"type":"center","width":295,"height":164,"quality":90}', '67a94e830545c03ce8927acebb7357ba', 'img11.jpg', '2014/10/25/img11.jpg', 1414171810),
(58, '{"type":"fit","width":"2000","height":"1300"}', 'c8a9d0771de83ffc256aa31204002cfc', 'img10.jpg', '2014/10/25/img10.jpg', 1414171810),
(59, '{"type":"center","width":295,"height":164,"quality":90}', '67a94e830545c03ce8927acebb7357ba', 'img10.jpg', '2014/10/25/img10_1.jpg', 1414171810),
(60, '{"type":"crop","x1":"-912","y1":"-571","x2":"2829","y2":"1768","width":295,"height":164,"quality":90}', '6cc945e38d5d4d7fd8875cf8b68ac521', 'img10.jpg', '2014/10/25/img10.png', 1414171902),
(61, '{"type":"center","width":295,"height":164,"quality":90}', '67a94e830545c03ce8927acebb7357ba', 'img7.jpg', '2014/10/27/img7.jpg', 1414383025),
(62, '{"type":"center","width":295,"height":164,"quality":90}', '67a94e830545c03ce8927acebb7357ba', 'img8.jpg', '2014/10/27/img8.jpg', 1414383025),
(63, '{"type":"center","width":295,"height":164,"quality":90}', '67a94e830545c03ce8927acebb7357ba', 'img9.jpg', '2014/10/27/img9.jpg', 1414383025),
(64, '{"type":"width","width":"300","forced":true}', 'db06634a770902fd234e02d8fa632fe3', 'img11.jpg', '2014/10/27/img11.jpg', 1414403610),
(65, '{"type":"width","width":"300","height":"300","forced":true}', 'a444f029bff8fc1332069e6b1772f75a', 'img12.jpg', '2014/10/27/img12.jpg', 1414404998),
(66, '{"type":"width","width":"300","height":"300","forced":true}', 'a444f029bff8fc1332069e6b1772f75a', 'img10.jpg', '2014/10/27/img10.jpg', 1414404998),
(67, '{"type":"width","width":"300","height":"300","forced":true}', 'a444f029bff8fc1332069e6b1772f75a', 'img8.jpg', '2014/10/27/img8_1.jpg', 1414404998),
(68, '{"type":"width","width":"300","height":"300","forced":true}', 'a444f029bff8fc1332069e6b1772f75a', 'img7.jpg', '2014/10/27/img7_1.jpg', 1414404998),
(69, '{"type":"fit","width":"300","height":"300","forced":true}', 'f0249af869c6a9c8e020f08e2ff70167', 'img12.jpg', '2014/10/27/img12_1.jpg', 1414405378),
(70, '{"type":"fit","width":"300","height":"300","forced":true}', 'f0249af869c6a9c8e020f08e2ff70167', 'img10.jpg', '2014/10/27/img10_1.jpg', 1414405378),
(71, '{"type":"fit","width":"300","height":"300","forced":true}', 'f0249af869c6a9c8e020f08e2ff70167', 'img8.jpg', '2014/10/27/img8_2.jpg', 1414405378),
(72, '{"type":"fit","width":"300","height":"300","forced":true}', 'f0249af869c6a9c8e020f08e2ff70167', 'img7.jpg', '2014/10/27/img7_2.jpg', 1414405378),
(73, '{"type":"height","width":"300","height":"300","forced":true}', '82dbf149426e4772d215b0db1a4659a0', 'img12.jpg', '2014/10/27/img12_2.jpg', 1414405444),
(74, '{"type":"height","width":"300","height":"300","forced":true}', '82dbf149426e4772d215b0db1a4659a0', 'img10.jpg', '2014/10/27/img10_2.jpg', 1414405444),
(75, '{"type":"height","width":"300","height":"300","forced":true}', '82dbf149426e4772d215b0db1a4659a0', 'img8.jpg', '2014/10/27/img8_3.jpg', 1414405444),
(76, '{"type":"height","width":"300","height":"300","forced":true}', '82dbf149426e4772d215b0db1a4659a0', 'img7.jpg', '2014/10/27/img7_3.jpg', 1414405444),
(77, '{"type":"center","width":"300","height":"300","forced":true}', '33a580e45fe2607103b5c088ff4680e5', 'img12.jpg', '2014/10/27/img12_3.jpg', 1414405477),
(78, '{"type":"center","width":"300","height":"300","forced":true}', '33a580e45fe2607103b5c088ff4680e5', 'img10.jpg', '2014/10/27/img10_3.jpg', 1414405477),
(79, '{"type":"center","width":"300","height":"300","forced":true}', '33a580e45fe2607103b5c088ff4680e5', 'img8.jpg', '2014/10/27/img8_4.jpg', 1414405477),
(80, '{"type":"center","width":"300","height":"300","forced":true}', '33a580e45fe2607103b5c088ff4680e5', 'img7.jpg', '2014/10/27/img7_4.jpg', 1414405477),
(81, '{"type":"center","width":"300","height":"200","forced":true}', 'e1957407bf9382a4c819734713c15ae1', 'img12.jpg', '2014/10/27/img12_4.jpg', 1414405808),
(82, '{"type":"center","width":"300","height":"200","forced":true}', 'e1957407bf9382a4c819734713c15ae1', 'img10.jpg', '2014/10/27/img10_4.jpg', 1414405808),
(83, '{"type":"center","width":"300","height":"200","forced":true}', 'e1957407bf9382a4c819734713c15ae1', 'img8.jpg', '2014/10/27/img8_5.jpg', 1414405808),
(84, '{"type":"center","width":"300","height":"200","forced":true}', 'e1957407bf9382a4c819734713c15ae1', 'img7.jpg', '2014/10/27/img7_5.jpg', 1414405808),
(85, '{"type":"center","width":"300","height":"200","forced":true}', 'e1957407bf9382a4c819734713c15ae1', 'img11.jpg', '2014/10/28/img11.jpg', 1414488655),
(91, '{"type":"fit","width":140,"height":140,"forced":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'Koala.jpg', '2014/10/30/Koala.jpg', 1414654008),
(89, '{"type":"width","width":100,"forced":true}', '1823449246b5b8869573ebae27a30a1b', 'img9.jpg', '2014/10/29/img9.jpg', 1414575806),
(90, '{"type":"center","width":"300","height":"200","forced":true}', 'e1957407bf9382a4c819734713c15ae1', 'img9.jpg', '2014/10/29/img9_1.jpg', 1414575808),
(92, '{"type":"fit","width":140,"height":140,"forced":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'Hydrangeas.jpg', '2014/10/31/Hydrangeas.jpg', 1414738961),
(93, '{"type":"fit","width":800,"height":600}', '41db051fa26a4946666a03e9c8575ac6', 'Hydrangeas.jpg', '2014/10/31/Hydrangeas_1.jpg', 1414738965),
(94, '{"type":"center","width":295,"height":164,"quality":90}', '67a94e830545c03ce8927acebb7357ba', 'Hydrangeas.jpg', '2014/10/31/Hydrangeas_2.jpg', 1414738965);

-- --------------------------------------------------------

--
-- Table structure for table `ip_revision`
--

CREATE TABLE IF NOT EXISTS `ip_revision` (
  `revisionId` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` int(11) NOT NULL DEFAULT '0',
  `isPublished` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`revisionId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `ip_revision`
--

INSERT INTO `ip_revision` (`revisionId`, `pageId`, `isPublished`, `createdAt`) VALUES
(1, 4, 0, '2014-10-13 14:00:56'),
(2, 5, 0, '2014-10-13 14:00:56'),
(3, 4, 0, '2014-10-13 14:01:08'),
(6, 4, 0, '2014-10-15 14:53:46'),
(7, 5, 0, '2014-10-15 15:12:29'),
(8, 10, 0, '2014-10-15 15:13:39'),
(9, 10, 0, '2014-10-15 15:13:39'),
(10, 11, 0, '2014-10-15 15:18:24'),
(11, 11, 0, '2014-10-15 15:18:24'),
(12, 18, 0, '2014-10-15 15:25:19'),
(13, 18, 0, '2014-10-15 15:25:19'),
(14, 18, 0, '2014-10-15 15:25:52'),
(15, 18, 0, '2014-10-15 15:26:57'),
(16, 17, 0, '2014-10-15 15:27:32'),
(17, 17, 0, '2014-10-15 15:27:32'),
(18, 17, 1, '2014-10-15 15:28:03'),
(19, 16, 0, '2014-10-15 15:28:36'),
(20, 16, 0, '2014-10-15 15:28:36'),
(21, 16, 1, '2014-10-15 15:29:11'),
(22, 11, 0, '2014-10-15 15:29:39'),
(23, 17, 0, '2014-10-15 15:30:29'),
(24, 18, 1, '2014-10-15 15:30:54'),
(25, 18, 0, '2014-10-15 15:31:06'),
(26, 13, 0, '2014-10-15 15:33:37'),
(27, 13, 0, '2014-10-15 15:33:42'),
(28, 13, 0, '2014-10-15 15:36:31'),
(29, 13, 0, '2014-10-15 15:37:33'),
(30, 12, 0, '2014-10-15 15:38:08'),
(31, 12, 0, '2014-10-15 15:38:18'),
(32, 12, 1, '2014-10-15 15:40:45'),
(33, 4, 0, '2014-10-18 12:59:12'),
(34, 4, 0, '2014-10-18 12:59:21'),
(35, 10, 0, '2014-10-18 15:51:21'),
(36, 10, 0, '2014-10-18 16:39:51'),
(37, 10, 0, '2014-10-18 16:40:07'),
(38, 4, 0, '2014-10-21 14:01:20'),
(39, 4, 0, '2014-10-21 14:03:08'),
(40, 4, 0, '2014-10-21 14:05:24'),
(41, 4, 0, '2014-10-21 14:43:26'),
(42, 4, 0, '2014-10-21 15:28:35'),
(43, 5, 0, '2014-10-21 15:34:15'),
(44, 4, 0, '2014-10-21 15:35:08'),
(45, 5, 0, '2014-10-21 16:06:33'),
(46, 4, 0, '2014-10-22 13:39:12'),
(47, 4, 0, '2014-10-22 13:39:37'),
(48, 10, 0, '2014-10-22 14:04:36'),
(49, 10, 1, '2014-10-22 14:05:04'),
(50, 10, 0, '2014-10-22 14:44:16'),
(51, 4, 0, '2014-10-24 09:44:25'),
(52, 4, 0, '2014-10-24 09:59:52'),
(53, 4, 0, '2014-10-24 10:19:17'),
(54, 4, 0, '2014-10-24 10:19:25'),
(55, 4, 0, '2014-10-24 16:16:47'),
(56, 16, 0, '2014-10-24 17:08:35'),
(57, 13, 0, '2014-10-24 17:22:28'),
(58, 13, 0, '2014-10-24 17:25:47'),
(59, 13, 0, '2014-10-24 17:27:03'),
(60, 5, 0, '2014-10-24 17:29:17'),
(61, 4, 0, '2014-10-24 17:30:31'),
(62, 4, 0, '2014-10-24 17:32:27'),
(63, 4, 0, '2014-10-27 03:48:26'),
(64, 4, 0, '2014-10-27 03:48:26'),
(65, 4, 0, '2014-10-27 03:52:34'),
(66, 4, 0, '2014-10-27 10:44:31'),
(67, 4, 0, '2014-10-28 09:06:22'),
(68, 4, 0, '2014-10-28 09:06:26'),
(69, 13, 0, '2014-10-29 02:40:42'),
(70, 13, 0, '2014-10-29 02:40:50'),
(71, 13, 0, '2014-10-29 02:40:56'),
(72, 13, 0, '2014-10-29 02:41:32'),
(73, 13, 0, '2014-10-29 02:43:04'),
(74, 13, 0, '2014-10-29 02:43:22'),
(75, 13, 0, '2014-10-29 02:43:41'),
(76, 13, 0, '2014-10-29 02:44:03'),
(77, 4, 0, '2014-10-29 07:06:16'),
(78, 4, 0, '2014-10-29 07:32:35'),
(79, 4, 0, '2014-10-29 07:50:31'),
(80, 4, 0, '2014-10-29 08:33:35'),
(81, 4, 0, '2014-10-29 08:39:00'),
(82, 11, 1, '2014-10-29 08:39:50'),
(83, 13, 0, '2014-10-29 08:40:49'),
(84, 13, 0, '2014-10-29 08:48:34'),
(85, 13, 0, '2014-10-29 08:49:16'),
(86, 13, 0, '2014-10-29 08:49:40'),
(87, 13, 0, '2014-10-29 09:13:06'),
(88, 4, 0, '2014-10-29 10:21:14'),
(89, 5, 0, '2014-10-29 10:21:31'),
(90, 11, 0, '2014-10-29 10:21:38'),
(91, 13, 1, '2014-10-29 10:22:43'),
(92, 5, 0, '2014-10-30 04:26:48'),
(93, 5, 0, '2014-10-30 04:26:55'),
(94, 5, 0, '2014-10-30 04:33:28'),
(95, 5, 0, '2014-10-30 04:34:00'),
(96, 4, 0, '2014-10-30 04:36:12'),
(97, 4, 1, '2014-10-30 04:36:52'),
(98, 5, 0, '2014-10-30 04:37:24'),
(99, 5, 0, '2014-10-30 04:40:25'),
(100, 13, 0, '2014-10-30 08:29:42'),
(101, 5, 0, '2014-10-31 06:57:59'),
(102, 12, 0, '2014-10-31 07:02:50'),
(103, 5, 1, '2014-10-31 07:07:21'),
(104, 5, 0, '2014-10-31 07:07:58'),
(105, 4, 0, '2014-10-31 09:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `ip_storage`
--

CREATE TABLE IF NOT EXISTS `ip_storage` (
  `plugin` varchar(40) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `pluginkey` (`plugin`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_storage`
--

INSERT INTO `ip_storage` (`plugin`, `key`, `value`) VALUES
('Ip', 'version', '"4.2.7"'),
('Ip', 'dbVersion', '68'),
('Ip', 'theme', '"Air"'),
('Ip', 'cachedBaseUrl', '"http:\\/\\/nhahanghoason.com\\/"'),
('Ip', 'lastSystemMessageSent', '"50545717f97417533be2ef4278a49e3f"'),
('Ip', 'lastSystemMessageShown', '"18ee961f7585f2ab8dd0727d628bbbbd"'),
('Ip', 'themeChanged', '1414163048'),
('Ip', 'cacheVersion', '5'),
('Config', 'Config.multilingual', '"1"'),
('Config', 'Config.automaticCron', '"1"'),
('Config', 'Config.cronPassword', '336123'),
('Config', 'Config.defaultImageQuality', '80'),
('Config', 'Config.availableFonts', '"Arial,Arial,Helvetica,sans-serif\\nArial Black,Arial Black,Gadget,sans-serif\\nComic Sans MS,Comic Sans MS,cursive\\nCourier New,Courier New,Courier,monospace\\nGeorgia,Georgia,serif\\nImpact,Charcoal,sans-serif\\nLucida Console,Monaco,monospace\\nLucida Sans Unicode,Lucida Grande,sans-serif\\nPalatino Linotype,Book Antiqua,Palatino,serif\\nTahoma,Geneva,sans-serif\\nTimes New Roman,Times,serif\\nTrebuchet MS,Helvetica,sans-serif\\nVerdana,Geneva,sans-serif\\nGill Sans,Geneva,sans-serif"'),
('Config', 'Config.reservedDirs', '["file","install","Ip","Plugin","update","Theme","index.php","admin","admin.php"]'),
('Config', 'Content.widgetGalleryQuality', '90'),
('Config', 'Content.widgetImageWidth', '1180'),
('Config', 'Content.widgetImageHeight', '400'),
('Config', 'Content.widgetGalleryWidth', '295'),
('Config', 'Content.widgetGalleryHeight', '164'),
('Config', 'Config.lightboxWidth', '800'),
('Config', 'Config.lightboxHeight', '600'),
('Config', 'Design.themeDirs', '""'),
('Config', 'Email.hourlyLimit', '100'),
('Config', 'Pages.hideNewPages', '0'),
('Config', 'Config.vi.websiteEmail', '"vothanhtai86@gmail.com"'),
('Config', 'Config.vi.websiteTitle', '"NH Hoa Son"'),
('Ip', 'websiteId', '"YEqWr9DizXy5kGTDbpRO5KcXwL6Ts5iY"'),
('Ip', 'getImpressPagesSupport', '"1"'),
('Cron', 'lastExecutionStart', '1414746036'),
('Admin', 'failedLogins', '[{"username":"admin","ip":"42.117.67.186","time":1414741447}]'),
('Cron', 'lastExecutionEnd', '1414746036'),
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
('Config', 'AsdBlog.blockName', '"main"'),
('Config', 'SMTPConfig.server', '"112.78.2.183"'),
('Config', 'SMTPConfig.smtpAuth', '1'),
('Config', 'SMTPConfig.username', '"info@nhahanghoason.com"'),
('Config', 'SMTPConfig.password', '"namson"'),
('Config', 'SMTPConfig.secure', '""'),
('Config', 'AddThis.slotlayout', '"compact"'),
('Config', 'AddThis.widgetlayout', '"horizontal"'),
('Config', 'AddThis.numberOfIcons', '"5"'),
('Config', 'AddThis.enableCounter', '0'),
('Config', 'AddThis.addThisUid', '""');

-- --------------------------------------------------------

--
-- Table structure for table `ip_theme_storage`
--

CREATE TABLE IF NOT EXISTS `ip_theme_storage` (
  `theme` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  UNIQUE KEY `themeKey` (`theme`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_theme_storage`
--

INSERT INTO `ip_theme_storage` (`theme`, `key`, `value`) VALUES
('Air', 'textColor', '"#000"'),
('Air', 'linkColor', '"#019bd4"'),
('Air', 'bodyBackgroundColor', '"#fff"'),
('Air', 'backgroundColor', '"#fff"'),
('Air', 'collapseSidebarMenu', '"no"');

-- --------------------------------------------------------

--
-- Table structure for table `ip_widget`
--

CREATE TABLE IF NOT EXISTS `ip_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `deletedAt` int(11) DEFAULT NULL COMMENT 'unix timestamp',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=344 ;

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
(7, 'Heading', 'default', '{"title":"TH\\u1ef0C \\u0110\\u01a0N","level":"3"}', 0, 1, 'side1', 0, 1, 1, 1413384732, 1413384732, 1413993025),
(8, 'Text', 'default', '{"text":"<p>\\u00a0D\\u00ca NU\\u0301I NINH BI\\u0300NH KHAI VI\\u0323<br \\/>- Ti\\u1ebft canh d\\u00ea nu\\u0301i Ninh Bi\\u0300nh<br \\/>- \\u00d3c d\\u00ea h\\u1ea7m ng\\u1ea3i c\\u1ee9u<br \\/>- Ch\\u00e2n d\\u00ea h\\u1ea7m ng\\u1ea3i c\\u1ee9u<br \\/>- Khoai t\\u00e2y chi\\u00ean<br \\/>- Ng\\u00f4 chi\\u00ean b\\u01a1<br \\/>- Rau s\\u1ea1ch c\\u00e1c lo\\u1ea1i<br \\/>- Salad rau qu\\u1ea3<br \\/>- C\\u1ee7 qu\\u1ea3 c\\u00e1c lo\\u1ea1i<br \\/>D\\u00ca NU\\u0301I MO\\u0301N CHI\\u0301NH<br \\/>- N\\u1ea7m d\\u00ea Ninh B\\u00ecnh n\\u01b0\\u1edbng<br \\/>- T\\u00e1i d\\u00ea n\\u00fai Ninh B\\u00ecnh<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh h\\u1ea5p x\\u1ea3<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh x\\u00e0o l\\u0103n<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh n\\u01b0\\u1edbng<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh \\u00e1p ch\\u1ea3o<br \\/>- D\\u00ea n\\u00e9 Ninh B\\u00ecnh<br \\/>- Ng\\u1ecdc d\\u01b0\\u01a1ng h\\u1ea7m<br \\/>D\\u00ca NU\\u0301I MO\\u0301N CU\\u00d4\\u0301I<br \\/>- D\\u00ea Ninh B\\u00ecnh s\\u1ed1t vang<br \\/>- D\\u00ea n\\u00fai Ninh B\\u00ecnh om m\\u1ebb<br \\/>- D\\u00ea Ninh B\\u00ecnh x\\u00e1o m\\u0103ng<br \\/>- L\\u1ea9u d\\u00ea Ninh B\\u00ecnh<br \\/>- C\\u01a1m ch\\u00e1y Ninh B\\u00ecnh<br \\/>- Ch\\u00e1o d\\u00ea \\u0111\\u1eadu xanh<br \\/>- C\\u01a1m ch\\u00e1y - tim c\\u1eadt s\\u1ed1t<br \\/>D\\u00ca N\\u00daI NINH B\\u00ccNH \\/SU\\u1ea4T<br \\/>- Su\\u1ea5t 100.000\\/kh\\u00e1ch<br \\/>- Su\\u1ea5t 120.000\\/kh\\u00e1ch<br \\/>- Su\\u1ea5t 150.000\\/kh\\u00e1ch<br \\/>- Su\\u1ea5t 200.000\\/kh\\u00e1ch<br \\/>D\\u00ca NU\\u0301I NINH BI\\u0300NH T\\u01af\\u01a0I<br \\/>- Ch\\u00e2n d\\u00ea Ninh B\\u00ecnh t\\u01b0\\u01a1i<br \\/>- Th\\u1ecbt d\\u00ea Ninh B\\u00ecnh t\\u01b0\\u01a1i<br \\/>- Ng\\u1ecdc d\\u01b0\\u01a1ng (c\\u00e0 d\\u00ea)<br \\/>- D\\u00ea thui nguy\\u00ean con<br \\/>- D\\u00ea s\\u1ed1ng nguy\\u00ean con<br \\/>- S\\u1ea3n ph\\u1ea9m kh\\u00e1c t\\u1eeb d\\u00ea<br \\/>- Cao d\\u00ea Ninh B\\u00ecnh<br \\/>\\u0110\\u1eb6C S\\u1ea2N NINH BINH<br \\/>- M\\u1eafm t\\u00e9p Gia Vi\\u1ec5n<\\/p>"}', 0, 1, 'side1', 40, 1, 1, 1413384772, 1413384772, 1413902604),
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
(29, 'Heading', 'default', '{"title":"Nam at erat dictum, elementum arcu id, volutpat nulla.","level":"3"}', 21, 0, 'main', -40, 1, 0, 1413386924, 1413386924, NULL),
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
(46, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","required":"0"},{"label":"Email","type":"Email","required":"0"},{"label":"N\\u1ed9i dung","type":"Textarea","required":"0"}],"success":"","sendTo":"default","emails":"","buttonText":""}', 29, 0, 'main', 40, 1, 0, 1413387248, 1413387248, NULL),
(47, 'Gallery', 'default', '{"images":[{"imageOriginal":"img7.jpg","title":"img7.jpg"},{"imageOriginal":"img8.jpg","title":"img8.jpg"},{"imageOriginal":"img9.jpg","title":"img9.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img12.jpg","title":"img12.jpg"}]}', 31, 0, 'main', 0, 1, 0, 1413387508, 1413387508, NULL),
(48, 'Heading', 'default', '{"title":"Th\\u01b0 vi\\u1ec7n \\u1ea3nh","level":"3"}', 31, 0, 'main', -40, 1, 0, 1413387630, 1413387630, NULL),
(49, 'Heading', 'default', '{"title":"Th\\u01b0 vi\\u1ec7n \\u1ea3nh","level":"3"}', 32, 0, 'main', -40, 1, 0, 1413387630, 1413387630, NULL),
(50, 'Gallery', 'default', '{"images":[{"imageOriginal":"Hydrangeas.jpg","title":"Hydrangeas.jpg"},{"imageOriginal":"img7.jpg","title":"img7.jpg"},{"imageOriginal":"img8.jpg","title":"img8.jpg"},{"imageOriginal":"img9.jpg","title":"img9.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img12.jpg","title":"img12.jpg"}]}', 32, 0, 'main', 0, 1, 0, 1413387508, 1413387508, NULL),
(51, 'AsdSlider', 'default', 'null', 33, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(52, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 33, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(53, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 33, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(54, 'AsdSlider', 'default', 'null', 34, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(55, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 34, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(56, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 34, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(57, 'ProductList', 'default', '[]', 9, 0, 'main', -40, 1, 0, 1413646161, 1413646161, NULL),
(58, 'CategoryList', 'default', '[]', 0, 1, 'side1', 20, 1, 0, 1413646254, 1413646254, NULL),
(59, 'ProductList', 'default', '[]', 35, 0, 'main', -40, 1, 1, 1413646161, 1413646161, 1413650389),
(60, 'Heading', 'default', '[]', 35, 0, 'main', 0, 1, 0, 1413386123, 1413386123, NULL),
(61, 'Heading', 'default', '[]', 36, 0, 'main', 0, 1, 0, 1413386123, 1413386123, NULL),
(62, 'Heading', 'default', '{"title":"Thuc don","level":"3"}', 36, 0, 'main', -40, 1, 0, 1413650398, 1413650398, NULL),
(63, 'Heading', 'default', '{"title":"Thuc don","level":"3"}', 37, 0, 'main', -40, 1, 0, 1413650398, 1413650398, NULL),
(64, 'Heading', 'default', '[]', 37, 0, 'main', 0, 1, 0, 1413386123, 1413386123, NULL),
(65, 'Slider', 'default', '{"images":[{"imageOriginal":"img12.jpg","title":"img12.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img8.jpg","title":"img8.jpg"},{"imageOriginal":"img7.jpg","title":"img7.jpg"}]}', 34, 0, 'slider', 0, 1, 0, 1413900018, 1413900018, NULL),
(66, 'AsdSlider', 'default', 'null', 38, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(67, 'Slider', 'default', '{"images":[{"imageOriginal":"img12.jpg","title":"img12.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img8.jpg","title":"img8.jpg"},{"imageOriginal":"img7.jpg","title":"img7.jpg"}]}', 38, 0, 'slider', 0, 1, 1, 1413900018, 1413900018, 1413900183),
(68, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 38, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(69, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 38, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(70, 'AsdSlider', 'default', 'null', 39, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(71, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 39, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(72, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 39, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(73, 'AsdSlider', 'default', 'null', 40, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(74, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 40, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(75, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 40, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(76, 'AsdSlider', 'default', 'null', 41, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(77, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 41, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(78, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 41, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(79, 'AsdSlider', 'default', 'null', 42, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL);
INSERT INTO `ip_widget` (`id`, `name`, `skin`, `data`, `revisionId`, `languageId`, `blockName`, `position`, `isVisible`, `isDeleted`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(80, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 42, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(81, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 42, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(82, 'Heading', 'default', '{"title":"Page content","level":"1"}', 43, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(83, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0<\\/p>"}', 43, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(84, 'AsdSlider', 'default', 'null', 44, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(85, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 44, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(86, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 44, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(87, 'Heading', 'default', '{"title":"Page content","level":"1"}', 45, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(88, 'Text', 'default', '{"text":"<p><span><img src=\\"http:\\/\\/localhost\\/nhhs\\/Plugin\\/TinyMceComplete\\/filemanager\\/..\\/..\\/..\\/file\\/manual\\/apple-touch-icon-144-precomposed.png\\" alt=\\"\\" width=\\"144\\" height=\\"144\\" \\/><\\/span><\\/p>\\n<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0<\\/p>\\n<p><\\/p>"}', 45, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(89, 'AsdSlider', 'default', 'null', 46, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(90, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 46, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(91, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>"}', 46, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(92, 'AsdSlider', 'default', 'null', 47, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(93, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 47, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(94, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 47, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(95, 'Heading', 'default', '{"title":"test","level":"2"}', 37, 0, 'main', -20, 1, 0, 1413986668, 1413986668, NULL),
(96, 'Heading', 'default', '{"title":"Thuc don","level":"3"}', 48, 0, 'main', -40, 1, 0, 1413650398, 1413650398, NULL),
(97, 'Heading', 'default', '{"title":"test","level":"2"}', 48, 0, 'main', -20, 1, 1, 1413986668, 1413986668, 1413986700),
(98, 'Heading', 'default', '[]', 48, 0, 'main', 0, 1, 1, 1413386123, 1413386123, 1413986703),
(99, 'Heading', 'default', '{"title":"Thuc don","level":"3"}', 49, 0, 'main', -40, 1, 0, 1413650398, 1413650398, NULL),
(100, 'Heading', 'default', '{"title":"Thuc don","level":"3"}', 50, 0, 'main', -40, 1, 0, 1413650398, 1413650398, NULL),
(101, 'AsdSlider', 'default', 'null', 51, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(102, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 51, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(103, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 51, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(104, 'Html', 'default', '{"html":"<b>Hello world<\\/b>"}', 51, 0, 'main', 130, 1, 0, 1414144593, 1414144593, NULL),
(105, 'AsdSlider', 'default', 'null', 52, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(106, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 52, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(107, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 52, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(108, 'Html', 'default', '{"html":"<b>Hello world<\\/b>"}', 52, 0, 'main', 130, 1, 1, 1414144593, 1414144593, 1414145757),
(109, 'IpRichText', 'default', '[]', 52, 0, 'main', 170, 1, 1, 1414144848, 1414144848, 1414144873),
(110, 'IpRichText', 'default', '[]', 52, 0, 'main', 130, 1, 1, 1414145761, 1414145761, 1414145771),
(111, 'AsdSlider', 'default', 'null', 53, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(112, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 53, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(113, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 53, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(114, 'AsdSlider', 'default', 'null', 54, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(115, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 54, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(116, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 54, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(117, 'AsdSlider', 'default', 'null', 55, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(118, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 55, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(119, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 55, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(120, 'Heading', 'default', '{"title":"Nam at erat dictum, elementum arcu id, volutpat nulla.","level":"3"}', 56, 0, 'main', -40, 1, 0, 1413386924, 1413386924, NULL),
(121, 'Text', 'default', '{"text":"<p>Nam at erat dictum, elementum arcu id, volutpat nulla. Morbi aliquam, est vel volutpat eleifend, nibh purus molestie tellus, a imperdiet sapien arcu et quam. Quisque feugiat nulla ut risus sagittis condimentum eu eu turpis. Praesent porta, magna sit amet ultricies faucibus, libero nunc volutpat purus, non mattis nulla sem non massa. Proin tincidunt mollis mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia eu elit et tristique. Sed nec sapien eu arcu iaculis imperdiet. Aliquam eros elit, scelerisque non leo non, malesuada aliquam arcu. Sed nisl libero, ultricies vel vulputate non, vestibulum nec lacus.<\\/p>\\n<p>Suspendisse molestie magna a quam lobortis, vitae vulputate lectus rutrum. Fusce eleifend sem quis enim mollis hendrerit. Nunc eros justo, dictum id interdum ut, tempus varius metus. Vivamus facilisis dolor id augue pretium ultricies. Aliquam rutrum dui ex, ac blandit mauris vulputate id. Mauris venenatis fermentum odio, eget pulvinar eros sagittis non. Vestibulum maximus sed sem ut dictum.<\\/p>\\n<p>Nulla rhoncus, libero at rutrum pharetra, nisi neque ullamcorper lorem, nec posuere libero ligula et velit. Vestibulum accumsan tincidunt nisi nec viverra. Donec molestie dui massa, eget consequat lectus efficitur eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus bibendum felis, ut maximus risus varius sed. Maecenas lacinia vitae est a laoreet. In accumsan dolor vel felis tincidunt, ac vehicula risus porttitor. Pellentesque semper lacus eu tellus fermentum fringilla. Vivamus suscipit felis sit amet sem varius, sed laoreet enim interdum. Vivamus feugiat mauris magna. Sed at interdum turpis.<\\/p>\\n<p>\\u00a0<\\/p>"}', 56, 0, 'main', 0, 1, 0, 1413386944, 1413386944, NULL),
(122, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 57, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(123, 'Map', 'default', '{"lat":"20.16137443109328","lng":"106.006178855896","zoom":"17","mapTypeId":"roadmap","height":"250","markerlat":"20.161495288243938","markerlng":"106.00512206554413"}', 57, 0, 'main', 20, 1, 0, 1413387264, 1413387264, NULL),
(124, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"0"},{"label":"Email","type":"Email","options":"","required":"0"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"0"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 57, 0, 'main', 40, 1, 0, 1413387248, 1413387248, NULL),
(125, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 58, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(126, 'Map', 'default', '{"lat":"20.16137443109328","lng":"106.006178855896","zoom":"17","mapTypeId":"roadmap","height":"250","markerlat":"20.161495288243938","markerlng":"106.00512206554413"}', 58, 0, 'main', 20, 1, 0, 1413387264, 1413387264, NULL),
(127, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 58, 0, 'main', 40, 1, 0, 1413387248, 1413387248, NULL),
(128, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 59, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(129, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 59, 0, 'column161_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(130, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 59, 0, 'column161_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(131, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 60, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(132, 'Text', 'default', '{"text":"<p><span><img src=\\"http:\\/\\/localhost\\/nhhs\\/Plugin\\/TinyMceComplete\\/filemanager\\/..\\/..\\/..\\/file\\/manual\\/apple-touch-icon-144-precomposed.png\\" alt=\\"\\" width=\\"144\\" height=\\"144\\" \\/><\\/span><\\/p>\\n<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0<\\/p>\\n<p><\\/p>"}', 60, 0, 'main', 90, 1, 1, 1413208856, 1413208856, 1414557904),
(133, 'Slider', 'default', '{"images":[{"imageOriginal":"img12.jpg","title":"img12.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg"}]}', 55, 0, 'main', 10, 1, 0, 1414171803, 1414171803, NULL),
(134, 'AsdSlider', 'default', 'null', 61, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(135, 'Slider', 'default', '{"images":[{"imageOriginal":"img12.jpg","title":"img12.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg","cropX1":"-912","cropY1":"-571","cropX2":"2829","cropY2":"1768"}]}', 61, 0, 'main', 10, 1, 0, 1414171803, 1414171803, NULL),
(136, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 61, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(137, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 61, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(138, 'AsdSlider', 'default', 'null', 62, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(139, 'Slider', 'default', '{"images":[{"imageOriginal":"img12.jpg","title":"img12.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg","cropX1":"-912","cropY1":"-571","cropX2":"2829","cropY2":"1768"}]}', 62, 0, 'main', 10, 1, 1, 1414171803, 1414171803, 1414381699),
(140, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 62, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(141, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 62, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(142, 'AsdSlider', 'default', 'null', 63, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(143, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 63, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(144, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 63, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(145, 'AsdSlider', 'default', 'null', 64, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(146, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 64, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(147, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 64, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(148, 'AsdSlider', 'default', 'null', 65, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(149, 'Heading', 'default', '{"title":"GI\\u1edaI THI\\u1ec6U","level":"3"}', 65, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(150, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 65, 0, 'main', 90, 1, 0, 1413208856, 1413208856, NULL),
(151, 'AsdSlider', 'default', 'null', 66, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(152, 'Heading', 'default', '{"title":"C\\u00c1C M\\u00d3N M\\u1edaI","level":"3"}', 66, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(153, 'Text', 'default', '{"text":"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\\n<p>NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/p>"}', 66, 0, 'main', 90, 1, 1, 1413208856, 1413208856, 1414486386),
(154, 'ProductSlider', 'default', '[]', 66, 0, 'main', 90, 1, 0, 1414486394, 1414486394, NULL),
(155, 'AsdSlider', 'default', 'null', 67, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(156, 'Heading', 'default', '{"title":"C\\u00c1C M\\u00d3N M\\u1edaI","level":"3"}', 67, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(157, 'ProductSlider', 'default', '[]', 67, 0, 'main', 90, 1, 0, 1414486394, 1414486394, NULL),
(158, 'AsdSlider', 'default', 'null', 68, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(159, 'Heading', 'default', '{"title":"C\\u00c1C M\\u00d3N M\\u1edaI","level":"3"}', 68, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(160, 'ProductSlider', 'default', '{"title":"tai","text":"vo1"}', 68, 0, 'main', 90, 1, 0, 1414486394, 1414486394, NULL),
(161, 'NestedColumns', 'default', '[]', 59, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(162, 'Heading', 'default', '[]', 59, 0, 'column161_1', 0, 1, 1, 1414550265, 1414550265, 1414550270),
(163, 'Heading', 'default', '[]', 59, 0, 'column161_2', 0, 1, 1, 1414550274, 1414550274, 1414550276),
(164, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><strong style=\\"font-size: 16px;\\">\\u00a0<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website: www.nhahanghoason.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>"}', 59, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(165, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 69, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(166, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 69, 0, 'column169_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(167, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 69, 0, 'column169_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(168, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><strong style=\\"font-size: 16px;\\">\\u00a0<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website: www.nhahanghoason.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>"}', 69, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(169, 'NestedColumns', 'default', '{"cols":["column169_1","column169_2"],"widths":[50,50]}', 69, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(170, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 70, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(171, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 70, 0, 'column174_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(172, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 70, 0, 'column174_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(173, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><strong style=\\"font-size: 16px;\\">\\u00a0<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website: www.nhahanghoason.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>"}', 70, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(174, 'NestedColumns', 'default', '{"cols":["column174_1","column174_2"],"widths":[50,50]}', 70, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(175, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 71, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(176, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 71, 0, 'column179_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(177, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 71, 0, 'column179_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(178, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website: www.nhahanghoason.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>"}', 71, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(180, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 72, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(181, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 72, 0, 'column184_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(182, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 72, 0, 'column184_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(179, 'NestedColumns', 'default', '{"cols":["column179_1","column179_2"],"widths":[50,50]}', 71, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(183, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website: www.nhahanghoason.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>"}', 72, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(184, 'NestedColumns', 'default', '{"cols":["column184_1","column184_2"],"widths":[50,50]}', 72, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(185, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 73, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(186, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 73, 0, 'column189_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(187, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 73, 0, 'column189_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(188, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website: www.nhahanghoason.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>"}', 73, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(189, 'NestedColumns', 'default', '{"cols":["column189_1","column189_2"],"widths":[50,50]}', 73, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(190, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 74, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(191, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 74, 0, 'column194_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(192, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 74, 0, 'column194_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(193, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website: www.nhahanghoason.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\"><\\/span><\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>"}', 74, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(194, 'NestedColumns', 'default', '{"cols":["column194_1","column194_2"],"widths":[50,50]}', 74, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(195, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 75, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(196, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 75, 0, 'column199_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(197, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 75, 0, 'column199_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(198, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website: www.nhahanghoason.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>\\n<p>\\u00a0<\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>"}', 75, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(200, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 76, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(199, 'NestedColumns', 'default', '{"cols":["column199_1","column199_2"],"widths":[50,50]}', 75, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(201, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 76, 0, 'column204_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(202, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 76, 0, 'column204_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(203, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website: www.nhahanghoason.com<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>\\n<p>\\u00a0<\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>"}', 76, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(204, 'NestedColumns', 'default', '{"cols":["column204_1","column204_2"],"widths":[50,50]}', 76, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(205, 'Divider', 'default', '[]', 60, 0, 'main', 70, 1, 1, 1414553122, 1414553122, 1414554394),
(206, 'Image', 'default', '[]', 60, 0, 'main', 60, 1, 1, 1414553404, 1414553404, 1414553408),
(207, 'Html', 'default', '[]', 60, 0, 'main', 60, 1, 1, 1414553419, 1414553419, 1414554392),
(208, 'Video', 'default', '{"url":"https:\\/\\/www.youtube.com\\/watch?v=LqP-MCZBo9Y","size":"auto","width":"853","height":"480","ratio":"16:9"}', 68, 0, 'main', 10, 1, 1, 1414553872, 1414553872, 1414553963),
(209, 'File', 'default', '[]', 68, 0, 'main', 10, 1, 1, 1414554247, 1414554247, 1414554262),
(210, 'WidgetSkeleton', 'default', '{"title":"hello","text":"a"}', 60, 0, 'main', 70, 1, 1, 1414554401, 1414554401, 1414557317),
(211, 'WidgetSkeleton', 'default', '{"title":"etsg","text":"sdgdg"}', 60, 0, 'main', 70, 1, 1, 1414557350, 1414557350, 1414570175),
(212, 'Text', 'default', '{"text":"<p><span><img src=\\"http:\\/\\/localhost\\/nhhs\\/Plugin\\/TinyMceComplete\\/filemanager\\/..\\/..\\/..\\/file\\/manual\\/apple-touch-icon-144-precomposed.png\\" alt=\\"\\" width=\\"144\\" height=\\"144\\" data-mce-src=\\"http:\\/\\/localhost\\/nhhs\\/Plugin\\/TinyMceComplete\\/filemanager\\/..\\/..\\/..\\/file\\/manual\\/apple-touch-icon-144-precomposed.png\\"><\\/span><\\/p>"}', 60, 0, 'main', 80, 1, 1, 1414557903, 1414557903, 1414557913),
(213, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>&nbsp;<\\/p><p><br><\\/p>"}', 60, 0, 'main', 85, 1, 0, 1414557904, 1414557904, NULL),
(214, 'ProductSlider', 'default', '[]', 60, 0, 'main', 82.5, 1, 1, 1414557904, 1414557904, 1414557916),
(215, 'AsdSlider', 'default', 'null', 77, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(216, 'Heading', 'default', '{"title":"C\\u00c1C M\\u00d3N M\\u1edaI","level":"3"}', 77, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL);
INSERT INTO `ip_widget` (`id`, `name`, `skin`, `data`, `revisionId`, `languageId`, `blockName`, `position`, `isVisible`, `isDeleted`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(217, 'ProductSlider', 'default', '{"html":"test123"}', 77, 0, 'main', 90, 1, 1, 1414486394, 1414486394, 1414567845),
(218, 'Html', 'default', '{"html":"hello"}', 77, 0, 'main', 130, 1, 1, 1414567374, 1414567374, 1414567944),
(219, 'ProductSlider', 'default', '{"html":"123"}', 77, 0, 'main', 90, 1, 1, 1414567850, 1414567850, 1414567953),
(220, 'AsdSlider', 'default', 'null', 78, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(221, 'Heading', 'default', '{"title":"C\\u00c1C M\\u00d3N M\\u1edaI","level":"3"}', 78, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(222, 'ProductSlider', 'default', '{"html":"1234"}', 78, 0, 'main', 90, 1, 0, 1414567963, 1414567963, NULL),
(223, 'AsdSlider', 'default', 'null', 79, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(224, 'Heading', 'default', '{"title":"C\\u00c1C M\\u00d3N M\\u1edaI","level":"3"}', 79, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(225, 'ProductSlider', 'default', '{"html":"123457"}', 79, 0, 'main', 90, 1, 0, 1414567963, 1414567963, NULL),
(226, 'Divider', 'default', '[]', 60, 0, 'main', 77.5, 1, 1, 1414569994, 1414569994, 1414570177),
(227, 'WidgetSkeleton', 'default', '[]', 60, 0, 'main', 67.5, 1, 1, 1414570180, 1414570180, 1414571960),
(228, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n \\u0111\\u1eb7c s\\u1ea3n","level":"3"}', 79, 0, 'main', 130, 1, 0, 1414571546, 1414571546, NULL),
(229, 'ProductSlider', 'feature', '[]', 79, 0, 'main', 170, 1, 0, 1414571602, 1414571602, NULL),
(230, 'AsdSlider', 'default', 'null', 80, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(231, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n m\\u1edbi","level":"3"}', 80, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(232, 'ProductSlider', 'default', '{"html":"123457"}', 80, 0, 'main', 90, 1, 0, 1414567963, 1414567963, NULL),
(233, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n \\u0111\\u1eb7c s\\u1ea3n","level":"3"}', 80, 0, 'main', 130, 1, 0, 1414571546, 1414571546, NULL),
(234, 'ProductSlider', 'feature', '[]', 80, 0, 'main', 170, 1, 0, 1414571602, 1414571602, NULL),
(235, 'AsdSlider', 'default', 'null', 81, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(236, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n m\\u1edbi","level":"3"}', 81, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(237, 'ProductSlider', 'default', '{"html":"123457"}', 81, 0, 'main', 90, 1, 0, 1414567963, 1414567963, NULL),
(238, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n \\u0111\\u1eb7c s\\u1ea3n","level":"3"}', 81, 0, 'main', 130, 1, 0, 1414571546, 1414571546, NULL),
(239, 'ProductSlider', 'feature', '[]', 81, 0, 'main', 170, 1, 0, 1414571602, 1414571602, NULL),
(240, 'Heading', 'default', '{"title":"Tin t\\u1ee9c &amp; S\\u1ef1 ki\\u1ec7n","level":"3"}', 22, 0, 'main', -40, 1, 0, 1414571974, 1414571974, NULL),
(241, 'Heading', 'default', '{"title":"Tin t\\u1ee9c &amp; S\\u1ef1 ki\\u1ec7n","level":"3"}', 82, 0, 'main', -40, 1, 0, 1414571974, 1414571974, NULL),
(242, 'AsdBlogList', 'default', '{"serialized":"securityToken=1680fcf8d0d5878b1c11721e8a83810d&antispam%5B%5D=91aa45e0904539b3f515477626be0ad2&antispam%5B%5D=91aa45e0904539b3f515477626be0ad2&data%5Bblog%5D%5BpageId%5D=11&data%5Bblog%5D%5Bplace%5D=15&data%5Bblog%5D%5Bparent%5D=0&data%5Bblog%5D%5Bpagination%5D%5Btype%5D=3&data%5Bblog%5D%5Bpagination%5D%5Blimit%5D=10&data%5Bblog%5D%5Boptions%5D%5Border%5D=0&data%5Bblog%5D%5Boptions%5D%5Bintrolimit%5D=300&data%5Bblog%5D%5Boptions%5D%5Ballowedtags%5D=%3Cb%3E%3Cspan%3E%3Ci%3E%3Cstrong%3E%3Cem%3E%3Ca%3E%3Cimg%3E%3Cp%3E&data%5Bblog%5D%5Boptions%5D%5Breadmore%5D=1&data%5Bblog%5D%5Boptions%5D%5Btitlelink%5D=1&data%5Bblog%5D%5Boptions%5D%5Bblockname%5D=main&data%5Bblog%5D%5Binfo%5D%5Bdate%5D=0&data%5Bblog%5D%5Binfo%5D%5Bcategory%5D=0&data%5Bblog%5D%5Bimage%5D%5Benable%5D=0&data%5Bblog%5D%5Bimage%5D%5Bwidth%5D=&data%5Bblog%5D%5Bimage%5D%5Bheight%5D="}', 82, 0, 'main', 0, 1, 0, 1413386314, 1413386314, NULL),
(243, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 83, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(244, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 83, 0, 'column247_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(245, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 83, 0, 'column247_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(246, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website:\\u00a0<a href=\\"http:\\/\\/nhahanghoason.com\\" target=\\"_blank\\">www.nhahanghoason.com<\\/a><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email: hoasonnhahang@gmail.com<\\/span><\\/p>\\n<p>\\u00a0<\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>"}', 83, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(247, 'NestedColumns', 'default', '{"cols":["column247_1","column247_2"],"widths":[50,50]}', 83, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(248, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 84, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(249, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 84, 0, 'column252_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(250, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 84, 0, 'column252_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(251, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website:\\u00a0<a href=\\"http:\\/\\/nhahanghoason.com\\" target=\\"_blank\\">www.nhahanghoason.com<\\/a><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email:\\u00a0<a href=\\"mailto:hoasonnhahang@gmail.com\\">hoasonnhahang@gmail.com<\\/a><\\/span><\\/p>\\n<p>\\u00a0<\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>"}', 84, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(252, 'NestedColumns', 'default', '{"cols":["column252_1","column252_2"],"widths":[50,50]}', 84, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(253, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 85, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(254, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 85, 0, 'column257_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(255, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 85, 0, 'column257_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(256, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website:\\u00a0<a href=\\"http:\\/\\/nhahanghoason.com\\" target=\\"_blank\\">www.nhahanghoason.com<\\/a><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email:\\u00a0<a href=\\"mailto:hoasonnhahang@gmail.com\\">hoasonnhahang@gmail.com<\\/a><\\/span><\\/p>\\n<p>\\u00a0<\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>"}', 85, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(257, 'NestedColumns', 'default', '{"cols":["column257_1","column257_2"],"widths":[50,50]}', 85, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(258, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 86, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(259, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 86, 0, 'column262_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(260, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 86, 0, 'column262_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(261, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website:\\u00a0<a href=\\"http:\\/\\/nhahanghoason.com\\" target=\\"_blank\\">www.nhahanghoason.com<\\/a><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email:\\u00a0<a href=\\"mailto:hoasonnhahang@gmail.com\\">hoasonnhahang@gmail.com<\\/a><\\/span><\\/p>\\n<p>\\u00a0<\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>"}', 86, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(262, 'NestedColumns', 'default', '{"cols":["column262_1","column262_2"],"widths":[50,50]}', 86, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(263, 'OnlineChat', 'default', '{"yahoo":"thanhtai_info","skype":"taidesti"}', 0, 1, 'side1', 60, 1, 0, 1414573980, 1414573980, NULL),
(264, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 87, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(265, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 87, 0, 'column268_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(266, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 87, 0, 'column268_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(267, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website:\\u00a0<a href=\\"http:\\/\\/nhahanghoason.com\\" target=\\"_blank\\">www.nhahanghoason.com<\\/a><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email:\\u00a0<a href=\\"mailto:hoasonnhahang@gmail.com\\">hoasonnhahang@gmail.com<\\/a><\\/span><\\/p>\\n<p>\\u00a0<\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">\\u00a0\\u00a0<\\/span><\\/strong><\\/span><\\/p>"}', 87, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(268, 'NestedColumns', 'default', '{"cols":["column268_1","column268_2"],"widths":[50,50]}', 87, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(269, 'AsdSlider', 'default', 'null', 88, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(270, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n m\\u1edbi","level":"3"}', 88, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(271, 'ProductSlider', 'default', '{"html":"123457"}', 88, 0, 'main', 90, 1, 0, 1414567963, 1414567963, NULL),
(272, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n \\u0111\\u1eb7c s\\u1ea3n","level":"3"}', 88, 0, 'main', 130, 1, 0, 1414571546, 1414571546, NULL),
(273, 'ProductSlider', 'feature', '[]', 88, 0, 'main', 170, 1, 0, 1414571602, 1414571602, NULL),
(274, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 89, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(275, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>&nbsp;<\\/p><p><br><\\/p>"}', 89, 0, 'main', 85, 1, 1, 1414557904, 1414557904, 1414643200),
(276, 'Heading', 'default', '{"title":"Tin t\\u1ee9c &amp; S\\u1ef1 ki\\u1ec7n","level":"3"}', 90, 0, 'main', -40, 1, 0, 1414571974, 1414571974, NULL),
(277, 'AsdBlogList', 'default', '{"serialized":"securityToken=1680fcf8d0d5878b1c11721e8a83810d&antispam%5B%5D=91aa45e0904539b3f515477626be0ad2&antispam%5B%5D=91aa45e0904539b3f515477626be0ad2&data%5Bblog%5D%5BpageId%5D=11&data%5Bblog%5D%5Bplace%5D=15&data%5Bblog%5D%5Bparent%5D=0&data%5Bblog%5D%5Bpagination%5D%5Btype%5D=3&data%5Bblog%5D%5Bpagination%5D%5Blimit%5D=10&data%5Bblog%5D%5Boptions%5D%5Border%5D=0&data%5Bblog%5D%5Boptions%5D%5Bintrolimit%5D=300&data%5Bblog%5D%5Boptions%5D%5Ballowedtags%5D=%3Cb%3E%3Cspan%3E%3Ci%3E%3Cstrong%3E%3Cem%3E%3Ca%3E%3Cimg%3E%3Cp%3E&data%5Bblog%5D%5Boptions%5D%5Breadmore%5D=1&data%5Bblog%5D%5Boptions%5D%5Btitlelink%5D=1&data%5Bblog%5D%5Boptions%5D%5Bblockname%5D=main&data%5Bblog%5D%5Binfo%5D%5Bdate%5D=0&data%5Bblog%5D%5Binfo%5D%5Bcategory%5D=0&data%5Bblog%5D%5Bimage%5D%5Benable%5D=0&data%5Bblog%5D%5Bimage%5D%5Bwidth%5D=&data%5Bblog%5D%5Bimage%5D%5Bheight%5D="}', 90, 0, 'main', 0, 1, 0, 1413386314, 1413386314, NULL),
(278, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 91, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(279, 'Map', 'default', '{"lat":"20.161515431091303","lng":"106.00535273551941","zoom":"17","mapTypeId":"roadmap","height":"312","markerlat":"20.16134959582721","markerlng":"106.00518107479729"}', 91, 0, 'column282_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(280, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 91, 0, 'column282_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(281, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website:\\u00a0<a href=\\"http:\\/\\/nhahanghoason.com\\" target=\\"_blank\\">www.nhahanghoason.com<\\/a><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email:\\u00a0<a href=\\"mailto:hoasonnhahang@gmail.com\\">hoasonnhahang@gmail.com<\\/a><\\/span><\\/p>\\n<p>\\u00a0<\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">\\u00a0\\u00a0<\\/span><\\/strong><\\/span><\\/p>"}', 91, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(282, 'NestedColumns', 'default', '{"cols":["column282_1","column282_2"],"widths":[50,50]}', 91, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(283, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>&nbsp;<\\/p>"}', 89, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(284, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 89, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(285, 'AddThis', 'default', '[]', 89, 0, 'main', 71.875, 1, 0, 1414643200, 1414643200, NULL),
(286, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 92, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(287, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>&nbsp;<\\/p>"}', 92, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(288, 'AddThis', 'default', '[]', 92, 0, 'main', 71.875, 1, 0, 1414643200, 1414643200, NULL),
(289, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 92, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(290, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 93, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(291, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>&nbsp;<\\/p>"}', 93, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(292, 'AddThis', 'default', '[]', 93, 0, 'main', 71.875, 1, 1, 1414643200, 1414643200, 1414643607),
(293, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 93, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(294, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 94, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(295, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>&nbsp;<\\/p>"}', 94, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(296, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 94, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(297, 'AddThis', 'default', '[]', 0, 1, 'side1', -20, 1, 1, 1414643636, 1414643636, 1414643770),
(298, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 95, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(299, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>&nbsp;<\\/p>"}', 95, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(300, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 95, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(301, 'AsdSlider', 'default', 'null', 96, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(302, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n m\\u1edbi","level":"3"}', 96, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(303, 'ProductSlider', 'default', '{"html":"123457"}', 96, 0, 'main', 90, 1, 0, 1414567963, 1414567963, NULL),
(304, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n \\u0111\\u1eb7c s\\u1ea3n","level":"3"}', 96, 0, 'main', 130, 1, 0, 1414571546, 1414571546, NULL),
(305, 'ProductSlider', 'feature', '[]', 96, 0, 'main', 170, 1, 0, 1414571602, 1414571602, NULL),
(306, 'AddThis', 'default', '[]', 0, 1, 'side1', 100, 1, 1, 1414643803, 1414643803, 1414643842),
(307, 'AsdSlider', 'default', 'null', 97, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(308, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n m\\u1edbi","level":"3"}', 97, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(309, 'ProductSlider', 'default', '{"html":"123457"}', 97, 0, 'main', 90, 1, 0, 1414567963, 1414567963, NULL),
(310, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n \\u0111\\u1eb7c s\\u1ea3n","level":"3"}', 97, 0, 'main', 130, 1, 0, 1414571546, 1414571546, NULL),
(311, 'ProductSlider', 'feature', '[]', 97, 0, 'main', 170, 1, 0, 1414571602, 1414571602, NULL),
(312, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 98, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(313, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>&nbsp;<\\/p>"}', 98, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(314, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 98, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(315, 'AddThis', 'default', '[]', 0, 1, 'side1', 100, 1, 1, 1414643861, 1414643861, 1414644022),
(316, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 99, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(317, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0sgdgd<\\/p>"}', 99, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(318, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 99, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(319, 'Heading', 'default', '{"title":"Li\\u00ean h\\u1ec7","level":"3"}', 100, 0, 'main', 0, 1, 0, 1413387230, 1413387230, NULL),
(320, 'Map', 'default', '{"lat":"20.292069417740194","lng":"105.92888832092285","zoom":"18","mapTypeId":"roadmap","height":"312","markerlat":"20.292061870514818","markerlng":"105.92896476387978"}', 100, 0, 'column323_2', 0, 1, 0, 1413387264, 1413387264, NULL),
(321, 'Form', 'default', '{"fields":[{"label":"T\\u00ean","type":"Text","options":"","required":"1"},{"label":"Email","type":"Email","options":"","required":"1"},{"label":"N\\u1ed9i dung","type":"Textarea","options":"","required":"1"}],"success":"<p>C\\u1ea3m \\u01a1n qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 gh\\u00e9 th\\u0103m nh\\u00e0 h\\u00e0ng Hoa S\\u01a1n.<\\/p>\\n<p>Ch\\u00fang t\\u00f4i s\\u1ebd tr\\u1ea3 l\\u1eddi qu\\u00fd kh\\u00e1ch trong th\\u1eddi gian s\\u1edbm nh\\u1ea5t.<\\/p>","sendTo":"default","emails":"","buttonText":"G\\u1eedi"}', 100, 0, 'column323_1', 0, 1, 0, 1413387248, 1413387248, NULL),
(322, 'Text', 'default', '{"text":"<p>\\u00a0<strong style=\\"font-size: 16px;\\">NH\\u00c0 H\\u00c0NG HOA S\\u01a0N<\\/strong><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110\\u1ecba ch\\u1ec9 : \\u0110\\u01b0\\u1eddng 12C, khu Qu\\u00e8n \\u1ed4i, x\\u00e3 Ninh H\\u00f2a, huy\\u1ec7n Hoa L\\u01b0, t\\u1ec9nh Ninh B\\u00ecnh.\\u00a0<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Website:\\u00a0<a href=\\"http:\\/\\/nhahanghoason.com\\" target=\\"_blank\\">www.nhahanghoason.com<\\/a><\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">\\u0110T : 030.3626727 \\u2013 0986711048<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Fax : 030.3626656<\\/span><\\/p>\\n<p><span style=\\"font-size: 14px;\\">Email:\\u00a0<a href=\\"mailto:hoasonnhahang@gmail.com\\">hoasonnhahang@gmail.com<\\/a><\\/span><\\/p>\\n<p>\\u00a0<\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">B\\u1ea1n vui l\\u00f2ng \\u0111i\\u1ec1n th\\u00f4ng tin li\\u00ean h\\u1ec7 ho\\u1eb7c g\\u00f3p \\u00fd theo m\\u1eabu d\\u01b0\\u1edbi \\u0111\\u00e2y:<\\/span><\\/strong><\\/span><\\/p>\\n<p><span style=\\"color: #ff6600;\\"><strong><span style=\\"font-size: 14px;\\">\\u00a0\\u00a0<\\/span><\\/strong><\\/span><\\/p>"}', 100, 0, 'main', 5, 1, 0, 1414550384, 1414550384, NULL),
(323, 'NestedColumns', 'default', '{"cols":["column323_1","column323_2"],"widths":[50,50]}', 100, 0, 'main', 10, 1, 0, 1414550252, 1414550252, NULL),
(324, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 101, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(325, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0sgdgd<\\/p>"}', 101, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(326, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 101, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(327, 'Heading', 'default', '{"title":"Th\\u01b0 vi\\u1ec7n \\u1ea3nh","level":"3"}', 102, 0, 'main', -40, 1, 0, 1413387630, 1413387630, NULL),
(328, 'Gallery', 'default', '{"images":[{"imageOriginal":"Hydrangeas.jpg","title":"Hydrangeas.jpg"},{"imageOriginal":"img7.jpg","title":"img7.jpg"},{"imageOriginal":"img8.jpg","title":"img8.jpg"},{"imageOriginal":"img9.jpg","title":"img9.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img12.jpg","title":"img12.jpg"}]}', 102, 0, 'main', 0, 1, 0, 1413387508, 1413387508, NULL),
(329, 'Video', 'default', '{"url":"http:\\/\\/www.youtube.com\\/watch?v=IwUavy0nyUY","size":"auto","width":"853","height":"480","ratio":"16:9"}', 101, 0, 'main', 71.875, 1, 0, 1414739213, 1414739213, NULL),
(330, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 103, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(331, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0sgdgd<\\/p>"}', 103, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(332, 'Video', 'default', '{"url":"http:\\/\\/www.youtube.com\\/watch?v=IwUavy0nyUY","size":"auto","width":"853","height":"480","ratio":"16:9"}', 103, 0, 'main', 58.75, 1, 1, 1414739213, 1414739213, 1414739276),
(333, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 103, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(334, 'Heading', 'default', '{"title":"Gi\\u1edbi thi\\u1ec7u v\\u1ec1 nh\\u00e0 h\\u00e0ng","level":"3"}', 104, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(335, 'Text', 'default', '{"text":"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0sgdgd<\\/p>"}', 104, 0, 'main', 67.5, 1, 0, 1414643199, 1414643199, NULL),
(336, 'Text', 'default', '{"text":"<p><br><\\/p>"}', 104, 0, 'main', 76.25, 1, 0, 1414643200, 1414643200, NULL),
(337, 'Slider', 'default', '{"images":[{"imageOriginal":"img8.jpg","title":"img8.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg"},{"imageOriginal":"img12.jpg","title":"img12.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img7.jpg","title":"img7.jpg"}]}', 97, 0, 'main', 10, 1, 0, 1414746473, 1414746473, NULL),
(338, 'AsdSlider', 'default', 'null', 105, 0, 'banner', 0, 1, 0, 1413385798, 1413385798, NULL),
(339, 'Slider', 'default', '{"images":[{"imageOriginal":"img8.jpg","title":"img8.jpg"},{"imageOriginal":"img10.jpg","title":"img10.jpg"},{"imageOriginal":"img12.jpg","title":"img12.jpg"},{"imageOriginal":"img11.jpg","title":"img11.jpg"},{"imageOriginal":"img7.jpg","title":"img7.jpg"}]}', 105, 0, 'main', 10, 1, 0, 1414746473, 1414746473, NULL),
(340, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n m\\u1edbi","level":"3"}', 105, 0, 'main', 50, 1, 0, 1413208856, 1413208856, NULL),
(341, 'ProductSlider', 'default', '{"html":"123457"}', 105, 0, 'main', 90, 1, 0, 1414567963, 1414567963, NULL),
(342, 'Heading', 'default', '{"title":"C\\u00e1c m\\u00f3n \\u0111\\u1eb7c s\\u1ea3n","level":"3"}', 105, 0, 'main', 130, 1, 0, 1414571546, 1414571546, NULL),
(343, 'ProductSlider', 'feature', '[]', 105, 0, 'main', 170, 1, 0, 1414571602, 1414571602, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_widget_order`
--

CREATE TABLE IF NOT EXISTS `ip_widget_order` (
  `widgetName` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `widgetName` (`widgetName`)
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
