-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Okt 2022 pada 17.06
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisis`
--

CREATE TABLE `divisis` (
  `id` int(11) NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisis`
--

INSERT INTO `divisis` (`id`, `id_user`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ifan', '123', '2022-10-04 05:54:21', '2022-10-04 05:54:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelians`
--

CREATE TABLE `pembelians` (
  `id` int(11) NOT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `tanggal_pengajuan` varchar(255) DEFAULT NULL,
  `tanggal_dibutuhkan` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nama_divisi` varchar(255) DEFAULT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `deskripsi_barang` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `diketahui_oleh` varchar(255) DEFAULT NULL,
  `disetujui_oleh` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelians`
--

INSERT INTO `pembelians` (`id`, `nomor`, `tanggal_pengajuan`, `tanggal_dibutuhkan`, `nama`, `nama_divisi`, `nama_kegiatan`, `nama_barang`, `deskripsi_barang`, `foto`, `jumlah`, `lokasi`, `class`, `diketahui_oleh`, `disetujui_oleh`, `created_at`, `updated_at`) VALUES
(4, 'IAR2022101', NULL, '2022-10-15', 'IFAN RIFALDI', 'iarrrrr', 'yaaaaaa', 'laptop', 'blabla', NULL, 1, 'e3f', 'Pangan', 'ifan', 'rifaldi', '2022-10-07 18:43:11', '2022-10-09 02:39:44'),
(5, 'IAR2022102102', '2022-10-08', '2022-10-08', NULL, 'iarrrrr', NULL, NULL, NULL, NULL, NULL, NULL, 'Pilih', NULL, NULL, '2022-10-07 18:47:57', '2022-10-07 18:47:57'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 22:21:22', '2022-10-10 22:21:22'),
(7, 'IAR2022101', '2022-10-13', '2022-10-13', 'muhammad arjun mahendra', 'iarrrrr', 'pembukaan pbl', 'ps4', 'butuh ps4', 'app/images/pembelian/7-1665713015-7zVBx.png', 2, 'jln.rm sudiono,kecamatan delta pawan, kelurahan tengah, kabupaten ketapang', 'Barang', NULL, NULL, '2022-10-13 08:00:33', '2022-10-13 19:03:35'),
(10, 'IAR2022102102', NULL, NULL, NULL, 'Pilih', NULL, NULL, NULL, 'app/images/pembelian/10-1665712328-PzC3f.png', NULL, NULL, 'Pilih', NULL, NULL, '2022-10-13 11:12:59', '2022-10-13 18:52:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `id_user`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '123', '$2y$10$H9G7xJ.rwKjlEnCRejbttOsGZSivEhnlfh8rXyDToJNeEQ.iqqkki', NULL, '2022-10-12 18:48:56', '2022-10-12 18:48:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `divisis`
--
ALTER TABLE `divisis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `divisis`
--
ALTER TABLE `divisis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
