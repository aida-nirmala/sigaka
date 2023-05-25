-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 07:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sigaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `sigaka_absen`
--

CREATE TABLE `sigaka_absen` (
  `absen_id` varchar(20) NOT NULL,
  `absen_tenagahonorer_id` varchar(20) NOT NULL,
  `absen_hari` varchar(10) NOT NULL,
  `absen_status` enum('lembur','normal') NOT NULL DEFAULT 'normal',
  `absen_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sigaka_absen`
--

INSERT INTO `sigaka_absen` (`absen_id`, `absen_tenagahonorer_id`, `absen_hari`, `absen_status`, `absen_date_created`) VALUES
('ABS-01957', 'PEG-19252', 'Selasa', 'normal', '2023-04-18 14:12:37'),
('ABS-01965', 'PEG-20239', 'Selasa', 'normal', '2023-04-18 14:12:45'),
('ABS-01971', 'PEG-18653', 'Selasa', 'normal', '2023-04-18 14:12:51'),
('ABS-01977', 'PEG-19414', 'Selasa', 'normal', '2023-04-18 14:12:57'),
('ABS-01983', 'PEG-19362', 'Selasa', 'normal', '2023-04-18 14:13:03'),
('ABS-02048', 'PEG-21872', 'Selasa', 'normal', '2023-04-18 14:14:08'),
('ABS-03515', 'PEG-21872', 'Senin', 'normal', '2023-04-03 13:31:55'),
('ABS-03522', 'PEG-18653', 'Senin', 'normal', '2023-04-03 13:32:02'),
('ABS-03563', 'PEG-19362', 'Senin', 'normal', '2023-04-03 13:32:43'),
('ABS-03570', 'PEG-19252', 'Senin', 'normal', '2023-04-03 13:32:50'),
('ABS-03576', 'PEG-20239', 'Senin', 'normal', '2023-04-03 13:32:56'),
('ABS-03584', 'PEG-19414', 'Senin', 'normal', '2023-04-03 13:33:04'),
('ABS-07660', 'PEG-18653', 'Selasa', 'normal', '2023-04-25 14:27:40'),
('ABS-07682', 'PEG-19252', 'Selasa', 'normal', '2023-04-25 14:28:02'),
('ABS-07689', 'PEG-19362', 'Selasa', 'normal', '2023-04-25 14:28:09'),
('ABS-07703', 'PEG-19414', 'Selasa', 'normal', '2023-04-25 14:28:23'),
('ABS-07709', 'PEG-20239', 'Selasa', 'normal', '2023-04-25 14:28:29'),
('ABS-09930', 'PEG-18653', 'Senin', 'normal', '2023-04-10 13:58:50'),
('ABS-09941', 'PEG-21872', 'Senin', 'normal', '2023-04-10 13:59:01'),
('ABS-09950', 'PEG-19252', 'Senin', 'normal', '2023-04-10 13:59:10'),
('ABS-09961', 'PEG-20239', 'Senin', 'normal', '2023-04-10 13:59:21'),
('ABS-09968', 'PEG-19362', 'Senin', 'normal', '2023-04-10 13:59:28'),
('ABS-15487', 'PEG-21872', 'Senin', 'normal', '2023-04-17 14:11:27'),
('ABS-15494', 'PEG-20239', 'Senin', 'normal', '2023-04-17 14:11:34'),
('ABS-15499', 'PEG-19414', 'Senin', 'normal', '2023-04-17 14:11:39'),
('ABS-15510', 'PEG-19362', 'Senin', 'normal', '2023-04-17 14:11:50'),
('ABS-15518', 'PEG-18653', 'Senin', 'normal', '2023-04-17 14:11:58'),
('ABS-18923', 'PEG-21872', 'Senin', 'normal', '2023-05-01 12:28:43'),
('ABS-21142', 'PEG-18653', 'Senin', 'normal', '2023-04-24 14:25:42'),
('ABS-21147', 'PEG-19252', 'Senin', 'normal', '2023-04-24 14:25:47'),
('ABS-21153', 'PEG-19414', 'Senin', 'normal', '2023-04-24 14:25:53'),
('ABS-21159', 'PEG-19362', 'Senin', 'normal', '2023-04-24 14:25:59'),
('ABS-21167', 'PEG-20239', 'Senin', 'normal', '2023-04-24 14:26:07'),
('ABS-41832', 'PEG-20239', 'Minggu', 'normal', '2023-05-21 11:03:52'),
('ABS-50624', 'PEG-21872', 'Kamis', 'normal', '2023-04-07 13:57:04'),
('ABS-50632', 'PEG-19252', 'Jumat', 'normal', '2023-04-07 13:57:12'),
('ABS-50639', 'PEG-19414', 'Jumat', 'normal', '2023-04-07 13:57:19'),
('ABS-50646', 'PEG-19362', 'Jumat', 'normal', '2023-04-07 13:57:26'),
('ABS-50678', 'PEG-18653', 'Jumat', 'normal', '2023-04-07 13:57:58'),
('ABS-50687', 'PEG-20239', 'Jumat', 'normal', '2023-04-07 13:58:07'),
('ABS-55993', 'PEG-20239', 'Kamis', 'normal', '2023-04-14 14:06:33'),
('ABS-56050', 'PEG-21872', 'Jumat', 'normal', '2023-04-14 14:07:30'),
('ABS-56065', 'PEG-19414', 'Jumat', 'normal', '2023-04-14 14:07:45'),
('ABS-56072', 'PEG-19362', 'Jumat', 'normal', '2023-04-14 14:07:52'),
('ABS-56081', 'PEG-18653', 'Jumat', 'normal', '2023-04-14 14:08:01'),
('ABS-56104', 'PEG-19252', 'Jumat', 'normal', '2023-04-14 14:08:24'),
('ABS-61696', 'PEG-19252', 'Jumat', 'normal', '2023-04-21 14:21:36'),
('ABS-61705', 'PEG-19362', 'Jumat', 'normal', '2023-04-21 14:21:45'),
('ABS-61712', 'PEG-19414', 'Jumat', 'normal', '2023-04-21 14:21:52'),
('ABS-61721', 'PEG-20239', 'Jumat', 'normal', '2023-04-21 14:22:01'),
('ABS-61788', 'PEG-18653', 'Jumat', 'normal', '2023-04-21 14:23:08'),
('ABS-64155', 'PEG-21872', 'Kamis', 'normal', '2023-04-06 13:55:55'),
('ABS-64164', 'PEG-19252', 'Kamis', 'normal', '2023-04-06 13:56:04'),
('ABS-64175', 'PEG-19414', 'Kamis', 'normal', '2023-04-06 13:56:15'),
('ABS-64183', 'PEG-19362', 'Kamis', 'normal', '2023-04-06 13:56:23'),
('ABS-64193', 'PEG-18653', 'Kamis', 'normal', '2023-04-06 13:56:33'),
('ABS-69498', 'PEG-19252', 'Kamis', 'normal', '2023-04-13 14:04:58'),
('ABS-69505', 'PEG-18653', 'Kamis', 'normal', '2023-04-13 14:05:05'),
('ABS-69513', 'PEG-19362', 'Kamis', 'normal', '2023-04-13 14:05:13'),
('ABS-69563', 'PEG-21872', 'Kamis', 'normal', '2023-04-13 14:06:03'),
('ABS-69576', 'PEG-19414', 'Kamis', 'normal', '2023-04-13 14:06:16'),
('ABS-75131', 'PEG-19252', 'Kamis', 'normal', '2023-04-20 14:18:51'),
('ABS-75169', 'PEG-19362', 'Kamis', 'normal', '2023-04-20 14:19:29'),
('ABS-75175', 'PEG-19414', 'Kamis', 'normal', '2023-04-20 14:19:35'),
('ABS-75183', 'PEG-20239', 'Kamis', 'normal', '2023-04-20 14:19:43'),
('ABS-75193', 'PEG-18653', 'Kamis', 'normal', '2023-04-20 14:19:53'),
('ABS-76587', 'PEG-21872', 'Rabu', 'normal', '2023-04-05 13:36:27'),
('ABS-76680', 'PEG-19252', 'Rabu', 'normal', '2023-04-05 13:38:00'),
('ABS-76689', 'PEG-19414', 'Rabu', 'normal', '2023-04-05 13:38:09'),
('ABS-76782', 'PEG-19362', 'Rabu', 'normal', '2023-04-05 13:39:43'),
('ABS-76804', 'PEG-18653', 'Rabu', 'normal', '2023-04-05 13:40:04'),
('ABS-76843', 'PEG-20239', 'Rabu', 'normal', '2023-04-05 13:40:43'),
('ABS-83027', 'PEG-20239', 'Rabu', 'normal', '2023-04-12 14:03:47'),
('ABS-83035', 'PEG-19362', 'Rabu', 'normal', '2023-04-12 14:03:55'),
('ABS-83041', 'PEG-18653', 'Rabu', 'normal', '2023-04-12 14:04:01'),
('ABS-83051', 'PEG-21872', 'Rabu', 'normal', '2023-04-12 14:04:11'),
('ABS-83062', 'PEG-19414', 'Rabu', 'normal', '2023-04-12 14:04:22'),
('ABS-83073', 'PEG-19252', 'Rabu', 'normal', '2023-04-12 14:04:33'),
('ABS-88484', 'PEG-20239', 'Rabu', 'normal', '2023-04-19 14:14:44'),
('ABS-88490', 'PEG-18653', 'Rabu', 'normal', '2023-04-19 14:14:50'),
('ABS-88497', 'PEG-19414', 'Rabu', 'normal', '2023-04-19 14:14:57'),
('ABS-88522', 'PEG-19362', 'Rabu', 'normal', '2023-04-19 14:15:22'),
('ABS-88534', 'PEG-19252', 'Rabu', 'normal', '2023-04-19 14:15:34'),
('ABS-88541', 'PEG-21872', 'Rabu', 'normal', '2023-04-19 14:15:41'),
('ABS-89875', 'PEG-20239', 'Kamis', 'normal', '2023-05-11 14:24:35'),
('ABS-90029', 'PEG-19252', 'Selasa', 'normal', '2023-04-04 13:33:49'),
('ABS-90043', 'PEG-18653', 'Selasa', 'normal', '2023-04-04 13:34:03'),
('ABS-90052', 'PEG-19414', 'Selasa', 'normal', '2023-04-04 13:34:12'),
('ABS-90083', 'PEG-19362', 'Selasa', 'normal', '2023-04-04 13:34:43'),
('ABS-90132', 'PEG-20239', 'Selasa', 'normal', '2023-04-04 13:35:32'),
('ABS-94143', 'PEG-19252', 'Rabu', 'normal', '2023-04-26 14:29:03'),
('ABS-94150', 'PEG-18653', 'Rabu', 'normal', '2023-04-26 14:29:10'),
('ABS-94159', 'PEG-19362', 'Rabu', 'normal', '2023-04-26 14:29:19'),
('ABS-94165', 'PEG-19414', 'Rabu', 'normal', '2023-04-26 14:29:25'),
('ABS-94178', 'PEG-20239', 'Rabu', 'normal', '2023-04-26 14:29:38'),
('ABS-96389', 'PEG-18653', 'Senin', 'normal', '2023-04-11 13:59:49'),
('ABS-96404', 'PEG-21872', 'Selasa', 'normal', '2023-04-11 14:00:04'),
('ABS-96536', 'PEG-20239', 'Selasa', 'normal', '2023-04-11 14:02:16'),
('ABS-96545', 'PEG-19252', 'Selasa', 'normal', '2023-04-11 14:02:25'),
('ABS-96555', 'PEG-19362', 'Selasa', 'normal', '2023-04-11 14:02:35'),
('ABS-96571', 'PEG-19414', 'Selasa', 'normal', '2023-04-11 14:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `sigaka_gaji`
--

CREATE TABLE `sigaka_gaji` (
  `gaji_id` varchar(20) NOT NULL,
  `gaji_tenagahonorer_id` varchar(20) NOT NULL,
  `gaji_lembur` int(20) DEFAULT 0,
  `gaji_total` int(20) NOT NULL,
  `gaji_bayar_pinjaman` int(20) NOT NULL,
  `gaji_tanggal` date DEFAULT NULL,
  `gaji_bulan_ke` int(11) DEFAULT NULL,
  `gaji_status` enum('sudah','belum') NOT NULL DEFAULT 'belum',
  `gaji_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sigaka_gaji`
--

INSERT INTO `sigaka_gaji` (`gaji_id`, `gaji_tenagahonorer_id`, `gaji_lembur`, `gaji_total`, `gaji_bayar_pinjaman`, `gaji_tanggal`, `gaji_bulan_ke`, `gaji_status`, `gaji_date_created`) VALUES
('GJI-03584', 'PEG-19414', 0, 935000, 0, '2023-04-26', 1, 'belum', '2023-04-03 13:33:04'),
('GJI-09930', 'PEG-18653', 0, 715000, 0, '2023-04-26', 2, 'belum', '2023-04-10 13:58:50'),
('GJI-30394', 'PEG-18653', 0, 330000, 0, '2023-04-07', 1, 'sudah', '2023-04-01 13:26:34'),
('GJI-30426', 'PEG-20036', 0, 65000, 0, '2023-04-01', 1, 'belum', '2023-04-01 13:27:06'),
('GJI-30434', 'PEG-19362', 0, 1300000, 0, '2023-04-26', 1, 'sudah', '2023-04-01 13:27:14'),
('GJI-30441', 'PEG-19252', 0, 1530000, 0, '2023-04-26', 1, 'sudah', '2023-04-01 13:27:21'),
('GJI-30447', 'PEG-20124', 0, 55000, 0, '2023-04-01', 1, 'belum', '2023-04-01 13:27:27'),
('GJI-30513', 'PEG-20239', 0, 1600000, 0, '2023-05-21', 1, 'sudah', '2023-04-01 13:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `sigaka_jabatan`
--

CREATE TABLE `sigaka_jabatan` (
  `jabatan_id` varchar(20) NOT NULL,
  `jabatan_nama` varchar(255) DEFAULT NULL,
  `jabatan_gaji` int(20) DEFAULT NULL,
  `jabatan_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sigaka_jabatan`
--

INSERT INTO `sigaka_jabatan` (`jabatan_id`, `jabatan_nama`, `jabatan_gaji`, `jabatan_date_created`) VALUES
('JAB-18539', 'Cleaning Service', 55000, '2023-04-25 17:28:59'),
('JAB-19103', 'Office Boy', 55000, '2023-04-25 17:38:23'),
('JAB-19115', 'Satpam', 65000, '2023-04-25 17:38:35'),
('JAB-19187', 'Honorer Bantuan Pemda', 80000, '2023-04-25 17:39:47'),
('JAB-19206', 'Pegawai Pemerintah Non PN', 85000, '2023-04-25 17:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `sigaka_pengguna`
--

CREATE TABLE `sigaka_pengguna` (
  `pengguna_id` int(20) NOT NULL,
  `pengguna_username` varchar(255) DEFAULT NULL,
  `pengguna_password` varchar(255) DEFAULT NULL,
  `pengguna_nama` varchar(255) DEFAULT NULL,
  `pengguna_foto` text DEFAULT NULL,
  `pengguna_hak_akses` enum('admin','pimpinan') DEFAULT NULL,
  `pengguna_date_created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sigaka_pengguna`
--

INSERT INTO `sigaka_pengguna` (`pengguna_id`, `pengguna_username`, `pengguna_password`, `pengguna_nama`, `pengguna_foto`, `pengguna_hak_akses`, `pengguna_date_created`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Nur Wahyuda', NULL, 'admin', '2019-06-28 21:06:43'),
(2, 'pimpinan', '5be057accb25758101fa5eadbbd79503', 'Agus Suprapto', NULL, 'pimpinan', '2019-07-15 12:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `sigaka_pinjam`
--

CREATE TABLE `sigaka_pinjam` (
  `pinjam_id` varchar(20) NOT NULL,
  `pinjam_tenagahonorer_id` varchar(20) NOT NULL,
  `pinjam_jumlah` int(20) NOT NULL,
  `pinjam_bayar` int(20) NOT NULL DEFAULT 0,
  `pinjam_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sigaka_pinjam`
--

INSERT INTO `sigaka_pinjam` (`pinjam_id`, `pinjam_tenagahonorer_id`, `pinjam_jumlah`, `pinjam_bayar`, `pinjam_date_created`) VALUES
('PJM-19586', 'PEG-19362', 50000, 50000, '2023-04-25 17:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `sigaka_tenagahonorer`
--

CREATE TABLE `sigaka_tenagahonorer` (
  `tenagahonorer_id` varchar(20) NOT NULL,
  `tenagahonorer_jabatan_id` varchar(20) DEFAULT NULL,
  `tenagahonorer_nama` varchar(255) DEFAULT NULL,
  `tenagahonorer_tempat_lahir` varchar(255) DEFAULT NULL,
  `tenagahonorer_tanggal_lahir` date DEFAULT NULL,
  `tenagahonorer_alamat` text DEFAULT NULL,
  `tenagahonorer_tanggal_gabung` date DEFAULT NULL,
  `tenagahonorer_nomor_hp` varchar(20) DEFAULT NULL,
  `tenagahonorer_no_rekening` varchar(30) DEFAULT NULL,
  `tenagahonorer_date_created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sigaka_tenagahonorer`
--

INSERT INTO `sigaka_tenagahonorer` (`tenagahonorer_id`, `tenagahonorer_jabatan_id`, `tenagahonorer_nama`, `tenagahonorer_tempat_lahir`, `tenagahonorer_tanggal_lahir`, `tenagahonorer_alamat`, `tenagahonorer_tanggal_gabung`, `tenagahonorer_nomor_hp`, `tenagahonorer_no_rekening`, `tenagahonorer_date_created`) VALUES
('1', 'Satpam', 'Aida', 'Banyumas', '2023-05-03', 'Bobosan', '2023-05-23', '089298902', '819289', '2023-05-25 11:16:34'),
('2', 'Satpam', 'Aida', 'Banyumas', '2023-05-03', 'Bobosan', '2023-05-23', '089298902', '819289', '2023-05-25 11:17:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sigaka_absen`
--
ALTER TABLE `sigaka_absen`
  ADD PRIMARY KEY (`absen_id`);

--
-- Indexes for table `sigaka_gaji`
--
ALTER TABLE `sigaka_gaji`
  ADD PRIMARY KEY (`gaji_id`);

--
-- Indexes for table `sigaka_jabatan`
--
ALTER TABLE `sigaka_jabatan`
  ADD PRIMARY KEY (`jabatan_id`);

--
-- Indexes for table `sigaka_pengguna`
--
ALTER TABLE `sigaka_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `sigaka_pinjam`
--
ALTER TABLE `sigaka_pinjam`
  ADD PRIMARY KEY (`pinjam_id`);

--
-- Indexes for table `sigaka_tenagahonorer`
--
ALTER TABLE `sigaka_tenagahonorer`
  ADD PRIMARY KEY (`tenagahonorer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sigaka_pengguna`
--
ALTER TABLE `sigaka_pengguna`
  MODIFY `pengguna_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
