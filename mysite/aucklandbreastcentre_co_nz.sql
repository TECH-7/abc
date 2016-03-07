-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2016 at 06:46 PM
-- Server version: 5.6.28-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aucklandbreastcentre.co.nz`
--

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE IF NOT EXISTS `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE IF NOT EXISTS `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2016-03-04 03:50:20', '2016-03-04 03:50:20', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'Image', '2016-03-04 03:50:20', '2016-03-04 03:50:20', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 0),
(3, 'File', '2016-03-04 03:50:20', '2016-03-04 03:50:20', 'error-404.html', 'error-404.html', 'assets/error-404.html', NULL, 1, 0, 0),
(4, 'File', '2016-03-04 03:50:20', '2016-03-04 03:50:20', 'error-500.html', 'error-500.html', 'assets/error-500.html', NULL, 1, 0, 0),
(5, 'Image', '2016-03-05 00:27:34', '2016-03-05 00:27:34', 'logo.png', 'logo', 'assets/Uploads/logo.png', NULL, 1, 1, 1),
(6, 'Image', '2016-03-06 01:50:06', '2016-03-06 01:50:06', 'home-main.jpg', 'home main', 'assets/Uploads/home-main.jpg', NULL, 1, 1, 1),
(7, 'Image', '2016-03-06 05:06:15', '2016-03-06 05:06:15', 'icon-box-gt.png', 'icon box gt', 'assets/Uploads/icon-box-gt.png', NULL, 1, 1, 1),
(8, 'Image', '2016-03-06 05:11:13', '2016-03-06 05:11:13', 'home-mammography.jpg', 'home mammography', 'assets/Uploads/home-mammography.jpg', NULL, 1, 1, 1),
(19, 'Image', '2016-03-06 17:41:06', '2016-03-06 17:41:06', 'ourfriends-bcsg.png', 'ourfriends bcsg', 'assets/Uploads/ourfriends-bcsg.png', NULL, 1, 1, 1),
(24, 'Image', '2016-03-06 17:51:24', '2016-03-06 17:51:24', 'ourfriends-trg.png', 'ourfriends trg', 'assets/Uploads/ourfriends-trg.png', NULL, 1, 1, 1),
(25, 'Image', '2016-03-06 17:51:38', '2016-03-06 17:51:38', 'ourfriends-bcf.png', 'ourfriends bcf', 'assets/Uploads/ourfriends-bcf.png', NULL, 1, 1, 1),
(26, 'Image', '2016-03-06 17:51:48', '2016-03-06 17:51:48', 'ourfriends-gok.png', 'ourfriends gok', 'assets/Uploads/ourfriends-gok.png', NULL, 1, 1, 1),
(27, 'Image', '2016-03-06 17:51:59', '2016-03-06 17:51:59', 'ourfriends-ptp.png', 'ourfriends ptp', 'assets/Uploads/ourfriends-ptp.png', NULL, 1, 1, 1),
(28, 'Image', '2016-03-06 17:52:10', '2016-03-06 17:52:10', 'ourfriends-volpara.png', 'ourfriends volpara', 'assets/Uploads/ourfriends-volpara.png', NULL, 1, 1, 1),
(30, 'Image', '2016-03-06 17:52:40', '2016-03-06 17:52:40', 'ourfriends-pfh.png', 'ourfriends pfh', 'assets/Uploads/ourfriends-pfh.png', NULL, 1, 1, 1),
(31, 'Image', '2016-03-06 19:23:21', '2016-03-06 19:23:21', 'footer-logo.png', 'footer logo', 'assets/Uploads/footer-logo.png', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE IF NOT EXISTS `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE IF NOT EXISTS `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE IF NOT EXISTS `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `HomePage`
--

CREATE TABLE IF NOT EXISTS `HomePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VideoLink` varchar(255) DEFAULT NULL,
  `WelcomeImageID` int(11) NOT NULL DEFAULT '0',
  `AppointmentContent` mediumtext,
  `Box1Title` varchar(50) DEFAULT NULL,
  `Box1Link` varchar(255) DEFAULT NULL,
  `Box2Title` varchar(50) DEFAULT NULL,
  `Box2Link` varchar(255) DEFAULT NULL,
  `Box3Title` varchar(50) DEFAULT NULL,
  `Box3Link` varchar(255) DEFAULT NULL,
  `MammographyContent` mediumtext,
  `MammographyRightContent` mediumtext,
  `AppointmentLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `WelcomeImageID` (`WelcomeImageID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `HomePage`
--

INSERT INTO `HomePage` (`ID`, `VideoLink`, `WelcomeImageID`, `AppointmentContent`, `Box1Title`, `Box1Link`, `Box2Title`, `Box2Link`, `Box3Title`, `Box3Link`, `MammographyContent`, `MammographyRightContent`, `AppointmentLink`) VALUES
(12, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `HomePage_Live`
--

CREATE TABLE IF NOT EXISTS `HomePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VideoLink` varchar(255) DEFAULT NULL,
  `WelcomeImageID` int(11) NOT NULL DEFAULT '0',
  `AppointmentContent` mediumtext,
  `Box1Title` varchar(50) DEFAULT NULL,
  `Box1Link` varchar(255) DEFAULT NULL,
  `Box2Title` varchar(50) DEFAULT NULL,
  `Box2Link` varchar(255) DEFAULT NULL,
  `Box3Title` varchar(50) DEFAULT NULL,
  `Box3Link` varchar(255) DEFAULT NULL,
  `MammographyContent` mediumtext,
  `MammographyRightContent` mediumtext,
  `AppointmentLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `WelcomeImageID` (`WelcomeImageID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `HomePage_Live`
--

INSERT INTO `HomePage_Live` (`ID`, `VideoLink`, `WelcomeImageID`, `AppointmentContent`, `Box1Title`, `Box1Link`, `Box2Title`, `Box2Link`, `Box3Title`, `Box3Link`, `MammographyContent`, `MammographyRightContent`, `AppointmentLink`) VALUES
(12, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `HomePage_versions`
--

CREATE TABLE IF NOT EXISTS `HomePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VideoLink` varchar(255) DEFAULT NULL,
  `WelcomeImageID` int(11) NOT NULL DEFAULT '0',
  `AppointmentContent` mediumtext,
  `Box1Title` varchar(50) DEFAULT NULL,
  `Box1Link` varchar(255) DEFAULT NULL,
  `Box2Title` varchar(50) DEFAULT NULL,
  `Box2Link` varchar(255) DEFAULT NULL,
  `Box3Title` varchar(50) DEFAULT NULL,
  `Box3Link` varchar(255) DEFAULT NULL,
  `MammographyContent` mediumtext,
  `MammographyRightContent` mediumtext,
  `AppointmentLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `WelcomeImageID` (`WelcomeImageID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `HomePage_versions`
--

INSERT INTO `HomePage_versions` (`ID`, `RecordID`, `Version`, `VideoLink`, `WelcomeImageID`, `AppointmentContent`, `Box1Title`, `Box1Link`, `Box2Title`, `Box2Link`, `Box3Title`, `Box3Link`, `MammographyContent`, `MammographyRightContent`, `AppointmentLink`) VALUES
(1, 12, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 12, 3, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 12, 4, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 12, 5, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', NULL, NULL, NULL, NULL, NULL, NULL, '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon box gt" width="44" height="44">ffbvbfd</p>', NULL, NULL),
(5, 12, 6, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', NULL, NULL, NULL, NULL, NULL, NULL, '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon box gt" width="44" height="44">ffbvbfd</p>', '<p><img class="leftAlone" title="" src="assets/Uploads/_resampled/ResizedImage600583-home-mammography.jpg" alt="home mammography" width="600" height="583"></p>', NULL),
(6, 12, 7, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', NULL, NULL, NULL, NULL, NULL, NULL, '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon box gt" width="44" height="44">ffbvbfd</p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', NULL),
(7, 12, 8, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', NULL, NULL, NULL, NULL, NULL, NULL, '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon box gt" width="44" height="44"><a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', NULL),
(8, 12, 9, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', NULL, NULL, NULL, NULL, NULL, NULL, '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon box gt" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', NULL),
(9, 12, 10, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', NULL, NULL, NULL, NULL, NULL, NULL, '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', NULL),
(10, 12, 11, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', NULL),
(11, 12, 12, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiologys', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', NULL),
(12, 12, 13, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', NULL),
(13, 12, 14, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact'),
(14, 12, 15, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', NULL, 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact'),
(15, 12, 16, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiologys', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact'),
(16, 12, 17, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact'),
(17, 12, 18, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contacts'),
(18, 12, 19, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact'),
(19, 12, 20, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgerys', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact'),
(20, 12, 21, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact'),
(21, 12, 22, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', NULL, 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact'),
(22, 12, 23, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact'),
(23, 12, 24, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contacts'),
(24, 12, 25, 'http://player.vimeo.com/video/20577669', 6, '<p>We are a group of specialist breast radiologists, plastic and breast surgeons, supported by a passionate team dedicated to providing a first class service in a compassionate and caring manner.</p>', 'Radiology', 'radiology', 'Surgery', 'surgery', 'Plastic Surgery', 'plastic-surgery', '<h1>Why do we recommend digital breast imaging?</h1>\n<p>Digital mammography has been shown in international multicentre trials to detect more cancers in women who are under 50 years of age, have dense breasts or are pre-menopausal. Annual mammography in women over 40 years is life-saving and early detection is your patient’s best defense. We are complementing this with a new on-site MRI scanner to provide the very latest in breast imaging.</p>\n<p> </p>\n<p><img class="left" title="" src="assets/Uploads/icon-box-gt.png" alt="icon" width="44" height="44">  <a href="[sitetree_link,id=1]">Read More | Mammography</a></p>', '<p><img title="" src="assets/Uploads/_resampled/ResizedImage786764-home-mammography.jpg" alt="home mammography" width="786" height="764"></p>', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE IF NOT EXISTS `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE IF NOT EXISTS `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2016-03-04 03:50:20', '2016-03-07 18:37:57', 'Default Admin', NULL, 'admin', '88d74ee4655970e604ed6d0f6b2d51e20b8c8174', '2016-03-10 18:37:57', '$2y$10$13ad2d2f78145f23c3672uy503qO1D7gCZNeFUiPnWV4O/nLgc8/i', NULL, 8, '2016-03-07 18:45:48', NULL, NULL, 'blowfish', '10$13ad2d2f78145f23c36725', NULL, NULL, 'en_US', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE IF NOT EXISTS `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2016-03-04 03:50:20', '2016-03-04 03:50:20', '$2y$10$13ad2d2f78145f23c3672uy503qO1D7gCZNeFUiPnWV4O/nLgc8/i', '10$13ad2d2f78145f23c36725', 'blowfish', 1);

-- --------------------------------------------------------

--
-- Table structure for table `OurFriend`
--

CREATE TABLE IF NOT EXISTS `OurFriend` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('OurFriend') DEFAULT 'OurFriend',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `LogoID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LogoID` (`LogoID`),
  KEY `ClassName` (`ClassName`),
  KEY `PageID` (`PageID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `OurFriend`
--

INSERT INTO `OurFriend` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Link`, `LogoID`, `PageID`) VALUES
(1, 'OurFriend', '2016-03-06 06:10:24', '2016-03-07 18:15:24', 'TRG Imaging', 'http://www.trggroup.co.nz', 24, 0),
(2, 'OurFriend', '2016-03-06 06:11:50', '2016-03-06 17:51:40', 'The New Zealand Breast Cancer Foundation', 'http://www.nzbcf.org.nz', 25, 0),
(3, 'OurFriend', '2016-03-06 06:14:14', '2016-03-07 14:32:02', 'Breast Cancer Study Group', 'http://www.adhb.govt.nz/AucklandBreastCancerRegister', 19, 0),
(4, 'OurFriend', '2016-03-06 06:15:30', '2016-03-07 18:36:46', 'The Gift of Knowledge', 'http://www.giftofknowledge.co.nz', 26, 0),
(5, 'OurFriend', '2016-03-06 06:16:11', '2016-03-06 17:52:00', 'Pink Pilates', 'http://www.pinkpilates.co.nz', 27, 0),
(6, 'OurFriend', '2016-03-06 06:16:36', '2016-03-06 17:52:11', 'Volpara', 'http://www.volparadensity.com/', 28, 0),
(7, 'OurFriend', '2016-03-06 06:17:10', '2016-03-06 17:52:41', 'Paddle for Hope', 'http://www.paddleforhope.co.nz', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE IF NOT EXISTS `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE IF NOT EXISTS `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE IF NOT EXISTS `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `RedirectorPage`
--

INSERT INTO `RedirectorPage` (`ID`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(6, 'Internal', NULL, 7),
(11, 'Internal', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `RedirectorPage_Live`
--

INSERT INTO `RedirectorPage_Live` (`ID`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(6, 'Internal', NULL, 7),
(11, 'Internal', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `RedirectorPage_versions`
--

INSERT INTO `RedirectorPage_versions` (`ID`, `RecordID`, `Version`, `RedirectionType`, `ExternalURL`, `LinkToID`) VALUES
(1, 6, 1, 'Internal', NULL, 0),
(2, 6, 2, 'External', 'http://#', 0),
(3, 6, 3, 'Internal', 'http://#', 0),
(4, 6, 4, 'External', 'http:///#', 0),
(5, 6, 5, 'External', NULL, 0),
(6, 11, 1, 'Internal', NULL, 0),
(7, 11, 2, 'Internal', NULL, 0),
(8, 6, 6, 'Internal', NULL, 7),
(9, 6, 7, 'External', NULL, 7),
(10, 6, 8, 'Internal', NULL, 7),
(11, 6, 9, 'Internal', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE IF NOT EXISTS `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `FacebookLink` varchar(255) DEFAULT NULL,
  `InstagramLink` varchar(255) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` mediumtext,
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `FooterLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `HeaderLogoID` (`HeaderLogoID`),
  KEY `FooterLogoID` (`FooterLogoID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `FacebookLink`, `InstagramLink`, `Phone`, `Email`, `Address`, `HeaderLogoID`, `FooterLogoID`) VALUES
(1, 'SiteConfig', '2016-03-04 03:50:19', '2016-03-06 19:23:23', 'Auckland Breast Centre', NULL, NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 'http://www.facebook.com/pages/Auckland-Breast-Centre/129556830446669?ref=ts', 'http://www.instragram.com', '(09) 488 9179', 'abc@aucklandbreastcentre.co.nz', '217 Shakespeare Rd, Milford, Auckland', 5, 31);

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE IF NOT EXISTS `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','HomePage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Page', '2016-03-04 03:50:19', '2016-03-07 16:57:53', 'radiology', 'Radiology', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(2, 'Page', '2016-03-04 03:50:19', '2016-03-07 18:02:07', 'about', 'About', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(3, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:59:38', 'contact', 'Contact', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(4, 'ErrorPage', '2016-03-04 03:50:19', '2016-03-04 03:50:20', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-03-04 03:50:20', '2016-03-04 03:50:20', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-07 16:57:47', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 9, 0),
(7, 'Page', '2016-03-04 03:56:37', '2016-03-04 03:57:10', 'partial-mastectomy', 'Partial Mastectomy', NULL, '<p>Partial Mastectomy</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(8, 'Page', '2016-03-04 03:57:22', '2016-03-04 03:57:39', 'mastectomy', 'Mastectomy', NULL, '<p>Mastectomy</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(9, 'Page', '2016-03-04 03:57:56', '2016-03-04 03:58:14', 'lymph-node-surgery', 'Lymph Node Surgery', NULL, '<p>Lymph Node Surgery</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(10, 'Page', '2016-03-04 03:58:31', '2016-03-04 03:58:54', 'intraoperative-radiotherapy', 'Intraoperative Radiotherapy', NULL, '<p>Intraoperative Radiotherapy</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(11, 'Page', '2016-03-04 03:59:08', '2016-03-04 17:54:47', 'plastic-surgery', 'Plastic Surgery', NULL, '<p>Plastic Surgery</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0),
(12, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:44:17', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=193 ;

--
-- Dumping data for table `SiteTree_ImageTracking`
--

INSERT INTO `SiteTree_ImageTracking` (`ID`, `SiteTreeID`, `FileID`, `FieldName`) VALUES
(191, 12, 7, 'MammographyContent'),
(192, 12, 8, 'MammographyRightContent');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

INSERT INTO `SiteTree_LinkTracking` (`ID`, `SiteTreeID`, `ChildID`, `FieldName`) VALUES
(84, 12, 1, 'MammographyContent');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','HomePage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Page', '2016-03-04 03:50:19', '2016-03-07 16:57:53', 'radiology', 'Radiology', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(2, 'Page', '2016-03-04 03:50:19', '2016-03-07 18:02:07', 'about', 'About', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(3, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:59:38', 'contact', 'Contact', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(4, 'ErrorPage', '2016-03-04 03:50:19', '2016-03-04 03:50:23', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-03-04 03:50:20', '2016-03-04 03:50:20', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-07 16:57:48', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 9, 0),
(7, 'Page', '2016-03-04 03:56:37', '2016-03-04 03:57:10', 'partial-mastectomy', 'Partial Mastectomy', NULL, '<p>Partial Mastectomy</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(8, 'Page', '2016-03-04 03:57:22', '2016-03-04 03:57:39', 'mastectomy', 'Mastectomy', NULL, '<p>Mastectomy</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(9, 'Page', '2016-03-04 03:57:56', '2016-03-04 03:58:14', 'lymph-node-surgery', 'Lymph Node Surgery', NULL, '<p>Lymph Node Surgery</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(10, 'Page', '2016-03-04 03:58:31', '2016-03-04 03:58:54', 'intraoperative-radiotherapy', 'Intraoperative Radiotherapy', NULL, '<p>Intraoperative Radiotherapy</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2, 6),
(11, 'Page', '2016-03-04 03:59:08', '2016-03-04 17:54:47', 'plastic-surgery', 'Plastic Surgery', NULL, '<p>Plastic Surgery</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0),
(12, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:44:17', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','HomePage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2016-03-04 03:50:19', '2016-03-04 03:50:19', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2016-03-04 03:50:20', '2016-03-04 03:50:20', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 2, 2, 1, 1, 1, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:53:23', 'about', 'About', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 1, 2, 1, 1, 1, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:53:57', 'radiology', 'Radiology', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 1, 3, 1, 1, 1, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:54:05', 'radiology', 'Radiology', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(9, 1, 4, 1, 1, 1, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:54:10', 'radiology', 'Radiology', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(10, 6, 1, 0, 1, 0, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-04 03:55:13', 'new-redirector-page', 'New Redirector Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 1, NULL, 'Inherit', 'Inherit', 0),
(11, 6, 2, 1, 1, 1, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-04 03:55:41', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(12, 6, 3, 1, 1, 1, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-04 03:55:50', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 1, NULL, 'Inherit', 'Inherit', 0),
(13, 6, 4, 1, 1, 1, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-04 03:55:58', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(14, 6, 5, 1, 1, 1, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-04 03:56:04', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(15, 7, 1, 0, 1, 0, 'Page', '2016-03-04 03:56:37', '2016-03-04 03:56:37', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(16, 7, 2, 1, 1, 1, 'Page', '2016-03-04 03:56:37', '2016-03-04 03:57:10', 'partial-mastectomy', 'Partial Mastectomy', NULL, '<p>Partial Mastectomy</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(17, 8, 1, 0, 1, 0, 'Page', '2016-03-04 03:57:22', '2016-03-04 03:57:22', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(18, 8, 2, 1, 1, 1, 'Page', '2016-03-04 03:57:22', '2016-03-04 03:57:39', 'mastectomy', 'Mastectomy', NULL, '<p>Mastectomy</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(19, 9, 1, 0, 1, 0, 'Page', '2016-03-04 03:57:56', '2016-03-04 03:57:56', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(20, 9, 2, 1, 1, 1, 'Page', '2016-03-04 03:57:56', '2016-03-04 03:58:14', 'lymph-node-surgery', 'Lymph Node Surgery', NULL, '<p>Lymph Node Surgery</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(21, 10, 1, 0, 1, 0, 'Page', '2016-03-04 03:58:31', '2016-03-04 03:58:31', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(22, 10, 2, 1, 1, 1, 'Page', '2016-03-04 03:58:31', '2016-03-04 03:58:54', 'intraoperative-radiotherapy', 'Intraoperative Radiotherapy', NULL, '<p>Intraoperative Radiotherapy</p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(23, 11, 1, 0, 1, 0, 'RedirectorPage', '2016-03-04 03:59:08', '2016-03-04 03:59:08', 'new-redirector-page', 'New Redirector Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 1, NULL, 'Inherit', 'Inherit', 0),
(24, 11, 2, 1, 1, 1, 'RedirectorPage', '2016-03-04 03:59:08', '2016-03-04 03:59:21', 'plastic-surgery', 'Plastic Surgery', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 1, NULL, 'Inherit', 'Inherit', 0),
(25, 3, 2, 1, 1, 1, 'Page', '2016-03-04 03:50:19', '2016-03-04 03:59:38', 'contact', 'Contact', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(26, 12, 1, 1, 1, 1, 'Page', '2016-03-04 17:48:01', '2016-03-04 17:48:01', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(27, 6, 6, 1, 1, 1, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-04 17:52:33', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(28, 6, 7, 1, 1, 1, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-04 17:53:14', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(29, 6, 8, 1, 1, 1, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-04 17:53:29', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(30, 11, 3, 1, 1, 1, 'Page', '2016-03-04 03:59:08', '2016-03-04 17:53:59', 'plastic-surgery', 'Plastic Surgery', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 1, NULL, 'Inherit', 'Inherit', 0),
(31, 6, 9, 1, 1, 1, 'RedirectorPage', '2016-03-04 03:55:13', '2016-03-04 17:54:26', 'surgery', 'Surgery', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(32, 11, 4, 0, 1, 0, 'Page', '2016-03-04 03:59:08', '2016-03-04 17:54:31', 'plastic-surgery', 'Plastic Surgery', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(33, 11, 5, 0, 1, 0, 'Page', '2016-03-04 03:59:08', '2016-03-04 17:54:31', 'plastic-surgery', 'Plastic Surgery', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6),
(34, 11, 6, 0, 1, 0, 'Page', '2016-03-04 03:59:08', '2016-03-04 17:54:37', 'plastic-surgery', 'Plastic Surgery', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(35, 11, 7, 1, 1, 1, 'Page', '2016-03-04 03:59:08', '2016-03-04 17:54:47', 'plastic-surgery', 'Plastic Surgery', NULL, '<p>Plastic Surgery</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(36, 12, 2, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-04 17:55:32', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(37, 12, 3, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-05 03:32:04', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(38, 12, 4, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-06 02:07:50', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(39, 12, 5, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-06 05:08:04', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(40, 12, 6, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-06 05:11:29', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(41, 12, 7, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-06 05:19:04', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(42, 12, 8, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-06 05:24:44', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(43, 12, 9, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-06 05:26:55', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(44, 12, 10, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-06 05:27:39', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(45, 12, 11, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 04:14:30', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(46, 12, 12, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 04:14:40', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(47, 12, 13, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 04:14:49', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(48, 12, 14, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 04:17:03', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(49, 12, 15, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 16:55:28', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(50, 12, 16, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 16:55:37', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(51, 12, 17, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 16:55:54', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(52, 2, 3, 1, 1, 1, 'Page', '2016-03-04 03:50:19', '2016-03-07 18:02:01', 'about', 'About', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(53, 12, 18, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:16:24', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(54, 12, 19, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:16:36', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(55, 12, 20, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:37:11', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(56, 12, 21, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:37:17', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(57, 12, 22, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:40:30', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(58, 12, 23, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:40:40', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(59, 12, 24, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:44:06', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(60, 12, 25, 1, 1, 1, 'HomePage', '2016-03-04 17:48:01', '2016-03-07 18:44:17', 'home', 'Home', NULL, '<h1>Welcome to Auckland Breast Centre.</h1>\n<p>We have combined the access of dedicated breast specialists and the very latest technology in mammography, MRI, diagnosis and treatment all under one roof.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE IF NOT EXISTS `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
