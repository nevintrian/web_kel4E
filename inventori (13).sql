-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Apr 2020 pada 06.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

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
  `merk` varchar(100) DEFAULT '-',
  `jenis` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT 0,
  `terjual` int(11) DEFAULT 0,
  `foto_barang` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_supplier`, `nama_barang`, `kemasan`, `merk`, `jenis`, `harga`, `stok`, `terjual`, `foto_barang`) VALUES
(1, 1, 'BUCKET KUKIS MAMAH 400 GR', '6 PCS / K', '-', 'makanan', 22500, 5012, 111, 'barang_1587349533.jpg'),
(2, 1, 'BUCKET COCONUT 400 GR', '6 PCS / K', '-', 'makanan', 22500, 4969, 31, 'barang_1587349541.jpg'),
(3, 1, 'BUCKET BUTTER KUKIS 400 GR', '6 PCS / K', '-', 'MM', 22500, 5001, 0, 'barang_1587350641.jpg'),
(4, 1, 'BUCKET MOCHACINO 400 GR', '6 PCS / K', '-', 'makanan', 22500, 5087, 24, 'barang_1587349556.jpg'),
(5, 1, 'BUCKET MILKY VANILA 400 GR', '6 PCS / K', '-', 'MM', 22500, 5000, 0, 'barang_1587350694.jpg'),
(6, 1, 'MAJORICO BANANA 300 GR', '12 PCS / K', '-', 'makanan', 16750, 4889, 112, 'barang_1587349524.jpg'),
(7, 1, 'MAJORICO MATCHA 300 GR', '12 PCS / K', NULL, NULL, 16750, 5000, 0, 'gg.jpg'),
(8, 1, 'MAJORICO CHOCOLATE 300 GR', '12 PCS / K', NULL, NULL, 16750, 5000, 0, 'gg.jpg'),
(9, 1, 'KUKIS N KRIM STRAWBERY 400 GR', '6 PCS / K', NULL, NULL, 22700, 5000, 0, 'gg.jpg'),
(10, 7, 'SABUN CUSSONS PINK 75 GR', '144 PCS / K', NULL, 'PC', 2946, 5000, 0, 'gg.jpg'),
(11, 7, 'SABUN CUSSONS BLUE 75 GR 75 GR', '144 PCS / K', NULL, 'PC', 2946, 5000, 0, 'gg.jpg'),
(12, 7, 'POWDER PINK 50 GR', '48 PCS/ K', NULL, 'PC', 3500, 5000, 0, 'gg.jpg'),
(13, 7, 'POWDER BLUE 50 GR', '48 PCS / K', NULL, 'PC', 3500, 5000, 0, 'gg.jpg'),
(14, 7, 'POWDER PINK 100 GR', '48 PCS / K', NULL, 'PC', 6193, 5000, 0, 'gg.jpg'),
(15, 7, 'POWDER BLUE 100 GR', '48 PCS / K', NULL, 'PC', 6193, 5000, 0, 'gg.jpg'),
(16, 7, 'POWDER PINK 200 GR', '24 PCS / K', NULL, 'PC', 11044, 5000, 0, 'gg.jpg'),
(17, 7, 'POWDER BLUE 200 GR', '24 PCS / K', NULL, 'PC', 11044, 5000, 0, 'gg.jpg'),
(18, 7, 'POWDER UNGU 200 GR', '24 PCS / K', '-', 'PC', 11044, 5000, 0, 'barang_1587354776.jpg'),
(19, 7, 'POWDER KUNING 50 GR', '48 PCS / K', NULL, 'PC', 3500, 5000, 0, 'gg.jpg'),
(20, 7, 'POWDER KUNING 100 GR', '48 PCS / K', NULL, 'PC', 6809, 5000, 0, 'gg.jpg'),
(21, 7, 'POWDER UNGU 50 GR', '48 PCS / K', NULL, 'PC', 3500, 5000, 0, 'gg.jpg'),
(22, 7, 'SABUN CUSSONS UNGU 75 GR', '144 PCS / K', '-', 'PC', 2946, 5000, 0, 'barang_1587351059.jpg'),
(23, 7, 'POWDER UNGU 100 GR', '48 PCS / K', NULL, 'PC', 6193, 5000, 0, 'gg.jpg'),
(24, 9, 'GELAS TEH KMPG MANIS', '72 PCS / K', NULL, NULL, 0, 5000, 0, 'gg.jpg'),
(25, NULL, 'GELAS KOPI UANG MAS 1 KG', '6 PCS / D', NULL, NULL, 0, 5000, 0, 'gg.jpg'),
(26, 1, 'KUKIS KELAPA 13,9 GR', '9 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(27, 1, 'KUKIS MOCHACINO 13,9 GR 6 x 120', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587354382.jpg'),
(28, 1, 'KUKIS VANILLA 13,9 GR 6 X 120', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587352858.jpg'),
(29, 1, 'KUKIS BUTTER 300 GR', '18 PCS / K', NULL, 'MM', 6250, 5000, 0, 'gg.jpg'),
(30, 1, 'KUKIS KELAPA 300 GR', '18 PCS / K', NULL, 'MM', 6250, 5000, 0, 'gg.jpg'),
(31, 1, 'KUKIS MOCHACINO 300 GR', '18 PCS / K', '-', 'MM', 6250, 5000, 0, 'barang_1587350033.jpg'),
(32, 1, 'KUKIS VANILLA 300 GR', '18 PCS / K', NULL, 'MM', 6250, 5000, 0, 'gg.jpg'),
(33, 1, 'KUKIS BUTTER 90 GR', '30 PCS / K', NULL, 'MM', 2375, 5000, 0, 'gg.jpg'),
(34, 1, 'KUKIS KELAPA 90 GR', '30 PCS / K', NULL, 'MM', 2375, 5000, 0, 'gg.jpg'),
(35, 1, 'KUKIS MOCHACINO 90 GR', '30 PCS / K', NULL, 'MM', 2375, 5000, 0, 'gg.jpg'),
(36, 1, 'KUKIS VANILLA 90 GR', '30 PCS / K', NULL, 'MM', 2375, 5000, 0, 'gg.jpg'),
(37, 1, 'KUKIS WHITE COFFEE 13 GR 6 x 120', '9 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(38, 1, 'KUKIS ROLL WHITE COFFEE 90 GR', '30 PCS / K', NULL, 'MM', 2375, 5000, 0, 'gg.jpg'),
(39, 1, 'KUKIS WHITE COFFEE 300 GR', '18 PCS/ K ', NULL, 'MM', 6250, 5000, 0, 'gg.jpg'),
(40, 1, 'KUKIS BUTTER 70 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg'),
(41, 1, 'KUKIS MOCHACINO 70 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg'),
(42, 1, 'KUKIS KELAPA 70 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg'),
(43, 1, 'KUKIS KELAPA 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587354519.jpg'),
(44, 1, 'KUKIS BUTTER 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587353137.jpg'),
(45, 1, 'KUKIS MOCHACINO 12 GR', '9 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(46, 1, 'KUKIS VANILLA 12 GR', '9 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(47, 1, 'KUKIS WHITE COFFEE 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587350838.jpg'),
(48, 1, 'KUKIS VANILLA 70 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg'),
(49, 1, 'KUKIS BANANA 12 GR', '9 PACK / K', NULL, 'MM', 8000, 5000, 0, 'gg.jpg'),
(50, 1, 'KUKIS KELAPA 25.2 GR', '12 PACK / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg'),
(51, 1, 'KUKIS BUTTER 25.2 GR', '12 PCS / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg'),
(52, 1, 'KUKIS MOCHACINO 25.2 GR', '12 PACK / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg'),
(53, 1, 'KUKIS VANILLA 25.2 GR', '12 PCS / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg'),
(54, 1, 'KUKIS WHITE COFFEE 25.2 GR', '12 PACK / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg'),
(55, 1, 'KUKIS KELAPA 218 GR', '24 PCS / K', NULL, NULL, 4500, 5000, 0, 'gg.jpg'),
(56, 1, 'KUKIS BUTTER 218 GR', '24 PCS / K', NULL, NULL, 4500, 5000, 0, 'gg.jpg'),
(57, 1, 'KUKIS MOCHACINO 218 GR', '24 PCS / K', NULL, NULL, 4500, 5000, 0, 'gg.jpg'),
(58, 1, ' KUKIS VANILLA 218 GR', '24 PCS / K', NULL, NULL, 4500, 5000, 0, 'gg.jpg'),
(59, 1, 'MONI CHOCO RING 11.5 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587355392.png'),
(60, 1, 'KUKIS HELLO 11.5 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(61, 1, 'MONSTA CHOCOCHIP 9 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(62, 1, 'ROSE CREAM COKLAT 260 GR', '10 PCS / K', NULL, 'MM', 5500, 5000, 0, 'gg.jpg'),
(63, 1, 'ROSE CREAM LEMON 260 GR', '10 PCS / K', '-', 'MM', 5500, 5000, 0, 'barang_1587351026.jpg'),
(64, 1, 'ROSE CREAM NANAS 260 GR', '10 PCS / K', NULL, 'MM', 5500, 5000, 0, 'gg.jpg'),
(65, 1, 'ROSE CREAM COKLAT 23 GR', '6 PACK / K', NULL, NULL, 14000, 5000, 0, 'gg.jpg'),
(66, 1, 'ROSE CREAM LEMON 23 GR', '6 PACK / K', NULL, NULL, 14000, 5000, 0, 'gg.jpg'),
(67, 1, 'MONTEGO COKLAT 50 GR', '30 PCS / K', NULL, 'MM', 2250, 5000, 0, 'gg.jpg'),
(68, 1, 'MONTEGO COKLAT 17 GR', ' 6 PACK / K', NULL, 'MM', 16000, 5000, 0, 'gg.jpg'),
(69, 1, 'NARITA MARI SUSU ROLL 150 GR', '24 PCS / K', NULL, 'MM', 2650, 5000, 0, 'gg.jpg'),
(70, 1, 'MONTEGP BUTTER 17 GR', '6 PACK / K', NULL, 'MM', 16000, 5000, 0, 'gg.jpg'),
(71, 1, 'MONTEGO FUN DOUBLE CHOCO', '10 PACK / K', NULL, 'MM', 9600, 5000, 0, 'gg.jpg'),
(72, 1, 'MARI SUSU MADU 12 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(73, 1, 'MARI SUSU MADU 100 GR', '36 PCS / K', NULL, 'MM', 3500, 5000, 0, 'gg.jpg'),
(74, 1, 'MARI SUSU MADU 180 GR', '24 PCS / K', NULL, 'MM', 4500, 5000, 0, 'gg.jpg'),
(75, 1, 'MALKIST SUSU 14.5 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587354836.jpg'),
(76, 1, 'MALKIST SUSU 238 GR', '18 PCS / K', NULL, 'MM', 4500, 5000, 0, 'gg.jpg'),
(77, 1, 'MALKIST SUSU 108 GR', '24 PCS / K', NULL, 'MM', 3150, 5000, 0, 'gg.jpg'),
(78, 1, 'CRACKERS BUTTER 262 GR', '18 PCS / K', NULL, 'MM', 4500, 5000, 0, 'gg.jpg'),
(79, 1, 'MALKIST OLEZZ 20 GR', '12 PACK / K', '-', 'MM', 8000, 5000, 0, 'barang_1587351085.jpg'),
(80, 1, 'MALKIST GARLIC 12 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(81, 1, 'GARLIC SEDAP 108 GR', '24 PCS / K', NULL, NULL, 3500, 5000, 0, 'gg.jpg'),
(82, 1, 'GARLIC SEDAP 208 GR', '18 PCS / K', NULL, NULL, 4500, 5000, 0, 'gg.jpg'),
(83, 1, 'MALKIST SUSU 25 GR', '12 PACK / K', NULL, 'MM', 8000, 5000, 0, 'gg.jpg'),
(84, 1, 'GARLIC BREADCRACKERS 24 GR', '12 PACK / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg'),
(85, 1, 'MARI SUSU MADU 24 GR', '12 PACK / K', NULL, NULL, 8000, 5000, 0, 'gg.jpg'),
(86, 1, 'CRACKERS 132 GR', ' 24 PCS / K', NULL, NULL, 3150, 5000, 0, 'gg.jpg'),
(87, 1, 'ABC CRACKERS CHOCO 12 GR', '6 PACK / K', NULL, NULL, 8200, 5000, 0, 'gg.jpg'),
(88, 1, 'RIMBA CHOCO CRACKERS 12 GR', '6 PACK / K', NULL, NULL, 8200, 5000, 0, 'gg.jpg'),
(89, 1, 'OLEZZ CHEESE CHOCO 10 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(90, 1, 'OLEZZ CHEESE CHOCO 100 GR', '30 PCS / K', NULL, 'MM', 3500, 5000, 0, 'gg.jpg'),
(91, 1, 'OLEZZ CHOCO PARTY 10 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587353857.jpg'),
(92, 1, 'OLEZZ CHOCO PARTY 100 GR', '30 PCS / K', NULL, 'MM', 3500, 5000, 0, 'gg.jpg'),
(93, 1, 'MALKIST SUSU 12 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg'),
(94, 1, 'SUPERCREAM BON-BON 200 GR', '21 PCS / K', NULL, 'MM', 4286, 5000, 0, 'gg.jpg'),
(95, 1, 'SUPERCREAM NANAS 200 GR', '21 PCS / K', '-', 'MM', 4286, 5000, 0, 'barang_1587351234.jpg'),
(96, 1, 'SUPERCREAM STRAWBERI 200 GR', '21 PCS / K', NULL, 'MM', 4286, 5000, 0, 'gg.jpg'),
(97, 1, 'SUPERCREAM ORANGE 200 GR', '21 PCS / K', NULL, 'MM', 4286, 5000, 0, 'gg.jpg'),
(98, 1, 'SUPERCREAM BON-BON 46 GR', '60 PCS / K', NULL, NULL, 1400, 5000, 0, 'gg.jpg'),
(99, 2, 'KAKI TIGA GUAVA CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(100, 2, 'KAKI TIGA STRAWBERRY CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(101, 2, 'KAKI TIGA LECCI CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(102, 2, 'KAKI TIGA MELON CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587352768.jpg'),
(103, 2, 'KAKI TIGA ORANGE CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(104, 2, 'KAKI TIGA ANGGUR CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(105, 2, 'KAKI TIGA APEL CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(106, 2, 'KAKI TIGA MARKISA 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(107, 2, 'KAKI TIGA TIMUN SURI CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(108, 2, 'KAKI TIGA KURMA & TIN CAN 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(109, 2, 'KAKI TIGA JERUK NIPIS 320 ML', '24 PCS / K', NULL, 'MM2', 4938, 5000, 0, 'gg.jpg'),
(110, 2, 'KAKI TIGA ANAK ORANGE CAN 250 ML', '24 PCS / K', NULL, 'MM2', 4167, 5000, 0, 'gg.jpg'),
(111, 2, 'KAKI TIGA ANAK LECCI CAN 250 ML', '24 PCS / K', NULL, 'MM2', 4167, 5000, 0, 'gg.jpg'),
(112, 2, 'KAKI TIGA ANAK STRAWBERRY CAN 250 ML', '24 PCS / K', NULL, 'MM2', 4167, 5000, 0, 'gg.jpg'),
(113, 2, 'KAKI TIGA PET ANAK 200 ML', '48 PCS / K', NULL, 'MM2', 2834, 5000, 0, 'gg.jpg'),
(114, 2, 'KAKI TIGA ANAK PET FROZEN APEL 250 ML', '24 PCS / K', '-', 'MM2', 4000, 5000, 0, 'barang_1587354140.jpg'),
(115, 2, 'KAKI TIGA ANAK PET BLACKBURN 250 ML', '24 PCS / K', NULL, 'MM2', 4000, 5000, 0, 'gg.jpg'),
(116, 2, 'KAKI TIGA ANAK PER ORANGE 250 ML', '24 PCS / K', NULL, 'MM2', 4000, 5000, 0, 'gg.jpg'),
(117, 2, 'KAKI TIGA ANAK PET LECI 250 ML', '24 PCS / K', NULL, 'MM2', 4000, 5000, 0, 'gg.jpg'),
(118, 2, 'KAKI TIGA ANAK PET DISNEY 250 ML', '24 PCS / K', '-', 'MM2', 4000, 5000, 0, 'barang_1587349576.jpg'),
(119, 2, 'KAKI TIGA PET 200 ML', '48 PCS / K', NULL, 'MM2', 2844, 5000, 0, 'gg.jpg'),
(120, 2, 'KAKI TIGA PET 500 ML', '24 PCS / K', NULL, 'MM2', 5438, 5000, 0, 'gg.jpg'),
(121, 2, 'KAKI TIGA PET GUAVA 320 ML', '24 PCS / K', NULL, 'MM2', 4750, 5000, 0, 'gg.jpg'),
(122, 2, 'KAKI TIGA PET LECCI 320 ML', '24 PCS / K', NULL, 'MM2', 4750, 5000, 0, 'gg.jpg'),
(123, 2, 'KAKI TIGA PET ORANGE 320 ML', '24 PCS / K', NULL, 'MM2', 4750, 5000, 0, 'gg.jpg'),
(124, 2, 'KAKI TIGA PET STRAWBERRY 320 ML', '24 PCS / K', NULL, 'MM2', 4750, 5000, 0, 'gg.jpg'),
(125, 2, 'KAKI TIGA PET JERUK NIPIS 320 ML', '24 PCS / K', NULL, 'MM2', 4750, 5000, 0, 'gg.jpg'),
(126, 2, 'KAKI TIGA PET MELON 320 ML', '24 PCS / K', NULL, 'MM2', 4750, 5000, 0, 'gg.jpg'),
(127, 1, 'MAJESTIC WAFER WHITE COFFEE 90 GR', '30 PCS / K', NULL, 'MM', 2150, 5000, 0, 'gg.jpg'),
(128, 1, 'MAJESTIC MIX BARRIES 90 GR', '30 PCS / K', NULL, 'MM', 2150, 5000, 0, 'gg.jpg'),
(129, 1, 'MAJESTIC WAFER POPCORN 90 GR', '30 PCS / K', NULL, 'MM', 2150, 5000, 0, 'gg.jpg'),
(130, 1, 'MAJESTIC WAFER POPCORN 53.5 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg'),
(131, 1, 'MAJESTIC WAFER WHITE COFFEE 53.5 GR', '60 PCS / K', NULL, 'MM', 1400, 5000, 0, 'gg.jpg'),
(132, 1, 'CHOCOLATE WAFER 145 GR', '24 PCS / K', NULL, 'MM', 4000, 5000, 0, 'gg.jpg'),
(133, 1, 'MAJESTIC CHOCOLATE 90 GR', '30 PCS / K', NULL, NULL, 2150, 5000, 0, 'gg.jpg'),
(134, 1, 'MAJORICO CHOCOLATE 120 GR', '24 PCS / K', NULL, 'MM', 3750, 5000, 0, 'gg.jpg'),
(135, 1, 'MAJORICO VANILA 120 GR', '24 PCS / K', '-', 'MM', 3750, 5000, 0, 'barang_1587354070.jpg'),
(136, 7, 'SWEETY PANTS L1', '20 RTG / K', 'PEMBALUT', NULL, 10800, 5000, 0, 'gg.jpg'),
(137, 7, 'SWEETY BRONZE L2', '12 RTG / K', NULL, NULL, 19750, 5000, 0, 'gg.jpg'),
(138, 7, 'SWEETY PANTS M1', '20 RTG / K', NULL, 'PEMBALUT', 10800, 5000, 0, 'gg.jpg'),
(139, 7, 'SWEETY BRONZE M2', '12 RTG / K', NULL, NULL, 19750, 5000, 0, 'gg.jpg'),
(140, 7, 'MIRANDA MC 1', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(141, 7, 'MIRANDA MC 2', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(142, 7, 'MIRANDA MC 3', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(143, 7, 'MIRANDA MC 4', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(144, 7, 'MIRANDA MC 5', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(145, 7, 'MIRANDA MC 6', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(146, 7, 'MIRANDA MC 7', '144 PCS / K', '-', 'MM', 12150, 5000, 0, 'barang_1587354871.jpg'),
(147, 7, 'MIRANDA MC 8', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(148, 7, 'MIRANDA MC 9', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(149, 7, 'MIRANDA MC 10', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(150, 7, 'MIRANDA MC 11', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587351171.jpg'),
(151, 7, 'MIRANDA MC 12', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(152, 7, 'MIRANDA MC 13', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(153, 7, 'MIRANDA MC 14', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(154, 7, 'MIRANDA MC 15', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(155, 7, 'MIRANDA MC 16', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(156, 7, 'MIRANDA MC 17', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(157, 7, 'MIRANDA MC 18', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(158, 7, 'MIRANDA MC 19', '144 PCS / K', NULL, NULL, 12150, 5000, 0, 'gg.jpg'),
(159, 10, 'MINYAK DUNIA CUP 200 ML', '48 PCS / K', NULL, NULL, 2415, 5000, 0, 'gg.jpg'),
(160, 10, 'MINYAK DUNIA POUCH 900 ML', '12 PCS / K', NULL, NULL, 10145, 5000, 0, 'gg.jpg'),
(161, 10, 'MINYAK DUNIA POUCH 1800 ML', '6 PCS / K', NULL, NULL, 19845, 5000, 0, 'gg.jpg'),
(162, 10, 'MINYAK DUNIA JERRYCAN 4500 ML', '4 PCS / K', NULL, NULL, 53340, 5000, 0, 'gg.jpg'),
(163, 10, 'MINYAK DAMAI PUOCH 1000 ML', '12 PCS / K', NULL, NULL, 11267, 5000, 0, 'gg.jpg'),
(164, 10, 'MINYAK DAMAI POUCH 2000 ML', '6 PCS / K', NULL, NULL, 22197, 5000, 0, 'gg.jpg'),
(165, 2, 'PANDA GRASS JELLY CAN 310 ML', '24 PCS / K', NULL, NULL, 3334, 5000, 0, 'gg.jpg'),
(166, 2, 'PANDA LT REGULAR CAN 310 ML', '24 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(167, 2, 'PANTHER FRUIT CUP 175 ML', '1 PCS / K', NULL, NULL, 18500, 5000, 0, 'gg.jpg'),
(168, 2, 'PANTHER ENERGY LAVA NLAST 250 ML', '12 PCS/ K', '-', 'MM', 2200, 5000, 0, 'barang_1587354429.jpg'),
(169, 2, 'PANTHER ENERGY POWER RED 250 ML', '12 PCS / K', '-', 'MM', 2200, 5000, 0, 'barang_1587353003.jpg'),
(170, 11, 'GANTUNGAN PERMEN', '1', NULL, NULL, 0, 5000, 0, 'gg.jpg'),
(171, 11, 'PAGODA PERMEN', '1', '-', 'MM', 3000, 5000, 0, 'barang_1587354496.jpg'),
(172, 11, 'PERMEN BUBUK ASAM COLA 12 GR', '15 PACK / K', '-', 'CANDY', 30000, 5000, 0, 'barang_1587353046.jpg'),
(173, 11, 'PERMEN BUBUK ASAM ANGGUR 12 GR', '15 PACK / K', NULL, 'CANDY', 30000, 5000, 0, 'gg.jpg'),
(174, 11, 'PERMEN BUBUK ASAM STROBERI 12 GR', '15 PACK / K', NULL, 'CANDY', 30000, 5000, 0, 'gg.jpg'),
(175, 11, 'PERMEN LOLLIPOP STROBERI 10 GR', '20 PACK / K', '-', 'CANDY', 45000, 5000, 0, 'barang_1587350464.jpg'),
(176, 11, 'PERMEN LOLLIPOP JERUK 10 GR', '20 PACK / K', NULL, 'CANDY', 45000, 5000, 0, 'gg.jpg'),
(177, 11, 'PERMEN LOLLIPOP APEL 10 GR', '20 PACK / K', NULL, 'CANDY', 45000, 5000, 0, 'gg.jpg'),
(178, 11, 'PERMEN LOLLIPOP MANGGA 10 GR', '20 PACK / K', NULL, 'CANDY', 45000, 5000, 0, 'gg.jpg'),
(179, 11, 'PERMEN ICE CREAM STOBERI 12 GR', '30 PACK / K', NULL, 'CANDY', 17000, 5000, 0, 'gg.jpg'),
(180, 11, 'PERMEN FINGER SPINNER 11 GR', '30 PACK / K', NULL, 'CANDY', 17000, 5000, 0, 'gg.jpg'),
(181, 11, 'PERMEN LOLLIPOP MAWAR 12 GR', '30 PACK / K', NULL, 'CANDY', 17000, 5000, 0, 'gg.jpg'),
(182, 7, 'SWEETY PANTS S1', '20 RTG / K', NULL, NULL, 8350, 5000, 0, 'gg.jpg'),
(183, 9, 'TEH CELUP KAMPUNG MNS ASLI', '48 PCS/ K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(184, 9, 'TEH KROSOS KAMPUNG MNS', '10 SLOP / B', NULL, NULL, 20000, 5000, 0, 'gg.jpg'),
(185, 9, 'TEH KAMPUNG MELATI', '48 PCS / K', NULL, NULL, 4000, 5000, 0, 'gg.jpg'),
(186, 6, 'GELAS UANG EMAS', '100 PCS / K', '-', 'MM', 2000, 5000, 0, 'barang_1587354601.jpg'),
(187, 6, 'LEPEK UANG EMAS', '10 PCS / K', '-', 'MM', 4500, 5000, 0, 'barang_1587353227.jpg'),
(188, 6, 'UANG EMAS SPECIAL 30 GR', '10 RTG / K', NULL, 'MM2', 8910, 5000, 0, 'gg.jpg'),
(189, 6, 'UANG EMAS MERAH 1 KG', '5 PCS / K', NULL, 'MM2', 22260, 5000, 0, 'gg.jpg'),
(190, 6, 'UANG EMAS TOP 600', '12 PCS / K', '-', 'MM2', 19125, 5000, 0, 'barang_1587350880.jpg'),
(191, 6, 'UANG EMAS SPECIAL 380', '9 PCS / K', NULL, 'MM2', 14700, 5000, 0, 'gg.jpg'),
(192, 6, 'UANG EMAS SPECIAL 135', '25 PCS / K', NULL, 'MM2', 3850, 5000, 0, 'gg.jpg'),
(193, 6, 'UANG EMAS SPECIAL 10 GR', '20 RTG / K', NULL, NULL, 3600, 5000, 0, 'gg.jpg'),
(194, 4, 'ULTRA TABUR RASA BALADO 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(195, 4, 'ULTRA TBR RS SAMBAL BALADO 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(196, 4, 'ULTRA TABUR RS JAGUNG BAKAR 100 GR', '200 PCS / K', '-', 'bumbu', 4200, 5000, 0, 'barang_1587350146.jpg'),
(197, 4, 'ULTRA TABUR RS JAGUNG MANIS 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(198, 4, 'ULTRA TABUR RS KEJU 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(199, 4, 'ULTRA TABUR RS BARBQUE 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(200, 4, 'ULTRA TABUR RS PEDAS MANIS 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(201, 4, 'ULTRA AYAM BAWANG 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(202, 4, 'ULTRA TABUR RS SAPI PANGGANG 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(203, 4, 'ULTRA BALADO 900 GR', '20 PCS / K', NULL, NULL, 37000, 5000, 0, 'gg.jpg'),
(204, 4, 'ULTRA SAMBAL BALADO 900 GR', '20 PCS / K', NULL, NULL, 37000, 5000, 0, 'gg.jpg'),
(205, 4, 'ULTRA BARBEQUE 900 GR', '20 PCS / K', NULL, NULL, 37000, 5000, 0, 'gg.jpg'),
(206, 4, 'ULTRA EXTRA PEDAS 100 GR', '200 PCS / K', NULL, NULL, 4200, 5000, 0, 'gg.jpg'),
(207, 4, 'ULTRA BALADO PEDAS MANIS 900 GR', '20 PCS / K', NULL, NULL, 37000, 5000, 0, 'gg.jpg'),
(208, 8, 'VIT BODY SCENT BLOSSOM/PINK 120 ML', '16 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg'),
(209, 8, 'VIT BODY SCENT BLISSFUL/ORANGE 120 ML', '36 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg'),
(210, 8, 'VIT BODY SCENT BREEZE/BIRU 120 ML', '36 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg'),
(211, 8, 'VIT BODY SCENT BIZARE/UNGU 120 ML', '36 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg'),
(212, 8, 'VIT BODY SCENT BLESS/MERAH 120 ML', '36 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg'),
(213, 8, 'VIT BODY SCENT BELLE/HIJAU 120 ML', '36 PCS / K', NULL, NULL, 18001, 5000, 0, 'gg.jpg'),
(214, 8, 'VIT BODY SCENT BLOSSOM/PINK 60 ML', '36 PCS / K', NULL, NULL, 11310, 5000, 0, 'gg.jpg'),
(215, 8, 'VIT BODY SCENT BREEZE/BIRU 60 ML', '36 PCS / K', '-', 'PC', 11310, 5000, 0, 'barang_1587354169.jpg'),
(216, 8, 'VIT BODY SCENT BIZARE/UNGU 60 ML', '36 PCS / K', NULL, NULL, 11310, 5000, 0, 'gg.jpg'),
(217, 8, 'VIT BODY SCENT BLISFUL/ORANGE 60 ML', '36 PCS / K', NULL, NULL, 11310, 5000, 0, 'gg.jpg'),
(218, 8, 'VIT BODY SCENT BLESS/MERAH 60 ML', '36 PCS / K', NULL, NULL, 11310, 5000, 0, 'gg.jpg'),
(219, 8, 'VIT BODY SCENT BELLE/HIJAU 60 ML', '36 PCS / K', '-', 'PC', 11310, 5000, 0, 'barang_1587349584.jpg'),
(220, 7, 'YUPI STRAWBERRY 120 GR', '24 PCS / K', NULL, NULL, 5912, 5000, 0, 'gg.jpg'),
(221, 7, 'YUPI FRUTY PUFF 120 GR', '24 PCS / K', NULL, NULL, 5800, 5000, 0, 'gg.jpg'),
(222, 7, 'YUPI BABY BEAR 10 GR', '12 PCS / K', '-', 'CANDY', 10000, 5000, 0, 'barang_1587354031.jpg'),
(223, 7, 'YUPI LITTLE STAR 10 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg'),
(224, 7, 'YUPI GUMMY FANG 9 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg'),
(225, 7, 'YUPI EXOTIC MANGO 10 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg'),
(226, 7, 'YUPI BERRI BRONZ 8 GR', '12 PCS / K', '-', 'CANDY', 10000, 5000, 0, 'barang_1587351320.jpg'),
(227, 7, 'YUPI ICE CREAM CONE 10 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg'),
(228, 7, 'YUPI STRAWBERRY 125S TOPLES', '6 PCS / K', NULL, NULL, 17680, 5000, 0, 'gg.jpg'),
(229, 7, 'YUPI FRUTY COLA  8 GR', '24 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg'),
(230, 7, 'YUPI GUMMY COOKIES 8 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg'),
(231, 7, 'YUPI WOTTA MELON 8.5 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg'),
(232, 7, 'YUPI JUST FOR FUN', '12 PCS / K', NULL, NULL, 10300, 5000, 0, 'gg.jpg'),
(233, 7, 'YUPI BURGER 8 GR', '12 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg'),
(234, 7, 'YUPI ROLETTO 8 GR', '24 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg'),
(235, 7, 'YUPI JUGLE FUN 8.5 GR', '12 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg'),
(236, 7, 'YUPI CHOCO GLEE 7 GR', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg'),
(237, 7, 'YUPI DINO LAND 8 GR', '12 PCS / K', NULL, NULL, 10200, 5000, 0, 'gg.jpg'),
(238, 7, 'YUPI SEA WORLD 8.5 GR', '12 PCS / K', '-', 'CANDY', 10200, 5000, 0, 'barang_1587354108.jpg'),
(239, 7, 'YUPI MARSHMALLOW TWIST 20 GR', '12 PCS / K', NULL, NULL, 16800, 5000, 0, 'gg.jpg'),
(240, 7, 'YUPI CALCI BEAN 16 GR 12 PCS / K', '12 PCS / K', NULL, NULL, 10000, 5000, 0, 'gg.jpg'),
(241, 7, 'YUPI GUMMY FRIES 15 GR', '12 PCS / K', NULL, NULL, 10300, 5000, 0, 'gg.jpg'),
(242, 7, 'YUPI PIZZA 15 GR', '12 PCS / K', '-', 'CANDY', 10300, 5000, 0, 'barang_1587352816.jpg'),
(243, 7, 'YUPO FRUIT COCKTAIL 15 GR', '12 PCS / K', NULL, NULL, 10300, 5000, 0, 'gg.jpg'),
(244, 7, 'YUPI SEET HEART 15 GR', '12 PCS / K', NULL, NULL, 10300, 5000, 0, 'gg.jpg'),
(245, 7, 'YUPI AQUARIUM 15 GR', '12 PCS / K', NULL, NULL, 10300, 5000, 0, 'gg.jpg'),
(246, 7, 'YUPI FESTIVE EDITION 400 GR', '6 PCS / K', NULL, NULL, 25000, 5000, 0, 'gg.jpg');

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
(1, 4, 100, 1),
(1, 5, 1, 1),
(2, 6, 20, 1),
(1, 6, 10, 1),
(2, 7, 2, 0),
(5, 8, 1, 0),
(1, 9, 2, 0),
(6, 10, 21, 0),
(2, 11, 12, 0),
(1, 12, 1, 0),
(2, 13, 2, 0),
(4, 14, 12, 1),
(4, 15, 12, 1),
(2, 16, 11, 1),
(6, 17, 112, 1);

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
CREATE TRIGGER `update detail_keluar` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET stok=stok-NEW.qty_keluar
    WHERE id_barang=NEW.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar1` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET terjual=terjual+NEW.qty_keluar
    WHERE id_barang=NEW.id_barang;
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
(1, 1, 100),
(1, 2, 12),
(6, 3, 1),
(3, 4, 1),
(1, 5, 11),
(4, 6, 111);

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
(2, 2, '2020-04-19', 0),
(4, 3, '2020-04-19', 2250000),
(5, 1, '2020-04-19', 22500),
(6, 1, '2020-04-19', 675000),
(7, 1, '2020-04-19', 45000),
(8, 1, '2020-04-19', 22500),
(9, 1, '2020-04-19', 45000),
(10, 1, '2020-04-19', 351750),
(11, 1, '2020-04-19', 270000),
(12, 2, '2020-04-19', 22500),
(13, 2, '2020-04-19', 45000),
(14, 2, '2020-04-19', 270000),
(15, 3, '2020-04-19', 270000),
(16, 4, '2020-04-19', 247500),
(17, 3, '2020-04-19', 1876000);

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
(1, 1, '2020-04-19', 2250000),
(2, 2, '2020-04-19', 270000),
(3, 11, '2020-04-19', 16750),
(4, 1, '2020-04-19', 22500),
(5, 2, '2020-04-19', 247500),
(6, 7, '2020-04-19', 2497500);

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
(1, 'SUMBER BARU JEMBER', 'Probolinggo', '081234456781'),
(2, 'PT UNIMOS', 'Probolinggo', '087654321234'),
(3, 'PT SPARINDO MUSTIKA', 'Probolinggo', '089765456111'),
(4, 'PT ULTRA AROMA', 'Probolinggo', '089765456121'),
(5, 'RBS', 'Probolinggo', '081236789167'),
(6, 'KOPI UANG EMAS', 'Probolinggo', '081236789456'),
(7, 'CORPORATE', 'Probolinggo', '089765456789'),
(8, 'VITALIS', 'Probolinggo', '085234566754'),
(9, 'PT WIRLA MAHAKARYA (TEH)', 'Probolinggo', '081236787890'),
(10, 'PT DAMAI SENTOSA (COOKING OIL)', 'Probolinggo', '089765456666'),
(11, 'PERMEN KATO', 'Probolinggo', '089765451111'),
(12, 'CV. KAWI', 'Probolinggo', '081236786645');

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
(2, 'brianvidyanjaya@gmail.com', 'brian', '929064f2a141f812f1c2efb3ff8194ca', 'manajer', 'brian', '2000-04-20', 'laki-laki', 'Probolinggo', '087672819212', 'pp.jpg'),
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
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
