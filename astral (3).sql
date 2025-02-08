-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 03:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astral`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_murid`
--

CREATE TABLE `tb_murid` (
  `id` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kelas` varchar(8) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_murid`
--

INSERT INTO `tb_murid` (`id`, `nisn`, `nis`, `nama`, `tempat`, `tgl_lahir`, `kelas`, `foto`) VALUES
(1, '12343432', '2134434', 'rfn', 'tes3', '2222-02-12', '11-1', 'gambar3.jpg'),
(2, '12343432', '2134434', 'rfn', '', '2222-02-12', '11-1', 'gambar3.jpg'),
(3, '3565464', '1234345', 'Arfn', '', '0003-12-23', '11-2', 'awan.png'),
(4, '324355', '324324', 'Arfn', 'JL. Pala', '2008-12-23', '11-2', 'header2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `no` int(255) NOT NULL,
  `nama` varchar(999) NOT NULL,
  `nik` varchar(999) DEFAULT NULL,
  `gender` varchar(999) NOT NULL,
  `foto` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`no`, `nama`, `nik`, `gender`, `foto`) VALUES
(1, 'dssd', '2134322', '', 'gambar3.jpg'),
(2, 'ersda', '21313', 'laki', 'gambarnya adhan.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `password` varchar(8) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `user_name`, `password`, `foto`) VALUES
(1, 'rfn', '123', '12345', NULL),
(24, '123', '213', '123', 'orang.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_murid`
--
ALTER TABLE `tb_murid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_murid`
--
ALTER TABLE `tb_murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
