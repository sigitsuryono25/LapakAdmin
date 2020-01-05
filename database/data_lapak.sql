-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 05, 2020 at 03:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_lapak`
--

-- --------------------------------------------------------

--
-- Table structure for table `pasar`
--

CREATE TABLE `pasar` (
  `id_pasar` varchar(100) NOT NULL,
  `nama_pasar` varchar(200) NOT NULL,
  `lokasi_pasar` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasar`
--

INSERT INTO `pasar` (`id_pasar`, `nama_pasar`, `lokasi_pasar`) VALUES
('A4B6157319038724E3560894F7F932C8886EBFCF', 'Pasar Gendheng', 'JL. Prambanan-Piyungan KM 5.5 Madurejo, Prambanan, Sleman, Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `pelapak`
--

CREATE TABLE `pelapak` (
  `id_pelapak` varchar(250) NOT NULL,
  `penaggung_jawab` varchar(100) NOT NULL,
  `alamat` longtext NOT NULL,
  `foto` varchar(100) NOT NULL,
  `qr_files` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `id_pasar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelapak`
--

INSERT INTO `pelapak` (`id_pelapak`, `penaggung_jawab`, `alamat`, `foto`, `qr_files`, `telepon`, `id_pasar`) VALUES
('25f9e794323b453885f5181f1b624d0b', 'Sigit Suryono', 'Sorogedug Kidul RT 3 RW 37 Madurejo, Prambanan, Sleman, Yogyakarta', 'sigit_suryono.jpg', '25f9e794323b453885f5181f1b624d0b.jpg', '+6285201461240', 'A4B6157319038724E3560894F7F932C8886EBFCF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasar`
--
ALTER TABLE `pasar`
  ADD PRIMARY KEY (`id_pasar`);

--
-- Indexes for table `pelapak`
--
ALTER TABLE `pelapak`
  ADD PRIMARY KEY (`id_pelapak`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
