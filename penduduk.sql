-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 05:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penduduk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_penduduk`
--

CREATE TABLE `tb_penduduk` (
  `id` varchar(64) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penduduk`
--

INSERT INTO `tb_penduduk` (`id`, `nama`, `alamat`, `notelp`) VALUES
('1', 'Aisyah Erwiana', 'Balearjosari, Blimbing', '081245666789'),
('5db7ff35eabff', 'Abdul Hamid', 'Arjosari, Blimbing', '089678912328'),
('5db7ff6425c1e', 'Ahmad Adib Alfaiz', 'Polowijen, Blimbing', '085812547908'),
('5db7ffad7d8c8', 'Amelia Nur Anggraini', 'Pandanwangi Blimbing', '089657802198'),
('5db7ffdb23ece', 'Alfina Saida', 'Bunulrejo, Blimbing', '081246897631'),
('5db8001294f2a', 'Aziz Guntari', 'Purwantoro, Blimbing', '081235609878'),
('5db80035d2983', 'Bagus Andrian', 'Kesatrian, Blimbing', '089987675213'),
('5db800622b562', 'Bayu Aji Saptadi', 'Polehan, Blimbing', '085876678564'),
('5db800845a89e', 'Bagas Kahfa', 'Jodipan, Blimbing', '081565787999'),
('5db800d52128f', 'Bambang Prabowo', 'Purwodadi, Blimbing', '089682307896'),
('5db8015931606', 'Citra Solastika', 'Samaan, Klojen', '081810097756'),
('5db8019c4c2fa', 'Carolina Cindy', 'Rampalcelaket, Klojen', '089654436777'),
('5db801ea04956', 'Cantika Sari', 'Oro Orodowo, Klojen', '089682306489'),
('5db802234c311', 'Devi Divayanti', 'Gadang, Sukun', '085648657849'),
('5db8026647d42', 'Dina Dwiyanti ', 'Bandungrejosari, Sukun', '087756438954'),
('5db802a1473d3', 'Edo Fajar', 'Pisangcandi, Sukun', '085843579098'),
('5db802c7cc0ab', 'Faisal Amri', 'Bandulan, Sukun', '089988673452'),
('5db802ef6bedb', 'Firdaus Ramadhan', 'Tunggulwulung, Lowokwaru', '081345678345'),
('5db8031c0aa1a', 'Gilang Ginanjar', 'Merjosari, Lowokwaru', '089675476608'),
('5db8034edfd7a', 'Hendra Kusuma', 'Tlogomas, Lowokwaru', '085643567811'),
('5db8037b1722e', 'Ilham Hidayatulloh', 'Dinoyo, Lowokwaru', '089648664352'),
('5db803a138daf', 'Kurnia kumalasari', 'Dinoyo, Lowokwaru', '089682306876'),
('5db803da67ad4', 'Laila Lestari', 'Sumbersari, Lowokwaru', '081675437777'),
('5db803f67405c', 'Lukman Hakim', 'Ketawanggede, Lowokwaru', '087767544211'),
('5db8041e22534', 'Muhammad Riski', 'Jatimulyo, Lowokwaru', '089682376545'),
('5db8044111602', 'Nur Kevie Handayani', 'Sumbersari, Lowokwaru', '081235616955'),
('5db80468a24e5', 'Nadia Nishful', 'Tunjungsekar, Lowokwaru', '081111786546'),
('5db8049ccbea7', 'Nanda Prayoga', 'Mojolangu, Lowokwaru', '089965576099'),
('5db804c85ac53', 'Rizal Fikri', 'Lowokwaru, Lowokwaru', '089682306491'),
('5db804f11cb63', 'Ridwan Hamid', 'Tulusrejo, Lowokwaru', '081176546786'),
('5db80525e89d1', 'Silvi Nuril Hamidah', 'Tasikmadu, Lowokwaru', '081165457322');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
