-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Apr 2020 pada 07.36
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
  `id_barang` int(4) NOT NULL,
  `id_supplier` int(4) NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `kemasan` varchar(20) DEFAULT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `foto_barang` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_supplier`, `nama_barang`, `kemasan`, `merk`, `jenis`, `harga`, `stok`, `foto_barang`) VALUES
(1, 1, 'kopii', '6 pcs/k', 'kapal api', 'minuman', 5000, 4904, 'kopi.jpg'),
(2, 2, 'milo stroberi', '6 pcs/k', 'milo', 'minuman', 5000, 1124, 'milo.jpg'),
(4, 1, 'tahu kuning', '6 pcs/k', 'ultramilk', 'makanan', 3000, 123, 'barang_1585976994.jpg'),
(5, 2, 'nasi goreng', 'piring', 'pak surman', 'makanan', 10000, 1200, 'barang_1585977262.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_barang` int(4) NOT NULL,
  `id_transaksi` int(4) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `detail_transaksi`
--
DELIMITER $$
CREATE TRIGGER `delete_beli` AFTER DELETE ON `detail_transaksi` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok-OLD.qty 
    WHERE id_barang=OLD.id_barang AND OLD.status='masuk';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `delete_jual` AFTER DELETE ON `detail_transaksi` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok+OLD.qty 
    WHERE id_barang=OLD.id_barang AND OLD.status='keluar';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_beli` AFTER INSERT ON `detail_transaksi` FOR EACH ROW BEGIN
	UPDATE barang SET stok=stok+NEW.qty
    WHERE id_barang=NEW.id_barang and NEW.status='masuk';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_jual` AFTER INSERT ON `detail_transaksi` FOR EACH ROW BEGIN
	UPDATE barang SET stok=stok-NEW.qty
    WHERE id_barang=NEW.id_barang and NEW.status='keluar';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(4) NOT NULL,
  `nama_supplier` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `no_telp`) VALUES
(1, 'PT Kino', 'Probolinggo', '089765345612'),
(2, 'PT Indofood', 'Probolinggo', '087654321234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(4) NOT NULL,
  `id_user` int(4) NOT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `transaksi`
--
DELIMITER $$
CREATE TRIGGER `hapus_detail` BEFORE DELETE ON `transaksi` FOR EACH ROW BEGIN
	DELETE FROM detail_transaksi
    WHERE id_transaksi=OLD.id_transaksi;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(4) NOT NULL,
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
(1, 'nevintrian@gmail.com', 'nevin', '57dd6150d6302a88892a0c5e09dfc7fc', 'admin', 'nevin trian', '2000-01-27', 'laki-laki', 'Jember', '085234567891', 'pp.jpg'),
(2, 'brianvidyanjaya@gmail.com', 'brian', '929064f2a141f812f1c2efb3ff8194ca', 'manajer', 'brian vidyanjaya', '2000-04-20', 'laki-laki', 'Probolinggo', '087672819212', 'pp.jpg'),
(3, 'rere@gmail.com', 'rere', '4b054d969d22341219a5bc88f4c8321f', 'customer', 'rere', '2000-01-27', 'perempuan', 'Surabaya', '089765682312', 'pp.jpg'),
(4, 'rara@gmail.com', 'rara', '5ab83fa52e5d0f5abc44d2eed4479ff0', 'customer', 'rara', '2020-04-09', 'perempuan', 'Situbondo', '085234567891', 'pp.jpg'),
(25, 'sinyo@gmail.com', 'sinyo', 'sinyo123', 'gudang', 'sinyo', '2020-04-15', 'laki-laiki', 'Jember', '089765241572', 'user_1585977429.jpg'),
(26, 'rama@gmail.com', 'rama', 'rama123', 'sales', 'rama', '2020-04-09', 'laki-laiki', 'Bondowoso', '089765456111', 'user_1585977424.jpg'),
(28, 'tarno@gmail.com', 'tarno', 'tarno123', 'customer', 'tarno', '2020-04-20', 'laki-laiki', 'Bondowoso', '089765456111', 'user_1585977486.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_menyetok` (`id_supplier`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD KEY `fk_memiliki` (`id_barang`),
  ADD KEY `fk_mempunyai` (`id_transaksi`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_melakukan` (`id_user`);

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
  MODIFY `id_barang` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_menyetok` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `fk_memiliki` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_mempunyai` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_melakukan` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
