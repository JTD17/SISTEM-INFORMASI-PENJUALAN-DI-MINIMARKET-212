-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2020 at 03:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` int(11) DEFAULT NULL,
  `barang_harjul` int(11) DEFAULT NULL,
  `barang_harjul_grosir` int(11) DEFAULT NULL,
  `barang_stok` int(11) DEFAULT 0,
  `barang_min_stok` int(11) DEFAULT 0,
  `barang_tgl_input` timestamp NULL DEFAULT current_timestamp(),
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 2925, 3377, 1, '2020-05-20 17:19:45', NULL, 48, 1),
('BR000002', 'Leo Kripik Kentang Sapi Panggang 150gr', 'pcs', 1500, 3000, 2925, 199, 1, '2020-05-20 17:20:30', NULL, 48, 1),
('BR000003', 'Leo kripik kentang ayam original 150gr', 'pcs', 1500, 3000, 2925, 980, 1, '2020-05-20 17:22:19', NULL, 48, 1),
('BR000004', 'Kacang Garuda 50gr', 'pcs', 2500, 5000, 4950, 288, 1, '2020-05-20 17:23:14', '2020-05-21 00:33:48', 48, 1),
('BR000005', 'kacang pilus ', 'pcs', 1500, 3000, 2970, 471, 1, '2020-05-20 17:24:25', '2020-05-21 00:33:43', 48, 1),
('BR000006', 'Patatoz sapi panggang', 'pcs', 3500, 7000, 6930, 600, 1, '2020-05-20 17:25:30', NULL, 48, 1),
('BR000007', 'patatoz barbeque', 'pcs', 3500, 7000, 6930, 219, 1, '2020-05-20 17:26:17', NULL, 48, 1),
('BR000008', 'Kentang goreng ala french fries', 'pcs', 3000, 6000, 5940, 400, 1, '2020-05-20 17:27:43', '2020-05-21 00:28:10', 48, 1),
('BR000009', 'Twistko salsa rasa balado', 'pcs', 2750, 5500, 5445, 1319, 1, '2020-05-20 17:28:56', '2020-05-21 00:33:36', 48, 1),
('BR000010', 'Kenji net rasa ayam', 'pcs', 3000, 6000, 5940, 185, 1, '2020-05-20 17:30:58', NULL, 48, 1),
('BR000011', 'Kenji Sapi Panggang', 'pcs', 3000, 6000, 5940, 310, 1, '2020-05-20 17:31:54', NULL, 48, 1),
('BR000012', 'Spix soba rasa sambal balado', 'pcs', 3250, 6500, 6435, 210, 1, '2020-05-20 17:32:36', NULL, 48, 1),
('BR000013', 'Go piramid kripik kentang', 'pcs', 3250, 6500, 6435, 198, 1, '2020-05-20 17:33:24', NULL, 48, 1),
('BR000014', 'Kriptella', 'pcs', 4250, 8500, 8415, 330, 1, '2020-05-20 17:34:36', NULL, 48, 1),
('BR000015', 'Richeese nabati ', 'pcs', 3250, 6500, 6435, 1440, 1, '2020-05-20 17:35:28', NULL, 48, 1),
('BR000016', 'Momogi Tutti Frutti', 'pcs', 2750, 5500, 5445, 750, 1, '2020-05-20 17:36:15', NULL, 48, 1),
('BR000017', 'Gery toya-toya stick coklat', 'pcs', 1500, 3000, 2970, 450, 1, '2020-05-20 17:38:07', NULL, 48, 1),
('BR000018', 'Gery Toya Toya Beries', 'pcs', 1500, 3000, 2970, 560, 1, '2020-05-20 17:39:25', NULL, 48, 1),
('BR000019', 'Gery Toya Toya pisang', 'pcs', 1500, 3000, 2970, 500, 1, '2020-05-21 04:47:46', NULL, 48, 1),
('BR000020', 'Gery 2 Choco Roll Keju', 'pcs', 1500, 3000, 2970, 287, 1, '2020-05-21 04:48:54', NULL, 48, 1),
('BR000021', 'Gery 2 Choco Roll Coklat', 'pcs', 1500, 3000, 2970, 440, 1, '2020-05-21 04:49:40', NULL, 48, 1),
('BR000022', 'OREO', 'pcs', 4000, 8000, 7920, 160, 1, '2020-05-21 04:50:23', NULL, 48, 1),
('BR000023', 'dooritoz', 'pcs', 3750, 7500, 7425, 40, 1, '2020-05-21 04:51:31', NULL, 48, 1),
('BR000024', 'Good Time', 'pcs', 4750, 9500, 9405, 134, 1, '2020-05-21 04:52:59', NULL, 48, 1),
('BR000025', 'slay olay', 'pcs', 1250, 2500, 2475, 200, 1, '2020-05-21 04:53:41', NULL, 48, 1),
('BR000026', 'Morillo Balado pedas', 'pcs', 3250, 6500, 6435, 100, 1, '2020-05-21 04:54:44', NULL, 48, 1),
('BR000027', 'Bismaxx', 'pcs', 2750, 5500, 5445, 120, 1, '2020-05-21 04:55:19', NULL, 48, 1),
('BR000028', 'tango wafer chocolate', 'pcs', 1750, 3500, 3465, 120, 1, '2020-05-21 04:56:22', NULL, 48, 1),
('BR000029', 'Bolu pandan', 'pcs', 1500, 3000, 2970, 120, 1, '2020-05-21 04:56:51', NULL, 48, 1),
('BR000030', 'Bolu chocholate', 'pcs', 1500, 3000, 2970, 120, 1, '2020-05-21 04:57:14', NULL, 48, 1),
('BR000031', 'Top strawberry', 'pcs', 2250, 4500, 4455, 120, 1, '2020-05-21 04:57:42', NULL, 48, 1),
('BR000032', 'Top caramel', 'pcs', 2250, 4500, 4455, 120, 1, '2020-05-21 04:58:04', NULL, 48, 1),
('BR000033', 'Tango wafer susu vanila', 'pcs', 2750, 5500, 5445, 90, 1, '2020-05-21 04:58:48', NULL, 48, 1),
('BR000034', 'Fenisia  crim coklat', 'pcs', 3250, 6500, 6435, 90, 1, '2020-05-21 04:59:15', NULL, 48, 1),
('BR000035', 'Gery wafelatos', 'pcs', 3000, 6000, 5940, 95, 1, '2020-05-21 04:59:44', NULL, 48, 1),
('BR000036', 'Roma biscuit kelapa', 'pcs', 5750, 11500, 11385, 80, 1, '2020-05-21 05:00:30', NULL, 48, 1),
('BR000037', 'Malkist rasa abon sapi', 'pcs', 6000, 12000, 11880, 80, 1, '2020-05-21 05:00:57', NULL, 48, 1),
('BR000038', 'Malkist crackers', 'pcs', 3750, 7500, 7425, 120, 1, '2020-05-21 05:01:52', NULL, 48, 1),
('BR000039', 'Kukis mochachino', 'pcs', 3750, 7500, 7425, 65, 1, '2020-05-21 05:03:02', NULL, 48, 1),
('BR000040', 'kukis durian', 'pcs', 11250, 22500, 22275, 55, 1, '2020-05-21 05:03:33', NULL, 48, 1),
('BR000041', 'Kukis butter', 'pcs', 11250, 22500, 22275, 210, 1, '2020-05-21 05:04:16', NULL, 48, 1),
('BR000042', 'Kukis kelapa', 'pcs', 11250, 22500, 22275, 300, 1, '2020-05-21 05:05:51', NULL, 48, 1),
('BR000043', 'Better susu vanila', 'pcs', 11250, 22500, 22275, 300, 1, '2020-05-21 05:06:24', NULL, 48, 1),
('BR000044', 'Orenz Chocolate', 'pcs', 4250, 8500, 8415, 40, 1, '2020-05-21 05:48:42', NULL, 48, 1),
('BR000045', 'popcorn ', 'pcs', 7500, 15000, 14850, 45, 1, '2020-05-21 05:49:11', NULL, 48, 1),
('BR000046', 'sari roti sandwich coklat', 'pcs', 6250, 12500, 12375, 100, 1, '2020-05-21 05:50:05', NULL, 48, 1),
('BR000047', 'sari roti sandwich srikaya', 'pcs', 6250, 12500, 12375, 50, 1, '2020-05-21 05:50:52', NULL, 48, 1),
('BR000048', 'sari roti choco chips', 'pcs', 8250, 16500, 16335, 60, 1, '2020-05-21 05:52:40', NULL, 48, 1),
('BR000049', 'sari roti sandwich keju', 'pcs', 6250, 12500, 12375, 43, 1, '2020-05-21 05:53:55', NULL, 48, 1),
('BR000050', 'sari roti kupas', 'pcs', 4750, 9500, 9405, 70, 1, '2020-05-21 05:54:33', NULL, 48, 1),
('BR000051', 'Beng-beng karamel', 'pcs', 4250, 8500, 8415, 70, 1, '2020-05-21 05:55:05', NULL, 48, 1),
('BR000052', 'Beng-beng hazelnut', 'pcs', 4250, 8500, 8415, 70, 1, '2020-05-21 05:55:42', NULL, 48, 1),
('BR000053', 'zuperr chocolate', 'pcs', 6250, 12500, 12375, 90, 1, '2020-05-21 05:57:34', NULL, 48, 1),
('BR000054', 'Chocolatos', 'pcs', 2750, 5500, 5445, 1000, 1, '2020-05-21 05:58:27', NULL, 48, 1),
('BR000055', 'silver queen big chunke bar', 'pcs', 12500, 25000, 24750, 300, 1, '2020-05-21 05:59:03', NULL, 48, 1),
('BR000056', 'silver queen small', 'pcs', 7750, 15500, 15345, 1420, 1, '2020-05-21 05:59:59', NULL, 48, 1),
('BR000057', 'cheweez', 'pcs', 4250, 8500, 8415, 700, 1, '2020-05-21 06:00:26', NULL, 48, 1),
('BR000058', 'kit-kat', 'pcs', 6250, 12500, 12375, 60, 1, '2020-05-21 06:02:04', NULL, 48, 1),
('BR000059', 'delfie', 'pcs', 7250, 14500, 14355, 90, 1, '2020-05-21 06:03:11', NULL, 48, 1),
('BR000060', 'Mie sedap kuah soto', 'pcs', 7500, 9000, 8850, 120, 1, '2020-05-21 06:14:10', NULL, 48, 1),
('BR000061', 'Mie sedap kuah ayam bawang', 'pcs', 750, 950, 935, 1140, 1, '2020-05-21 06:15:31', NULL, 48, 1),
('BR000062', 'Mie sedap kuah ayam special', 'pcs', 7500, 8500, 8350, 100, 1, '2020-05-21 06:18:06', NULL, 48, 1),
('BR000063', 'Indomie sambel ijo', 'pcs', 7500, 8500, 8350, 100, 1, '2020-05-21 06:18:39', NULL, 48, 1),
('BR000064', 'Indomie goreng ', 'pcs', 4750, 2000, 1905, 100, 1, '2020-05-20 17:19:45', NULL, 48, 1),
('BR000065', 'indomie seblak', 'pcs', 1150, 2600, 2577, 100, 1, '2020-05-20 17:20:30', NULL, 48, 1),
('BR000066', 'mie gaga jalapeno', 'pcs', 1500, 3000, 2970, 100, 1, '2020-05-20 17:22:19', NULL, 48, 1),
('BR000067', 'mie samyang', 'pcs', 13250, 26500, 26235, 100, 1, '2020-05-20 17:23:14', NULL, 48, 1),
('BR000068', 'pop mie goreng ', 'pcs', 2250, 4500, 4455, 100, 1, '2020-05-20 17:24:25', NULL, 48, 1),
('BR000069', 'Indomie goreng double', 'pcs', 1000, 3500, 3480, 100, 1, '2020-05-20 17:25:30', NULL, 48, 1),
('BR000070', 'aqua 650 ml', 'pcs', 1750, 3500, 3465, 100, 1, '2020-05-20 17:26:17', NULL, 49, 1),
('BR000071', 'spagheti la forte', 'pcs', 6500, 7500, 7370, 100, 1, '2020-05-20 17:27:43', NULL, 48, 1),
('BR000072', 'pop mie kuah', 'pcs', 2250, 4500, 4455, 100, 1, '2020-05-20 17:28:56', NULL, 48, 1),
('BR000073', 'pop mie pedes ndower goreng', 'pcs', 2750, 5500, 5445, 100, 1, '2020-05-20 17:30:58', NULL, 48, 1),
('BR000074', 'pop mie pedes ndower kuah', 'pcs', 2750, 5500, 5445, 100, 1, '2020-05-20 17:31:54', NULL, 48, 1),
('BR000075', 'mie salted egg', 'pcs', 3250, 6500, 6435, 100, 1, '2020-05-20 17:32:36', NULL, 48, 1),
('BR000076', 'pop mie abc selera pedas', 'pcs', 2250, 4500, 4455, 100, 1, '2020-05-20 17:33:24', NULL, 48, 1),
('BR000077', 'indomie kari ayam', 'pcs', 1750, 2300, 2265, 100, 1, '2020-05-20 17:34:36', NULL, 48, 1),
('BR000078', 'Sprite 1,5L', 'pcs', 6250, 15000, 14875, 100, 1, '2020-05-20 17:35:28', NULL, 49, 1),
('BR000079', 'Fanta Merah 1,5L', 'pcs', 7500, 15000, 14850, 100, 1, '2020-05-20 17:36:15', NULL, 49, 1),
('BR000080', 'Fanta orange', 'pcs', 7500, 15000, 14850, 100, 1, '2020-05-20 17:38:07', NULL, 49, 1),
('BR000081', 'Frestea 350ml', 'pcs', 2000, 4000, 3960, 100, 1, '2020-05-20 17:39:25', NULL, 49, 1),
('BR000082', 'Cocacola 1,5L', 'pcs', 7500, 15000, 14850, 100, 1, '2020-05-21 04:47:46', NULL, 49, 1),
('BR000083', 'expresso mochacito', 'pcs', 2750, 5500, 5445, 100, 1, '2020-05-21 04:48:54', NULL, 49, 1),
('BR000084', 'Pulpy orange', 'pcs', 7200, 14400, 14256, 100, 1, '2020-05-21 04:49:40', NULL, 49, 1),
('BR000085', 'Happy jus', 'pcs', 4750, 3500, 3405, 100, 1, '2020-05-21 04:50:23', NULL, 49, 1),
('BR000086', 'Fruit tea apple', 'pcs', 2750, 5500, 5445, 100, 1, '2020-05-21 04:51:31', NULL, 49, 1),
('BR000087', 'Fruit tea blackcurant', 'pcs', 2750, 5500, 5445, 100, 1, '2020-05-21 04:52:59', NULL, 49, 1),
('BR000088', 'Frisian flag coolberry', 'pcs', 5500, 11000, 10890, 100, 1, '2020-05-21 04:53:41', NULL, 49, 1),
('BR000089', 'le mineral', 'pcs', 1500, 3000, 2970, 100, 1, '2020-05-21 04:54:44', NULL, 49, 1),
('BR000090', 'Club', 'pcs', 1100, 2200, 2178, 100, 1, '2020-05-21 04:55:19', NULL, 49, 1),
('BR000091', 'Mizone Laci Lemon', 'pcs', 1900, 3800, 3762, 100, 1, '2020-05-21 04:56:22', NULL, 49, 1),
('BR000092', 'You C1000 Orange', 'pcs', 5250, 10500, 10395, 100, 1, '2020-05-21 04:56:51', NULL, 49, 1),
('BR000093', 'Floridina orange', 'pcs', 2750, 5500, 5445, 100, 1, '2020-05-21 04:57:14', NULL, 49, 1),
('BR000094', 'Ades', 'pcs', 1250, 2500, 2475, 100, 1, '2020-05-21 04:57:42', NULL, 49, 1),
('BR000095', 'Marjan Boudoin Sirsak', 'pcs', 10250, 20500, 20295, 100, 1, '2020-05-21 04:58:04', NULL, 49, 1),
('BR000096', 'Marjan Boudoin Melon', 'pcs', 10250, 20500, 20295, 100, 1, '2020-05-21 04:58:48', NULL, 49, 1),
('BR000097', 'ultramilk coklat', 'pcs', 2750, 5500, 5445, 100, 1, '2020-05-21 04:59:15', NULL, 49, 1),
('BR000098', 'ultramilk strawberry', 'pcs', 2750, 5500, 5445, 100, 1, '2020-05-21 04:59:44', NULL, 49, 1),
('BR000099', 'Enfaprow A+', 'pcs', 6000, 12000, 11880, 100, 1, '2020-05-21 05:00:30', NULL, 49, 1),
('BR000100', 'hydrococo', 'pcs', 10250, 9500, 9295, 100, 1, '2020-05-21 05:00:57', NULL, 49, 1),
('BR000101', 'good day', 'pcs', 3750, 7500, 7425, 100, 1, '2020-05-21 05:01:52', NULL, 48, 1),
('BR000102', 'Kapal Api Kopi Susu', 'pcs', 3250, 6500, 6435, 100, 1, '2020-05-21 05:03:02', NULL, 49, 1),
('BR000103', 'Tora Bika full Cream', 'pcs', 2250, 4500, 4455, 100, 1, '2020-05-21 05:03:33', NULL, 49, 1),
('BR000104', 'Sido Muncul kopi Jahe', 'pcs', 11250, 5500, 5275, 100, 1, '2020-05-21 05:04:16', NULL, 49, 1),
('BR000105', 'Anget Sari Kopi Jahe', 'pcs', 3250, 6500, 6435, 100, 1, '2020-05-21 05:05:51', NULL, 49, 1),
('BR000106', 'Anget Sari susu  Jahe', 'pcs', 3250, 6500, 6435, 100, 1, '2020-05-21 05:06:24', NULL, 49, 1),
('BR000107', 'Kuku Bima Kopi gingseng', 'pcs', 3250, 6500, 6435, 100, 1, '2020-05-21 05:48:42', NULL, 49, 1),
('BR000108', 'Jahe Jreeng', 'pcs', 2750, 4500, 4445, 100, 1, '2020-05-21 05:49:11', NULL, 49, 1),
('BR000109', 'Energen  ', 'pcs', 4000, 8000, 7920, 100, 1, '2020-05-21 05:50:05', NULL, 49, 1),
('BR000110', 'Indomilk Putih', 'pcs', 1300, 5500, 5474, 100, 1, '2020-05-21 05:50:52', NULL, 49, 1),
('BR000111', 'Indomilk Coklat', 'pcs', 1250, 5500, 5475, 100, 1, '2020-05-21 05:52:40', NULL, 49, 1),
('BR000112', 'bear brand', 'pcs', 6250, 12500, 12375, 100, 1, '2020-05-21 05:53:55', NULL, 49, 1),
('BR000113', 'sgm explor', 'pcs', 16000, 22500, 22180, 100, 1, '2020-05-21 05:54:33', NULL, 49, 1),
('BR000114', 'lactogen', 'pcs', 12500, 25000, 24750, 100, 1, '2020-05-21 05:55:05', NULL, 49, 1),
('BR000115', 'Anlene', 'pcs', 14000, 28000, 27720, 100, 1, '2020-05-21 05:55:42', NULL, 49, 1),
('BR000116', 'Dancow ', 'pcs', 10000, 20000, 19800, 100, 1, '2020-05-21 05:57:34', NULL, 49, 1),
('BR000117', 'tolak angin', 'pcs', 6500, 13000, 12870, 100, 1, '2020-05-21 05:58:27', NULL, 50, 1),
('BR000118', 'vicks', 'pcs', 3750, 7500, 7425, 100, 1, '2020-05-21 05:59:03', NULL, 50, 1),
('BR000119', 'antimo', 'pcs', 3250, 6500, 6435, 100, 1, '2020-05-21 05:59:59', NULL, 50, 1),
('BR000120', 'vitamin c', 'pcs', 750, 1500, 1485, 100, 1, '2020-05-21 06:00:26', NULL, 50, 1),
('BR000121', 'minyak kayu putih', 'pcs', 4750, 9500, 9405, 100, 1, '2020-05-21 06:02:04', NULL, 50, 1),
('BR000122', 'fresh care', 'pcs', 6000, 12000, 11880, 100, 1, '2020-05-21 06:03:11', NULL, 50, 1),
('BR000123', 'spirit', 'pcs', 3750, 12500, 12425, 100, 1, '2020-05-21 06:14:10', NULL, 49, 1),
('BR000124', 'enervon C', 'pcs', 8000, 16000, 15840, 100, 1, '2020-05-21 06:15:31', NULL, 50, 1),
('BR000125', 'bodrex', 'pcs', 3250, 6500, 6435, 100, 1, '2020-05-21 06:18:06', NULL, 50, 1),
('BR000126', 'aito', 'pcs', 3750, 7500, 7425, 100, 1, '2020-05-21 06:18:39', NULL, 50, 1),
('BR000127', 'rohto', 'pcs', 6250, 9500, 9000, 100, 1, '2020-07-03 09:35:09', NULL, 50, 1),
('BR000128', 'insto', 'pcs', 2750, 8500, 8000, 100, 1, '2020-07-03 09:35:09', NULL, 50, 1),
('BR000129', 'conterpain', 'pcs', 6750, 13500, 13000, 100, 1, '2020-05-20 17:20:30', NULL, 50, 1),
('BR000130', 'koyo cabe extra', 'pcs', 2750, 5500, 5000, 100, 1, '2020-05-20 17:22:19', NULL, 50, 1),
('BR000131', 'koyo cabe sedang', 'pcs', 2750, 5500, 5000, 100, 1, '2020-05-20 17:23:14', NULL, 50, 1),
('BR000132', 'bye bye fever', 'pcs', 3750, 7500, 7000, 100, 1, '2020-05-20 17:24:25', NULL, 50, 1),
('BR000133', 'OBH combi', 'pcs', 4000, 8000, 7500, 100, 1, '2020-05-20 17:25:30', NULL, 50, 1),
('BR000134', 'paracetamol', 'pcs', 4500, 9000, 8500, 100, 1, '2020-05-20 17:26:17', NULL, 50, 1),
('BR000135', 'proris ibuprofen', 'pcs', 5250, 10500, 10000, 100, 1, '2020-05-20 17:27:43', NULL, 50, 1),
('BR000136', 'hot in cream', 'pcs', 7750, 20500, 20000, 100, 1, '2020-05-20 17:28:56', NULL, 50, 1),
('BR000137', 'rinso', 'pcs', 3250, 12500, 12000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000138', 'sunlight', 'pcs', 4750, 9500, 9000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000139', 'daia', 'pcs', 4250, 8500, 8000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000140', 'molto', 'pcs', 3250, 6500, 6000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000141', 'downy', 'pcs', 3250, 6500, 6000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000142', 'attack', 'pcs', 5750, 11500, 11000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000143', 'g-easy', 'pcs', 4750, 9500, 9000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000144', 'baygon semprot', 'pcs', 6750, 13500, 13000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000145', 'harpic', 'pcs', 1750, 15500, 15000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000146', 'soklin lantai', 'pcs', 2750, 10500, 10000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000147', 'soklin pewangi', 'pcs', 5250, 13000, 12500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000148', 'masker hijab', 'pcs', 4750, 9500, 9000, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000149', 'masker multifungsi', 'pcs', 3250, 6500, 6000, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000150', 'cutton buds', 'pcs', 3750, 7500, 7000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000151', 'sweaty pants baby', 'pcs', 6750, 13500, 13000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000152', 'my baby', 'pcs', 8250, 16500, 16000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000153', 'mami poko', 'pcs', 9750, 19500, 19000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000154', 'serbet', 'pcs', 6750, 32000, 31500, 50, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000155', 'busa', 'pcs', 2250, 4500, 4000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000156', 'sabun dettol cair', 'pcs', 4750, 9500, 9000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000157', 'sabun nuvo cair', 'pcs', 4750, 13500, 13000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000158', 'Pantene anti dandruf ', 'pcs', 3750, 7500, 7000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000159', 'Pantene Long black', 'pcs', 3750, 7500, 7000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000160', 'Pantene nature care', 'pcs', 3750, 7500, 7000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000161', 'Pantene hair fall control', 'pcs', 3750, 7500, 7000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000162', 'Pantene silky smooth care', 'pcs', 3750, 7500, 7000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000163', 'Pantene lively', 'pcs', 4000, 8000, 7500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000164', 'Pantene long black', 'pcs', 3750, 7500, 7000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000165', 'Rejoice anti frizz ', 'pcs', 4500, 9000, 8500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000166', 'rejoice anti dandruf', 'pcs', 4500, 9000, 8500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000167', 'Rejoice manageable', 'pcs', 4750, 9500, 9000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000168', 'Lifebuoy total', 'pcs', 6500, 13000, 12500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000169', 'Lifebuoy Vita Protect', 'pcs', 6600, 13200, 12700, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000170', 'Lifebuoy naturepure', 'pcs', 6500, 13000, 12500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000171', 'Lifebuoy cool fresh mentol', 'pcs', 6500, 13000, 12500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000172', 'Lifebuoy total 10', 'pcs', 5250, 10500, 10000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000173', 'Lux velvet touch', 'pcs', 5250, 10500, 10000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000174', 'Lux White Glemour', 'pcs', 5250, 10500, 10000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000175', 'Nuvo cool', 'pcs', 7500, 15000, 14500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000176', 'Nuvo caring', 'pcs', 7500, 15000, 14500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000177', 'Nuvo energizing', 'pcs', 7500, 15000, 14500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000178', 'Nuvo clasic', 'pcs', 7500, 15000, 14500, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000179', 'Wardah Moisturizer gel', 'pcs', 6250, 12500, 12000, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000180', 'Garnier pure aktif scrub', 'pcs', 6750, 13500, 13000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000181', 'Pond\'s white beauty', 'pcs', 5250, 10500, 10000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000182', 'Pond\'s perfect matte', 'pcs', 4750, 9500, 9000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000183', 'Wardah facial wash', 'pcs', 13250, 26500, 26000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000184', 'emina facial wash', 'pcs', 11250, 22500, 22000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000185', 'masker rose wardah', 'pcs', 5250, 10500, 10000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000186', 'masker emina sunbright', 'pcs', 8250, 16500, 16000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000187', 'protex day', 'pcs', 6000, 12000, 11500, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000188', 'daun sirih', 'pcs', 6750, 13500, 13000, 100, 1, '2020-05-20 17:26:17', NULL, 51, 1),
('BR000189', 'protex night', 'pcs', 7750, 15500, 15000, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000190', 'charmp night', 'pcs', 8250, 16500, 16000, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000191', 'champ day', 'pcs', 6750, 13500, 13000, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000192', 'jas hujan', 'unit', 32500, 65000, 64500, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000193', 'jas hujan sedang', 'unit', 32500, 65000, 64500, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000194', 'jas hujan besar', 'unit', 32500, 65000, 64500, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1),
('BR000195', 'jas hujan syar\'i', 'unit', 32500, 65000, 64500, 100, 1, '2020-05-20 17:26:17', NULL, 52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` int(11) DEFAULT NULL,
  `d_jual_barang_harjul` int(11) DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` int(11) DEFAULT NULL,
  `d_jual_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_nofak`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harpok`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(27, '010720000001', 'BR000024', 'Good Time', 'pcs', 55000, 59250, 1, 0, 59250),
(28, '020720000002', 'BR000024', 'Good Time', 'pcs', 55000, 59250, 1, 0, 59250),
(29, '020720000003', 'BR000007', 'patatoz barbeque', 'pcs', 43000, 44800, 1, 0, 44800),
(30, '020720000003', 'BR000002', 'Leo Kripik Kentang Sapi Panggang 150gr', 'pcs', 475000, 550000, 1, 0, 550000),
(31, '040720000001', 'BR000024', 'Good Time', 'pcs', 4750, 9500, 9, 0, 85500),
(32, '040720000001', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 10, 0, 30000),
(33, '050720000001', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 1, 0, 3000),
(34, '050720000002', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 1, 0, 3000),
(35, '050720000003', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 1, 0, 3000),
(36, '050720000004', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 1, 0, 3000),
(37, '050720000004', 'BR000004', 'Kacang Garuda 50gr', 'pcs', 2500, 5000, 2, 0, 10000),
(38, '050720000004', 'BR000009', 'Twistko salsa rasa balado', 'pcs', 2750, 5500, 1, 0, 5500),
(39, '060720000005', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 3, 0, 9000),
(40, '060720000006', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 1, 0, 3000),
(41, '060720000007', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 1, 0, 3000),
(42, '060720000008', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 1, 0, 3000),
(43, '070720000001', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 3000, 1, 0, 3000),
(44, '070720000002', 'BR000001', 'Leo Kripik Kentang Rumput Laut. 150gr', 'pcs', 1500, 2925, 2, 0, 5850);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `jual_total` int(11) DEFAULT NULL,
  `jual_jml_uang` int(11) DEFAULT NULL,
  `jual_kembalian` int(11) DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_nofak`, `jual_tanggal`, `jual_total`, `jual_jml_uang`, `jual_kembalian`, `jual_user_id`, `jual_keterangan`) VALUES
('010720000001', '2020-07-01 18:25:01', 59250, 100000, 40750, 1, 'grosir'),
('020720000002', '2020-07-02 02:26:29', 59250, 60000, 750, 1, 'grosir'),
('020720000003', '2020-07-02 04:12:49', 594800, 1000000, 405200, 1, 'grosir'),
('040720000001', '2020-07-04 07:58:20', 115500, 200000, 84500, 1, 'eceran'),
('050720000001', '2020-07-05 18:28:57', 3000, 10000, 7000, 1, 'eceran'),
('050720000002', '2020-07-05 18:29:49', 3000, 10000, 7000, 1, 'eceran'),
('050720000003', '2020-07-05 18:38:54', 3000, 10000, 7000, 1, 'eceran'),
('050720000004', '2020-07-05 18:43:46', 18500, 20000, 1500, 1, 'eceran'),
('060720000005', '2020-07-06 13:26:01', 9000, 10000, 1000, 1, 'eceran'),
('060720000006', '2020-07-06 14:51:30', 3000, 300000000, 299997000, 1, 'eceran'),
('060720000007', '2020-07-06 14:57:13', 3000, 5000, 2000, 1, 'eceran'),
('060720000008', '2020-07-06 15:25:13', 3000, 5000, 2000, 2, 'eceran'),
('070720000001', '2020-07-07 13:19:01', 3000, 5000, 2000, 1, 'eceran'),
('070720000002', '2020-07-07 13:19:22', 5850, 10000, 4150, 3, 'grosir');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(48, 'Makanan'),
(49, 'Minuman'),
(50, 'Obat-obatan'),
(51, 'Rumah tangga'),
(52, 'APD');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'Firman', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1'),
(2, 'Agung Dwi Cahyono', 'kasir1', '29c748d4d8f4bd5cbc0f3f60cb7ed3d0', '2', '0'),
(3, 'Shavira adianda Octoberia', 'kasir2', '8c86013d8ba23d9b5ade4d6463f81c45', '2', '1'),
(5, 'ADMIN', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`) USING BTREE,
  ADD KEY `barang_user_id` (`barang_user_id`) USING BTREE,
  ADD KEY `barang_kategori_id` (`barang_kategori_id`) USING BTREE;

--
-- Indexes for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`d_jual_id`) USING BTREE,
  ADD KEY `d_jual_barang_id` (`d_jual_barang_id`) USING BTREE,
  ADD KEY `d_jual_nofak` (`d_jual_nofak`) USING BTREE;

--
-- Indexes for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`jual_nofak`) USING BTREE,
  ADD KEY `jual_user_id` (`jual_user_id`) USING BTREE;

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`barang_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`barang_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`d_jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_jual_ibfk_2` FOREIGN KEY (`d_jual_nofak`) REFERENCES `tbl_jual` (`jual_nofak`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD CONSTRAINT `tbl_jual_ibfk_1` FOREIGN KEY (`jual_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
