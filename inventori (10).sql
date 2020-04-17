-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2020 pada 17.16
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `kemasan` varchar(20) DEFAULT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `terjual` int(11) NOT NULL DEFAULT 0,
  `foto_barang` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_supplier`, `nama_barang`, `kemasan`, `merk`, `jenis`, `harga`, `stok`, `terjual`, `foto_barang`) VALUES
(1, 1, 'kopii', '6 pcs/k', 'kapal api', 'minuman', 5000, 49849, 17, 'kopi.jpg'),
(2, 2, 'milo stroberi', '6 pcs/k', 'milo', 'minuman', 5000, 124853, 149, 'milo.jpg'),
(3, 1, 'tahu kuning', '6 pcs/k', 'ultramilk', 'makanan', 3000, 5004, 34, 'barang_1585976994.jpg'),
(4, 2, 'nasi goreng', 'piring', 'pak surman', 'makanan', 10000, 49991, 41, 'barang_1585977262.jpg'),
(26, 1, 's', 'e', 'r', 'e', 2, 1, 0, 'barang_1586575293'),
(27, 1, 'g', 'g', '1', 'g', 2, 1, 0, 'barang_1586575310'),
(28, 2, 'g', 'g', 'g', 'g', 2, 2, 0, 'barang_1586575320'),
(29, 2, 'h', 'h', 'h', 'h', 5, 4, 0, 'barang_1586575331'),
(30, 1, 'd', 'y', 'y', 'y', 6, 6, 0, 'barang_1586575343'),
(31, 1, 'j', 'j', 'j', 'j', 6, 6, 0, 'barang_1586575352'),
(32, 1, 'j', 'j', 'j', 'j', 6, 6, 0, 'barang_1586575363');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_keluar`
--

CREATE TABLE `detail_keluar` (
  `id_barang` int(11) NOT NULL,
  `id_keluar` int(11) NOT NULL,
  `qty_keluar` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_keluar`
--

INSERT INTO `detail_keluar` (`id_barang`, `id_keluar`, `qty_keluar`, `status`) VALUES
(3, 1, 1200, 0),
(3, 14, 12, 1),
(2, 15, 1, 1),
(4, 16, 1, 1),
(4, 17, 11, 1),
(1, 18, 2, 1),
(2, 19, 123, 1),
(3, 19, 11, 1);

--
-- Trigger `detail_keluar`
--
DELIMITER $$
CREATE TRIGGER `delete_keluar` AFTER DELETE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok+OLD.qty_keluar 
    WHERE id_barang=OLD.id_barang AND OLD.status='1';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `delete_terjual` AFTER DELETE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual = terjual-OLD.qty_keluar 
    WHERE id_barang=OLD.id_barang AND OLD.status='1';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_keluar` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET stok=stok-NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='1';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_terjual` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual=terjual+NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='1';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_masuk`
--

CREATE TABLE `detail_masuk` (
  `id_barang` int(11) NOT NULL,
  `id_masuk` int(11) NOT NULL,
  `qty_masuk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_masuk`
--

INSERT INTO `detail_masuk` (`id_barang`, `id_masuk`, `qty_masuk`) VALUES
(2, 1, 1),
(2, 2, 120000),
(4, 3, 1),
(3, 3, 11),
(4, 7, 9),
(3, 9, 12),
(3, 11, 12),
(4, 12, 11),
(3, 14, 1),
(2, 15, 1),
(3, 16, 2),
(4, 16, 11);

--
-- Trigger `detail_masuk`
--
DELIMITER $$
CREATE TRIGGER `delete_masuk` AFTER DELETE ON `detail_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok-OLD.qty_masuk 
    WHERE id_barang=OLD.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_masuk` AFTER INSERT ON `detail_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET stok=stok+NEW.qty_masuk
    WHERE id_barang=NEW.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `id_keluar` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `total_keluar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`id_keluar`, `id_user`, `tgl_keluar`, `total_keluar`) VALUES
(1, 7, '2020-04-08', 6),
(14, 3, '2020-04-16', 36000),
(15, 4, '2020-04-16', 5000),
(16, 7, '2020-04-16', 10000),
(17, 3, '2020-04-16', 110000),
(18, 4, '2020-04-16', 10000),
(19, 9, '2020-04-16', 648000);

--
-- Trigger `keluar`
--
DELIMITER $$
CREATE TRIGGER `hapus_keluar` BEFORE DELETE ON `keluar` FOR EACH ROW BEGIN
	DELETE FROM detail_keluar
    WHERE id_keluar=OLD.id_keluar;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `id_masuk` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `total_masuk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`id_masuk`, `id_supplier`, `tgl_masuk`, `total_masuk`) VALUES
(1, 1, '2020-04-04', 5000),
(2, 1, '2020-04-05', 600000000),
(3, 1, '2020-04-08', 43000),
(7, 1, '2020-04-11', 90000),
(9, 1, '2020-04-11', 36000),
(10, 1, '2021-05-11', 444),
(11, 2, '2020-04-11', 36000),
(12, 2, '2020-04-11', 110000),
(13, 2, '2020-04-11', 512),
(14, 2, '2020-04-11', 3000),
(15, 1, '2020-04-11', 5000),
(16, 1, '2020-04-14', 116000);

--
-- Trigger `masuk`
--
DELIMITER $$
CREATE TRIGGER `hapus_masuk` BEFORE DELETE ON `masuk` FOR EACH ROW BEGIN
	DELETE FROM detail_masuk
    WHERE id_masuk=OLD.id_masuk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `no_telp`) VALUES
(1, 'PT Kino', 'Probolinggo', '081234456781'),
(2, 'PT Indofood', 'Probolinggo', '087654321234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `username`, `password`, `level`, `nama`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `no_telp`, `foto`) VALUES
(1, 'nevin@gmail.com', 'nevin', '57dd6150d6302a88892a0c5e09dfc7fc', 'admin', 'nevin', '2000-01-27', 'laki-laki', 'Jember', '089765456123', 'pp.jpg'),
(2, 'brianvidyanjaya@gmail.com', 'brian', '929064f2a141f812f1c2efb3ff8194ca', 'manajer', 'brian vidyanjaya', '2000-04-20', 'laki-laki', 'Probolinggo', '087672819212', 'pp.jpg'),
(3, 'rere@gmail.com', 'rere', '4b054d969d22341219a5bc88f4c8321f', 'customer', 'rere', '2000-01-27', 'perempuan', 'Surabaya', '089765682312', 'pp.jpg'),
(4, 'rara@gmail.com', 'rara', '5ab83fa52e5d0f5abc44d2eed4479ff0', 'customer', 'rara', '2020-04-09', 'perempuan', 'Situbondo', '085234567891', 'pp.jpg'),
(5, 'sinyo@gmail.com', 'sinyo', '7cf7a0149ee46108c3f37066b1c126ec', 'gudang', 'sinyo', '2020-04-15', 'laki-laiki', 'Jember', '089765241572', 'user_1585977429.jpg'),
(6, 'rama@gmail.com', 'rama', '36226b453eb255f672f118a1ecc1e4ec', 'sales', 'rama', '2020-04-09', 'laki-laiki', 'Bondowoso', '089765456111', 'user_1585977424.jpg'),
(7, 'tarno@gmail.com', 'tarno', 'ed8465aeaf6682cbf12c6a3c94bba4d7', 'customer', 'tarno', '2020-04-20', 'laki-laiki', 'Bondowoso', '089765456111', 'user_1585977486.jpg'),
(8, 'ipang@gmail.com', 'ipang', 'a3b1427fc6eb05dde4883180e7284322', 'gudang', 'ipang', '2020-04-15', 'laki-laiki', 'Jember', '089765241572', 'pp.jpg'),
(9, 'eko@gmail.com', 'eko', '8e1a070e9b0340da2b0ea4f193c172f0', 'customer', 'eko', '2020-04-15', 'laki-laiki', 'Bondowoso', '089765456111', 'pp.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_berasal` (`id_supplier`);

--
-- Indeks untuk tabel `detail_keluar`
--
ALTER TABLE `detail_keluar`
  ADD KEY `fk_menyimpan` (`id_barang`),
  ADD KEY `fk_terdapat` (`id_keluar`);

--
-- Indeks untuk tabel `detail_masuk`
--
ALTER TABLE `detail_masuk`
  ADD KEY `fk_memiliki` (`id_barang`),
  ADD KEY `fk_mempunyai` (`id_masuk`);

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`id_keluar`),
  ADD KEY `fk_membeli` (`id_user`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`id_masuk`),
  ADD KEY `fk_menyetok` (`id_supplier`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_berasal` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Ketidakleluasaan untuk tabel `detail_keluar`
--
ALTER TABLE `detail_keluar`
  ADD CONSTRAINT `fk_menyimpan` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_terdapat` FOREIGN KEY (`id_keluar`) REFERENCES `keluar` (`id_keluar`);

--
-- Ketidakleluasaan untuk tabel `detail_masuk`
--
ALTER TABLE `detail_masuk`
  ADD CONSTRAINT `fk_memiliki` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_mempunyai` FOREIGN KEY (`id_masuk`) REFERENCES `masuk` (`id_masuk`);

--
-- Ketidakleluasaan untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD CONSTRAINT `fk_membeli` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD CONSTRAINT `fk_menyetok` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;