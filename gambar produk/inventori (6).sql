-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 04:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

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
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id_activity` int(11) NOT NULL,
  `tgl_activity` datetime DEFAULT current_timestamp(),
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id_activity`, `tgl_activity`, `keterangan`) VALUES
(3, '2020-04-27 11:44:21', 'admin menginputkan barang bernama brian'),
(4, '2020-04-28 10:26:07', 'admin menginputkan barang bernama nevin');

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
(1, 1, 'BUCKET KUKIS MAMAH 400 GR', '6 PCS / K', '-', 'makanan', 22500, 5001, 12, 'barang_1587349533.jpg', 0),
(2, 1, 'BUCKET COCONUT 400 GR', '6 PCS / K', '-', 'makanan', 22500, 5012, 0, 'barang_1587349541.jpg', 0),
(3, 1, 'BUCKET BUTTER KUKIS 400 GR', '6 PCS / K', '-', 'MM', 22500, 5000, 0, 'barang_1587350641.jpg', 0),
(4, 1, 'BUCKET MOCHACINO 400 GR', '6 PCS / K', '-', 'makanan', 22500, 5000, 0, 'barang_1587349556.jpg', 0),
(5, 1, 'BUCKET MILKY VANILA 400 GR', '6 PCS / K', '-', 'MM', 22500, 5000, 0, 'barang_1587350694.jpg', 0),
(6, 1, 'MAJORICO BANANA 300 GR', '12 PCS / K', '-', 'makanan', 16750, 4996, 4, 'barang_1587349524.jpg', 0),
(7, 1, 'MAJORICO MATCHA 300 GR', '12 PCS / K', '-', '-', 16750, 5000, 0, 'barang_1591681473.jpg', 0),
(8, 1, 'MAJORICO CHOCOLATE 300 GR', '12 PCS / K', '-', '-', 16750, 5000, 0, 'barang_1592392059.jpg', 0),
(9, 1, 'KUKIS N KRIM STRAWBERY 400 GR', '6 PCS / K', '-', '-', 22700, 5000, 0, 'barang_1592743912.jpg', 0),
(10, 7, 'SABUN CUSSONS PINK 75 GR', '144 PCS / K', '-', 'PC', 2946, 5000, 0, 'barang_1592746485.jpg', 0),
(11, 7, 'SABUN CUSSONS BLUE 75 GR 75 GR', '144 PCS / K', '-', 'PC', 2946, 5000, 0, 'barang_1592133011.jpg', 0),
(12, 7, 'POWDER PINK 50 GR', '48 PCS/ K', '-', 'PC', 3500, 5000, 0, 'barang_1592393484.jpg', 0),
(13, 7, 'POWDER BLUE 50 GR', '48 PCS / K', '-', 'PC', 3500, 5000, 0, 'barang_1592738920.jpg', 0),
(14, 7, 'POWDER PINK 100 GR', '48 PCS / K', '-', 'PC', 6193, 5000, 0, 'barang_1592742882.jpg', 0),
(15, 7, 'POWDER BLUE 100 GR', '48 PCS / K', '-', 'PC', 6193, 5000, 0, 'barang_1587486993.jpg', 0),
(16, 7, 'POWDER PINK 200 GR', '24 PCS / K', '-', 'PC', 11044, 5000, 0, 'barang_1592744430.jpg', 0),
(17, 7, 'POWDER BLUE 200 GR', '24 PCS / K', '-', 'PC', 11044, 5000, 0, 'barang_1592746679.jpg', 0),
(18, 7, 'POWDER UNGU 200 GR', '24 PCS / K', '-', 'PC', 11044, 5000, 0, 'barang_1587354776.jpg', 0),
(19, 7, 'POWDER KUNING 50 GR', '48 PCS / K', '-', 'PC', 3500, 5000, 0, 'barang_1592742136.jpg', 0),
(20, 7, 'POWDER KUNING 100 GR', '48 PCS / K', '-', 'PC', 6809, 5000, 0, 'barang_1592747688.jpg', 0),
(21, 7, 'POWDER UNGU 50 GR', '48 PCS / K', '-', 'PC', 3500, 5000, 0, 'barang_1592738666.jpg', 0),
(22, 7, 'SABUN CUSSONS UNGU 75 GR', '144 PCS / K', '-', 'PC', 2946, 5000, 0, 'barang_1587351059.jpg', 0),
(23, 7, 'POWDER UNGU 100 GR', '48 PCS / K', '-', 'PC', 6193, 5000, 0, 'barang_1592392960.jpg', 0),
(24, 9, 'GELAS TEH KMPG MANIS', '72 PCS / K', NULL, NULL, 0, 5000, 0, 'gg.jpg', 0),
(25, NULL, 'GELAS KOPI UANG MAS 1 KG', '6 PCS / D', NULL, NULL, 0, 5000, 0, 'gg.jpg', 0),
(26, 1, 'KUKIS KELAPA 13,9 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1592746971.jpg', 0),
(27, 1, 'KUKIS MOCHACINO 13,9 GR 6 x 120', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587354382.jpg', 0),
(28, 1, 'KUKIS VANILLA 13,9 GR 6 X 120', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587352858.jpg', 0),
(29, 1, 'KUKIS BUTTER 300 GR', '18 PCS / K', '-', 'MM', 6250, 5000, 0, 'KUKIS BUTTER 300 GR.jpeg', 0),
(30, 1, 'KUKIS KELAPA 300 GR', '18 PCS / K', '-', 'MM', 6250, 5000, 0, 'barang_1592738761.png', 0),
(31, 1, 'KUKIS MOCHACINO 300 GR', '18 PCS / K', '-', 'MM', 6250, 5000, 0, 'barang_1587350033.jpg', 0),
(32, 1, 'KUKIS VANILLA 300 GR', '18 PCS / K', '-', 'MM', 6250, 5000, 0, 'barang_1592392709.png', 0),
(33, 1, 'KUKIS BUTTER 90 GR', '30 PCS / K', '-', 'MM', 2375, 5000, 0, 'barang_1592742368.jpg', 0),
(34, 1, 'KUKIS KELAPA 90 GR', '30 PCS / K', '-', 'MM', 2375, 5000, 0, 'barang_1592738569.jpg', 0),
(35, 1, 'KUKIS MOCHACINO 90 GR', '30 PCS / K', '-', 'MM', 2375, 5000, 0, 'barang_1592746209.jpg', 0),
(36, 1, 'KUKIS VANILLA 90 GR', '30 PCS / K', '-', 'MM', 2375, 5000, 0, 'barang_1587389782.jpg', 0),
(37, 1, 'KUKIS WHITE COFFEE 13 GR 6 x 120', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587486678.jpg', 0),
(38, 1, 'KUKIS ROLL WHITE COFFEE 90 GR', '30 PCS / K', '-', 'MM', 2375, 5000, 0, 'barang_1592745054.jpg', 0),
(39, 1, 'KUKIS WHITE COFFEE 300 GR', '18 PCS/ K ', '-', 'MM', 6250, 5000, 0, 'barang_1592394441.jpg', 0),
(40, 1, 'KUKIS BUTTER 70 GR', '60 PCS / K', '-', 'MM', 1400, 5000, 0, 'barang_1587486806.jpg', 0),
(41, 1, 'KUKIS MOCHACINO 70 GR', '60 PCS / K', '-', 'MM', 1400, 5000, 0, 'barang_1592744117.jpg', 0),
(42, 1, 'KUKIS KELAPA 70 GR', '60 PCS / K', '-', 'MM', 1400, 5000, 0, 'barang_1592743507.jpg', 0),
(43, 1, 'KUKIS KELAPA 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587354519.jpg', 0),
(44, 1, 'KUKIS BUTTER 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587353137.jpg', 0),
(45, 1, 'KUKIS MOCHACINO 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1592393344.jpg', 0),
(46, 1, 'KUKIS VANILLA 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1592739398.jpg', 0),
(47, 1, 'KUKIS WHITE COFFEE 12 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587350838.jpg', 0),
(48, 1, 'KUKIS VANILLA 70 GR', '60 PCS / K', '-', 'MM', 1400, 5000, 0, 'barang_1592392931.jpg', 0),
(49, 1, 'KUKIS BANANA 12 GR', '9 PACK / K', NULL, 'MM', 8000, 5000, 0, 'gg.jpg', 0),
(50, 1, 'KUKIS KELAPA 25.2 GR', '12 PACK / K', '-', '-', 8000, 5000, 0, 'barang_1592393571.jpg', 0),
(51, 1, 'KUKIS BUTTER 25.2 GR', '12 PCS / K', '-', '-', 8000, 5000, 0, 'barang_1592746284.jpg', 0),
(52, 1, 'KUKIS MOCHACINO 25.2 GR', '12 PACK / K', '-', '-', 8000, 5000, 0, 'barang_1592132977.jpg', 0),
(53, 1, 'KUKIS VANILLA 25.2 GR', '12 PCS / K', '-', '-', 8000, 5000, 0, 'barang_1592393440.jpg', 0),
(54, 1, 'KUKIS WHITE COFFEE 25.2 GR', '12 PACK / K', '-', '-', 8000, 5000, 0, 'barang_1592738824.jpg', 0),
(55, 1, 'KUKIS KELAPA 218 GR', '24 PCS / K', '-', 'MAKANAN', 4500, 5000, 0, 'barang_1591681264.jpg', 0),
(56, 1, 'KUKIS BUTTER 218 GR', '24 PCS / K', '-', 'MM', 4500, 5000, 0, 'barang_1587486934.jpg', 0),
(57, 1, 'KUKIS MOCHACINO 218 GR', '24 PCS / K', '-', '-', 4500, 5000, 0, 'barang_1592744222.jpg', 0),
(58, 1, ' KUKIS VANILLA 218 GR', '24 PCS / K', '-', '-', 4500, 5000, 0, 'barang_1592743526.jpg', 0),
(59, 1, 'MONI CHOCO RING 11.5 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587355392.png', 0),
(60, 1, 'KUKIS HELLO 11.5 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1592394110.jpg', 0),
(61, 1, 'MONSTA CHOCOCHIP 9 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1592748049.jpg', 0),
(62, 1, 'ROSE CREAM COKLAT 260 GR', '10 PCS / K', '-', 'MM', 5500, 5000, 0, 'barang_1592739636.jpg', 0),
(63, 1, 'ROSE CREAM LEMON 260 GR', '10 PCS / K', '-', 'MM', 5500, 5000, 0, 'barang_1587351026.jpg', 0),
(64, 1, 'ROSE CREAM NANAS 260 GR', '10 PCS / K', '-', 'MM', 5500, 5000, 0, 'barang_1592392444.jpg', 0),
(65, 1, 'ROSE CREAM COKLAT 23 GR', '6 PACK / K', '-', '-', 14000, 5000, 0, 'barang_1592742505.jpg', 0),
(66, 1, 'ROSE CREAM LEMON 23 GR', '6 PACK / K', '-', '-', 14000, 5000, 0, 'barang_1592392284.jpg', 0),
(67, 1, 'MONTEGO COKLAT 50 GR', '30 PCS / K', '-', 'MM', 2250, 5000, 0, 'barang_1587471161.jpg', 0),
(68, 1, 'MONTEGO COKLAT 17 GR', ' 6 PACK / K', '-', 'MM', 16000, 5000, 0, 'barang_1587389298.jpg', 0),
(69, 1, 'NARITA MARI SUSU ROLL 150 GR', '24 PCS / K', NULL, 'MM', 2650, 5000, 0, 'gg.jpg', 0),
(70, 1, 'MONTEGP BUTTER 17 GR', '6 PACK / K', '-', 'MM', 16000, 5000, 0, 'barang_1592745697.png', 0),
(71, 1, 'MONTEGO FUN DOUBLE CHOCO', '10 PACK / K', '-', 'MM', 9600, 5000, 0, 'barang_1591681310.jpg', 0),
(72, 1, 'MARI SUSU MADU 12 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587487028.jpg', 0),
(73, 1, 'MARI SUSU MADU 100 GR', '36 PCS / K', '-', 'MM', 3500, 5000, 0, 'barang_1592742183.png', 0),
(74, 1, 'MARI SUSU MADU 180 GR', '24 PCS / K', '-', 'MM', 4500, 5000, 0, 'barang_1592746701.jpg', 0),
(75, 1, 'MALKIST SUSU 14.5 GR', '9 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587354836.jpg', 0),
(76, 1, 'MALKIST SUSU 238 GR', '18 PCS / K', '-', 'MM', 4500, 5000, 0, 'barang_1592739590.jpg', 0),
(77, 1, 'MALKIST SUSU 108 GR', '24 PCS / K', '-', 'MM', 3150, 5000, 0, 'barang_1592747725.jpg', 0),
(78, 1, 'CRACKERS BUTTER 262 GR', '18 PCS / K', '-', 'MM', 4500, 5000, 0, 'barang_1587471113.jpg', 0),
(79, 1, 'MALKIST OLEZZ 20 GR', '12 PACK / K', '-', 'MM', 8000, 5000, 0, 'barang_1587351085.jpg', 0),
(80, 1, 'MALKIST GARLIC 12 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1592748120.jpg', 0),
(81, 1, 'GARLIC SEDAP 108 GR', '24 PCS / K', '-', 'MM', 3500, 5000, 0, 'barang_1587486713.jpg', 0),
(82, 1, 'GARLIC SEDAP 208 GR', '18 PCS / K', '-', '-', 4500, 5000, 0, 'barang_1592392398.jpg', 0),
(83, 1, 'MALKIST SUSU 25 GR', '12 PACK / K', '-', 'MM', 8000, 5000, 0, 'barang_1592748200.jpg', 0),
(84, 1, 'GARLIC BREADCRACKERS 24 GR', '12 PACK / K', '-', 'MM', 8000, 5000, 0, 'barang_1587389381.jpg', 0),
(85, 1, 'MARI SUSU MADU 24 GR', '12 PACK / K', '-', '-', 8000, 5000, 0, 'barang_1592392192.jpg', 0),
(86, 1, 'CRACKERS 132 GR', ' 24 PCS / K', '-', '-', 3150, 5000, 0, 'barang_1592745850.jpg', 0),
(87, 1, 'ABC CRACKERS CHOCO 12 GR', '6 PACK / K', '-', '-', 8200, 5000, 0, 'barang_1592743308.jpg', 0),
(88, 1, 'RIMBA CHOCO CRACKERS 12 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587487307.png', 0),
(89, 1, 'OLEZZ CHEESE CHOCO 10 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1592744475.jpg', 0),
(90, 1, 'OLEZZ CHEESE CHOCO 100 GR', '30 PCS / K', '-', 'MM', 3500, 5000, 0, 'barang_1592738413.jpg', 0),
(91, 1, 'OLEZZ CHOCO PARTY 10 GR', '6 PACK / K', '-', 'MM', 8200, 5000, 0, 'barang_1587353857.jpg', 0),
(92, 1, 'OLEZZ CHOCO PARTY 100 GR', '30 PCS / K', '-', 'MM', 3500, 5000, 0, 'barang_1592739888.jpg', 0),
(93, 1, 'MALKIST SUSU 12 GR', '6 PACK / K', NULL, 'MM', 8200, 5000, 0, 'gg.jpg', 0),
(94, 1, 'SUPERCREAM BON-BON 200 GR', '21 PCS / K', '-', 'MM', 4286, 5000, 0, 'barang_1592133748.jpg', 0),
(95, 1, 'SUPERCREAM NANAS 200 GR', '21 PCS / K', '-', 'MM', 4286, 5000, 0, 'barang_1587351234.jpg', 0),
(96, 1, 'SUPERCREAM STRAWBERI 200 GR', '21 PCS / K', '-', 'MM', 4286, 5000, 0, 'barang_1592392568.jpg', 0),
(97, 1, 'SUPERCREAM ORANGE 200 GR', '21 PCS / K', '-', 'MM', 4286, 5000, 0, 'barang_1592133357.jpg', 0),
(98, 1, 'SUPERCREAM BON-BON 46 GR', '60 PCS / K', '-', '-', 1400, 5000, 0, 'barang_1592393706.jpg', 0),
(99, 2, 'KAKI TIGA GUAVA CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587486178.jpg', 0),
(100, 2, 'KAKI TIGA STRAWBERRY CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1592747404.jpg', 0),
(101, 2, 'KAKI TIGA LECCI CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1592394348.jpg', 0),
(102, 2, 'KAKI TIGA MELON CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587352768.jpg', 0),
(103, 2, 'KAKI TIGA ORANGE CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1592391772.jpg', 0),
(104, 2, 'KAKI TIGA ANGGUR CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1592133433.jpg', 0),
(105, 2, 'KAKI TIGA APEL CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587486209.jpg', 0),
(106, 2, 'KAKI TIGA MARKISA 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1592745987.jpg', 0),
(107, 2, 'KAKI TIGA TIMUN SURI CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587389562.jpg', 0),
(108, 2, 'KAKI TIGA KURMA & TIN CAN 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1587486500.jpg', 0),
(109, 2, 'KAKI TIGA JERUK NIPIS 320 ML', '24 PCS / K', '-', 'MM2', 4938, 5000, 0, 'barang_1592744647.jpg', 0),
(110, 2, 'KAKI TIGA ANAK ORANGE CAN 250 ML', '24 PCS / K', '-', 'MM2', 4167, 5000, 0, 'barang_1591681403.jpg', 0),
(111, 2, 'KAKI TIGA ANAK LECCI CAN 250 ML', '24 PCS / K', '-', 'MM2', 4167, 5000, 0, 'barang_1592391976.jpg', 0),
(112, 2, 'KAKI TIGA ANAK STRAWBERRY CAN 250 ML', '24 PCS / K', '-', 'MM2', 4167, 5000, 0, 'barang_1592743828.jpg', 0),
(113, 2, 'KAKI TIGA PET ANAK 200 ML', '48 PCS / K', '-', 'MM2', 2834, 5000, 0, 'barang_1592746888.jpg', 0),
(114, 2, 'KAKI TIGA ANAK PET FROZEN APEL 250 ML', '24 PCS / K', '-', 'MM2', 4000, 5000, 0, 'barang_1587354140.jpg', 0),
(115, 2, 'KAKI TIGA ANAK PET BLACKBURN 250 ML', '24 PCS / K', '-', 'MM2', 4000, 5000, 0, 'barang_1592742054.jpg', 0),
(116, 2, 'KAKI TIGA ANAK PER ORANGE 250 ML', '24 PCS / K', '-', 'MM2', 4000, 5000, 0, 'barang_1592747508.jpg', 0),
(117, 2, 'KAKI TIGA ANAK PET LECI 250 ML', '24 PCS / K', '-', 'MM2', 4000, 5000, 0, 'barang_1592133477.jpg', 0),
(118, 2, 'KAKI TIGA ANAK PET DISNEY 250 ML', '24 PCS / K', '-', 'MM2', 4000, 5000, 0, 'barang_1587349576.jpg', 0),
(119, 2, 'KAKI TIGA PET 200 ML', '48 PCS / K', '-', 'MM2', 2844, 5000, 0, 'barang_1592392683.jpg', 0),
(120, 2, 'KAKI TIGA PET 500 ML', '24 PCS / K', '-', 'MM2', 5438, 5000, 0, 'barang_1592133093.jpg', 0),
(121, 2, 'KAKI TIGA PET GUAVA 320 ML', '24 PCS / K', '-', 'MM2', 4750, 5000, 0, 'barang_1587486351.jpg', 0),
(122, 2, 'KAKI TIGA PET LECCI 320 ML', '24 PCS / K', '-', 'MM2', 4750, 5000, 0, 'barang_1592746106.jpg', 0),
(123, 2, 'KAKI TIGA PET ORANGE 320 ML', '24 PCS / K', '-', 'MM2', 4750, 5000, 0, 'barang_1587389625.jpg', 0),
(124, 2, 'KAKI TIGA PET STRAWBERRY 320 ML', '24 PCS / K', '-', 'MM2', 4750, 5000, 0, 'barang_1587486568.jpg', 0),
(125, 2, 'KAKI TIGA PET JERUK NIPIS 320 ML', '24 PCS / K', '-', 'MM2', 4750, 5000, 0, 'barang_1592744718.jpg', 0),
(126, 2, 'KAKI TIGA PET MELON 320 ML', '24 PCS / K', '-', 'MM2', 4750, 5000, 0, 'barang_1591680790.jpg', 0),
(127, 1, 'MAJESTIC WAFER WHITE COFFEE 90 GR', '30 PCS / K', '-', 'MM', 2150, 5000, 0, 'barang_1592745890.jpg', 0),
(128, 1, 'MAJESTIC MIX BARRIES 90 GR', '30 PCS / K', '-', 'MM', 2150, 5000, 0, 'barang_1587389441.jpg', 0),
(129, 1, 'MAJESTIC WAFER POPCORN 90 GR', '30 PCS / K', '-', 'MM', 2150, 5000, 0, 'barang_1587486439.jpg', 0),
(130, 1, 'MAJESTIC WAFER POPCORN 53.5 GR', '60 PCS / K', '-', 'MM', 1400, 5000, 0, 'barang_1592744513.jpg', 0),
(131, 1, 'MAJESTIC WAFER WHITE COFFEE 53.5 GR', '60 PCS / K', '-', 'MM', 1400, 5000, 0, 'barang_1591681026.jpg', 0),
(132, 1, 'CHOCOLATE WAFER 145 GR', '24 PCS / K', '-', 'MM', 4000, 5000, 0, 'barang_1592392864.jpg', 0),
(133, 1, 'MAJESTIC CHOCOLATE 90 GR', '30 PCS / K', '-', '-', 2150, 5000, 0, 'barang_1592743764.jpg', 0),
(134, 1, 'MAJORICO CHOCOLATE 120 GR', '24 PCS / K', '-', 'MM', 3750, 5000, 0, 'barang_1592746837.jpg', 0),
(135, 1, 'MAJORICO VANILA 120 GR', '24 PCS / K', '-', 'MM', 3750, 5000, 0, 'barang_1587354070.jpg', 0),
(136, 7, 'SWEETY PANTS L1', '20 RTG / K', 'PEMBALUT', '-', 10800, 5000, 0, 'barang_1592133278.jpg', 0),
(137, 7, 'SWEETY BRONZE L2', '12 RTG / K', '-', '-', 19750, 5000, 0, 'barang_1592392355.jpg', 0),
(138, 7, 'SWEETY PANTS M1', '20 RTG / K', '-', 'PEMBALUT', 10800, 5000, 0, 'barang_1592746576.jpg', 0),
(139, 7, 'SWEETY BRONZE M2', '12 RTG / K', '-', 'PEMBALUT', 19750, 5000, 0, 'barang_1587389350.jpg', 0),
(140, 7, 'MIRANDA MC 1', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592391839.jpg', 0),
(141, 7, 'MIRANDA MC 2', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592745745.jpg', 0),
(142, 7, 'MIRANDA MC 3', '144 PCS / K', '-', 'SEMIR RAMBUT', 12150, 5000, 0, 'barang_1591681202.jpg', 0),
(143, 7, 'MIRANDA MC 4', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587487063.jpg', 0),
(144, 7, 'MIRANDA MC 5', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592744456.jpg', 0),
(145, 7, 'MIRANDA MC 6', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592746731.jpg', 0),
(146, 7, 'MIRANDA MC 7', '144 PCS / K', '-', 'MM', 12150, 5000, 0, 'barang_1587354871.jpg', 0),
(147, 7, 'MIRANDA MC 8', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592738482.jpg', 0),
(148, 7, 'MIRANDA MC 9', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592747764.jpg', 0),
(149, 7, 'MIRANDA MC 10', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592133699.jpg', 0),
(150, 7, 'MIRANDA MC 11', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587351171.jpg', 0),
(151, 7, 'MIRANDA MC 12', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592392524.jpg', 0),
(152, 7, 'MIRANDA MC 13', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587486745.jpg', 0),
(153, 7, 'MIRANDA MC 14', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592393673.jpg', 0),
(154, 7, 'MIRANDA MC 15', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592748158.jpg', 0),
(155, 7, 'MIRANDA MC 16', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587389411.jpg', 0),
(156, 7, 'MIRANDA MC 17', '144 PCS / K', '-', 'PC', 12150, 5000, 0, 'barang_1587486403.jpg', 0),
(157, 7, 'MIRANDA MC 18', '144 PCS / K', '-', '-', 12150, 5000, 0, 'barang_1592745094.jpg', 0),
(158, 7, 'MIRANDA MC 19', '144 PCS / K', '-', 'SEMIR RAMBUT', 12150, 5000, 0, 'barang_1591681123.png', 0),
(159, 10, 'MINYAK DUNIA CUP 200 ML', '48 PCS / K', '-', 'PC', 2415, 5000, 0, 'barang_1587389711.jpg', 0),
(160, 10, 'MINYAK DUNIA POUCH 900 ML', '12 PCS / K', '-', 'minyak goreng', 10145, 5000, 0, 'barang_1587486616.jpg', 0),
(161, 10, 'MINYAK DUNIA POUCH 1800 ML', '6 PCS / K', '-', 'BUMBU', 19845, 5000, 0, 'barang_1591680888.jpg', 0),
(162, 10, 'MINYAK DUNIA JERRYCAN 4500 ML', '4 PCS / K', '-', '-', 53340, 5000, 0, 'barang_1592739265.jpg', 0),
(163, 10, 'MINYAK DAMAI PUOCH 1000 ML', '12 PCS / K', '-', '-', 11267, 5000, 0, 'barang_1592744084.jpg', 0),
(164, 10, 'MINYAK DAMAI POUCH 2000 ML', '6 PCS / K', '-', '-', 22197, 5000, 0, 'barang_1592747144.jpg', 0),
(165, 2, 'PANDA GRASS JELLY CAN 310 ML', '24 PCS / K', '-', '-', 3334, 5000, 0, 'barang_1592392091.jpg', 0),
(166, 2, 'PANDA LT REGULAR CAN 310 ML', '24 PCS / K', '-', '-', 4200, 5000, 0, 'barang_1592744031.jpg', 0),
(167, 2, 'PANTHER FRUIT CUP 175 ML', '1 PCS / K', '-', '-', 18500, 5000, 0, 'barang_1592747107.jpg', 0),
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
(179, 11, 'PERMEN ICE CREAM STOBERI 12 GR', '30 PACK / K', '-', 'CANDY', 17000, 5000, 0, 'barang_1592739785.jpg', 0),
(180, 11, 'PERMEN FINGER SPINNER 11 GR', '30 PACK / K', '-', 'CANDY', 17000, 5000, 0, 'barang_1592745180.png', 0),
(181, 11, 'PERMEN LOLLIPOP MAWAR 12 GR', '30 PACK / K', NULL, 'CANDY', 17000, 5000, 0, 'gg.jpg', 0),
(182, 7, 'SWEETY PANTS S1', '20 RTG / K', '-', 'PEMBALUT', 8350, 5000, 0, 'barang_1587487362.jpg', 0),
(183, 9, 'TEH CELUP KAMPUNG MNS ASLI', '48 PCS/ K', '-', '-', 4200, 5000, 0, 'barang_1592739188.jpg', 0),
(184, 9, 'TEH KROSOS KAMPUNG MNS', '10 SLOP / B', NULL, NULL, 20000, 5000, 0, 'gg.jpg', 0),
(185, 9, 'TEH KAMPUNG MELATI', '48 PCS / K', '-', '-', 4000, 5000, 0, 'barang_1592742818.jpg', 0),
(186, 6, 'GELAS UANG EMAS', '100 PCS / K', '-', 'MM', 2000, 5000, 0, 'barang_1587354601.jpg', 0),
(187, 6, 'LEPEK UANG EMAS', '10 PCS / K', '-', 'MM', 4500, 5000, 0, 'barang_1587353227.jpg', 0),
(188, 6, 'UANG EMAS SPECIAL 30 GR', '10 RTG / K', NULL, 'MM2', 8910, 5000, 0, 'gg.jpg', 0),
(189, 6, 'UANG EMAS MERAH 1 KG', '5 PCS / K', '-', 'MM2', 22260, 5000, 0, 'barang_1592133607.png', 0),
(190, 6, 'UANG EMAS TOP 600', '12 PCS / K', '-', 'MM2', 19125, 5000, 0, 'barang_1587350880.jpg', 0),
(191, 6, 'UANG EMAS SPECIAL 380', '9 PCS / K', NULL, 'MM2', 14700, 5000, 0, 'gg.jpg', 0),
(192, 6, 'UANG EMAS SPECIAL 135', '25 PCS / K', '-', 'MM2', 3850, 5000, 0, 'barang_1591669453.jpg', 0),
(193, 6, 'UANG EMAS SPECIAL 10 GR', '20 RTG / K', '-', '-', 3600, 5000, 0, 'barang_1592739462.jpg', 0),
(194, 4, 'ULTRA TABUR RASA BALADO 100 GR', '200 PCS / K', '-', '-', 4200, 5000, 0, 'barang_1592747376.jpg', 0),
(195, 4, 'ULTRA TBR RS SAMBAL BALADO 100 GR', '200 PCS / K', '-', '-', 4200, 5000, 0, 'barang_1592394314.jpg', 0),
(196, 4, 'ULTRA TABUR RS JAGUNG BAKAR 100 GR', '200 PCS / K', '-', 'bumbu', 4200, 5000, 0, 'barang_1587350146.jpg', 0),
(197, 4, 'ULTRA TABUR RS JAGUNG MANIS 100 GR', '200 PCS / K', '-', '-', 4200, 5000, 0, 'barang_1592747864.jpg', 0),
(198, 4, 'ULTRA TABUR RS KEJU 100 GR', '200 PCS / K', '-', '-', 4200, 5000, 0, 'barang_1592742455.jpg', 0),
(199, 4, 'ULTRA TABUR RS BARBQUE 100 GR', '200 PCS / K', '-', '-', 4200, 5000, 0, 'barang_1592393795.jpg', 0),
(200, 4, 'ULTRA TABUR RS PEDAS MANIS 100 GR', '200 PCS / K', '-', '-', 4200, 5000, 0, 'barang_1592746380.jpg', 0),
(201, 4, 'ULTRA AYAM BAWANG 100 GR', '200 PCS / K', '-', 'bumbu', 4200, 5000, 0, 'barang_1587389820.jpg', 0),
(202, 4, 'ULTRA TABUR RS SAPI PANGGANG 100 GR', '200 PCS / K', '-', '-', 4200, 5000, 0, 'barang_1592393635.jpg', 0),
(203, 4, 'ULTRA BALADO 900 GR', '20 PCS / K', NULL, NULL, 37000, 5000, 0, 'gg.jpg', 0),
(204, 4, 'ULTRA SAMBAL BALADO 900 GR', '20 PCS / K', '-', '-', 37000, 5000, 0, 'barang_1592747269.jpg', 0),
(205, 4, 'ULTRA BARBEQUE 900 GR', '20 PCS / K', '-', 'bumbu', 37000, 5000, 0, 'barang_1587486866.jpg', 0),
(206, 4, 'ULTRA EXTRA PEDAS 100 GR', '200 PCS / K', '-', '-', 4200, 5000, 0, 'barang_1592744241.jpg', 0),
(207, 4, 'ULTRA BALADO PEDAS MANIS 900 GR', '20 PCS / K', '-', '-', 37000, 5000, 0, 'barang_1592746641.jpg', 0),
(208, 8, 'VIT BODY SCENT BLOSSOM/PINK 120 ML', '16 PCS / K', '-', 'PC', 18001, 5000, 0, 'barang_1587389588.jpg', 0),
(209, 8, 'VIT BODY SCENT BLISSFUL/ORANGE 120 ML', '36 PCS / K', '-', 'PC', 18001, 5000, 0, 'barang_1587486546.jpg', 0),
(210, 8, 'VIT BODY SCENT BREEZE/BIRU 120 ML', '36 PCS / K', '-', '-', 18001, 5000, 0, 'barang_1592743171.jpg', 0),
(211, 8, 'VIT BODY SCENT BIZARE/UNGU 120 ML', '36 PCS / K', '-', '-', 18001, 5000, 0, 'barang_1592394042.jpg', 0),
(212, 8, 'VIT BODY SCENT BLESS/MERAH 120 ML', '36 PCS / K', '-', '-', 18001, 5000, 0, 'barang_1592743873.jpg', 0),
(213, 8, 'VIT BODY SCENT BELLE/HIJAU 120 ML', '36 PCS / K', '-', '-', 18001, 5000, 0, 'barang_1592746923.jpg', 0),
(214, 8, 'VIT BODY SCENT BLOSSOM/PINK 60 ML', '36 PCS / K', '-', '-', 11310, 5000, 0, 'barang_1592394164.jpg', 0),
(215, 8, 'VIT BODY SCENT BREEZE/BIRU 60 ML', '36 PCS / K', '-', 'PC', 11310, 5000, 0, 'barang_1587354169.jpg', 0),
(216, 8, 'VIT BODY SCENT BIZARE/UNGU 60 ML', '36 PCS / K', '-', '-', 11310, 5000, 0, 'barang_1592747599.jpg', 0),
(217, 8, 'VIT BODY SCENT BLISFUL/ORANGE 60 ML', '36 PCS / K', '-', '-', 11310, 5000, 0, 'barang_1592394245.jpg', 0),
(218, 8, 'VIT BODY SCENT BLESS/MERAH 60 ML', '36 PCS / K', '-', '-', 11310, 5000, 0, 'barang_1592393982.jpg', 0),
(219, 8, 'VIT BODY SCENT BELLE/HIJAU 60 ML', '36 PCS / K', '-', 'PC', 11310, 5000, 0, 'barang_1587349584.jpg', 0),
(220, 7, 'YUPI STRAWBERRY 120 GR', '24 PCS / K', '-', '-', 5912, 5000, 0, 'barang_1592743634.jpg', 0),
(221, 7, 'YUPI FRUTY PUFF 120 GR', '24 PCS / K', '-', '-', 5800, 5000, 0, 'barang_1592746769.jpg', 0),
(222, 7, 'YUPI BABY BEAR 10 GR', '12 PCS / K', '-', 'CANDY', 10000, 5000, 0, 'barang_1587354031.jpg', 0),
(223, 7, 'YUPI LITTLE STAR 10 GR', '12 PCS / K', '-', '-', 10000, 5000, 0, 'barang_1592740132.jpg', 0),
(224, 7, 'YUPI GUMMY FANG 9 GR', '12 PCS / K', '-', '-', 10000, 5000, 0, 'barang_1592747813.jpg', 0),
(225, 7, 'YUPI EXOTIC MANGO 10 GR', '12 PCS / K', '-', '-', 10000, 5000, 0, 'barang_1592133794.png', 0),
(226, 7, 'YUPI BERRI BRONZ 8 GR', '12 PCS / K', '-', 'CANDY', 10000, 5000, 0, 'barang_1587351320.jpg', 0),
(227, 7, 'YUPI ICE CREAM CONE 10 GR', '12 PCS / K', '-', '-', 10000, 5000, 0, 'barang_1592392605.jpg', 0),
(228, 7, 'YUPI STRAWBERRY 125S TOPLES', '6 PCS / K', '-', '-', 17680, 5000, 0, 'barang_1592133395.jpg', 0),
(229, 7, 'YUPI FRUTY COLA  8 GR', '24 PCS / K', '-', '-', 10200, 5000, 0, 'barang_1592393754.jpg', 0),
(230, 7, 'YUPI GUMMY COOKIES 8 GR', '12 PCS / K', '-', '-', 10000, 5000, 0, 'barang_1592745934.jpg', 0),
(231, 7, 'YUPI WOTTA MELON 8.5 GR', '12 PCS / K', '-', 'CANDY', 10000, 5000, 0, 'barang_1587389530.jpg', 0),
(232, 7, 'YUPI JUST FOR FUN', '12 PCS / K', '-', 'CANDY', 10300, 5000, 0, 'barang_1587486472.jpg', 0),
(233, 7, 'YUPI BURGER 8 GR', '12 PCS / K', '-', '-', 10200, 5000, 0, 'barang_1592744611.png', 0),
(234, 7, 'YUPI ROLETTO 8 GR', '24 PCS / K', '-', 'MAKANAN', 10200, 5000, 0, 'barang_1591680976.jpg', 0),
(235, 7, 'YUPI JUGLE FUN 8.5 GR', '12 PCS / K', '-', '-', 10200, 5000, 0, 'barang_1592391939.png', 0),
(236, 7, 'YUPI CHOCO GLEE 7 GR', '12 PCS / K', '-', '-', 10000, 5000, 0, 'barang_1592743797.jpg', 0),
(237, 7, 'YUPI DINO LAND 8 GR', '12 PCS / K', '-', '-', 10200, 5000, 0, 'barang_1592746861.jpg', 0),
(238, 7, 'YUPI SEA WORLD 8.5 GR', '12 PCS / K', '-', 'CANDY', 10200, 5000, 0, 'barang_1587354108.jpg', 0),
(239, 7, 'YUPI MARSHMALLOW TWIST 20 GR', '12 PCS / K', '-', '-', 16800, 5000, 0, 'barang_1592740256.jpg', 0),
(240, 7, 'YUPI CALCI BEAN 16 GR 12 PCS / K', '12 PCS / K', '-', '-', 10000, 5000, 0, 'barang_1592747433.jpg', 0),
(241, 7, 'YUPI GUMMY FRIES 15 GR', '12 PCS / K', '-', '-', 10300, 5000, 0, 'barang_1592394383.jpg', 0),
(242, 7, 'YUPI PIZZA 15 GR', '12 PCS / K', '-', 'CANDY', 10300, 5000, 0, 'barang_1587352816.jpg', 0),
(243, 7, 'YUPO FRUIT COCKTAIL 15 GR', '12 PCS / K', '-', '-', 10300, 5000, 0, 'barang_1592392645.jpg', 0),
(244, 7, 'YUPI SEET HEART 15 GR', '12 PCS / K', '-', '-', 10300, 5000, 0, 'barang_1592133060.jpg', 0),
(245, 7, 'YUPI AQUARIUM 15 GR', '12 PCS / K', '-', 'CANDY', 10300, 5000, 0, 'barang_1587486236.jpg', 0),
(246, 7, 'YUPI FESTIVE EDITION 400 GR', '6 PCS / K', '-', '-', 25000, 5000, 0, 'barang_1592746054.jpg', 0),
(260, 10, 'brian', 'piring', 'r', 'r', 2, 123, 0, 'gg.jpg', 0),
(261, 7, 'nevin', 'g', '-', 'MM', 1, 1, 0, 'barang_1588044367.jpg', 0);

--
-- Triggers `barang`
--
DELIMITER $$
CREATE TRIGGER `tambah_activity` AFTER INSERT ON `barang` FOR EACH ROW BEGIN
 INSERT INTO activity(keterangan)
        VALUES(CONCAT('admin menginputkan barang bernama ', NEW.nama_barang));
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
(3, 'a', 'a', 'carousel_1588048397.jpg'),
(4, 'b', 'b', 'carousel_1588048326.jpg'),
(6, 'd', 'd', 'carousel_1588048366.jpg'),
(7, 'c', 'c', 'carousel_1588048918.jpg'),
(8, 'e', 'e', 'carousel_1588048943.jpg'),
(9, 'f', 'f', 'carousel_1588048955.jpg'),
(10, 'g', 'g', 'carousel_1588048992.jpg'),
(11, 'h', 'h', 'carousel_1588049008.jpg'),
(12, 'i', 'i', 'carousel_1588049021.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_keluar`
--

CREATE TABLE `detail_keluar` (
  `id_barang` int(11) NOT NULL,
  `id_keluar` int(11) NOT NULL,
  `qty_keluar` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_keluar`
--

INSERT INTO `detail_keluar` (`id_barang`, `id_keluar`, `qty_keluar`, `status`) VALUES
(1, 2, 11, 0),
(2, 2, 11, 0),
(1, 3, 12, 0),
(2, 3, 12, 0),
(1, 4, 12, 1),
(6, 5, 4, 1);

--
-- Triggers `detail_keluar`
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
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar!=NEW.qty_keluar;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update detail_keluar3` AFTER UPDATE ON `detail_keluar` FOR EACH ROW BEGIN
    UPDATE barang SET terjual=terjual-(OLD.qty_keluar-NEW.qty_keluar)
    WHERE id_barang=NEW.id_barang AND OLD.qty_keluar!=NEW.qty_keluar;
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
  `qty_masuk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_masuk`
--

INSERT INTO `detail_masuk` (`id_barang`, `id_masuk`, `qty_masuk`) VALUES
(1, 1, 12),
(2, 2, 1),
(1, 3, 1),
(2, 5, 11);

--
-- Triggers `detail_masuk`
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
-- Table structure for table `keluar`
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
-- Dumping data for table `keluar`
--

INSERT INTO `keluar` (`id_keluar`, `id_user`, `tgl_keluar`, `total_keluar`, `foto_keluar`, `del`) VALUES
(2, 2, '2020-04-25 02:15:36', 495000, NULL, 0),
(3, 1, '2020-04-25 02:16:02', 540000, 'bayar_1587798968.jpg', 0),
(4, 1, '2020-04-26 09:49:36', 270000, NULL, 0),
(5, 3, '2020-04-28 10:47:28', 67000, NULL, 0);

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
-- Dumping data for table `masuk`
--

INSERT INTO `masuk` (`id_masuk`, `id_supplier`, `tgl_masuk`, `total_masuk`, `del`) VALUES
(1, 1, '2020-04-25 02:16:34', 270000, 0),
(2, 2, '2020-04-25 02:19:59', 22500, 1),
(3, 6, '2020-04-25 02:20:29', 22500, 0),
(5, 1, '2020-04-25 02:21:43', 247500, 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
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
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
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
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `id_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_berasal` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

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
