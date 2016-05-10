-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2016 at 09:52 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `daemons`
--

CREATE TABLE IF NOT EXISTS `daemons` (
  `Start` text NOT NULL,
  `Info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gammu`
--

CREATE TABLE IF NOT EXISTS `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE IF NOT EXISTS `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`UpdatedInDB`, `ReceivingDateTime`, `Text`, `SenderNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `RecipientID`, `Processed`) VALUES
('2015-12-20 18:23:01', '2015-12-20 18:22:59', '0041006D00700075006E', '+6285238203429', 'Default_No_Compression', '', '+62811078801', -1, 'Ampun', 1, 'modem1', 'false'),
('2015-12-20 18:23:23', '2015-12-20 18:23:23', '00530065006C0061006D00610074002C00200041006E006400610020006D0065006E00640061007000610074006B0061006E0020005400730065006C0020007300650062006500730061007200200032003000300053004D0053002E002000510075006F007400610020006200650072006C0061006B0075002000620065007200620061007400610073002000770061006B00740075002C002000630065006B0020002A003800380039002300200073006300720020006200650072006B0061006C0061002E00200049006E0066006F003A0020007700770077002E00740065006C006B006F006D00730065006C002E0063006F006D', 'TELKOMSEL', 'Default_No_Compression', '', '+6281100000', 1, 'Selamat, Anda mendapatkan Tsel sebesar 200SMS. Quota berlaku berbatas waktu, cek *889# scr berkala. Info: www.telkomsel.com', 2, 'modem1', 'false'),
('2015-12-20 23:42:00', '2015-12-20 23:41:58', '00500061006700690020006A0067', '+6285238203429', 'Default_No_Compression', '', '+62811078801', -1, 'Pagi jg', 3, 'modem1', 'false'),
('2016-01-04 08:18:08', '2016-01-04 08:18:08', '005400650073', '+6285238203429', 'Default_No_Compression', '', '+62811078801', -1, 'Tes', 4, 'modem1', 'false'),
('2016-01-27 17:50:25', '2016-01-27 17:50:25', '00530065006C0061006D00610074002C00200041006E006400610020006D0065006E00640061007000610074006B0061006E0020005400730065006C0020007300650062006500730061007200200032003000300053004D0053002E002000510075006F007400610020006200650072006C0061006B0075002000620065007200620061007400610073002000770061006B00740075002C002000630065006B0020002A003800380039002300200073006300720020006200650072006B0061006C0061002E00200049006E0066006F003A0020007700770077002E00740065006C006B006F006D00730065006C002E0063006F006D', 'TELKOMSEL', 'Default_No_Compression', '', '+6281100000', 1, 'Selamat, Anda mendapatkan Tsel sebesar 200SMS. Quota berlaku berbatas waktu, cek *889# scr berkala. Info: www.telkomsel.com', 5, 'modem1', 'false'),
('2016-01-28 10:07:24', '2016-01-28 05:18:24', '004B006900720069006D00200073006D00730020006B00650020006D006F00640065006D', '+6285238203429', 'Default_No_Compression', '', '+62811078801', -1, 'Kirim sms ke modem', 6, 'modem1', 'false'),
('2016-01-29 02:37:27', '2016-01-29 02:37:27', '00530065006C0061006D00610074002C00200041006E006400610020006D0065006E00640061007000610074006B0061006E0020005400730065006C0020007300650062006500730061007200200032003000300053004D0053002E002000510075006F007400610020006200650072006C0061006B0075002000620065007200620061007400610073002000770061006B00740075002C002000630065006B0020002A003800380039002300200073006300720020006200650072006B0061006C0061002E00200049006E0066006F003A0020007700770077002E00740065006C006B006F006D00730065006C002E0063006F006D', 'TELKOMSEL', 'Default_No_Compression', '', '+6281100000', 1, 'Selamat, Anda mendapatkan Tsel sebesar 200SMS. Quota berlaku berbatas waktu, cek *889# scr berkala. Info: www.telkomsel.com', 7, 'modem1', 'false'),
('2016-01-31 14:37:46', '2016-01-31 03:45:12', '00540075006B00610072002000730065006D0075006100200050006F0069006E002D006D007500200075006E00740075006B0020006B006500730065006D0070006100740061006E0020006D0065006E0061006E0067002000350020006D006F00620069006C00200048006F006E006400610020004D006F00620069006C0069006F002000640061006E0020003100300030003000200073006D00610072007400700068006F006E00650020004C0065006E006F0076006F0020006400610072006900200050006500730074006100200041006B00680069007200200054006100680075006E002000540065006C006B006F006D00730065006C00210020004B006500740069006B00200048004100420049005300200073006D00730020006B00650020003700370037002E00200053004B0042', 'TELKOMSEL', 'Default_No_Compression', '', '+6281100000', 1, 'Tukar semua Poin-mu untuk kesempatan menang 5 mobil Honda Mobilio dan 1000 smartphone Lenovo dari Pesta Akhir Tahun Telkomsel! Ketik HABIS sms ke 777. SKB', 8, 'modem1', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE IF NOT EXISTS `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  KEY `outbox_sender` (`SenderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `outbox`
--

INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`) VALUES
('2016-01-28 04:45:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '085238203429', 'Default_No_Compression', NULL, -1, 'test', 17, 'false', -1, '--Pilih Modem--', '0000-00-00 00:00:00', 'default', 'Gammu 1.28.90'),
('2016-01-27 17:53:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 'Default_No_Compression', NULL, -1, '', 15, 'false', -1, '--Pilih Modem--', '0000-00-00 00:00:00', 'default', 'Gammu 1.28.90'),
('2016-01-29 02:35:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '085238203429', 'Default_No_Compression', NULL, -1, 'nilai semester 1 anak anda adalah: 3.67', 30, 'false', -1, '--Pilih Modem--', '0000-00-00 00:00:00', 'default', 'Gammu 1.28.90'),
('2016-02-01 06:07:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '085238203429', 'Default_No_Compression', NULL, -1, 'Nilai IPK Semester 1 Untuk Anak Anda Dengan NPM 1144045 Adalah 3.47', 39, 'false', -1, '--Pilih Modem--', '0000-00-00 00:00:00', 'default', 'Gammu 1.28.90');

-- --------------------------------------------------------

--
-- Table structure for table `outbox_multipart`
--

CREATE TABLE IF NOT EXISTS `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`,`SequencePosition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pbk`
--

CREATE TABLE IF NOT EXISTS `pbk` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '-1',
  `Name` text NOT NULL,
  `Number` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pbk_groups`
--

CREATE TABLE IF NOT EXISTS `pbk_groups` (
  `Name` text NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE IF NOT EXISTS `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '0',
  `Signal` int(11) NOT NULL DEFAULT '0',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IMEI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`ID`, `UpdatedInDB`, `InsertIntoDB`, `TimeOut`, `Send`, `Receive`, `IMEI`, `Client`, `Battery`, `Signal`, `Sent`, `Received`) VALUES
('modem1', '2016-02-01 06:09:53', '2016-02-01 06:09:05', '2016-02-01 06:10:03', 'yes', 'yes', '358108025951616', 'Gammu 1.28.90, Windows Server 2007, GCC 4.4, MinGW 3.13', 0, 27, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sentitems`
--

CREATE TABLE IF NOT EXISTS `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(40) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL,
  PRIMARY KEY (`ID`,`SequencePosition`),
  KEY `sentitems_date` (`DeliveryDateTime`),
  KEY `sentitems_tpmr` (`TPMR`),
  KEY `sentitems_dest` (`DestinationNumber`),
  KEY `sentitems_sender` (`SenderID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sentitems`
--

INSERT INTO `sentitems` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `DeliveryDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `SenderID`, `SequencePosition`, `Status`, `StatusError`, `TPMR`, `RelativeValidity`, `CreatorID`) VALUES
('2015-12-20 18:21:49', '0000-00-00 00:00:00', '2015-12-20 18:21:49', NULL, '00690069006900690069', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'iiiii', 1, 'modem1', 1, 'SendingOKNoReport', -1, 31, 255, 'Gammu 1.28.90'),
('2015-12-20 18:22:23', '0000-00-00 00:00:00', '2015-12-20 18:22:23', NULL, '00680068006800680068', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'hhhhh', 2, 'modem1', 1, 'SendingOKNoReport', -1, 32, 255, 'Gammu 1.28.90'),
('2015-12-20 23:40:43', '0000-00-00 00:00:00', '2015-12-20 23:40:43', NULL, '0070006100670069', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'pagi', 3, 'modem1', 1, 'SendingOKNoReport', -1, 33, 255, 'Gammu 1.28.90'),
('2015-12-20 23:56:18', '0000-00-00 00:00:00', '2015-12-20 23:56:18', NULL, '00700061006700690070006100670069', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'pagipagi', 4, 'modem1', 1, 'SendingOKNoReport', -1, 34, 255, 'Gammu 1.28.90'),
('2015-12-20 23:57:20', '0000-00-00 00:00:00', '2015-12-20 23:57:20', NULL, '0073006400670073006500670077', 'dgsg', 'Default_No_Compression', '', '+6281100000', -1, 'sdgsegw', 5, 'modem1', 1, 'SendingError', -1, -1, 255, 'Gammu 1.28.90'),
('2015-12-21 00:21:24', '0000-00-00 00:00:00', '2015-12-21 00:21:24', NULL, '007000610067006900700061006700690070006100670069', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'pagipagipagi', 6, 'modem1', 1, 'SendingOKNoReport', -1, 36, 255, 'Gammu 1.28.90'),
('2015-12-21 03:44:01', '0000-00-00 00:00:00', '2015-12-21 03:44:01', NULL, '0074006500730074', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'test', 7, 'modem1', 1, 'SendingOKNoReport', -1, 37, 255, 'Gammu 1.28.90'),
('2015-12-27 13:40:59', '0000-00-00 00:00:00', '2015-12-27 13:40:59', NULL, '006D0061006C0061006D', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'malam', 8, 'modem1', 1, 'SendingOKNoReport', -1, 38, 255, 'Gammu 1.28.90'),
('2016-01-04 08:17:50', '0000-00-00 00:00:00', '2016-01-04 08:17:50', NULL, '00680061006C006F', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'halo', 9, 'modem1', 1, 'SendingOKNoReport', -1, 39, 255, 'Gammu 1.28.90'),
('2016-01-27 17:48:24', '0000-00-00 00:00:00', '2016-01-27 17:48:24', NULL, '00640065006B0061006100740020006D00690020007300690064006100610061006E0067', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'dekaat mi sidaaang', 11, 'modem1', 1, 'SendingOKNoReport', -1, 41, 255, 'Gammu 1.28.90'),
('2016-01-27 17:48:56', '0000-00-00 00:00:00', '2016-01-27 17:48:56', NULL, '00710077007100770071', '02102', 'Default_No_Compression', '', '+6281100000', -1, 'qwqwq', 10, 'modem1', 1, 'SendingError', -1, -1, 255, 'Gammu 1.28.90'),
('2016-01-27 17:49:00', '0000-00-00 00:00:00', '2016-01-27 17:49:00', NULL, '007400690064006100610061006100610061006B', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'tidaaaaaak', 12, 'modem1', 1, 'SendingOKNoReport', -1, 43, 255, 'Gammu 1.28.90'),
('2016-01-27 17:49:28', '0000-00-00 00:00:00', '2016-01-27 17:49:28', NULL, '006800610061006100610061', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'haaaaa', 13, 'modem1', 1, 'SendingOKNoReport', -1, 45, 255, 'Gammu 1.28.90'),
('2016-01-27 17:50:32', '0000-00-00 00:00:00', '2016-01-27 17:50:32', NULL, '006D0061007400690020006B006100200069006E0069', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'mati ka ini', 14, 'modem1', 1, 'SendingOKNoReport', -1, 46, 255, 'Gammu 1.28.90'),
('2016-01-28 04:45:43', '0000-00-00 00:00:00', '2016-01-28 04:45:43', NULL, '0074006500730074', '085238203429, 085342', 'Default_No_Compression', '', '+6281100000', -1, 'test', 16, 'modem1', 1, 'SendingError', -1, -1, 255, 'Gammu 1.28.90'),
('2016-01-28 04:59:18', '0000-00-00 00:00:00', '2016-01-28 04:59:18', NULL, '00740065006100610061', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'teaaa', 18, 'modem1', 1, 'SendingOKNoReport', -1, 47, 255, 'Gammu 1.28.90'),
('2016-01-28 05:02:09', '0000-00-00 00:00:00', '2016-01-28 05:02:09', NULL, '0063006F00620061006100610061', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'cobaaaa', 20, 'modem1', 1, 'SendingOKNoReport', -1, 48, 255, 'Gammu 1.28.90'),
('2016-01-28 05:02:11', '0000-00-00 00:00:00', '2016-01-28 05:02:11', NULL, '00740065006100610061', '085238203429, 085342', 'Default_No_Compression', '', '+6281100000', -1, 'teaaa', 19, 'modem1', 1, 'SendingError', -1, -1, 255, 'Gammu 1.28.90'),
('2016-01-28 05:02:14', '0000-00-00 00:00:00', '2016-01-28 05:02:14', NULL, '00720074007900750069006F0070', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'rtyuiop', 21, 'modem1', 1, 'SendingOKNoReport', -1, 49, 255, 'Gammu 1.28.90'),
('2016-01-28 05:02:49', '0000-00-00 00:00:00', '2016-01-28 05:02:49', NULL, '006B006B006B006B006B', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'kkkkk', 22, 'modem1', 1, 'SendingOKNoReport', -1, 50, 255, 'Gammu 1.28.90'),
('2016-01-28 05:06:21', '0000-00-00 00:00:00', '2016-01-28 05:06:21', NULL, '0074006500730074000D000A', '085238203429, 085342', 'Default_No_Compression', '', '+6281100000', -1, 'test\r\n', 24, 'modem1', 1, 'SendingError', -1, -1, 255, 'Gammu 1.28.90'),
('2016-01-28 05:06:53', '0000-00-00 00:00:00', '2016-01-28 05:06:53', NULL, '', '', 'Default_No_Compression', '', '+6281100000', -1, '', 23, 'modem1', 1, 'SendingError', -1, -1, 255, 'Gammu 1.28.90'),
('2016-01-28 10:08:58', '0000-00-00 00:00:00', '2016-01-28 10:08:58', NULL, '006E0069006C00610069002000690070006B0020003A00200033002E0034', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'nilai ipk : 3.4', 25, 'modem1', 1, 'SendingOKNoReport', -1, 52, 255, 'Gammu 1.28.90'),
('2016-01-29 02:35:43', '0000-00-00 00:00:00', '2016-01-29 02:35:43', NULL, '00730073000900090009000900090009000900090009000900090009000900090009000900090009', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'ss																		', 28, 'modem1', 1, 'SendingOKNoReport', -1, 53, 255, 'Gammu 1.28.90'),
('2016-01-29 02:35:46', '0000-00-00 00:00:00', '2016-01-29 02:35:46', NULL, '0009000900090009000900090009000900090009000900090009000900090009000900090009000900090009', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, '																						', 27, 'modem1', 1, 'SendingOKNoReport', -1, 54, 255, 'Gammu 1.28.90'),
('2016-01-29 02:35:49', '0000-00-00 00:00:00', '2016-01-29 02:35:49', NULL, '0009000900090009000900090009000900090009000900090009000900090009000900090009000900090009', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, '																						', 26, 'modem1', 1, 'SendingOKNoReport', -1, 55, 255, 'Gammu 1.28.90'),
('2016-01-29 02:36:21', '0000-00-00 00:00:00', '2016-01-29 02:36:21', NULL, '', '', 'Default_No_Compression', '', '+6281100000', -1, '', 29, 'modem1', 1, 'SendingError', -1, -1, 255, 'Gammu 1.28.90'),
('2016-01-29 02:37:25', '0000-00-00 00:00:00', '2016-01-29 02:37:25', NULL, '006E0069006C00610069002000730065006D006500730074006500720020003100200061006E0061006B00200061006E006400610020006100640061006C00610068003A00200033002E00360037', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'nilai semester 1 anak anda adalah: 3.67', 31, 'modem1', 1, 'SendingOKNoReport', -1, 57, 255, 'Gammu 1.28.90'),
('2016-01-29 02:38:31', '0000-00-00 00:00:00', '2016-01-29 02:38:31', NULL, '006E0069006C00610069002000730065006D006500730074006500720020003100200061006E0061006B00200061006E006400610020006100640061006C00610068003A00200033002E00300030', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'nilai semester 1 anak anda adalah: 3.00', 32, 'modem1', 1, 'SendingOKNoReport', -1, 58, 255, 'Gammu 1.28.90'),
('2016-01-29 06:26:26', '0000-00-00 00:00:00', '2016-01-29 06:26:26', NULL, '006E0069006C00610069002000730065006D0065007300740065007200200031002000200061006E0061006B00200061006E006400610020006100640061006C00610068003A00200033002E00360037', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'nilai semester 1  anak anda adalah: 3.67', 34, 'modem1', 1, 'SendingOKNoReport', -1, 59, 255, 'Gammu 1.28.90'),
('2016-01-29 06:26:29', '0000-00-00 00:00:00', '2016-01-29 06:26:29', NULL, '0074006500730074', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'test', 33, 'modem1', 1, 'SendingOKNoReport', -1, 60, 255, 'Gammu 1.28.90'),
('2016-01-29 07:37:41', '0000-00-00 00:00:00', '2016-01-29 07:37:41', NULL, '006E0069006C00610069002000730065006D006500730074006500720020003100200061006E0061006B00200061006E006400610020006100640061006C00610068003A00200033002E00360037', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'nilai semester 1 anak anda adalah: 3.67', 35, 'modem1', 1, 'SendingOKNoReport', -1, 61, 255, 'Gammu 1.28.90'),
('2016-01-31 14:38:18', '0000-00-00 00:00:00', '2016-01-31 14:38:18', NULL, '000D000A004E0069006C00610069002000490050004B002000530065006D006500730074006500720020003100200055006E00740075006B00200041006E0061006B00200041006E00640061002000440065006E00670061006E0020004E0050004D002000310031003400340030003400350020004100640061006C0061006800200033002E00340038', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, '\r\nNilai IPK Semester 1 Untuk Anak Anda Dengan NPM 1144045 Adalah 3.48', 36, 'modem1', 1, 'SendingOKNoReport', -1, 62, 255, 'Gammu 1.28.90'),
('2016-01-31 14:40:12', '0000-00-00 00:00:00', '2016-01-31 14:40:12', NULL, '', '', 'Default_No_Compression', '', '+6281100000', -1, '', 37, 'modem1', 1, 'SendingError', -1, -1, 255, 'Gammu 1.28.90'),
('2016-01-31 14:40:44', '0000-00-00 00:00:00', '2016-01-31 14:40:44', NULL, '', '', 'Default_No_Compression', '', '+6281100000', -1, '', 38, 'modem1', 1, 'SendingError', -1, -1, 255, 'Gammu 1.28.90'),
('2016-02-01 06:09:38', '0000-00-00 00:00:00', '2016-02-01 06:09:38', NULL, '004E0069006C00610069002000490050004B002000530065006D006500730074006500720020003200200055006E00740075006B00200041006E0061006B00200041006E00640061002000440065006E00670061006E0020004E0050004D002000310031003400340030003400350020004100640061006C0061006800200033002E00380034', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'Nilai IPK Semester 2 Untuk Anak Anda Dengan NPM 1144045 Adalah 3.84', 40, 'modem1', 1, 'SendingOKNoReport', -1, 65, 255, 'Gammu 1.28.90');

-- --------------------------------------------------------

--
-- Table structure for table `t_detail_nilai`
--

CREATE TABLE IF NOT EXISTS `t_detail_nilai` (
  `id_detail_nilai` int(10) NOT NULL AUTO_INCREMENT,
  `id_nilai` varchar(10) NOT NULL,
  `kode_mata_kuliah` varchar(10) NOT NULL,
  `nilai` varchar(2) NOT NULL,
  PRIMARY KEY (`id_detail_nilai`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `t_detail_nilai`
--

INSERT INTO `t_detail_nilai` (`id_detail_nilai`, `id_nilai`, `kode_mata_kuliah`, `nilai`) VALUES
(33, 'TI4451', 'T4I123B4', 'A'),
(34, 'TI4451', 'T4I123K4', 'A'),
(35, 'TI4451', 'T4I14D3', 'A'),
(36, 'TI4451', 'T4I152A2', 'A'),
(37, 'TI4451', 'T4I161A3', 'A'),
(38, 'TI4451', 'T4I161D2', 'A'),
(39, 'TI4451', 'T4I162D2', 'A'),
(40, 'TI4451', 'T4I263A3', 'E'),
(41, 'TI4611', 'T4I123B4', 'A'),
(42, 'TI4611', 'T4I123K4', 'A'),
(43, 'TI4611', 'T4I14D3', 'A'),
(44, 'TI4611', 'T4I152A2', 'A'),
(45, 'TI4611', 'T4I161A3', 'A'),
(46, 'TI4611', 'T4I161D2', 'A'),
(47, 'TI4611', 'T4I162D2', 'A'),
(48, 'TI4611', 'T4I263A3', 'A'),
(49, 'TI4521', 'T4I222D4', 'B'),
(50, 'TI4521', 'T4I222L3', 'A'),
(51, 'TI4521', 'T4I223J4', 'A'),
(52, 'TI4521', 'T4I252P2', 'A'),
(53, 'TI4521', 'T4I261B4', 'A'),
(54, 'TI4521', 'T4I262O2', 'A'),
(55, 'TI4521', 'T4I263B3', 'A'),
(56, 'TI4521', 'T4I2I2A4', 'A'),
(57, 'TI453', 'T4322AB2', 'A'),
(58, 'TI453', 'T4I312D4', 'A'),
(59, 'TI453', 'T4I312E3', 'A'),
(60, 'TI453', 'T4I322AGA', 'A'),
(61, 'TI453', 'T4I322J4', 'A'),
(62, 'TI453', 'T4I323T4', 'A'),
(63, 'TI453', 'T4I363C3', 'B'),
(64, 'TI451', 'T4I123B4', 'A'),
(65, 'TI451', 'T4I123K4', 'A'),
(66, 'TI451', 'T4I14D3', 'A'),
(67, 'TI451', 'T4I152A2', 'A'),
(68, 'TI451', 'T4I161A3', 'A'),
(69, 'TI451', 'T4I161D2', 'A'),
(70, 'TI451', 'T4I162D2', 'A'),
(71, 'TI451', 'T4I263A3', 'E'),
(72, 'TI452', 'T4I222D4', 'A'),
(73, 'TI452', 'T4I222L3', 'A'),
(74, 'TI452', 'T4I223J4', 'A'),
(75, 'TI452', 'T4I252P2', 'A'),
(76, 'TI452', 'T4I261B4', 'A'),
(77, 'TI452', 'T4I262O2', 'A'),
(78, 'TI452', 'T4I263B3', 'A'),
(79, 'TI452', 'T4I2I2A4', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `t_dosen`
--

CREATE TABLE IF NOT EXISTS `t_dosen` (
  `nip` varchar(10) NOT NULL,
  `nama_dosen` varchar(25) NOT NULL,
  `alamat_dosen` varchar(25) NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_dosen`
--

INSERT INTO `t_dosen` (`nip`, `nama_dosen`, `alamat_dosen`) VALUES
('123450', 'Abdul', 'antapania'),
('12421', 'dodi', 'sarijadi'),
('242412', 'didi', 'sarijadi');

-- --------------------------------------------------------

--
-- Table structure for table `t_jurusan`
--

CREATE TABLE IF NOT EXISTS `t_jurusan` (
  `id_jurusan` varchar(10) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `id_prodi` varchar(10) NOT NULL,
  PRIMARY KEY (`id_jurusan`),
  KEY `id_prodi` (`id_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jurusan`
--

INSERT INTO `t_jurusan` (`id_jurusan`, `jurusan`, `id_prodi`) VALUES
('AK', 'Akuntansi', 'P2'),
('LB', 'Logistik Bisnis', 'P2'),
('MB', 'Manajemen Bisnis', 'P2'),
('MI', 'Manajemen Informatika', 'P2'),
('TI', 'Teknik Informatika', 'P2');

-- --------------------------------------------------------

--
-- Table structure for table `t_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `t_mahasiswa` (
  `npm` varchar(10) NOT NULL,
  `nama_mhs` varchar(25) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `asal_mhs` varchar(25) NOT NULL,
  `alamat_mhs` varchar(50) NOT NULL,
  `id_prodi` varchar(10) NOT NULL,
  `id_jurusan` varchar(25) NOT NULL,
  `kelas` varchar(2) NOT NULL,
  `angkatan` varchar(4) NOT NULL,
  `status` varchar(12) NOT NULL,
  PRIMARY KEY (`npm`),
  KEY `id_prodi` (`id_prodi`),
  KEY `id_jurusan` (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_mahasiswa`
--

INSERT INTO `t_mahasiswa` (`npm`, `nama_mhs`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `asal_mhs`, `alamat_mhs`, `id_prodi`, `id_jurusan`, `kelas`, `angkatan`, `status`) VALUES
('11', 'a', 'a', '1995-02-22', 'Laki-Laki', 'Parepare', 'aksjs', 'P1', 'TI', '2a', '2013', 'Aktif'),
('1144045', 'Muhammad Ramadhan T', 'Parepare', '1996-01-26', 'Laki-Laki', 'Parepare', 'Sarijadi', 'P2', 'TI', '2D', '2014', 'Aktif'),
('1144061', 'Putri Suciani', 'Parepare', '1996-12-08', 'Laki-Laki', 'Parepare', 'Sarijadi`', 'P2', 'TI', '2A', '2014', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `t_mata_kuliah`
--

CREATE TABLE IF NOT EXISTS `t_mata_kuliah` (
  `kode_mata_kuliah` varchar(10) NOT NULL,
  `id_prodi` varchar(10) NOT NULL,
  `id_jurusan` varchar(10) NOT NULL,
  `nama_mata_kuliah` varchar(25) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `sks` int(2) NOT NULL,
  PRIMARY KEY (`kode_mata_kuliah`),
  KEY `id_prodi` (`id_prodi`),
  KEY `id_jurusan` (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_mata_kuliah`
--

INSERT INTO `t_mata_kuliah` (`kode_mata_kuliah`, `id_prodi`, `id_jurusan`, `nama_mata_kuliah`, `semester`, `sks`) VALUES
('00222', 'P1', 'TI', 'PBO', '1', 4),
('T4322AB2', 'P2', 'TI', 'Sistem Transportasi & Dis', '3', 2),
('T4I123B4', 'P2', 'TI', 'Algoritma & Struktur Data', '1', 4),
('T4I123K4', 'P2', 'TI', 'Desain dan Pemograman Web', '1', 4),
('T4I14D3', 'P2', 'TI', 'Organisasi dan Arsitektur', '1', 3),
('T4I152A2', 'P2', 'TI', 'Pengantar Logistik', '1', 2),
('T4I161A3', 'P2', 'TI', 'Agama', '1', 3),
('T4I161D2', 'P2', 'TI', 'Fisika Dasar', '1', 2),
('T4I162D2', 'P2', 'TI', 'Matematika Diskrit', '1', 2),
('T4I222D4', 'P2', 'TI', 'Basis Data I', '2', 4),
('T4I222L3', 'P2', 'TI', 'ANSI', '2', 4),
('T4I223J4', 'P2', 'TI', 'PBO', '2', 4),
('T4I252P2', 'P2', 'TI', 'SCM', '2', 2),
('T4I261B4', 'P2', 'TI', 'PPKN', '2', 3),
('T4I262O2', 'P2', 'TI', 'Metode Numerik', '2', 2),
('T4I263A3', 'P2', 'TI', 'General English', '1', 3),
('T4I263B3', 'P2', 'TI', 'General English II', '2', 3),
('T4I2I2A4', 'P2', 'TI', 'Sistem Operasi', '2', 4),
('T4I312D4', 'P2', 'TI', 'Jaringan Komputer', '3', 4),
('T4I312E3', 'P2', 'TI', 'Sistem Tersebar', '3', 3),
('T4I322AGA', 'P2', 'TI', 'Basis Data II', '3', 4),
('T4I322J4', 'P2', 'TI', 'RPL', '3', 4),
('T4I323T4', 'P2', 'TI', 'Proyek TI I', '3', 4),
('T4I363C3', 'P2', 'TI', 'General English III', '3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai`
--

CREATE TABLE IF NOT EXISTS `t_nilai` (
  `id_nilai` varchar(10) NOT NULL,
  `id_prodi` varchar(10) NOT NULL,
  `id_jurusan` varchar(10) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `IPK` varchar(4) NOT NULL,
  PRIMARY KEY (`id_nilai`),
  KEY `id_prodi` (`id_prodi`),
  KEY `id_jurusan` (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai`
--

INSERT INTO `t_nilai` (`id_nilai`, `id_prodi`, `id_jurusan`, `npm`, `semester`, `IPK`) VALUES
('TI451', 'P2', 'TI', '1144045', '1', '3.47'),
('TI452', 'P2', 'TI', '1144045', '2', '3.84'),
('TI4611', 'P2', 'TI', '1144061', '1', '4');

-- --------------------------------------------------------

--
-- Table structure for table `t_orangtua_mhs`
--

CREATE TABLE IF NOT EXISTS `t_orangtua_mhs` (
  `id_orangtua` varchar(10) NOT NULL,
  `nama_orangtua` varchar(25) NOT NULL,
  `alamat_orangtua` varchar(50) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  PRIMARY KEY (`id_orangtua`),
  KEY `Fk_Orangtua` (`npm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_orangtua_mhs`
--

INSERT INTO `t_orangtua_mhs` (`id_orangtua`, `nama_orangtua`, `alamat_orangtua`, `npm`, `no_hp`) VALUES
('01', 'Muhammad Tasidin', 'Jl. Bukit Madani  No.12', '1144045', '085238203429'),
('02', 'ABD HAFID', 'aaaaa', '1144061', '085396856147');

-- --------------------------------------------------------

--
-- Table structure for table `t_prodi`
--

CREATE TABLE IF NOT EXISTS `t_prodi` (
  `id_prodi` varchar(10) NOT NULL,
  `prodi` varchar(2) NOT NULL,
  PRIMARY KEY (`id_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_prodi`
--

INSERT INTO `t_prodi` (`id_prodi`, `prodi`) VALUES
('P1', 'D3'),
('P2', 'D4');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` enum('admin','dosen','mahasiswa') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1234567892 ;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
(8, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(11, 'Muhammad Ramadhan', '1144045', '827ccb0eea8a706c4c34a16891f84e7b', 'mahasiswa'),
(213, 'Abdul', '123450', '4100c4d44da9177247e44a5fc1546778', 'dosen'),
(1234567890, 'Putri Suciani Hafid', '1144061', '827ccb0eea8a706c4c34a16891f84e7b', 'mahasiswa'),
(1234567891, 'administratora', 'admina', '91183e1cb4e46961f86a2ef6287927ad', 'admin');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_jurusan`
--
ALTER TABLE `t_jurusan`
  ADD CONSTRAINT `t_jurusan_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `t_prodi` (`id_prodi`);

--
-- Constraints for table `t_mahasiswa`
--
ALTER TABLE `t_mahasiswa`
  ADD CONSTRAINT `t_mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `t_prodi` (`id_prodi`),
  ADD CONSTRAINT `t_mahasiswa_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `t_jurusan` (`id_jurusan`);

--
-- Constraints for table `t_mata_kuliah`
--
ALTER TABLE `t_mata_kuliah`
  ADD CONSTRAINT `t_mata_kuliah_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `t_prodi` (`id_prodi`),
  ADD CONSTRAINT `t_mata_kuliah_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `t_jurusan` (`id_jurusan`);

--
-- Constraints for table `t_nilai`
--
ALTER TABLE `t_nilai`
  ADD CONSTRAINT `t_nilai_ibfk_3` FOREIGN KEY (`id_prodi`) REFERENCES `t_prodi` (`id_prodi`),
  ADD CONSTRAINT `t_nilai_ibfk_4` FOREIGN KEY (`id_jurusan`) REFERENCES `t_jurusan` (`id_jurusan`);

--
-- Constraints for table `t_orangtua_mhs`
--
ALTER TABLE `t_orangtua_mhs`
  ADD CONSTRAINT `t_orangtua_mhs_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `t_mahasiswa` (`npm`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
