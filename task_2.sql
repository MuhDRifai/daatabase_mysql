-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2021 pada 03.23
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `categories` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `price`, `categories`) VALUES
(1, 2500, 'mie instan'),
(2, 5000, 'soda'),
(3, 5000, 'air mineral');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `invoice` varchar(64) NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL,
  `product_name` varchar(64) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `category` varchar(64) NOT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `invoice`, `tanggal`, `total`, `product_name`, `price`, `qty`, `category`, `id_category`) VALUES
(1, 'INV-001', '2021-01-01', 120000, 'Indomie', 2500, 40, 'mie instan', 1),
(2, 'INV-001', '2021-01-01', 120000, 'Coca-cola', 5000, 2, 'soda', 2),
(3, 'INV-001', '2021-01-01', 120000, 'Aqua', 5000, 2, 'air mineral', 3),
(4, 'INV-002', '2021-01-02', 50000, 'Mie sedap', 2500, 10, 'mie instan', 1),
(5, 'INV-002', '2021-01-02', 50000, 'Indomie', 2500, 10, 'mie instan', 1),
(6, 'INV-003', '2021-01-02', 10000, 'Coca-cola', 5000, 1, 'soda', 2),
(7, 'INV-003', '2021-01-02', 10000, 'Sprite', 5000, 1, 'soda', 2),
(8, 'INV-004', '2021-01-03', 15000, 'Le minerale', 5000, 1, 'air mineral', 3),
(9, 'INV-004', '2021-01-03', 15000, 'Mie Sedap', 2500, 4, 'mie instan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `invoice` varchar(64) NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id`, `invoice`, `tanggal`, `total`) VALUES
(1, 'INV-001', '2021-01-01', 120000),
(2, 'INV-002', '2021-01-02', 50000),
(3, 'INV-003', '2021-01-02', 10000),
(4, 'INV-004', '2021-01-03', 15000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
