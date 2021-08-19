-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 02:33 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_klinikmelati`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `ID_Dokter` int(11) NOT NULL,
  `ID_Poli` int(11) NOT NULL,
  `Nama_Dokter` varchar(40) NOT NULL,
  `Alamat_Dokter` varchar(40) NOT NULL,
  `Telp_Dokter` varchar(18) NOT NULL,
  `Tarif` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`ID_Dokter`, `ID_Poli`, `Nama_Dokter`, `Alamat_Dokter`, `Telp_Dokter`, `Tarif`) VALUES
(1, 1, 'Septi Safitri', 'Jalan Pejuang', '081293845763', 150000),
(2, 1, 'Marsudi Mustofa', 'Jalan Pattimura', '081928374652', 150000),
(3, 2, 'Clara Nuraini', 'Jalan Kusmanto', '081928374654', 180000),
(4, 3, 'Kiandra Wahyuni', 'Jalan Sudirman', '089874637281', 180000);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `ID_Obat` int(11) NOT NULL,
  `Nama_Obat` varchar(40) NOT NULL,
  `Harga_Obat` bigint(20) NOT NULL,
  `Jumlah_Obat` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`ID_Obat`, `Nama_Obat`, `Harga_Obat`, `Jumlah_Obat`) VALUES
(1, 'Paracetamol 500g', 3000, 150),
(2, 'Sanmol Tablet', 1500, 150),
(3, 'Decolgen Tablet', 2000, 150),
(4, 'Neozep Forte Tablet', 3100, 150),
(5, 'OBH Combi', 25000, 150),
(6, 'Siladex', 20000, 150),
(7, 'Ibuprofen', 5000, 150),
(8, 'Naproxen', 4800, 150),
(9, 'Inzana Obat Demam Anak', 3100, 150),
(10, 'Termorex Anak', 15000, 150),
(11, 'H-Booster', 22000, 150),
(12, 'Imboost', 5000, 150);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `ID_Pasien` int(11) NOT NULL,
  `Nama_Pasien` varchar(40) NOT NULL,
  `Alamat_Pasien` varchar(40) NOT NULL,
  `Jenis_Kelamin` varchar(20) NOT NULL,
  `Umur_Pasien` varchar(2) NOT NULL,
  `Telp_Pasien` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`ID_Pasien`, `Nama_Pasien`, `Alamat_Pasien`, `Jenis_Kelamin`, `Umur_Pasien`, `Telp_Pasien`) VALUES
(1, 'Hasta Saptono', 'Jalan Rinjani', 'Laki-Laki', '36', '082736412934'),
(2, 'Ghaliyati Purwanti', 'Jalan Siliwangi', 'Perempuan', '26', '082938417561'),
(3, 'Gawati Puspita', 'Jalan Bayam', 'Perempuan', '30', '082938495718'),
(4, 'Dalimin Maulana', 'Jalan Sadang', 'Laki-Laki', '24', '082934817234'),
(5, 'Adiarja Haryanto', 'Jalan Serang', 'Laki-Laki', '27', '083948271283'),
(6, 'Qori Hartati', 'Jalan Sutarjo', 'Perempuan', '25', '082938123743'),
(7, 'Sabar Saptono', 'Jalan Yos Sudarso', 'Laki-Laki', '24', '08293812832'),
(8, 'Tina Lailasari', 'Jalan Gardujati', 'Perempuan', '21', '082347532182'),
(9, 'Asmuni Dabukke', 'Jalan Suharso', 'Laki-Laki', '40', '083948572145'),
(10, 'Aswani Narpati', 'Jalan Pariaman', 'Laki-Laki', '25', '089736452612'),
(11, 'Lidya Yolanda', 'Jalan Kiaracondong', 'Perempuan', '32', '089384721623'),
(12, 'Galar Pradipta', 'Jalan Wahid', 'Laki-Laki', '18', '08983726453'),
(13, 'Karen Palastri', 'Jalan Tangkuban Perahu', 'Perempuan', '17', '089283475234'),
(14, 'Hendri Wacana', 'Jalan Sunaryo', 'Laki-Laki', '27', '089384752123'),
(15, 'Elvin Pratama', 'Jalan Pahlawan', 'Laki-Laki', '16', '089374652384'),
(16, 'Ega Saefullah', 'Jalan Bakau', 'Laki-Laki', '5', '08938465823'),
(17, 'Rudi Wahyudin', 'Jalan Wora', 'Laki-Laki', '4', '08938457238'),
(18, 'Harjo Habibi', 'Jalan Bambon', 'Laki-Laki', '3', '08948572381'),
(19, 'Satya Permadi', 'Jalan Daan', 'Laki-Laki', '1', '089847564732'),
(20, 'Bakidin Prasetya', 'Jalan Baya Kali', 'Laki-Laki', '2', '089846573849'),
(21, 'Gaman Sitompul', 'Jalan Honggowongso', 'Laki-Laki', '26', '089867463521'),
(22, 'Kalim Siregar', 'Jalan Bakit', 'Laki-Laki', '29', '089764536721'),
(23, 'Eka Napitupulu', 'Jalan Cemara', 'Laki-Laki', '37', '089384752631'),
(24, 'Novi Pratiwi', 'Jalan Achmad Yani', 'Perempuan', '16', '089764758321'),
(25, 'Bagas Nuryanto', 'Jalan Cilegon', 'Laki-Laki', '21', '089384758492'),
(26, 'Ulya Astuti', 'Jalan Kiaracondong', 'Perempuan', '27', '089384726341');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `ID_Petugas` int(11) NOT NULL,
  `Nama_Petugas` varchar(40) NOT NULL,
  `Jabatan_Karyawan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`ID_Petugas`, `Nama_Petugas`, `Jabatan_Karyawan`) VALUES
(1, 'Zahra Widiastuti', 'Resepsionis'),
(2, 'Dacin Saputra', 'Resepsionis'),
(3, 'Nrima Simanjuntak', 'Resepsionis'),
(4, 'Dodo Anggriawan', 'Resepsionis');

-- --------------------------------------------------------

--
-- Table structure for table `poliklinik`
--

CREATE TABLE `poliklinik` (
  `ID_Poli` int(11) NOT NULL,
  `Nama_Poli` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poliklinik`
--

INSERT INTO `poliklinik` (`ID_Poli`, `Nama_Poli`) VALUES
(1, 'Umum'),
(2, 'Anak'),
(3, 'Gigi');

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `ID_Resep` int(11) NOT NULL,
  `ID_Dokter` int(11) NOT NULL,
  `ID_Pasien` int(11) NOT NULL,
  `ID_Poli` int(11) NOT NULL,
  `ID_Petugas` int(11) NOT NULL,
  `ID_Obat` int(11) NOT NULL,
  `Tanggal_Resep` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`ID_Resep`, `ID_Dokter`, `ID_Pasien`, `ID_Poli`, `ID_Petugas`, `ID_Obat`, `Tanggal_Resep`) VALUES
(1, 1, 1, 1, 1, 1, '2021-08-01 05:06:29'),
(2, 1, 1, 1, 1, 3, '2021-08-19 09:15:45'),
(3, 1, 1, 1, 1, 12, '2021-08-01 05:06:29'),
(4, 1, 2, 1, 1, 1, '2021-08-01 05:06:29'),
(5, 1, 2, 1, 1, 3, '2021-08-19 09:15:53'),
(6, 1, 2, 1, 1, 12, '2021-08-01 05:06:29'),
(7, 1, 3, 1, 1, 1, '2021-08-01 06:06:29'),
(8, 1, 3, 1, 1, 3, '2021-08-19 09:16:03'),
(9, 1, 3, 1, 1, 12, '2021-08-19 06:14:30'),
(10, 1, 4, 1, 1, 1, '2021-08-01 07:06:29'),
(11, 1, 4, 1, 1, 3, '2021-08-01 07:06:29'),
(12, 1, 4, 1, 1, 12, '2021-08-01 07:06:29'),
(13, 1, 5, 1, 1, 1, '2021-08-01 07:06:29'),
(14, 1, 5, 1, 1, 3, '2021-08-01 07:06:29'),
(15, 1, 5, 1, 1, 12, '2021-08-01 10:00:00'),
(16, 2, 6, 1, 2, 2, '2021-08-02 02:24:05'),
(17, 2, 6, 1, 2, 4, '2021-08-02 02:24:05'),
(18, 2, 6, 1, 2, 12, '2021-08-02 02:24:05'),
(19, 2, 7, 1, 2, 2, '2021-08-02 03:24:05'),
(20, 2, 7, 1, 2, 4, '2021-08-02 03:24:05'),
(21, 2, 7, 1, 2, 12, '2021-08-02 03:24:05'),
(22, 2, 8, 1, 2, 2, '2021-08-02 04:24:05'),
(23, 2, 8, 1, 2, 4, '2021-08-02 04:24:05'),
(24, 2, 8, 1, 2, 12, '2021-08-02 04:24:05'),
(25, 2, 9, 1, 2, 2, '2021-08-02 04:24:05'),
(26, 2, 9, 1, 2, 4, '2021-08-02 04:24:05'),
(27, 2, 9, 1, 2, 12, '2021-08-02 04:24:05'),
(28, 2, 10, 1, 2, 2, '2021-08-02 04:24:05'),
(29, 2, 10, 1, 2, 4, '2021-08-02 04:24:05'),
(30, 2, 10, 1, 2, 12, '2021-08-02 04:24:05'),
(31, 3, 11, 2, 3, 9, '2021-08-01 07:28:40'),
(32, 3, 11, 2, 3, 10, '2021-08-01 07:28:40'),
(33, 3, 11, 2, 3, 11, '2021-08-01 07:28:40'),
(34, 3, 12, 2, 3, 9, '2021-08-01 08:28:40'),
(35, 3, 12, 2, 3, 10, '2021-08-01 08:28:40'),
(36, 3, 12, 2, 3, 11, '2021-08-01 08:28:40'),
(37, 3, 13, 2, 3, 9, '2021-08-01 09:28:40'),
(38, 3, 13, 2, 3, 10, '2021-08-01 09:28:40'),
(39, 3, 13, 2, 3, 11, '2021-08-01 09:28:40'),
(40, 3, 14, 2, 3, 9, '2021-08-01 10:28:40'),
(41, 3, 14, 2, 3, 10, '2021-08-01 10:28:40'),
(42, 3, 14, 2, 3, 11, '2021-08-01 10:28:40'),
(43, 3, 15, 2, 3, 9, '2021-08-01 11:28:40'),
(44, 3, 15, 2, 3, 10, '2021-08-01 11:28:40'),
(45, 3, 15, 2, 3, 11, '2021-08-01 11:28:40'),
(46, 4, 16, 3, 4, 7, '2021-08-02 06:31:37'),
(47, 4, 16, 3, 4, 8, '2021-08-02 06:31:37'),
(48, 4, 16, 3, 4, 12, '2021-08-02 06:31:37'),
(49, 4, 17, 3, 4, 7, '2021-08-02 07:31:37'),
(50, 4, 17, 3, 4, 8, '2021-08-02 07:31:37'),
(51, 4, 17, 3, 4, 12, '2021-08-02 07:31:37'),
(52, 4, 18, 3, 4, 7, '2021-08-02 08:31:37'),
(53, 4, 18, 3, 4, 8, '2021-08-02 08:31:37'),
(54, 4, 18, 3, 4, 12, '2021-08-02 08:31:37'),
(55, 4, 19, 3, 4, 7, '2021-08-02 09:31:37'),
(56, 4, 19, 3, 4, 8, '2021-08-02 09:31:37'),
(57, 4, 19, 3, 4, 12, '2021-08-02 09:31:37'),
(58, 4, 20, 3, 4, 7, '2021-08-02 10:31:37'),
(59, 4, 20, 3, 4, 8, '2021-08-02 10:31:37'),
(60, 4, 20, 3, 4, 12, '2021-08-02 10:31:37'),
(61, 1, 21, 1, 1, 1, '2021-08-06 07:36:21'),
(62, 1, 21, 1, 1, 3, '2021-08-06 07:36:21'),
(63, 1, 21, 1, 1, 12, '2021-08-06 07:36:21'),
(64, 1, 21, 1, 1, 5, '2021-08-06 07:36:21'),
(65, 1, 22, 1, 1, 1, '2021-08-06 08:36:21'),
(66, 1, 22, 1, 1, 3, '2021-08-06 08:36:21'),
(67, 1, 22, 1, 1, 12, '2021-08-06 07:36:21'),
(68, 1, 22, 1, 1, 5, '2021-08-06 08:36:21'),
(69, 1, 23, 1, 1, 1, '2021-08-06 09:36:21'),
(70, 1, 23, 1, 1, 3, '2021-08-06 09:36:21'),
(71, 1, 23, 1, 1, 12, '2021-08-06 09:36:21'),
(72, 1, 23, 1, 1, 5, '2021-08-06 09:36:21'),
(73, 2, 24, 1, 2, 1, '2021-08-07 09:36:21'),
(74, 2, 24, 1, 2, 3, '2021-08-07 09:36:21'),
(75, 2, 24, 1, 2, 12, '2021-08-07 09:36:21'),
(76, 2, 24, 1, 2, 5, '2021-08-07 09:36:21'),
(77, 2, 25, 1, 2, 2, '2021-08-07 10:36:21'),
(78, 2, 25, 1, 2, 4, '2021-08-07 10:36:21'),
(79, 2, 25, 1, 2, 12, '2021-08-07 10:36:21'),
(80, 2, 25, 1, 2, 6, '2021-08-07 10:36:21'),
(81, 2, 26, 1, 2, 2, '2021-08-07 11:36:21'),
(82, 2, 26, 1, 2, 4, '2021-08-07 11:36:21'),
(83, 2, 26, 1, 2, 12, '2021-08-07 11:36:21'),
(84, 2, 26, 1, 2, 6, '2021-08-07 11:36:21'),
(85, 1, 16, 1, 1, 1, '2021-08-08 07:36:21'),
(86, 1, 16, 1, 1, 3, '2021-08-08 07:36:21'),
(87, 1, 16, 1, 1, 12, '2021-08-08 07:36:21'),
(88, 1, 16, 1, 1, 5, '2021-08-08 07:36:21'),
(89, 1, 18, 1, 1, 1, '2021-08-08 08:36:21'),
(90, 1, 18, 1, 1, 3, '2021-08-08 08:36:21'),
(91, 1, 18, 1, 1, 12, '2021-08-08 08:36:21'),
(92, 1, 18, 1, 1, 5, '2021-08-08 08:36:21'),
(93, 1, 20, 1, 1, 1, '2021-08-08 09:36:21'),
(94, 1, 20, 1, 1, 3, '2021-08-08 09:36:21'),
(95, 1, 20, 1, 1, 12, '2021-08-08 09:36:21'),
(96, 1, 20, 1, 1, 5, '2021-08-08 09:36:21'),
(97, 2, 19, 1, 1, 1, '2021-08-08 09:36:21'),
(98, 2, 19, 1, 1, 3, '2021-08-08 09:36:21'),
(99, 2, 19, 1, 1, 12, '2021-08-08 09:36:21'),
(100, 2, 19, 1, 1, 5, '2021-08-08 09:36:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`ID_Dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`ID_Obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`ID_Pasien`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`ID_Petugas`);

--
-- Indexes for table `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`ID_Poli`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`ID_Resep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `ID_Dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `ID_Obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `ID_Pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `ID_Petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `poliklinik`
--
ALTER TABLE `poliklinik`
  MODIFY `ID_Poli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `ID_Resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
