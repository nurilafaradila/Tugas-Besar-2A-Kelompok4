-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 14, 2016 at 01:05 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`UpdatedInDB`, `ReceivingDateTime`, `Text`, `SenderNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `RecipientID`, `Processed`) VALUES
('2015-12-20 18:23:01', '2015-12-20 18:22:59', '0041006D00700075006E', '+6285238203429', 'Default_No_Compression', '', '+62811078801', -1, 'Ampun', 1, 'modem1', 'false'),
('2015-12-20 18:23:23', '2015-12-20 18:23:23', '00530065006C0061006D00610074002C00200041006E006400610020006D0065006E00640061007000610074006B0061006E0020005400730065006C0020007300650062006500730061007200200032003000300053004D0053002E002000510075006F007400610020006200650072006C0061006B0075002000620065007200620061007400610073002000770061006B00740075002C002000630065006B0020002A003800380039002300200073006300720020006200650072006B0061006C0061002E00200049006E0066006F003A0020007700770077002E00740065006C006B006F006D00730065006C002E0063006F006D', 'TELKOMSEL', 'Default_No_Compression', '', '+6281100000', 1, 'Selamat, Anda mendapatkan Tsel sebesar 200SMS. Quota berlaku berbatas waktu, cek *889# scr berkala. Info: www.telkomsel.com', 2, 'modem1', 'false'),
('2015-12-20 23:42:00', '2015-12-20 23:41:58', '00500061006700690020006A0067', '+6285238203429', 'Default_No_Compression', '', '+62811078801', -1, 'Pagi jg', 3, 'modem1', 'false'),
('2016-01-04 08:18:08', '2016-01-04 08:18:08', '005400650073', '+6285238203429', 'Default_No_Compression', '', '+62811078801', -1, 'Tes', 4, 'modem1', 'false');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `outbox`
--

INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`) VALUES
('2016-01-05 09:23:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '02102', 'Default_No_Compression', NULL, -1, 'qwqwq', 10, 'false', -1, 'modem1', '0000-00-00 00:00:00', 'default', 'Gammu 1.28.90');

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
('modem1', '2016-01-04 08:44:27', '2016-01-04 08:17:17', '2016-01-04 08:44:37', 'yes', 'yes', '358108025951616', 'Gammu 1.28.90, Windows Server 2007, GCC 4.4, MinGW 3.13', 0, 81, 1, 1);

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
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
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
('2016-01-04 08:17:50', '0000-00-00 00:00:00', '2016-01-04 08:17:50', NULL, '00680061006C006F', '085238203429', 'Default_No_Compression', '', '+6281100000', -1, 'halo', 9, 'modem1', 1, 'SendingOKNoReport', -1, 39, 255, 'Gammu 1.28.90');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t_detail_nilai`
--

INSERT INTO `t_detail_nilai` (`id_detail_nilai`, `id_nilai`, `kode_mata_kuliah`, `nilai`) VALUES
(1, '234', 'T4I152A2', 'A'),
(2, '234', 'T4I161A3', 'A'),
(3, '12', 'T3I262D2', 'B'),
(4, '12', 'T3I442H2', 'C');

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
('J1', 'Teknik Informatika', 'P2'),
('J2', 'Manajemen Informatika', 'P2'),
('J3', 'Akuntansi', 'P2'),
('J4', 'Manajemen Bisnis', 'P2'),
('J5', 'Logistik Bisnis', 'P2');

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
('1928810', 'Ahmad', 'Parepare', '2009-08-08', 'Laki-Laki', 'Parepare', 'Sarijadi', 'P2', 'J1', '2C', '2009', 'aktif'),
('1928812', 'Ahmad', 'Parepare', '2009-08-08', 'Laki-Laki', 'Parepare', 'Sarijadi', 'P1', 'J1', '2C', '2009', 'aktif');

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
('T3I262D2', 'P1', 'J1', 'Matematika Diskrit', '1', 2),
('T3I442H2', 'P1', 'J1', 'Pengantar Logistik', '1', 2),
('T4I152A2', 'P2', 'J1', 'Pengantar Logistik', '1', 2),
('T4I161A3', 'P2', 'J1', 'Agama', '1', 3),
('T4I261B4', 'P2', 'J1', 'PPKN', '2', 3),
('T4I263B3', 'P2', 'J1', 'General English', '2', 3);

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
  `IPK` int(4) NOT NULL,
  PRIMARY KEY (`id_nilai`),
  KEY `id_prodi` (`id_prodi`),
  KEY `id_jurusan` (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai`
--

INSERT INTO `t_nilai` (`id_nilai`, `id_prodi`, `id_jurusan`, `npm`, `semester`, `IPK`) VALUES
('12', 'P1', 'J1', '1928812', '1', 3),
('234', 'P2', 'J1', '1928810', '1', 4);

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
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` enum('admin','dosen','mahasiswa') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=214 ;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama_user`, `username`, `password`, `level`) VALUES
(8, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(11, 'Muhammad Ramadhan', '1144045', '827ccb0eea8a706c4c34a16891f84e7b', 'mahasiswa'),
(213, 'Abdul', '123450', '4100c4d44da9177247e44a5fc1546778', 'dosen');

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
