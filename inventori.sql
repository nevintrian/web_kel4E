-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 05:10 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id_activity` int(11) NOT NULL,
  `tgl_activity` datetime DEFAULT current_timestamp(),
  `keterangan` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `kemasan` varchar(20) DEFAULT NULL,
  `merk` varchar(100) DEFAULT '-',
  `jenis` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT 0,
  `terjual` int(11) DEFAULT 0,
  `foto_barang` varchar(100) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `id_supplier`, `nama_barang`, `kemasan`, `merk`, `jenis`, `harga`, `stok`, `terjual`, `foto_barang`, `del`) VALUES
(1, 1, 'BUCKET KUKIS MAMAH 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 10331, -398, 'barang_1587349533.jpg', 0),
(2, 1, 'BUCKET COCONUT 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 5024, -38, 'barang_1587349541.jpg', 0),
(3, 1, 'BUCKET BUTTER KUKIS 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 5126, -14, 'barang_1587350641.jpg', 0),
(4, 1, 'BUCKET MOCHACINO 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 5008, -8, 'barang_1587349556.jpg', 0),
(5, 1, 'BUCKET MILKY VANILA 400 GR', '6 PCS / K', '-', 'MAKANAN', 22500, 5000, 0, 'barang_1587350694.jpg', 0);

--
-- Triggers `barang`
--
DELIMITER $$
CREATE TRIGGER `delete barang` AFTER UPDATE ON `barang` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Barang bernama ', OLD.nama_barang, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah barang` AFTER INSERT ON `barang` FOR EACH ROW BEGIN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Barang bernama ', NEW.nama_barang, ' telah ditambah'));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update barang` AFTER UPDATE ON `barang` FOR EACH ROW BEGIN
IF OLD.del=NEW.del AND OLD.stok=NEW.stok AND OLD.terjual=NEW.terjual THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Barang bernama ', OLD.nama_barang, ' telah diupdate'));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id_carousel` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` varchar(200) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id_carousel`, `judul`, `isi`, `gambar`) VALUES
(3, 'Promo Ramadhan', 'Beli 1 dapat diskon', 'carousel_1588048397.jpg'),
(4, 'Promo Ramadhan', 'Beli 2 harga tetap', 'carousel_1588048326.jpg'),
(6, 'Promo Idul Fitri', 'syarat dan ketentuan berlaku', 'carousel_1588048366.jpg'),
(7, 'pohong gosong', 'enak pol', 'carousel_1588041174.jpg'),
(8, 'Promo Idul Fitri', 'harga produk lebih murah', 'carousel_1588048943.jpg'),
(9, 'Promo kokola', 'harga lebih murah', 'carousel_1588048955.jpg'),
(10, 'Promo Butter cookies', 'Beli 2 dapat diskon', 'carousel_1588048992.jpg'),
(11, 'Promo Ramadhan', 'Harga spesial', 'carousel_1588049008.jpg'),
(12, 'Promo biskuit', 'sekarang kemasan lebih besar', 'carousel_1588049021.jpg'),
(13, 'Sekarang kemasan biskit lebih besar', 'WOW', 'carousel_1588048918.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cicil`
--

CREATE TABLE `cicil` (
  `id_cicil` int(11) NOT NULL,
  `id_keluar` int(11) NOT NULL,
  `tgl_cicil` datetime NOT NULL DEFAULT current_timestamp(),
  `periode` int(11) NOT NULL DEFAULT 0,
  `jumlah_cicil` int(11) NOT NULL,
  `foto_cicil` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `cicil`
--
DELIMITER $$
CREATE TRIGGER `cicil1` AFTER UPDATE ON `cicil` FOR EACH ROW BEGIN
IF NEW.periode-NEW.jumlah_cicil=0 and NEW.status='1'THEN
	UPDATE keluar SET status='2'
    WHERE id_keluar=NEW.id_keluar;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_keluar`
--

CREATE TABLE `detail_keluar` (
  `id_barang` int(11) NOT NULL,
  `id_keluar` int(11) NOT NULL,
  `qty_keluar` int(11) DEFAULT NULL,
  `diskon` int(3) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `detail_keluar`
--
DELIMITER $$
CREATE TRIGGER `editstok` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
declare harga1 int(20);
select harga into harga1 from barang where barang.id_barang=NEW.id_barang;

IF OLD.diskon!=NEW.diskon OR OLD.qty_keluar!=NEW.qty_keluar THEN

UPDATE keluar SET total_keluar=(total_keluar+(harga1*OLD.qty_keluar*OLD.diskon/100))+((NEW.qty_keluar-OLD.qty_keluar)*harga1)-(harga1*NEW.qty_keluar*NEW.diskon/100) WHERE id_keluar=NEW.id_keluar;

END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus detail_keluar` AFTER DELETE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok+OLD.qty_keluar 
    WHERE (id_barang=OLD.id_barang AND OLD.status='2') or (id_barang=OLD.id_barang AND OLD.status='3');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus detail_keluar1` AFTER DELETE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual = terjual-OLD.qty_keluar 
    WHERE (id_barang=OLD.id_barang AND OLD.status='2') or (id_barang=OLD.id_barang AND OLD.status='3');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah detail_keluar` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET stok=stok-NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='2';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah detail_keluar1` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual=terjual+NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='2';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah keluar` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
IF NEW.status=2 THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang keluar dengan id=', NEW.id_keluar, ' telah ditambah')) ;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ubah keluar` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
IF NEW.qty_keluar!=OLD.qty_keluar THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang keluar dengan id=', OLD.id_keluar, ' telah diubah')) ;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok-NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='2' AND OLD.qty_keluar=NEW.qty_KELUAR;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar1` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual=terjual+NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='2' AND OLD.qty_keluar=NEW.qty_KELUAR;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar2` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok+(OLD.qty_keluar-NEW.qty_keluar)
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar>NEW.qty_keluar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar3` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET terjual=terjual-(OLD.qty_keluar-NEW.qty_keluar)
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar>NEW.qty_keluar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar4` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok+(OLD.qty_keluar-NEW.qty_keluar)
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar<NEW.qty_keluar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar5` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET terjual=terjual-(OLD.qty_keluar-NEW.qty_keluar)
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar<NEW.qty_keluar;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_masuk`
--

CREATE TABLE `detail_masuk` (
  `id_barang` int(11) NOT NULL,
  `id_masuk` int(11) NOT NULL,
  `qty_masuk` int(11) DEFAULT NULL,
  `diskon` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `detail_masuk`
--
DELIMITER $$
CREATE TRIGGER `editstok1` AFTER UPDATE ON `detail_masuk` FOR EACH ROW BEGIN
declare harga1 int(20);
select harga into harga1 from barang where barang.id_barang=NEW.id_barang;

IF OLD.diskon!=NEW.diskon OR OLD.qty_masuk!=NEW.qty_masuk THEN

UPDATE masuk SET total_masuk=(total_masuk+(harga1*OLD.qty_masuk*OLD.diskon/100))+((NEW.qty_masuk-OLD.qty_masuk)*harga1)-(harga1*NEW.qty_masuk*NEW.diskon/100) WHERE id_masuk=NEW.id_masuk;

END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus detail_masuk` AFTER DELETE ON `detail_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok-OLD.qty_masuk 
    WHERE id_barang=OLD.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah detail_masuk` AFTER INSERT ON `detail_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET stok=stok+NEW.qty_masuk
    WHERE id_barang=NEW.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ubah masuk` AFTER UPDATE ON `detail_masuk` FOR EACH ROW BEGIN
IF NEW.qty_masuk!=OLD.qty_masuk THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang masuk dengan id=', OLD.id_masuk, ' telah diubah')) ;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_masuk` AFTER UPDATE ON `detail_masuk` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok-(OLD.qty_masuk-NEW.qty_masuk)
    WHERE id_barang=NEW.id_barang AND OLD.qty_masuk>NEW.qty_masuk;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_masuk1` AFTER UPDATE ON `detail_masuk` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok+(NEW.qty_masuk-OLD.qty_masuk)
    WHERE id_barang=NEW.id_barang AND OLD.qty_masuk<NEW.qty_masuk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `id_keluar` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tgl_keluar` datetime DEFAULT NULL,
  `total_keluar` int(11) DEFAULT NULL,
  `foto_keluar` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `keluar`
--
DELIMITER $$
CREATE TRIGGER `hapus keluar` BEFORE DELETE ON `keluar` FOR EACH ROW BEGIN
	DELETE FROM detail_keluar
    WHERE id_keluar=OLD.id_keluar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus keluar1` AFTER UPDATE ON `keluar` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Transaksi barang keluar dengan id=', OLD.id_keluar, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus keluar2` BEFORE DELETE ON `keluar` FOR EACH ROW BEGIN
	DELETE FROM cicil
    WHERE id_keluar=OLD.id_keluar;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `id_masuk` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `tgl_masuk` datetime DEFAULT NULL,
  `total_masuk` int(11) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `masuk`
--
DELIMITER $$
CREATE TRIGGER `hapus masuk` BEFORE DELETE ON `masuk` FOR EACH ROW BEGIN
	DELETE FROM detail_masuk
    WHERE id_masuk=OLD.id_masuk;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus masuk1` AFTER UPDATE ON `masuk` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang masuk dengan id=', OLD.id_masuk, ' telah dihapus')) ;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah masuk` AFTER INSERT ON `masuk` FOR EACH ROW BEGIN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang masuk dengan id=', NEW.id_masuk, ' telah ditambah')) ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `del` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `no_telp`, `del`) VALUES
(1, 'SUMBER BARU JEMBER', 'Probolinggo', '081234456781', 0),
(2, 'PT UNIMOS', 'Probolinggo', '087654321234', 0),
(3, 'PT SPARINDO MUSTIKA', 'Probolinggo', '089765456111', 0),
(4, 'PT ULTRA AROMA', 'Probolinggo', '089765456121', 0),
(5, 'RBS', 'Probolinggo', '081236789167', 0),
(6, 'KOPI UANG EMAS', 'Probolinggo', '081236789456', 0),
(7, 'CORPORATE', 'Probolinggo', '089765456789', 0),
(8, 'VITALIS', 'Probolinggo', '085234566754', 0),
(9, 'PT WIRLA MAHAKARYA (TEH)', 'Probolinggo', '081236787890', 0),
(10, 'PT DAMAI SENTOSA (COOKING OIL)', 'Probolinggo', '089765456666', 0),
(11, 'PERMEN KATO', 'Probolinggo', '089765451111', 0),
(12, 'CV. KAWI', 'Probolinggo', '081236786645', 0);

--
-- Triggers `supplier`
--
DELIMITER $$
CREATE TRIGGER `delete supplier` BEFORE UPDATE ON `supplier` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Supplier bernama ', OLD.nama_supplier, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
  `foto` varchar(100) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `username`, `password`, `level`, `nama`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `no_telp`, `foto`, `del`) VALUES
(1, 'nevin@gmail.com', 'nevin', '57dd6150d6302a88892a0c5e09dfc7fc', 'admin', 'nevin trian', '2000-01-27', 'laki-laki', 'Jember', '089765456123', '178f9a56fe39beeee3a74a9cc1945e01.jpg', 0),
(2, 'brianvidyanjaya@gmail.com', 'brian', '929064f2a141f812f1c2efb3ff8194ca', 'manajer', 'brian w', '2000-04-20', 'laki-laki', 'Probolinggo', '087672819212', '9d0ff1ca66178f0effd7349882c633c0.jpg', 0),
(3, 'rere@gmail.com', 'rere', '4b054d969d22341219a5bc88f4c8321f', 'customer', 'rere', '2000-01-27', 'perempuan', 'Jember', '089765682312', 'pp.jpg', 0),
(4, 'rara@gmail.com', 'rara', '5ab83fa52e5d0f5abc44d2eed4479ff0', 'customer', 'rara', '2020-04-09', 'perempuan', 'Jember', '085234567891', 'pp.jpg', 0),
(5, 'sinyo@gmail.com', 'sinyo', '7cf7a0149ee46108c3f37066b1c126ec', 'gudang', 'sinyo', '2020-04-15', 'laki-laiki', 'Jember', '089765241572', 'user_1585977429.jpg', 0),
(6, 'rama@gmail.com', 'rama', '36226b453eb255f672f118a1ecc1e4ec', 'sales', 'rama', '2020-04-09', 'laki-laki', 'Jember', '089765456111', 'be91b90d8284f18570eea1a8933a35ec.jpg', 0),
(7, 'tarno@gmail.com', 'tarno', 'ed8465aeaf6682cbf12c6a3c94bba4d7', 'customer', 'tarno', '2020-04-20', 'laki-laiki', 'Jember', '089765456111', 'user_1585977486.jpg', 0),
(8, 'ipang@gmail.com', 'ipang', 'a3b1427fc6eb05dde4883180e7284322', 'gudang', 'ipang i', '2020-04-15', 'laki-laiki', 'Jember', '089765241572', '26e3d288a102a913721b6386f1a1bf91.jpg', 0),
(9, 'eko@gmail.com', 'eko', '8e1a070e9b0340da2b0ea4f193c172f0', 'customer', 'eko', '2020-04-15', 'laki-laiki', 'Jember', '089765456111', 'pp.jpg', 0),
(90, 'nt@gmail.com', 'nt', 'nt123', 'customer', 'nt', '2000-01-01', 'laki-laki', NULL, NULL, 'pp.jpg', 1),
(91, 'nta@gmail.com', 'nta', 'b4e1913138f06cda94b3e7e3f2eb2c7b', 'customer', 'nta', '2027-07-07', 'laki-laki', NULL, NULL, 'pp.jpg', 1),
(92, 'nevinr', 'nevinr', 'e57540d142526e84b44bb639ae511263', 'customer', 'nevinr', '2027-07-07', 'laki-laki', NULL, NULL, 'pp.jpg', 1),
(93, 'tri', 'tri', 'b85593ca6abda3f203e0af8239beb228', 'customer', 'tri', '2000-06-06', 'laki-laki', NULL, NULL, 'pp.jpg', 1);

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `delete user` AFTER UPDATE ON `user` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('User dengan username ', OLD.username, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_berasal` (`id_supplier`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carousel`);

--
-- Indexes for table `cicil`
--
ALTER TABLE `cicil`
  ADD PRIMARY KEY (`id_cicil`),
  ADD KEY `id_keluar` (`id_keluar`);

--
-- Indexes for table `detail_keluar`
--
ALTER TABLE `detail_keluar`
  ADD KEY `fk_menyimpan` (`id_barang`),
  ADD KEY `fk_terdapat` (`id_keluar`);

--
-- Indexes for table `detail_masuk`
--
ALTER TABLE `detail_masuk`
  ADD KEY `fk_memiliki` (`id_barang`),
  ADD KEY `fk_mempunyai` (`id_masuk`);

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`id_keluar`),
  ADD KEY `fk_membeli` (`id_user`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`id_masuk`),
  ADD KEY `fk_menyetok` (`id_supplier`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1452;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cicil`
--
ALTER TABLE `cicil`
  MODIFY `id_cicil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_berasal` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `cicil`
--
ALTER TABLE `cicil`
  ADD CONSTRAINT `cicil_ibfk_1` FOREIGN KEY (`id_keluar`) REFERENCES `keluar` (`id_keluar`);

--
-- Constraints for table `detail_keluar`
--
ALTER TABLE `detail_keluar`
  ADD CONSTRAINT `fk_menyimpan` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_terdapat` FOREIGN KEY (`id_keluar`) REFERENCES `keluar` (`id_keluar`);

--
-- Constraints for table `detail_masuk`
--
ALTER TABLE `detail_masuk`
  ADD CONSTRAINT `fk_memiliki` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_mempunyai` FOREIGN KEY (`id_masuk`) REFERENCES `masuk` (`id_masuk`);

--
-- Constraints for table `keluar`
--
ALTER TABLE `keluar`
  ADD CONSTRAINT `fk_membeli` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `masuk`
--
ALTER TABLE `masuk`
  ADD CONSTRAINT `fk_menyetok` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
