-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2020 pada 05.45
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
-- Struktur dari tabel `activity`
--

CREATE TABLE `activity` (
  `id_activity` int(11) NOT NULL,
  `tgl_activity` datetime DEFAULT current_timestamp(),
  `keterangan` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `activity`
--

INSERT INTO `activity` (`id_activity`, `tgl_activity`, `keterangan`, `status`) VALUES
(48, '2020-05-12 05:01:18', 'Barang bernama l telah ditambah', 1),
(49, '2020-05-12 05:14:39', 'Tansaksi barang masuk dengan id=5 telah dihapus', 1),
(50, '2020-05-12 05:16:04', 'Transaksi barang keluar dengan id=7 telah dihapus', 1),
(51, '2020-05-12 05:49:13', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(52, '2020-05-12 05:49:13', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(53, '2020-05-12 05:49:13', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(54, '2020-05-12 05:49:13', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(55, '2020-05-12 05:49:21', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(56, '2020-05-12 05:49:21', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(57, '2020-05-12 05:49:21', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(58, '2020-05-12 05:49:21', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(59, '2020-05-12 05:50:31', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(60, '2020-05-12 05:50:31', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(61, '2020-05-13 04:03:16', 'Barang bernama iu telah ditambah', 1),
(62, '2020-05-13 04:06:05', 'Barang bernama hu telah diupdate', 1),
(63, '2020-05-13 04:06:46', 'Barang bernama l telah diupdate', 1),
(64, '2020-05-13 04:07:59', 'Barang bernama jj telah ditambah', 1),
(65, '2020-05-13 04:15:02', 'Barang bernama iu telah diupdate', 1),
(66, '2020-05-13 04:15:29', 'Barang bernama jj telah diupdate', 1),
(67, '2020-05-13 04:19:00', NULL, 1),
(68, '2020-05-13 04:19:15', NULL, 1),
(69, '2020-05-13 04:20:54', 'Barang bernama h telah ditambah', 1),
(70, '2020-05-13 04:21:04', 'Barang bernama h telah diupdate', 1),
(71, '2020-05-13 04:35:46', NULL, 1),
(72, '2020-05-13 04:36:19', NULL, 1),
(73, '2020-05-13 04:38:58', 'Barang bernama k telah ditambah', 1),
(74, '2020-05-13 04:39:23', 'Barang bernama k telah diupdate', 1),
(75, '2020-05-13 04:59:44', 'Barang bernama jj telah ditambah', 1),
(76, '2020-05-13 05:00:02', 'Barang bernama jj telah diupdate', 1),
(77, '2020-05-13 05:04:04', 'Barang bernama jeti telah ditambah', 1),
(78, '2020-05-13 05:06:27', 'Barang bernama jeti telah diupdate', 1),
(79, '2020-05-13 05:07:20', NULL, 1),
(80, '2020-05-13 05:07:43', NULL, 1),
(81, '2020-05-13 05:08:05', NULL, 1),
(82, '2020-05-13 08:32:13', 'Barang bernama i telah ditambah', 1),
(83, '2020-05-13 08:32:25', 'Barang bernama i telah diupdate', 1),
(84, '2020-05-13 08:32:30', 'Barang bernama PERMEN LOLLIPOP MAWAR 12 GR telah diupdate', 1),
(85, '2020-05-13 08:45:48', 'Barang bernama iu telah diupdate', 1),
(86, '2020-05-13 08:46:02', 'Barang bernamah telah dihapus', 1),
(87, '2020-05-13 08:46:09', NULL, 1),
(88, '2020-05-13 08:46:16', NULL, 1),
(89, '2020-05-13 08:46:51', NULL, 1),
(90, '2020-05-13 08:46:59', NULL, 1),
(91, '2020-05-13 08:47:06', NULL, 1),
(92, '2020-05-13 08:47:12', NULL, 1),
(93, '2020-05-13 08:47:33', NULL, 1),
(94, '2020-05-13 08:47:45', NULL, 1),
(95, '2020-05-13 08:47:59', NULL, 1),
(96, '2020-05-13 08:48:13', NULL, 1),
(97, '2020-05-13 08:48:32', NULL, 1),
(98, '2020-05-13 08:50:09', NULL, 1),
(99, '2020-05-13 08:58:13', NULL, 1),
(100, '2020-05-13 08:58:24', NULL, 1),
(101, '2020-05-13 08:59:29', NULL, 1),
(102, '2020-05-13 09:00:20', NULL, 1),
(103, '2020-05-13 09:00:41', NULL, 1),
(104, '2020-05-13 09:00:56', 'Barang bernama rr telah ditambah', 1),
(105, '2020-05-13 09:01:20', 'Barang bernama f telah ditambah', 1),
(106, '2020-05-13 09:02:45', 'Barang bernama ttt telah ditambah', 1),
(107, '2020-05-13 09:05:16', NULL, 1),
(108, '2020-05-13 09:05:44', 'Barang bernama rr telah diupdate', 1),
(109, '2020-05-13 09:07:23', NULL, 1),
(110, '2020-05-13 09:14:22', 'Barang bernama f telah diupdate', 1),
(111, '2020-05-13 09:14:50', 'Barang bernama ffq telah diupdate', 1),
(112, '2020-05-13 09:14:58', NULL, 1),
(113, '2020-05-13 09:15:12', 'Barang bernamaffq telah dihapus', 1),
(114, '2020-05-13 09:15:23', 'Barang bernama ttt telah diupdate', 1),
(115, '2020-05-13 09:15:35', 'Barang bernamattt telah dihapus', 1),
(116, '2020-05-14 11:00:16', 'Barang bernama timun telah ditambah', 1),
(117, '2020-05-17 13:57:27', 'Barang bernama timun telah diupdate', 1),
(118, '2020-05-17 14:02:58', 'Barang bernamatimun goreng telah dihapus', 1),
(119, '2020-06-01 06:52:12', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(120, '2020-06-01 06:52:12', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(121, '2020-06-01 06:52:12', 'Barang bernama BUCKET BUTTER KUKIS 400 GR telah diupdate', 1),
(122, '2020-06-01 06:52:12', 'Barang bernama BUCKET BUTTER KUKIS 400 GR telah diupdate', 1),
(123, '2020-06-01 08:07:23', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(124, '2020-06-01 08:07:23', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(125, '2020-06-01 08:09:14', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(126, '2020-06-01 08:09:14', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(127, '2020-06-01 08:12:20', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(128, '2020-06-01 08:12:20', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(129, '2020-06-01 08:12:41', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(130, '2020-06-01 08:12:41', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(131, '2020-06-01 08:12:56', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(132, '2020-06-01 08:12:56', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(133, '2020-06-01 08:39:25', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(134, '2020-06-01 08:39:25', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(135, '2020-06-01 08:39:46', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(136, '2020-06-01 08:39:46', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(137, '2020-06-01 08:40:05', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(138, '2020-06-01 08:40:05', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(139, '2020-06-01 08:40:24', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(140, '2020-06-01 08:40:24', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(141, '2020-06-01 08:42:52', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(142, '2020-06-01 08:44:07', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(143, '2020-06-01 08:45:02', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(144, '2020-06-01 08:45:34', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(145, '2020-06-01 08:46:06', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(146, '2020-06-01 08:46:51', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(147, '2020-06-01 08:53:14', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(148, '2020-06-01 08:53:43', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(149, '2020-06-01 08:54:01', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(150, '2020-06-01 09:29:07', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(151, '2020-06-01 09:29:07', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(152, '2020-06-01 09:29:07', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(153, '2020-06-01 09:29:07', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(154, '2020-06-01 09:29:53', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(155, '2020-06-01 09:29:53', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(156, '2020-06-01 09:29:53', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(157, '2020-06-01 09:29:53', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(158, '2020-06-02 12:11:15', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(159, '2020-06-02 12:11:15', 'Barang bernama POWDER PINK 100 GR telah diupdate', 1),
(160, '2020-06-02 12:32:29', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(161, '2020-06-02 12:32:29', 'Barang bernama SABUN CUSSONS BLUE 75 GR 75 GR telah diupdate', 1),
(162, '2020-06-04 10:13:55', 'Barang bernama KUKIS BUTTER 25.2 GR telah diupdate', 1),
(163, '2020-06-04 10:14:52', 'Barang bernama MIRANDA MC 15 telah diupdate', 1),
(164, '2020-06-04 10:16:16', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(165, '2020-06-04 10:16:52', 'Barang bernamaBUCKET KUKIS MAMAH 400 GR telah dihapus', 1),
(166, '2020-06-04 10:17:26', 'Barang bernamaBUCKET KUKIS MAMAH 400 GR telah dihapus', 1),
(167, '2020-06-04 10:17:36', 'Barang bernamaBUCKET KUKIS MAMAH 400 GR telah dihapus', 1),
(168, '2020-06-04 10:18:12', 'Barang bernamaBUCKET COCONUT 400 GR telah dihapus', 1),
(169, '2020-06-04 10:19:33', 'Transaksi barang keluar dengan id=23 telah dihapus', 1),
(170, '2020-06-04 10:21:03', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(171, '2020-06-04 10:21:03', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(172, '2020-06-04 10:21:43', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(173, '2020-06-04 10:21:43', 'Barang bernama BUCKET COCONUT 400 GR telah diupdate', 1),
(174, '2020-06-04 10:24:05', 'Tansaksi barang masuk dengan id=1 telah dihapus', 1),
(175, '2020-06-04 10:24:30', 'Transaksi barang keluar dengan id=23 telah diubah', 1),
(176, '2020-06-04 10:27:09', 'Tansaksi barang masuk dengan id=11 telah ditambah', 1),
(177, '2020-06-04 10:27:09', 'Barang bernama BUCKET KUKIS MAMAH 400 GR telah diupdate', 1),
(178, '2020-06-04 10:29:15', 'Tansaksi barang masuk dengan id=12 telah ditambah', 1),
(179, '2020-06-04 10:33:12', 'Tansaksi barang keluar dengan id=24 telah ditambah', 1),
(180, '2020-06-04 10:36:41', 'Tansaksi barang keluar dengan id=24 telah diubah', 1),
(181, '2020-06-04 10:37:54', 'Tansaksi barang masuk dengan id=1 telah diubah', 1),
(182, '2020-06-04 10:37:59', 'Tansaksi barang masuk dengan id=1 telah diubah', 1),
(183, '2020-06-04 10:39:09', 'Tansaksi barang keluar dengan id=25 telah ditambah', 1),
(184, '2020-06-04 10:40:29', 'Tansaksi barang keluar dengan id=26 telah ditambah', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
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
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_supplier`, `nama_barang`, `kemasan`, `merk`, `jenis`, `harga`, `stok`, `terjual`, `foto_barang`, `del`) VALUES
(1, 1, 'BUCKET KUKIS MAMAH 400 GR', '6 PCS / K', '-', 'makanan', 22500, 4986, 47, 'barang_1587349533.jpg', 0),
(2, 1, 'BUCKET COCONUT 400 GR', '6 PCS / K', '-', 'makanan', 22500, 4984, 29, 'barang_1587349541.jpg', 0),
(3, 1, 'BUCKET BUTTER KUKIS 400 GR', '6 PCS / K', '-', 'MM', 22500, 4997, 3, 'barang_1587350641.jpg', 0),
(4, 1, 'BUCKET MOCHACINO 400 GR', '6 PCS / K', '-', 'makanan', 22500, 5002, -2, 'barang_1587349556.jpg', 0),
(5, 1, 'BUCKET MILKY VANILA 400 GR', '6 PCS / K', '-', 'MM', 22500, 5000, 0, 'barang_1587350694.jpg', 0),
(6, 1, 'MAJORICO BANANA 300 GR', '12 PCS / K', '-', 'makanan', 16750, 5000, 0, 'barang_1587349524.jpg', 0),
(7, 1, 'MAJORICO MATCHA 300 GR', '12 PCS / K', NULL, NULL, 16750, 5000, 0, 'gg.jpg', 0),
(8, 1, 'MAJORICO CHOCOLATE 300 GR', '12 PCS / K', NULL, NULL, 16750, 5000, 0, 'gg.jpg', 0),
(9, 1, 'KUKIS N KRIM STRAWBERY 400 GR', '6 PCS / K', NULL, NULL, 22700, 5000, 0, 'gg.jpg', 0),
(10, 7, 'SABUN CUSSONS PINK 75 GR', '144 PCS / K', NULL, 'PC', 2946, 5000, 0, 'gg.jpg', 0),
(11, 7, 'SABUN CUSSONS BLUE 75 GR 75 GR', '144 PCS / K', NULL, 'PC', 2946, 5020, 0, 'gg.jpg', 0),
(12, 7, 'POWDER PINK 50 GR', '48 PCS/ K', NULL, 'PC', 3500, 5000, 0, 'gg.jpg', 0),
(13, 7, 'POWDER BLUE 50 GR', '48 PCS / K', NULL, 'PC', 3500, 5000, 0, 'gg.jpg', 0),
(14, 7, 'POWDER PINK 100 GR', '48 PCS / K', NULL, 'PC', 6193, 5010, 0, 'gg.jpg', 0),
(15, 7, 'POWDER BLUE 100 GR', '48 PCS / K', '-', 'PC', 6193, 5000, 0, 'barang_1587486993.jpg', 0),
(16, 7, 'POWDER PINK 200 GR', '24 PCS / K', NULL, 'PC', 11044, 5000, 0, 'gg.jpg', 0),
(17, 7, 'POWDER BLUE 200 GR', '24 PCS / K', NULL, 'PC', 11044, 5000, 0, 'gg.jpg', 0),
(18, 7, 'POWDER UNGU 200 GR', '24 PCS / K', '-', 'PC', 11044, 5000, 0, 'barang_1587354776.jpg', 0),
(19, 7, 'POWDER KUNING 50 GR', '48 PCS / K', NULL, 'PC', 3500, 5000, 0, 'gg.jpg', 0),
(20, 7, 'POWDER KUNING 100 GR', '48 PCS / K', NULL, 'PC', 6809, 5000, 0, 'gg.jpg', 0),
(21, 7, 'POWDER UNGU 50 GR', '48 PCS / K', NULL, 'PC', 3500, 5000, 0, 'gg.jpg', 0),
(22, 7, 'SABUN CUSSONS UNGU 75 GR', '144 PCS / K', '-', 'PC', 2946, 5000, 0, 'barang_1587351059.jpg', 0),
(23, 7, 'POWDER UNGU 100 GR', '48 PCS / K', NULL, 'PC', 6193, 5000, 0, 'gg.jpg', 0),
(24, 9, 'GELAS TEH KMPG MANIS', '72 PCS / K', NULL, NULL, 0, 5000, 0, 'gg.jpg', 0),
(25, NULL, 'GELAS KOPI UANG MAS 1 KG', '6 PCS / D', NULL, NULL, 0, 5000, 0, 'gg.jpg', 0),
(26, 1, 'KUKIS KELAPA 13,9 GR', '9 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg', 0),
(27, 1, 'KUKIS MOCHACINO 13,9 GR 6 x 120', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587354382.jpg', 0),
(28, 1, 'KUKIS VANILLA 13,9 GR 6 X 120', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587352858.jpg', 0),
(29, 1, 'KUKIS BUTTER 300 GR', '18 PCS / K', NULL, 'MM', 6250, 5000, 0, 'gg.jpg', 0),
(30, 1, 'KUKIS KELAPA 300 GR', '18 PCS / K', NULL, 'MM', 6250, 5000, 0, 'gg.jpg', 0),
(31, 1, 'KUKIS MOCHACINO 300 GR', '18 PCS / K', '-', 'MM', 6250, 5000, 0, 'barang_1587350033.jpg', 0),
(32, 1, 'KUKIS VANILLA 300 GR', '18 PCS / K', NULL, 'MM', 6250, 5000, 0, 'gg.jpg', 0),
(33, 1, 'KUKIS BUTTER 90 GR', '30 PCS / K', NULL, 'MM', 2375, 5000, 0, 'gg.jpg', 0),
(34, 1, 'KUKIS KELAPA 90 GR', '30 PCS / K', NULL, 'MM', 2375, 5000, 0, 'gg.jpg', 0),
(35, 1, 'KUKIS MOCHACINO 90 GR', '30 PCS / K', NULL, 'MM', 2375, 5000, 0, 'gg.jpg', 0),
(36, 1, 'KUKIS VANILLA 90 GR', '30 PCS / K', '-', 'MM', 2375, 5000, 0, 'barang_1587389782.jpg', 0),
(37, 1, 'KUKIS WHITE COFFEE 13 GR 6 x 120', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587486678.jpg', 0),
(38, 1, 'KUKIS ROLL WHITE COFFEE 90 GR', '30 PCS / K', NULL, 'MM', 2375, 5000, 0, 'gg.jpg', 0),
(39, 1, 'KUKIS WHITE COFFEE 300 GR', '18 PCS/ K ', NULL, 'MM', 6250, 5000, 0, 'gg.jpg', 0),
(40, 1, 'KUKIS BUTTER 70 GR', '60 PCS / K', '-', 'MM', 1400, 5000, 0, 'barang_1587486806.jpg', 0),
(41, 1, 'KUKIS MOCHACINO 70 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg', 0),
(42, 1, 'KUKIS KELAPA 70 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg', 0),
(43, 1, 'KUKIS KELAPA 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587354519.jpg', 0),
(44, 1, 'KUKIS BUTTER 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587353137.jpg', 0),
(45, 1, 'KUKIS MOCHACINO 12 GR', '9 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg', 0),
(46, 1, 'KUKIS VANILLA 12 GR', '9 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg', 0),
(47, 1, 'KUKIS WHITE COFFEE 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587350838.jpg', 0),
(48, 1, 'KUKIS VANILLA 70 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg', 0),
(49, 1, 'KUKIS BANANA 12 GR', '9 PACK / K', NULL, 'MM', 8000, 5000, 0, 'gg.jpg', 0),
(50, 1, 'KUKIS KELAPA 25.2 GR', '12 PACK / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg', 0),
(51, 1, 'KUKIS BUTTER 25.2 GR', '12 PCS / K', '-', 'makanan', 8000, 5000, 0, 'gg.jpg', 0),
(52, 1, 'KUKIS MOCHACINO 25.2 GR', '12 PACK / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg', 0),
(53, 1, 'KUKIS VANILLA 25.2 GR', '12 PCS / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg', 0),
(54, 1, 'KUKIS WHITE COFFEE 25.2 GR', '12 PACK / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg', 0),
(55, 1, 'KUKIS KELAPA 218 GR', '24 PCS / K', NULL, NULL, 4500, 5000, 0, 'gg.jpg', 0),
(56, 1, 'KUKIS BUTTER 218 GR', '24 PCS / K', '-', 'MM', 4500, 5000, 0, 'barang_1587486934.jpg', 0),
(57, 1, 'KUKIS MOCHACINO 218 GR', '24 PCS / K', NULL, NULL, 4500, 5000, 0, 'gg.jpg', 0),
(58, 1, ' KUKIS VANILLA 218 GR', '24 PCS / K', NULL, NULL, 4500, 5000, 0, 'gg.jpg', 0),
(59, 1, 'MONI CHOCO RING 11.5 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587355392.png', 0),
(60, 1, 'KUKIS HELLO 11.5 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg', 0),
(61, 1, 'MONSTA CHOCOCHIP 9 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg', 0),
(62, 1, 'ROSE CREAM COKLAT 260 GR', '10 PCS / K', NULL, 'MM', 5500, 5000, 0, 'gg.jpg', 0),
(63, 1, 'ROSE CREAM LEMON 260 GR', '10 PCS / K', '-', 'MM', 5500, 5000, 0, 'barang_1587351026.jpg', 0),
(64, 1, 'ROSE CREAM NANAS 260 GR', '10 PCS / K', NULL, 'MM', 5500, 5000, 0, 'gg.jpg', 0),
(65, 1, 'ROSE CREAM COKLAT 23 GR', '6 PACK / K', NULL, NULL, 14000, 5000, 0, 'gg.jpg', 0),
(66, 1, 'ROSE CREAM LEMON 23 GR', '6 PACK / K', NULL, NULL, 14000, 5000, 0, 'gg.jpg', 0),
(67, 1, 'MONTEGO COKLAT 50 GR', '30 PCS / K', '-', 'MM', 2250, 5000, 0, 'barang_1587471161.jpg', 0),
(68, 1, 'MONTEGO COKLAT 17 GR', ' 6 PACK / K', '-', 'MM', 16000, 5000, 0, 'barang_1587389298.jpg', 0),
(69, 1, 'NARITA MARI SUSU ROLL 150 GR', '24 PCS / K', NULL, 'MM', 2650, 5000, 0, 'gg.jpg', 0),
(70, 1, 'MONTEGP BUTTER 17 GR', '6 PACK / K', NULL, 'MM', 16000, 5000, 0, 'gg.jpg', 0),
(71, 1, 'MONTEGO FUN DOUBLE CHOCO', '10 PACK / K', NULL, 'MM', 9600, 5000, 0, 'gg.jpg', 0),
(72, 1, 'MARI SUSU MADU 12 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587487028.jpg', 0),
(73, 1, 'MARI SUSU MADU 100 GR', '36 PCS / K', NULL, 'MM', 3500, 5000, 0, 'gg.jpg', 0),
(74, 1, 'MARI SUSU MADU 180 GR', '24 PCS / K', NULL, 'MM', 4500, 5000, 0, 'gg.jpg', 0),
(75, 1, 'MALKIST SUSU 14.5 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587354836.jpg', 0),
(76, 1, 'MALKIST SUSU 238 GR', '18 PCS / K', NULL, 'MM', 4500, 5000, 0, 'gg.jpg', 0),
(77, 1, 'MALKIST SUSU 108 GR', '24 PCS / K', NULL, 'MM', 3150, 5000, 0, 'gg.jpg', 0),
(78, 1, 'CRACKERS BUTTER 262 GR', '18 PCS / K', '-', 'MM', 4500, 5000, 0, 'barang_1587471113.jpg', 0),
(79, 1, 'MALKIST OLEZZ 20 GR', '12 PACK / K', '-', 'MM', 8000, 5000, 0, 'barang_1587351085.jpg', 0),
(80, 1, 'MALKIST GARLIC 12 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg', 0),
(81, 1, 'GARLIC SEDAP 108 GR', '24 PCS / K', '-', 'MM', 3500, 5000, 0, 'barang_1587486713.jpg', 0),
(82, 1, 'GARLIC SEDAP 208 GR', '18 PCS / K', NULL, NULL, 4500, 5000, 0, 'gg.jpg', 0),
(83, 1, 'MALKIST SUSU 25 GR', '12 PACK / K', NULL, 'MM', 8000, 5000, 0, 'gg.jpg', 0),
(84, 1, 'GARLIC BREADCRACKERS 24 GR', '12 PACK / K', '-', 'MM', 8000, 5000, 0, 'barang_1587389381.jpg', 0),
(85, 1, 'MARI SUSU MADU 24 GR', '12 PACK / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg', 0),
(86, 1, 'CRACKERS 132 GR', ' 24 PCS / K', NULL, NULL, 3150, 5000, 0, 'gg.jpg', 0),
(87, 1, 'ABC CRACKERS CHOCO 12 GR', '6 PACK / K', NULL, NULL, 8200, 5000, 0, 'gg.jpg', 0),
(88, 1, 'RIMBA CHOCO CRACKERS 12 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587487307.png', 0),
(89, 1, 'OLEZZ CHEESE CHOCO 10 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg', 0),
(90, 1, 'OLEZZ CHEESE CHOCO 100 GR', '30 PCS / K', NULL, 'MM', 3500, 5000, 0, 'gg.jpg', 0),
(91, 1, 'OLEZZ CHOCO PARTY 10 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587353857.jpg', 0),
(92, 1, 'OLEZZ CHOCO PARTY 100 GR', '30 PCS / K', NULL, 'MM', 3500, 5000, 0, 'gg.jpg', 0),
(93, 1, 'MALKIST SUSU 12 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg', 0),
(94, 1, 'SUPERCREAM BON-BON 200 GR', '21 PCS / K', NULL, 'MM', 4286, 5000, 0, 'gg.jpg', 0),
(95, 1, 'SUPERCREAM NANAS 200 GR', '21 PCS / K', '-', 'MM', 4286, 5000, 0, 'barang_1587351234.jpg', 0),
(96, 1, 'SUPERCREAM STRAWBERI 200 GR', '21 PCS / K', NULL, 'MM', 4286, 5000, 0, 'gg.jpg', 0),
(97, 1, 'SUPERCREAM ORANGE 200 GR', '21 PCS / K', NULL, 'MM', 4286, 5000, 0, 'gg.jpg', 0),
(98, 1, 'SUPERCREAM BON-BON 46 GR', '60 PCS / K', NULL, NULL, 1400, 5000, 0, 'gg.jpg', 0),
(99, 2, 'KAKI TIGA GUAVA CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587486178.jpg', 0),
(100, 2, 'KAKI TIGA STRAWBERRY CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg', 0),
(101, 2, 'KAKI TIGA LECCI CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg', 0),
(102, 2, 'KAKI TIGA MELON CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587352768.jpg', 0),
(103, 2, 'KAKI TIGA ORANGE CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg', 0),
(104, 2, 'KAKI TIGA ANGGUR CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg', 0),
(105, 2, 'KAKI TIGA APEL CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587486209.jpg', 0),
(106, 2, 'KAKI TIGA MARKISA 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg', 0),
(107, 2, 'KAKI TIGA TIMUN SURI CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587389562.jpg', 0),
(108, 2, 'KAKI TIGA KURMA & TIN CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587486500.jpg', 0),
(109, 2, 'KAKI TIGA JERUK NIPIS 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg', 0),
(110, 2, 'KAKI TIGA ANAK ORANGE CAN 250 ML', '24 PCS / K', NULL, 'MM2', 4167, 5000, 0, 'gg.jpg', 0),
(111, 2, 'KAKI TIGA ANAK LECCI CAN 250 ML', '24 PCS / K', NULL, 'MM2', 4167, 5000, 0, 'gg.jpg', 0),
(112, 2, 'KAKI TIGA ANAK STRAWBERRY CAN 250 ML', '24 PCS / K', NULL, 'MM2', 4167, 5000, 0, 'gg.jpg', 0),
(113, 2, 'KAKI TIGA PET ANAK 200 ML', '48 PCS / K', NULL, 'MM2', 2834, 5000, 0, 'gg.jpg', 0),
(114, 2, 'KAKI TIGA ANAK PET FROZEN APEL 250 ML', '24 PCS / K', '-', 'MM2', 4000, 5000, 0, 'barang_1587354140.jpg', 0),
(115, 2, 'KAKI TIGA ANAK PET BLACKBURN 250 ML', '24 PCS / K', NULL, 'MM2', 4000, 5000, 0, 'gg.jpg', 0),
(116, 2, 'KAKI TIGA ANAK PER ORANGE 250 ML', '24 PCS / K', NULL, 'MM2', 4000, 5000, 0, 'gg.jpg', 0),
(117, 2, 'KAKI TIGA ANAK PET LECI 250 ML', '24 PCS / K', NULL, 'MM2', 4000, 5000, 0, 'gg.jpg', 0),
(118, 2, 'KAKI TIGA ANAK PET DISNEY 250 ML', '24 PCS / K', '-', 'MM2', 4000, 5000, 0, 'barang_1587349576.jpg', 0),
(119, 2, 'KAKI TIGA PET 200 ML', '48 PCS / K', NULL, 'MM2', 2844, 5000, 0, 'gg.jpg', 0),
(120, 2, 'KAKI TIGA PET 500 ML', '24 PCS / K', NULL, 'MM2', 5438, 5000, 0, 'gg.jpg', 0),
(121, 2, 'KAKI TIGA PET GUAVA 320 ML', '24 PCS / K', '-', 'MM2', 4750, 5000, 0, 'barang_1587486351.jpg', 0),
(122, 2, 'KAKI TIGA PET LECCI 320 ML', '24 PCS / K', NULL, 'MM2', 4750, 5000, 0, 'gg.jpg', 0),
(123, 2, 'KAKI TIGA PET ORANGE 320 ML', '24 PCS / K', '-', 'MM2', 4750, 5000, 0, 'barang_1587389625.jpg', 0),
(124, 2, 'KAKI TIGA PET STRAWBERRY 320 ML', '24 PCS / K', '-', 'MM2', 4750, 5000, 0, 'barang_1587486568.jpg', 0),
(125, 2, 'KAKI TIGA PET JERUK NIPIS 320 ML', '24 PCS / K', NULL, 'MM2', 4750, 5000, 0, 'gg.jpg', 0),
(126, 2, 'KAKI TIGA PET MELON 320 ML', '24 PCS / K', NULL, 'MM2', 4750, 5000, 0, 'gg.jpg', 0),
(127, 1, 'MAJESTIC WAFER WHITE COFFEE 90 GR', '30 PCS / K', NULL, 'MM', 2150, 5000, 0, 'gg.jpg', 0),
(128, 1, 'MAJESTIC MIX BARRIES 90 GR', '30 PCS / K', '-', 'MM', 2150, 5000, 0, 'barang_1587389441.jpg', 0),
(129, 1, 'MAJESTIC WAFER POPCORN 90 GR', '30 PCS / K', '-', 'MM', 2150, 5000, 0, 'barang_1587486439.jpg', 0),
(130, 1, 'MAJESTIC WAFER POPCORN 53.5 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg', 0),
(131, 1, 'MAJESTIC WAFER WHITE COFFEE 53.5 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg', 0),
(132, 1, 'CHOCOLATE WAFER 145 GR', '24 PCS / K', NULL, 'MM', 4000, 5000, 0, 'gg.jpg', 0),
(133, 1, 'MAJESTIC CHOCOLATE 90 GR', '30 PCS / K', NULL, NULL, 2150, 5000, 0, 'gg.jpg', 0),
(134, 1, 'MAJORICO CHOCOLATE 120 GR', '24 PCS / K', NULL, 'MM', 3750, 5000, 0, 'gg.jpg', 0),
(135, 1, 'MAJORICO VANILA 120 GR', '24 PCS / K', '-', 'MM', 3750, 5000, 0, 'barang_1587354070.jpg', 0),
(136, 7, 'SWEETY PANTS L1', '20 RTG / K', 'PEMBALUT', NULL, 10800, 5000, 0, 'gg.jpg', 0),
(137, 7, 'SWEETY BRONZE L2', '12 RTG / K', NULL, NULL, 19750, 5000, 0, 'gg.jpg', 0),
(138, 7, 'SWEETY PANTS M1', '20 RTG / K', NULL, 'PEMBALUT', 10800, 5000, 0, 'gg.jpg', 0),
(139, 7, 'SWEETY BRONZE M2', '12 RTG / K', '-', 'PEMBALUT', 19750, 5000, 0, 'barang_1587389350.jpg', 0),
(140, 7, 'MIRANDA MC 1', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(141, 7, 'MIRANDA MC 2', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(142, 7, 'MIRANDA MC 3', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(143, 7, 'MIRANDA MC 4', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587487063.jpg', 0),
(144, 7, 'MIRANDA MC 5', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(145, 7, 'MIRANDA MC 6', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(146, 7, 'MIRANDA MC 7', '144 PCS / K', '-', 'MM', 12150, 5000, 0, 'barang_1587354871.jpg', 0),
(147, 7, 'MIRANDA MC 8', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(148, 7, 'MIRANDA MC 9', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(149, 7, 'MIRANDA MC 10', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(150, 7, 'MIRANDA MC 11', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587351171.jpg', 0),
(151, 7, 'MIRANDA MC 12', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(152, 7, 'MIRANDA MC 13', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587486745.jpg', 0),
(153, 7, 'MIRANDA MC 14', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(154, 7, 'MIRANDA MC 15', '144 PCS / K', '-', 'Semir', 12150, 5000, 0, 'gg.jpg', 0),
(155, 7, 'MIRANDA MC 16', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587389411.jpg', 0),
(156, 7, 'MIRANDA MC 17', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587486403.jpg', 0),
(157, 7, 'MIRANDA MC 18', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(158, 7, 'MIRANDA MC 19', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg', 0),
(159, 10, 'MINYAK DUNIA CUP 200 ML', '48 PCS / K', '-', 'PC', 2415, 5000, 0, 'barang_1587389711.jpg', 0),
(160, 10, 'MINYAK DUNIA POUCH 900 ML', '12 PCS / K', '-', 'minyak goreng', 10145, 5000, 0, 'barang_1587486616.jpg', 0),
(161, 10, 'MINYAK DUNIA POUCH 1800 ML', '6 PCS / K', NULL, NULL, 19845, 5000, 0, 'gg.jpg', 0),
(162, 10, 'MINYAK DUNIA JERRYCAN 4500 ML', '4 PCS / K', NULL, NULL, 53340, 5000, 0, 'gg.jpg', 0),
(163, 10, 'MINYAK DAMAI PUOCH 1000 ML', '12 PCS / K', NULL, NULL, 11267, 5000, 0, 'gg.jpg', 0),
(164, 10, 'MINYAK DAMAI POUCH 2000 ML', '6 PCS / K', NULL, NULL, 22197, 5000, 0, 'gg.jpg', 0),
(165, 2, 'PANDA GRASS JELLY CAN 310 ML', '24 PCS / K', NULL, NULL, 3334, 5000, 0, 'gg.jpg', 0),
(166, 2, 'PANDA LT REGULAR CAN 310 ML', '24 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(167, 2, 'PANTHER FRUIT CUP 175 ML', '1 PCS / K', NULL, NULL, 18500, 5000, 0, 'gg.jpg', 0),
(168, 2, 'PANTHER ENERGY LAVA NLAST 250 ML', '12 PCS/ K', '-', 'MM', 2200, 5000, 0, 'barang_1587354429.jpg', 0),
(169, 2, 'PANTHER ENERGY POWER RED 250 ML', '12 PCS / K', '-', 'MM', 2200, 5000, 0, 'barang_1587353003.jpg', 0),
(170, 11, 'GANTUNGAN PERMEN', '1', NULL, NULL, 0, 5000, 0, 'gg.jpg', 0),
(171, 11, 'PAGODA PERMEN', '1', '-', 'MM', 3000, 5000, 0, 'barang_1587354496.jpg', 0),
(172, 11, 'PERMEN BUBUK ASAM COLA 12 GR', '15 PACK / K', '-', 'CANDY', 30000, 5000, 0, 'barang_1587353046.jpg', 0),
(173, 11, 'PERMEN BUBUK ASAM ANGGUR 12 GR', '15 PACK / K', NULL, 'CANDY', 30000, 5000, 0, 'gg.jpg', 0),
(174, 11, 'PERMEN BUBUK ASAM STROBERI 12 GR', '15 PACK / K', NULL, 'CANDY', 30000, 5000, 0, 'gg.jpg', 0),
(175, 11, 'PERMEN LOLLIPOP STROBERI 10 GR', '20 PACK / K', '-', 'CANDY', 45000, 5000, 0, 'barang_1587350464.jpg', 0),
(176, 11, 'PERMEN LOLLIPOP JERUK 10 GR', '20 PACK / K', NULL, 'CANDY', 45000, 5000, 0, 'gg.jpg', 0),
(177, 11, 'PERMEN LOLLIPOP APEL 10 GR', '20 PACK / K', NULL, 'CANDY', 45000, 5000, 0, 'gg.jpg', 0),
(178, 11, 'PERMEN LOLLIPOP MANGGA 10 GR', '20 PACK / K', NULL, 'CANDY', 45000, 5000, 0, 'gg.jpg', 0),
(179, 11, 'PERMEN ICE CREAM STOBERI 12 GR', '30 PACK / K', NULL, 'CANDY', 17000, 5000, 0, 'gg.jpg', 0),
(180, 11, 'PERMEN FINGER SPINNER 11 GR', '30 PACK / K', NULL, 'CANDY', 17000, 5000, 0, 'gg.jpg', 0),
(181, 11, 'PERMEN LOLLIPOP MAWAR 12 GR', '30 PACK / K', NULL, 'CANDY', 17000, 5000, 0, 'gg.jpg', 0),
(182, 7, 'SWEETY PANTS S1', '20 RTG / K', '-', 'PEMBALUT', 8350, 5000, 0, 'barang_1587487362.jpg', 0),
(183, 9, 'TEH CELUP KAMPUNG MNS ASLI', '48 PCS/ K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(184, 9, 'TEH KROSOS KAMPUNG MNS', '10 SLOP / B', NULL, NULL, 20000, 5000, 0, 'gg.jpg', 0),
(185, 9, 'TEH KAMPUNG MELATI', '48 PCS / K', NULL, NULL, 4000, 5000, 0, 'gg.jpg', 0),
(186, 6, 'GELAS UANG EMAS', '100 PCS / K', '-', 'MM', 2000, 5000, 0, 'barang_1587354601.jpg', 0),
(187, 6, 'LEPEK UANG EMAS', '10 PCS / K', '-', 'MM', 4500, 5000, 0, 'barang_1587353227.jpg', 0),
(188, 6, 'UANG EMAS SPECIAL 30 GR', '10 RTG / K', NULL, 'MM2', 8910, 5000, 0, 'gg.jpg', 0),
(189, 6, 'UANG EMAS MERAH 1 KG', '5 PCS / K', NULL, 'MM2', 22260, 5000, 0, 'gg.jpg', 0),
(190, 6, 'UANG EMAS TOP 600', '12 PCS / K', '-', 'MM2', 19125, 5000, 0, 'barang_1587350880.jpg', 0),
(191, 6, 'UANG EMAS SPECIAL 380', '9 PCS / K', NULL, 'MM2', 14700, 5000, 0, 'gg.jpg', 0),
(192, 6, 'UANG EMAS SPECIAL 135', '25 PCS / K', NULL, 'MM2', 3850, 5000, 0, 'gg.jpg', 0),
(193, 6, 'UANG EMAS SPECIAL 10 GR', '20 RTG / K', NULL, NULL, 3600, 5000, 0, 'gg.jpg', 0),
(194, 4, 'ULTRA TABUR RASA BALADO 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(195, 4, 'ULTRA TBR RS SAMBAL BALADO 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(196, 4, 'ULTRA TABUR RS JAGUNG BAKAR 100 GR', '200 PCS / K', '-', 'bumbu', 4200, 5000, 0, 'barang_1587350146.jpg', 0),
(197, 4, 'ULTRA TABUR RS JAGUNG MANIS 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(198, 4, 'ULTRA TABUR RS KEJU 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(199, 4, 'ULTRA TABUR RS BARBQUE 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(200, 4, 'ULTRA TABUR RS PEDAS MANIS 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(201, 4, 'ULTRA AYAM BAWANG 100 GR', '200 PCS / K', '-', 'bumbu', 4200, 5000, 0, 'barang_1587389820.jpg', 0),
(202, 4, 'ULTRA TABUR RS SAPI PANGGANG 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(203, 4, 'ULTRA BALADO 900 GR', '20 PCS / K', NULL, NULL, 37000, 5000, 0, 'gg.jpg', 0),
(204, 4, 'ULTRA SAMBAL BALADO 900 GR', '20 PCS / K', NULL, NULL, 37000, 5000, 0, 'gg.jpg', 0),
(205, 4, 'ULTRA BARBEQUE 900 GR', '20 PCS / K', '-', 'bumbu', 37000, 5000, 0, 'barang_1587486866.jpg', 0),
(206, 4, 'ULTRA EXTRA PEDAS 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg', 0),
(207, 4, 'ULTRA BALADO PEDAS MANIS 900 GR', '20 PCS / K', NULL, NULL, 37000, 5000, 0, 'gg.jpg', 0),
(208, 8, 'VIT BODY SCENT BLOSSOM/PINK 120 ML', '16 PCS / K', '-', 'PC', 18001, 5000, 0, 'barang_1587389588.jpg', 0),
(209, 8, 'VIT BODY SCENT BLISSFUL/ORANGE 120 ML', '36 PCS / K', '-', 'PC', 18001, 5000, 0, 'barang_1587486546.jpg', 0),
(210, 8, 'VIT BODY SCENT BREEZE/BIRU 120 ML', '36 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg', 0),
(211, 8, 'VIT BODY SCENT BIZARE/UNGU 120 ML', '36 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg', 0),
(212, 8, 'VIT BODY SCENT BLESS/MERAH 120 ML', '36 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg', 0),
(213, 8, 'VIT BODY SCENT BELLE/HIJAU 120 ML', '36 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg', 0),
(214, 8, 'VIT BODY SCENT BLOSSOM/PINK 60 ML', '36 PCS / K', NULL, NULL, 11310, 5000, 0, 'gg.jpg', 0),
(215, 8, 'VIT BODY SCENT BREEZE/BIRU 60 ML', '36 PCS / K', '-', 'PC', 11310, 5000, 0, 'barang_1587354169.jpg', 0),
(216, 8, 'VIT BODY SCENT BIZARE/UNGU 60 ML', '36 PCS / K', NULL, NULL, 11310, 5000, 0, 'gg.jpg', 0),
(217, 8, 'VIT BODY SCENT BLISFUL/ORANGE 60 ML', '36 PCS / K', NULL, NULL, 11310, 5000, 0, 'gg.jpg', 0),
(218, 8, 'VIT BODY SCENT BLESS/MERAH 60 ML', '36 PCS / K', NULL, NULL, 11310, 5000, 0, 'gg.jpg', 0),
(219, 8, 'VIT BODY SCENT BELLE/HIJAU 60 ML', '36 PCS / K', '-', 'PC', 11310, 5000, 0, 'barang_1587349584.jpg', 0),
(220, 7, 'YUPI STRAWBERRY 120 GR', '24 PCS / K', NULL, NULL, 5912, 5000, 0, 'gg.jpg', 0),
(221, 7, 'YUPI FRUTY PUFF 120 GR', '24 PCS / K', NULL, NULL, 5800, 5000, 0, 'gg.jpg', 0),
(222, 7, 'YUPI BABY BEAR 10 GR', '12 PCS / K', '-', 'CANDY', 10000, 5000, 0, 'barang_1587354031.jpg', 0),
(223, 7, 'YUPI LITTLE STAR 10 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg', 0),
(224, 7, 'YUPI GUMMY FANG 9 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg', 0),
(225, 7, 'YUPI EXOTIC MANGO 10 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg', 0),
(226, 7, 'YUPI BERRI BRONZ 8 GR', '12 PCS / K', '-', 'CANDY', 10000, 5000, 0, 'barang_1587351320.jpg', 0),
(227, 7, 'YUPI ICE CREAM CONE 10 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg', 0),
(228, 7, 'YUPI STRAWBERRY 125S TOPLES', '6 PCS / K', NULL, NULL, 17680, 5000, 0, 'gg.jpg', 0),
(229, 7, 'YUPI FRUTY COLA  8 GR', '24 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg', 0),
(230, 7, 'YUPI GUMMY COOKIES 8 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg', 0),
(231, 7, 'YUPI WOTTA MELON 8.5 GR', '12 PCS / K', '-', 'CANDY', 10000, 5000, 0, 'barang_1587389530.jpg', 0),
(232, 7, 'YUPI JUST FOR FUN', '12 PCS / K', '-', 'CANDY', 10300, 5000, 0, 'barang_1587486472.jpg', 0),
(233, 7, 'YUPI BURGER 8 GR', '12 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg', 0),
(234, 7, 'YUPI ROLETTO 8 GR', '24 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg', 0),
(235, 7, 'YUPI JUGLE FUN 8.5 GR', '12 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg', 0),
(236, 7, 'YUPI CHOCO GLEE 7 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg', 0),
(237, 7, 'YUPI DINO LAND 8 GR', '12 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg', 0),
(238, 7, 'YUPI SEA WORLD 8.5 GR', '12 PCS / K', '-', 'CANDY', 10200, 5000, 0, 'barang_1587354108.jpg', 0),
(239, 7, 'YUPI MARSHMALLOW TWIST 20 GR', '12 PCS / K', NULL, NULL, 16800, 5000, 0, 'gg.jpg', 0),
(240, 7, 'YUPI CALCI BEAN 16 GR 12 PCS / K', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg', 0),
(241, 7, 'YUPI GUMMY FRIES 15 GR', '12 PCS / K', NULL, NULL, 10300, 5000, 0, 'gg.jpg', 0),
(242, 7, 'YUPI PIZZA 15 GR', '12 PCS / K', '-', 'CANDY', 10300, 5000, 0, 'barang_1587352816.jpg', 0),
(243, 7, 'YUPO FRUIT COCKTAIL 15 GR', '12 PCS / K', NULL, NULL, 10300, 5000, 0, 'gg.jpg', 0),
(244, 7, 'YUPI SEET HEART 15 GR', '12 PCS / K', NULL, NULL, 10300, 5000, 0, 'gg.jpg', 0),
(245, 7, 'YUPI AQUARIUM 15 GR', '12 PCS / K', '-', 'CANDY', 10300, 5000, 0, 'barang_1587486236.jpg', 0),
(246, 7, 'YUPI FESTIVE EDITION 400 GR', '6 PCS / K', NULL, NULL, 25000, 5000, 0, 'gg.jpg', 0);

--
-- Trigger `barang`
--
DELIMITER $$
CREATE TRIGGER `delete barang` AFTER UPDATE ON `barang` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Barang bernama', OLD.nama_barang, ' telah dihapus'));
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
-- Struktur dari tabel `carousel`
--

CREATE TABLE `carousel` (
  `id_carousel` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` varchar(200) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `carousel`
--

INSERT INTO `carousel` (`id_carousel`, `judul`, `isi`, `gambar`) VALUES
(3, 'a', 'a', 'carousel_1588048397.jpg'),
(4, 'b', 'b', 'carousel_1588048326.jpg'),
(6, 'd', 'd', 'carousel_1588048366.jpg'),
(7, 'pohong gosong', 'enak pol', 'carousel_1588041174.jpg'),
(8, 'e', 'e', 'carousel_1588048943.jpg'),
(9, 'f', 'f', 'carousel_1588048955.jpg'),
(10, 'g', 'g', 'carousel_1588048992.jpg'),
(11, 'h', 'h', 'carousel_1588049008.jpg'),
(12, 'i', 'i', 'carousel_1588049021.jpg'),
(13, 'c', 'c', 'carousel_1588048918.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cicil`
--

CREATE TABLE `cicil` (
  `id_cicil` int(11) NOT NULL,
  `jumlah_cicil` int(11) NOT NULL,
  `jatuh_tempo` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_keluar`
--

CREATE TABLE `detail_keluar` (
  `id_barang` int(11) NOT NULL,
  `id_keluar` int(11) NOT NULL,
  `qty_keluar` int(11) DEFAULT NULL,
  `diskon` int(3) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_keluar`
--

INSERT INTO `detail_keluar` (`id_barang`, `id_keluar`, `qty_keluar`, `diskon`, `status`) VALUES
(1, 2, 11, 0, 1),
(2, 2, 11, 0, 1),
(1, 3, 12, 0, 1),
(2, 3, 12, 0, 1),
(1, 4, 10, 0, 1),
(2, 5, 1, 0, 1),
(3, 6, 1, 0, 1),
(1, 7, 2, 0, 1),
(2, 7, 1, 0, 1),
(2, 8, 1, 0, 1),
(1, 9, 1, 0, 3),
(2, 10, 1, 0, 3),
(2, 11, 1, 0, 3),
(3, 11, 2, 0, 3),
(1, 12, 5, 0, 3),
(1, 13, 3, 0, 3),
(1, 14, 1, 0, 3),
(2, 15, 1, 0, 3),
(1, 16, 1, 0, 3),
(2, 17, 1, 0, 3),
(3, 18, 10, 0, 3),
(1, 19, 1, 0, 3),
(2, 20, 1, 10, 3),
(1, 21, 10, 10, 3),
(4, 21, 10, 20, 3),
(4, 22, 10, 10, 3),
(15, 22, 20, 20, 3),
(2, 23, 10, 10, 3),
(4, 24, 10, 3, 3),
(1, 25, 1, 0, 1),
(3, 26, 1, 0, 0);

--
-- Trigger `detail_keluar`
--
DELIMITER $$
CREATE TRIGGER `hapus detail_keluar` AFTER DELETE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok+OLD.qty_keluar 
    WHERE id_barang=OLD.id_barang AND OLD.status='1';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus detail_keluar1` AFTER DELETE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual = terjual-OLD.qty_keluar 
    WHERE id_barang=OLD.id_barang AND OLD.status='1';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah detail_keluar` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET stok=stok-NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='1';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah detail_keluar1` AFTER INSERT ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual=terjual+NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='1';
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
    WHERE id_barang=NEW.id_barang AND NEW.status='1' AND OLD.qty_keluar=NEW.qty_KELUAR;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar1` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual=terjual+NEW.qty_keluar
    WHERE id_barang=NEW.id_barang AND NEW.status='1' AND OLD.qty_keluar=NEW.qty_KELUAR;
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
-- Struktur dari tabel `detail_masuk`
--

CREATE TABLE `detail_masuk` (
  `id_barang` int(11) NOT NULL,
  `id_masuk` int(11) NOT NULL,
  `qty_masuk` int(11) DEFAULT NULL,
  `diskon` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_masuk`
--

INSERT INTO `detail_masuk` (`id_barang`, `id_masuk`, `qty_masuk`, `diskon`) VALUES
(1, 1, 2, 0),
(2, 2, 1, 0),
(1, 3, 1, 0),
(2, 5, 11, 0),
(1, 6, 11, 0),
(1, 7, 22, 0),
(1, 8, 10, 0),
(14, 8, 10, 0),
(1, 10, 10, 10),
(11, 10, 20, 20),
(1, 11, 1, 10),
(2, 12, 1, 10);

--
-- Trigger `detail_masuk`
--
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
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `id_keluar` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tgl_keluar` datetime DEFAULT NULL,
  `total_keluar` int(11) DEFAULT NULL,
  `foto_keluar` varchar(100) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`id_keluar`, `id_user`, `tgl_keluar`, `total_keluar`, `foto_keluar`, `del`) VALUES
(2, 2, '2020-04-25 02:15:36', 495000, NULL, 0),
(3, 1, '2020-04-25 02:16:02', 540000, 'bayar_1587798968.jpg', 0),
(4, 1, '2020-04-26 09:49:36', 270000, NULL, 1),
(5, 3, '2020-05-06 06:03:03', 22500, NULL, 1),
(6, 3, '2020-05-06 02:10:18', 22500, NULL, 0),
(7, 3, '2020-05-06 02:21:36', 67500, NULL, 1),
(8, 3, '2020-05-06 02:22:02', 22500, 'bayar_1588749730.jpg', 1),
(9, 3, '2020-05-12 05:49:53', 22500, NULL, 0),
(10, 4, '2020-05-12 05:51:25', 22500, NULL, 0),
(11, 2, '2020-06-01 06:52:05', 67500, NULL, 0),
(12, 2, '2020-06-01 08:07:18', 157500, NULL, 0),
(13, 2, '2020-06-01 08:39:15', 45000, NULL, 0),
(14, 2, '2020-06-01 09:28:55', 22500, NULL, 0),
(15, 2, '2020-06-01 09:29:02', 22500, NULL, 0),
(16, 3, '2020-06-01 09:29:33', 22500, NULL, 0),
(17, 3, '2020-06-01 09:29:41', 22500, NULL, 0),
(18, 3, '2020-06-02 11:53:54', 202500, NULL, 0),
(19, 3, '2020-06-02 12:02:20', 20250, NULL, 0),
(20, 3, '2020-06-02 12:04:12', 20250, NULL, 0),
(21, 4, '2020-06-02 12:06:12', 382500, NULL, 0),
(22, 7, '2020-06-02 12:12:33', 301588, NULL, 0),
(23, 3, '2020-06-03 02:16:05', 202500, NULL, 0),
(24, 3, '2020-06-04 10:33:09', 261900, NULL, 0),
(25, 2, '2020-06-04 10:39:05', 22500, NULL, 0),
(26, 2, '2020-06-04 10:40:22', 22500, 'bayar_1591242029.jpg', 0);

--
-- Trigger `keluar`
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
CREATE TRIGGER `tambah keluar` AFTER INSERT ON `keluar` FOR EACH ROW BEGIN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Tansaksi barang keluar dengan id=', NEW.id_keluar, ' telah ditambah')) ;
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
  `tgl_masuk` datetime DEFAULT NULL,
  `total_masuk` int(11) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`id_masuk`, `id_supplier`, `tgl_masuk`, `total_masuk`, `del`) VALUES
(1, 1, '2020-04-25 02:16:34', 270000, 1),
(2, 2, '2020-04-25 02:19:59', 22500, 1),
(3, 6, '2020-04-25 02:20:29', 22500, 1),
(5, 1, '2020-04-25 02:21:43', 247500, 0),
(6, 9, '2020-06-01 08:42:51', 247500, 0),
(7, 2, '2020-06-01 08:53:11', 270000, 0),
(8, 6, '2020-06-02 12:11:11', 286930, 0),
(9, 11, '2020-06-02 12:31:37', 249636, 0),
(10, 12, '2020-06-02 12:32:22', 249636, 0),
(11, 12, '2020-06-04 10:27:07', 20250, 0),
(12, 11, '2020-06-04 10:29:14', 20250, 0);

--
-- Trigger `masuk`
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
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `del` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
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
-- Trigger `supplier`
--
DELIMITER $$
CREATE TRIGGER `delete supplier` BEFORE UPDATE ON `supplier` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('Supplier bernama', OLD.nama_supplier, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;

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
  `foto` varchar(100) DEFAULT NULL,
  `del` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `username`, `password`, `level`, `nama`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `no_telp`, `foto`, `del`) VALUES
(1, 'nevin@gmail.com', 'nevin', '57dd6150d6302a88892a0c5e09dfc7fc', 'admin', 'nevin', '2000-01-27', 'laki-laki', 'Jember', '089765456123', 'user_1589942713.jpg', 0),
(2, 'brianvidyanjaya@gmail.com', 'brian', '929064f2a141f812f1c2efb3ff8194ca', 'manajer', 'brian', '2000-04-20', 'laki-laki', 'Probolinggo', '087672819212', 'pp.jpg', 0),
(3, 'rere@gmail.com', 'rere', '4b054d969d22341219a5bc88f4c8321f', 'customer', 'rere', '2000-01-27', 'perempuan', 'Surabaya', '089765682312', 'pp.jpg', 0),
(4, 'rara@gmail.com', 'rara', '5ab83fa52e5d0f5abc44d2eed4479ff0', 'customer', 'rara', '2020-04-09', 'perempuan', 'Situbondo', '085234567891', 'pp.jpg', 0),
(5, 'sinyo@gmail.com', 'sinyo', '7cf7a0149ee46108c3f37066b1c126ec', 'gudang', 'sinyo', '2020-04-15', 'laki-laiki', 'Jember', '089765241572', 'user_1585977429.jpg', 0),
(6, 'rama', 'rama@gmail.com', '36226b453eb255f672f118a1ecc1e4ec', 'sales', 'rama', '2020-04-09', 'laki-laiki', 'Bondowoso', '089765456111', NULL, 0),
(7, 'tarno@gmail.com', 'tarno', 'ed8465aeaf6682cbf12c6a3c94bba4d7', 'customer', 'tarno', '2020-04-20', 'laki-laiki', 'Bondowoso', '089765456111', 'user_1585977486.jpg', 0),
(8, 'ipang@gmail.com', 'ipang', 'a3b1427fc6eb05dde4883180e7284322', 'gudang', 'ipang', '2020-04-15', 'laki-laiki', 'Jember', '089765241572', 'pp.jpg', 0),
(9, 'eko@gmail.com', 'eko', '8e1a070e9b0340da2b0ea4f193c172f0', 'customer', 'eko', '2020-04-15', 'laki-laiki', 'Bondowoso', '089765456111', 'pp.jpg', 0),
(65, 'haris@gmail.com', 'haris123', 'haris123', 'gudang', 'haris', '2000-01-26', 'laki-laki', 'Jember Timur', '089765432123', NULL, 0);

--
-- Trigger `user`
--
DELIMITER $$
CREATE TRIGGER `delete user` AFTER UPDATE ON `user` FOR EACH ROW BEGIN
IF NEW.del='1' THEN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('User dengan username', OLD.username, ' telah dihapus'));
END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_berasal` (`id_supplier`);

--
-- Indeks untuk tabel `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carousel`);

--
-- Indeks untuk tabel `cicil`
--
ALTER TABLE `cicil`
  ADD PRIMARY KEY (`id_cicil`);

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
-- AUTO_INCREMENT untuk tabel `activity`
--
ALTER TABLE `activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT untuk tabel `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `cicil`
--
ALTER TABLE `cicil`
  MODIFY `id_cicil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

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
