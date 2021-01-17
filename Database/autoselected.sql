-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 Okt 2019 pada 18.04
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoselected`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `benua`
--

CREATE TABLE `benua` (
  `id` int(11) NOT NULL,
  `nama_benua` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `benua`
--

INSERT INTO `benua` (`id`, `nama_benua`) VALUES
(1, 'Asia Tenggara'),
(2, 'Asia Timur'),
(3, 'Asia Barat'),
(4, 'Asia Selatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `negara`
--

CREATE TABLE `negara` (
  `id` int(11) NOT NULL,
  `nama_negara` varchar(200) NOT NULL,
  `benua_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `negara`
--

INSERT INTO `negara` (`id`, `nama_negara`, `benua_id`) VALUES
(1, 'Indonesia', '1'),
(2, 'Thailand', '1'),
(3, 'Jepang', '2'),
(4, 'Korea Selatan', '2'),
(5, 'oman', '3'),
(6, 'Qatar', '3'),
(7, 'Malaysia', '1'),
(8, 'Vietnam', '1'),
(9, 'China', '2'),
(10, 'Hongkong', '2'),
(11, 'Arab Saudi', '3'),
(12, 'Bahrain', '3'),
(13, 'Timor Leste', '1'),
(14, 'Laos', '1'),
(15, 'India', '4'),
(16, 'Bangladesh', '4'),
(17, 'Maladewa', '4'),
(18, 'Afganistan', '4'),
(19, 'Irak', '3'),
(20, 'Iran', '3'),
(21, 'Suriah', '3'),
(22, 'Yaman', '3'),
(23, 'Brunei Darussalam', '1'),
(24, 'Myanmar', '1'),
(25, 'Filipina', '1'),
(26, 'Singapura', '1'),
(27, 'Macau', '2'),
(28, 'Taiwan', '2'),
(29, 'Mongolia', '2'),
(30, 'Korea utara', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benua`
--
ALTER TABLE `benua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benua`
--
ALTER TABLE `benua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `negara`
--
ALTER TABLE `negara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
