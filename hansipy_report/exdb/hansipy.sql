-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2016 at 03:28 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hansipy`
--

-- --------------------------------------------------------

--
-- Table structure for table `hansipytable`
--

CREATE TABLE `hansipytable` (
  `rule` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL,
  `host` varchar(100) NOT NULL,
  `method` varchar(10) NOT NULL,
  `request` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hansipytable`
--

INSERT INTO `hansipytable` (`rule`, `date_time`, `host`, `method`, `request`) VALUES
('rule_02', '18/Oct/2016:08:33:12 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27&password=%27&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:33:41 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27%3D%27&password=%27%3D%27&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:37:34 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%271%3D1---&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:37:34 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%271%3D1---&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:15 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:15 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:25 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%271%3D1---&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:25 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%271%3D1---&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:27 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:27 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:39:32 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:39:32 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:40:05 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:40:05 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:40:56 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:40:56 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:41:11 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:41:25 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:42:00 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:42:00 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:42:20 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=%27+or+1%3D1--&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:42:20 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=%27+or+1%3D1--&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:43:24 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:43:24 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:43:43 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:43:43 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:44:03 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=+%27+or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:44:03 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=+%27+or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:46:42 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:53:42 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--+&password=%27+or+1%3D1+--+&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:53:42 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--+&password=%27+or+1%3D1+--+&user-info-php-submit-button=View+Account+Details'),
('rule_07', '18/Oct/2016:09:05:27 -0400', '192.168.1.22', 'GET', '/twiki/cmd.php'),
('rule_03', '05/Jul/2014:09:33:00 +0200', '178.19.110.74', 'GET', '/sys/fckeditor/editor/filemanager/browser/default/connectors/test.html'),
('rule_03', '05/Jul/2014:09:33:01 +0200', '178.19.110.74', 'GET', '/system/fckeditor/editor/filemanager/browser/default/connectors/test.html'),
('rule_06', '06/Jul/2014:00:50:38 +0200', '213.159.38.90', 'GET', '/wp-login.php'),
('rule_06', '06/Jul/2014:02:38:13 +0200', '50.57.201.4', 'POST', '/wp-login.php'),
('rule_06', '06/Jul/2014:02:46:43 +0200', '106.186.127.60', 'POST', '/wp-login.php'),
('rule_06', '06/Jul/2014:03:28:28 +0200', '54.207.107.102', 'GET', '/wp-login.php'),
('rule_06', '06/Jul/2014:15:07:15 +0200', '185.24.218.132', 'GET', '/wp-login.php?action=register'),
('rule_06', '06/Jul/2014:16:53:48 +0200', '185.24.218.132', 'GET', '/wp-login.php?action=register'),
('rule_03', '07/Jul/2014:03:37:26 +0200', '112.111.165.181', 'GET', '/system/fckeditor/editor/filemanager/browser/default/connectors/test.html'),
('rule_06', '08/Jul/2014:02:01:31 +0200', '173.192.176.157', 'GET', '/wp-login.php'),
('rule_06', '08/Jul/2014:05:05:59 +0200', '50.7.1.34', 'GET', '/wp-login.php'),
('rule_03', '08/Jul/2014:22:07:03 +0200', '113.116.39.47', 'GET', '/system/fckeditor/editor/filemanager/browser/default/connectors/test.html'),
('rule_06', '09/Jul/2014:02:27:06 +0200', '201.163.80.52', 'GET', '/wp-login.php'),
('rule_06', '10/Jul/2014:15:13:49 +0200', '82.146.38.254', 'GET', '/wp-login.php'),
('rule_06', '11/Jul/2014:03:08:34 +0200', '54.191.39.135', 'GET', '/wp-login.php'),
('rule_06', '11/Jul/2014:22:55:22 +0200', '62.210.73.169', 'GET', '//wp-login.php'),
('rule_06', '11/Jul/2014:22:55:22 +0200', '62.210.73.169', 'GET', '/blog//wp-login.php'),
('rule_06', '11/Jul/2014:22:55:23 +0200', '62.210.73.169', 'GET', '/wordpress//wp-login.php'),
('rule_06', '11/Jul/2014:22:55:23 +0200', '62.210.73.169', 'GET', '/wp//wp-login.php'),
('rule_06', '13/Jul/2014:12:33:50 +0200', '84.240.9.6', 'GET', '/wp-login.php'),
('rule_06', '19/Jul/2014:05:44:43 +0200', '62.210.73.169', 'GET', '//wp-login.php'),
('rule_06', '19/Jul/2014:05:44:43 +0200', '62.210.73.169', 'GET', '/blog//wp-login.php'),
('rule_06', '19/Jul/2014:05:44:43 +0200', '62.210.73.169', 'GET', '/wordpress//wp-login.php'),
('rule_06', '19/Jul/2014:05:44:43 +0200', '62.210.73.169', 'GET', '/wp//wp-login.php'),
('rule_03', '19/Jul/2014:11:07:11 +0200', '113.64.169.190', 'GET', '/system/fckeditor/editor/filemanager/browser/default/connectors/test.html'),
('rule_06', '23/Jul/2014:06:25:50 +0200', '14.145.228.53', 'GET', '/fileadmin/wp-login.php?action=register'),
('rule_06', '23/Jul/2014:10:39:09 +0200', '62.210.73.169', 'GET', '//wp-login.php'),
('rule_06', '23/Jul/2014:10:39:09 +0200', '62.210.73.169', 'GET', '/blog//wp-login.php'),
('rule_06', '23/Jul/2014:10:39:09 +0200', '62.210.73.169', 'GET', '/wordpress//wp-login.php'),
('rule_06', '23/Jul/2014:10:39:09 +0200', '62.210.73.169', 'GET', '/wp//wp-login.php'),
('rule_06', '24/Jul/2014:09:24:13 +0200', '178.74.245.74', 'GET', '/wp-login.php'),
('rule_06', '27/Jul/2014:16:08:28 +0200', '77.87.79.35', 'GET', '/wp-login.php?action=register'),
('rule_06', '29/Jul/2014:08:24:07 +0200', '77.87.79.35', 'GET', '/wp-login.php?action=register'),
('rule_03', '29/Jul/2014:21:42:25 +0200', '103.14.146.44', 'GET', '/root/FCKeditor/editor/dialog/fck_about.html'),
('rule_03', '29/Jul/2014:21:42:25 +0200', '103.14.146.44', 'GET', '/root/fckeditor/editor/dialog/fck_about.html'),
('rule_03', '29/Jul/2014:21:42:26 +0200', '103.14.146.44', 'GET', '/system/FCKeditor/editor/dialog/fck_about.html'),
('rule_03', '29/Jul/2014:21:42:26 +0200', '103.14.146.44', 'GET', '/system/fckeditor/editor/dialog/fck_about.html'),
('rule_03', '02/May/2016:13:33:56 -0700', '207.46.13.130', 'GET', '/tmp/'),
('rule_02', '18/Oct/2016:08:33:12 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27&password=%27&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:33:41 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27%3D%27&password=%27%3D%27&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:37:34 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%271%3D1---&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:37:34 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%271%3D1---&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:15 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:15 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:25 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%271%3D1---&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:25 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%271%3D1---&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:27 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:38:27 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:39:32 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:39:32 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27or+1+%3D+1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:40:05 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:40:05 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:40:56 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:40:56 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:41:11 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:41:25 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:42:00 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:42:00 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:42:20 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=%27+or+1%3D1--&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:42:20 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1--&password=%27+or+1%3D1--&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:43:24 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:43:24 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:43:43 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:43:43 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:44:03 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=+%27+or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:44:03 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=+%27+or+1%3D1+--+&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:46:42 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27&password=&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:53:42 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--+&password=%27+or+1%3D1+--+&user-info-php-submit-button=View+Account+Details'),
('rule_02', '18/Oct/2016:08:53:42 -0400', '192.168.1.22', 'GET', '/mutillidae/index.php?page=user-info.php&username=%27+or+1%3D1+--+&password=%27+or+1%3D1+--+&user-info-php-submit-button=View+Account+Details'),
('rule_07', '18/Oct/2016:09:05:27 -0400', '192.168.1.22', 'GET', '/twiki/cmd.php');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
