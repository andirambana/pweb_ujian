-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2021 pada 17.42
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pweb_ujian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nig` int(5) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `tl` date DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nig`, `nama`, `jk`, `tl`, `alamat`) VALUES
(1, 'Bewok Irvansyah Pratama', 'Laki-Laki', '1985-08-17', 'Jl. Haji Maemun No.23'),
(2, 'Budi Aryo Andreas', 'Laki-Laki', '1980-05-10', 'Jl. Letjend Jofrans No.1'),
(3, 'Athallia Putri Ramadhany', 'Perempuan', '1990-10-16', 'Jl. Jalanin Aja Dulu No.21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(30) DEFAULT NULL,
  `nama_wali` varchar(30) DEFAULT NULL,
  `nilai1` int(11) DEFAULT NULL,
  `nilai2` int(11) DEFAULT NULL,
  `nilai3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `nama_siswa`, `nama_wali`, `nilai1`, `nilai2`, `nilai3`) VALUES
(1, 'Dimas Pradipta Putra', 'Athallia Putri Ramadhany', 90, 95, 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tl` date NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jk`, `tl`, `alamat`) VALUES
(1, 'Mochammad Andi Rambana', 'Laki-Laki', '2000-03-06', 'jl. kelapa gading no.55'),
(2, 'Dimas Pradipta Putra', 'Laki-Laki', '2000-07-24', 'Jl. Depok 2 Margonda No.666'),
(3, 'Fayadh Tsauqi', 'Laki-Laki', '2000-02-29', 'Jl. Merdeka Barat No.69');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `nis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
