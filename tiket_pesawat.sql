-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 02:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket_pesawat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` int(5) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `jenis_pembayaran` varchar(20) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `jumlah_pembayaran` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `nama`, `jenis_pembayaran`, `alamat`, `email`, `jumlah_pembayaran`) VALUES
(201, 'Putra', 'Debit', 'Teluk Tiram Darat', 'putra098@gmail.com', 2000000),
(203, 'Mutia', 'Cash', 'Antasan Raden', 'Mutia34@gmail.com', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tiketcostumer`
--

CREATE TABLE `tb_tiketcostumer` (
  `nik` varchar(15) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `no_telpon` varchar(12) NOT NULL,
  `kelas` varchar(15) NOT NULL,
  `maskapai` varchar(20) NOT NULL,
  `keberangkatan` varchar(25) NOT NULL,
  `tujuan` varchar(25) NOT NULL,
  `tanggal` varchar(15) NOT NULL,
  `jam` varchar(15) NOT NULL,
  `biaya` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_tiketcostumer`
--

INSERT INTO `tb_tiketcostumer` (`nik`, `nama`, `jenis_kelamin`, `alamat`, `no_telpon`, `kelas`, `maskapai`, `keberangkatan`, `tujuan`, `tanggal`, `jam`, `biaya`) VALUES
('235235876', 'Putri', 'Perempuan', 'Banjarmasin', '0983241432', 'Pemerintah', 'Lion Air', 'Banjarmasin', 'Jakarta', '12/Januari/2024', '20.00/WITA', '500000'),
('98667955', 'Siti', 'Laki - Laki', 'Sultan adam', '81346673', 'Pemerintah', 'Sriwijaya Air', 'Banjarmasin', 'Jakarta', '01/Januari/2024', '15.00/WITA', '1000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `tb_tiketcostumer`
--
ALTER TABLE `tb_tiketcostumer`
  ADD PRIMARY KEY (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
