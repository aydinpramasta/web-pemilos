-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2021 at 04:21 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemilos`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_paslon`
--

CREATE TABLE `data_paslon` (
  `id` int(11) NOT NULL,
  `nim_ketua` varchar(9) NOT NULL,
  `nm_paslon_ketua` varchar(50) NOT NULL,
  `gambar1` varchar(100) NOT NULL,
  `nim_wakil` varchar(9) NOT NULL,
  `nm_paslon_wakil` varchar(50) NOT NULL,
  `gambar2` varchar(100) NOT NULL,
  `no_urut` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_paslon`
--

INSERT INTO `data_paslon` (`id`, `nim_ketua`, `nm_paslon_ketua`, `gambar1`, `nim_wakil`, `nm_paslon_wakil`, `gambar2`, `no_urut`) VALUES
(35, '5819', 'Wajendra Dafa', '20211028115340_IMG_8893 (1) (1).jpg', '8615', 'Devin Riantama', '', 1),
(36, '8492', 'Tanalina Mazayasalliha', '20211028113755_IMG_8871.JPG', '8881', 'Zahra Khoirun Nisa', '', 2),
(37, '8419', 'Nevi Andari', '20211028113433_IMG_8859.JPG', '8736', 'Mochammad Adhi', '', 3),
(38, '8438', 'Rahma Cahya', '20211028112759_IMG_8847 (1).jpg', '8696', 'Keyshasi Cintanaya', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akses`
--

CREATE TABLE `tbl_akses` (
  `nim` varchar(9) NOT NULL,
  `kode_akses` varchar(6) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_akses`
--

INSERT INTO `tbl_akses` (`nim`, `kode_akses`, `level`) VALUES
('1111', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dpt`
--

CREATE TABLE `tbl_dpt` (
  `nim` varchar(9) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `waktu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dpt`
--

INSERT INTO `tbl_dpt` (`nim`, `nama_mhs`, `status`, `waktu`) VALUES
('1111', 'admin', 'BELUM MEMILIH', 'BELUM MEMILIH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paslon`
--

CREATE TABLE `tbl_paslon` (
  `kode_akses` varchar(6) NOT NULL,
  `nomor_paslon` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_paslon`
--
ALTER TABLE `data_paslon`
  ADD PRIMARY KEY (`id`,`nim_ketua`);

--
-- Indexes for table `tbl_akses`
--
ALTER TABLE `tbl_akses`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_dpt`
--
ALTER TABLE `tbl_dpt`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_paslon`
--
ALTER TABLE `tbl_paslon`
  ADD PRIMARY KEY (`kode_akses`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_paslon`
--
ALTER TABLE `data_paslon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
