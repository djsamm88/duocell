-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2021 at 01:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digiflazz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `user_admin` varchar(222) NOT NULL,
  `pass_admin` varchar(222) NOT NULL,
  `time_admin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_admin` enum('1','0') NOT NULL,
  `nama_admin` varchar(222) NOT NULL,
  `telp_admin` varchar(222) NOT NULL,
  `email_admin` varchar(222) NOT NULL,
  `level` char(44) NOT NULL COMMENT '1=admin,2=keuangan,3=Kasir,4=gudang,5=member,6=costumer service',
  `request_status` int(1) NOT NULL COMMENT '1=link_sent,0=tidak_ada',
  `tempat_lahir` varchar(222) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kelamin` enum('L','P') NOT NULL,
  `pendidikan` varchar(55) NOT NULL,
  `jabatan` varchar(222) NOT NULL,
  `npwp` varchar(55) NOT NULL,
  `id_opd` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `user_admin`, `pass_admin`, `time_admin`, `status_admin`, `nama_admin`, `telp_admin`, `email_admin`, `level`, `request_status`, `tempat_lahir`, `tgl_lahir`, `kelamin`, `pendidikan`, `jabatan`, `npwp`, `id_opd`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-03 03:57:59', '1', 'Admin', '0811656616', 'admin@gmail.com', '1', 0, '', '0000-00-00', 'L', '', '', '', '22'),
(9, 'andi', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-03 03:59:53', '1', 'Andi', '0822', 'andi@gmail.com', '2', 0, 'Medan', '1988-01-16', 'L', 'SMA', 'Customer', '42342342', '15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_opd`
--

CREATE TABLE `tbl_opd` (
  `ID_OPD` char(55) NOT NULL,
  `OPD` char(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_opd`
--

INSERT INTO `tbl_opd` (`ID_OPD`, `OPD`) VALUES
('01', 'Sekretariat Daerah'),
('02', 'Sekretariat DPRD'),
('03', 'Sekretariat KPUD Humbang Hasundutan'),
('04', 'Badan Kepegawaian Daerah'),
('05', 'Badan Kesatuan Bangsa Dan Politik'),
('06', 'Badan Penanggulangan Bencana Daerah'),
('07', 'Badan Pengelolaan Keuangan, Pendapatan dan Aset Daerah'),
('08', 'Badan Perencanaan Pembangunan Daerah'),
('09', 'Bagian Hukum'),
('10', 'Bagian Kesejahteraan Sosial'),
('11', 'Bagian Organisasi'),
('12', 'Bagian Pengadaan Barang Jasa'),
('13', 'Bagian Perekonomian dan Pembangunan'),
('14', 'Bagian Protokol'),
('15', 'Bagian Tata Pemerintahan'),
('16', 'Bagian Umum'),
('17', 'Dinas Kepemudaan Dan Olahraga'),
('18', 'Dinas Kependudukan Dan Catatan Sipil'),
('19', 'Dinas Kesehatan'),
('20', 'Dinas Ketahanan Pangan'),
('21', 'Dinas Ketenagakerjaan'),
('22', 'Dinas Komunikasi dan Informatika'),
('23', 'Dinas Koperasi, Perdagangan Dan Perindustrian'),
('24', 'Dinas Lingkungan Hidup'),
('25', 'Dinas Pariwisata'),
('26', 'Dinas Pekerjaan Umum Dan  Penataan Ruang'),
('27', 'Dinas Pemberdayaan Masyarakat, Desa, Perempuan Dan Perl'),
('28', 'Dinas Penanaman Modal dan Pelayanan Perijinan Terpadu S'),
('29', 'Dinas Pendidikan'),
('30', 'Dinas Pengendalian Penduduk dan Keluarga Berencana'),
('31', 'Dinas Perhubungan'),
('32', 'Dinas Perpustakaan dan Kearsipan'),
('33', 'Dinas Pertanian'),
('34', 'Dinas Perumahan Dan Kawasan Permukiman'),
('35', 'Dinas Peternakan Dan Perikanan'),
('36', 'Dinas Sosial'),
('37', 'Inspektorat'),
('38', 'RSUD Doloksanggul'),
('39', 'Satuan Polisi Pamong Praja'),
('40', 'Kantor Camat Baktiraja'),
('41', 'Kantor Camat Doloksanggul'),
('42', 'Kantor Camat Lintongnihuta'),
('43', 'Kantor Camat Onan Ganjang'),
('44', 'Kantor Camat Pakkat'),
('45', 'Kantor Camat Paranginan'),
('46', 'Kantor Camat Parlilitan'),
('47', 'Kantor Camat Pollung'),
('48', 'Kantor Camat Sijamapolang'),
('49', 'Kantor Camat Tarabintang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_remote_server`
--

CREATE TABLE `tbl_remote_server` (
  `id` int(11) NOT NULL,
  `webhook` varchar(222) NOT NULL,
  `json_webhook` varchar(222) NOT NULL,
  `proxy` varchar(222) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=aktif,0=tidakaktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_remote_server`
--

INSERT INTO `tbl_remote_server` (`id`, `webhook`, `json_webhook`, `proxy`, `status`) VALUES
(1, 'http://hotabilardus.com/digiflazz/webhook.php', 'http://hotabilardus.com/digiflazz/json_webhook.php', 'http://hotabilardus.com/digiflazz/proxy.php', 0),
(2, 'https://dev.tamorastore.com/webhook.php', 'https://dev.tamorastore.com/json_webhook.php', 'https://dev.tamorastore.com/proxy.php', 0),
(3, 'https://sibahanpe.pakpakbharatkab.go.id/digiflazz/webhook.php', 'https://sibahanpe.pakpakbharatkab.go.id/digiflazz/json_webhook.php', 'https://sibahanpe.pakpakbharatkab.go.id/digiflazz/proxy.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topup`
--

CREATE TABLE `tbl_topup` (
  `id` int(11) NOT NULL,
  `respon` text NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_topup`
--

INSERT INTO `tbl_topup` (`id`, `respon`, `tgl`) VALUES
(1, '', '2021-12-12 10:14:37'),
(2, '{\"data\":{\"rc\":\"00\",\"amount\":200289,\"notes\":\"DQ7OGGQ12\"}}', '2021-12-12 10:15:29'),
(3, '{\"data\":{\"rc\":\"00\",\"amount\":200305,\"notes\":\"DQ7OGGQ12\"}}', '2021-12-12 10:29:02'),
(4, '{\"data\":{\"rc\":\"00\",\"amount\":200311,\"notes\":\"DQ7OGGQ12\"}}', '2021-12-12 10:35:36'),
(5, '{\"data\":{\"rc\":\"00\",\"amount\":200023,\"notes\":\"DQ7OGGQ18\"}}', '2021-12-18 05:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trx`
--

CREATE TABLE `tbl_trx` (
  `id` int(11) NOT NULL,
  `respon` text NOT NULL,
  `tgl` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trx`
--

INSERT INTO `tbl_trx` (`id`, `respon`, `tgl`) VALUES
(1, '', '2021-12-08 12:46:44'),
(2, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 12:49:08'),
(3, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 12:50:40'),
(4, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 12:51:40'),
(5, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 12:58:18'),
(6, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 12:59:21'),
(7, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:06:35'),
(8, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:09:21'),
(9, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:16:38'),
(10, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:17:15'),
(11, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:18:15'),
(12, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:19:06'),
(13, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:22:51'),
(14, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:23:28'),
(15, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001232\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Gagal\",\"status\":\"Gagal\",\"rc\":\"02\",\"buyer_last_saldo\":1000000,\"sn\":\"\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:24:35'),
(16, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001233\",\"buyer_sku_code\":\"xld10\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":990000,\"sn\":\"\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 13:25:03'),
(17, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001230\",\"buyer_sku_code\":\"pln20lucky7\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":990000,\"sn\":\"1234567890\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 14:38:23'),
(18, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"087800001234\",\"buyer_sku_code\":\"pln20lucky7\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":990000,\"sn\":\"\",\"price\":10000,\"tele\":\"@telegram\",\"wa\":\"081234512345\"}}', '2021-12-08 14:39:09'),
(19, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"12128397793\",\"buyer_sku_code\":\"pln20lucky7\",\"message\":\"Signature Anda salah\",\"status\":\"Gagal\",\"rc\":\"41\",\"sn\":\"\"}}', '2021-12-08 14:50:47'),
(20, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"21128397703\",\"buyer_sku_code\":\"pln20lucky7\",\"message\":\"Signature Anda salah\",\"status\":\"Gagal\",\"rc\":\"41\",\"sn\":\"\"}}', '2021-12-08 14:55:37'),
(21, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5a2o\",\"message\":\"Signature Anda salah\",\"status\":\"Gagal\",\"rc\":\"41\",\"sn\":\"\"}}', '2021-12-08 14:57:00'),
(22, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5a2o\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":195382,\"sn\":\"\",\"price\":5285,\"tele\":\"@owner_a2opay\",\"wa\":\"085350452817\"}}', '2021-12-08 14:58:19'),
(23, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5a2o\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":195382,\"sn\":\"02533200000873440252\",\"price\":5285,\"tele\":\"@owner_a2opay\",\"wa\":\"085350452817\"}}', '2021-12-08 15:01:43'),
(24, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:11:37'),
(25, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:11:52'),
(26, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:12:52'),
(27, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:12:56'),
(28, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:13:08'),
(29, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:13:13'),
(30, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:13:19'),
(31, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:13:26'),
(32, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:13:28'),
(33, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:15:12'),
(34, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397793\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:16:47'),
(35, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397793\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:17:18'),
(36, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397793\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:19:20'),
(37, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397793\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:21:10'),
(38, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397793\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:31:57'),
(39, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397793\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:34:25'),
(40, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397793\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 15:36:13'),
(41, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397793\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 19:01:15'),
(42, '{\"data\":{\"ref_id\":\"\",\"customer_no\":\"32128397793\",\"buyer_sku_code\":\"\",\"message\":\"Invalid Payload\",\"status\":\"Gagal\",\"rc\":\"40\",\"sn\":\"\"}}', '2021-12-08 19:01:44'),
(43, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-08 19:08:19'),
(44, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-08 19:10:53'),
(45, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5a2o\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":195382,\"sn\":\"02533200000873440252\",\"price\":5285,\"tele\":\"@owner_a2opay\",\"wa\":\"085350452817\"}}', '2021-12-08 19:11:06'),
(46, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-08 19:26:17'),
(47, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5a2o\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":195382,\"sn\":\"02533200000873440252\",\"price\":5285,\"tele\":\"@owner_a2opay\",\"wa\":\"085350452817\"}}', '2021-12-08 19:26:42'),
(48, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-08 19:28:44'),
(49, '{\"data\":{\"ref_id\":\"1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5a2o\",\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"rc\":\"00\",\"buyer_last_saldo\":195382,\"sn\":\"02533200000873440252\",\"price\":5285,\"tele\":\"@owner_a2opay\",\"wa\":\"085350452817\"}}', '2021-12-08 19:29:01'),
(50, '{\"data\":{\"customer_no\":\"182103244950\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-08 19:31:46'),
(51, '{\"data\":{\"ref_id\":\"a92718e0-85ef-5649-8c72-023f63daf04f20211208193154_1\",\"customer_no\":\"182103244950\",\"buyer_sku_code\":\"pln20lucky7\",\"message\":\"Signature Anda salah\",\"status\":\"Gagal\",\"rc\":\"41\",\"sn\":\"\"}}', '2021-12-08 19:31:54'),
(52, '{\"data\":{\"customer_no\":\"182103244950\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-08 19:32:22'),
(53, '{\"data\":{\"ref_id\":\"20211208193228_1\",\"customer_no\":\"182103244950\",\"buyer_sku_code\":\"pln20lucky7\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":175302,\"sn\":\"\",\"price\":20080,\"tele\":\"@cs_mobilepulsa3\",\"wa\":\"0817777215\"}}', '2021-12-08 19:32:29'),
(54, '{\"data\":{\"customer_no\":\"182103244950\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-08 19:35:10'),
(55, '{\"data\":{\"customer_no\":\"8888803062458607\",\"meter_no\":\"\",\"subscriber_id\":\"\",\"name\":\"\",\"segment_power\":\"\"}}', '2021-12-08 21:10:34'),
(56, '{\"data\":{\"customer_no\":\"8888803062458607\",\"meter_no\":\"\",\"subscriber_id\":\"\",\"name\":\"\",\"segment_power\":\"\"}}', '2021-12-08 21:11:11'),
(57, '{\"data\":{\"ref_id\":\"20211208211144_1\",\"customer_no\":\"8888803062458607\",\"buyer_sku_code\":\"\",\"message\":\"IP Anda tidak kami kenali: 114.125.15.74\",\"status\":\"Gagal\",\"rc\":\"45\",\"sn\":\"\"}}', '2021-12-08 21:11:45'),
(58, '{\"data\":{\"ref_id\":\"20211208211300_1\",\"customer_no\":\"8888803062458607\",\"buyer_sku_code\":\"\",\"message\":\"Produk sedang Gangguan (Non Aktif)\",\"status\":\"Gagal\",\"rc\":\"43\",\"sn\":\"\"}}', '2021-12-08 21:13:03'),
(59, '{\"data\":{\"ref_id\":\"20211208211607_1\",\"customer_no\":\"8888803062458607\",\"buyer_sku_code\":\"\",\"message\":\"Produk sedang Gangguan (Non Aktif)\",\"status\":\"Gagal\",\"rc\":\"43\",\"sn\":\"\"}}', '2021-12-08 21:16:11'),
(60, '{\"data\":{\"ref_id\":\"20211208213107_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"ovo10hotel\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":166102,\"sn\":\"\",\"price\":9200,\"tele\":\"@cs_hmt\",\"wa\":\"082111624966\"}}', '2021-12-08 21:31:09'),
(61, '{\"data\":{\"ref_id\":\"20211209071150_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel10qiosfin\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":155852,\"sn\":\"\",\"price\":10250,\"tele\":\"@qiosfincs\",\"wa\":\"085757340732\"}}', '2021-12-09 07:11:51'),
(62, '{\"data\":{\"customer_no\":\"182103244950\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-09 21:39:42'),
(63, '{\"data\":{\"ref_id\":\"20211209213948_1\",\"customer_no\":\"182103244950\",\"buyer_sku_code\":\"pln20fait\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":135827,\"sn\":\"\",\"price\":20025,\"tele\":\"@helpdeskbabeh\",\"wa\":\"085158443919\"}}', '2021-12-09 21:39:52'),
(64, '{\"data\":{\"ref_id\":\"20211209224102_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel50ayopop\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":86147,\"sn\":\"N/A\",\"price\":49680,\"tele\":\"@Ayopop_helpdesk\",\"wa\":\"08881620857\"}}', '2021-12-09 22:41:08'),
(65, '{\"data\":{\"customer_no\":\"182103244950\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-10 08:37:04'),
(66, '{\"data\":{\"customer_no\":\"182103244950\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-10 08:37:37'),
(67, '{\"data\":{\"ref_id\":\"20211210083744_1\",\"customer_no\":\"182103244950\",\"buyer_sku_code\":\"pln20lucky7\",\"message\":\"IP Anda tidak kami kenali: 46.17.173.101\",\"status\":\"Gagal\",\"rc\":\"45\",\"sn\":\"\"}}', '2021-12-10 08:37:45'),
(68, '{\"data\":{\"customer_no\":\"182103244950\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-10 11:56:08'),
(69, 'null', '2021-12-10 12:01:56'),
(70, '{\"data\":{\"ref_id\":\"20211210120323_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5a2o\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":80862,\"sn\":\"\",\"price\":5285,\"tele\":\"@owner_a2opay\",\"wa\":\"085350452817\"}}', '2021-12-10 12:03:26'),
(71, '{\"data\":{\"customer_no\":\"182103244950\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '0000-00-00 00:00:00'),
(72, '{\"data\":{\"ref_id\":\"20211210120637_1\",\"customer_no\":\"182103244950\",\"buyer_sku_code\":\"pln20fait\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":60837,\"sn\":\"\",\"price\":20025,\"tele\":\"@helpdeskbabeh\",\"wa\":\"085158443919\"}}', '2021-12-10 12:06:39'),
(73, '{\"data\":{\"ref_id\":\"20211210120936_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5Fait\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":55562,\"sn\":\"\",\"price\":5275,\"tele\":\"@helpdeskbabeh\",\"wa\":\"085158443919\"}}', '2021-12-10 12:09:39'),
(74, '{\"data\":{\"ref_id\":\"20211210122446_1\",\"customer_no\":\"082276344834\",\"buyer_sku_code\":\"tsel5a2o\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":50277,\"sn\":\"\",\"price\":5285,\"tele\":\"@owner_a2opay\",\"wa\":\"085350452817\"}}', '2021-12-10 12:24:50'),
(75, '{\"data\":{\"customer_no\":\"182103244950\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '0000-00-00 00:00:00'),
(76, '{\"data\":{\"ref_id\":\"20211210123438_1\",\"customer_no\":\"182103244950\",\"buyer_sku_code\":\"pln20fait\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":30252,\"sn\":\"\",\"price\":20025,\"tele\":\"@helpdeskbabeh\",\"wa\":\"085158443919\"}}', '2021-12-10 12:34:40'),
(77, '{\"data\":{\"ref_id\":\"20211210131135_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5mpulsa\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":24992,\"sn\":\"\",\"price\":5260,\"tele\":\"@csmpulsa\",\"wa\":\"082166617771\"}}', '2021-12-10 13:11:38'),
(78, '{\"data\":{\"ref_id\":\"20211210131615_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5Murah\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":20162,\"sn\":\"\",\"price\":4830,\"tele\":\"@cspulsagadget_01\",\"wa\":\"082271400250\"}}', '2021-12-10 13:16:16'),
(79, '{\"data\":{\"ref_id\":\"20211210132443_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5ptmultiguna\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":15332,\"sn\":\"\",\"price\":4830,\"tele\":\"@Mulyo_Oto\"}}', '2021-12-10 13:24:44'),
(80, 'null', '0000-00-00 00:00:00'),
(81, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '0000-00-00 00:00:00'),
(82, 'null', '0000-00-00 00:00:00'),
(83, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '0000-00-00 00:00:00'),
(84, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-12 12:55:27'),
(85, 'null', '2021-12-12 12:55:45'),
(86, '{\"data\":{\"ref_id\":\"20211212130556_1\",\"customer_no\":\"8888803062458607\",\"buyer_sku_code\":\"bpjskesplus6\",\"message\":\"Transaksi Gagal\",\"status\":\"Gagal\",\"rc\":\"02\",\"sn\":\"\"}}', '2021-12-12 13:06:02'),
(87, '{\"data\":{\"ref_id\":\"20211212130703_1\",\"customer_no\":\"8888803062458607\",\"customer_name\":\"VALOMA HILLARY GULTOM\",\"buyer_sku_code\":\"bpjskeslucky7\",\"admin\":2500,\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"sn\":\"\",\"rc\":\"00\",\"buyer_last_saldo\":215643,\"price\":141375,\"selling_price\":142500,\"desc\":{\"jumlah_peserta\":\"4\",\"lembar_tagihan\":1,\"detail\":[{\"periode\":\"01\"}]}}}', '2021-12-12 13:07:08'),
(88, '{\"data\":{\"ref_id\":\"20211212131106_1\",\"customer_no\":\"8888803062458607\",\"customer_name\":\"VALOMA HILLARY GULTOM\",\"buyer_sku_code\":\"bpjskeslucky7\",\"admin\":2500,\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"sn\":\"\",\"rc\":\"00\",\"buyer_last_saldo\":215643,\"price\":141375,\"selling_price\":142500,\"desc\":{\"jumlah_peserta\":\"4\",\"lembar_tagihan\":1,\"detail\":[{\"periode\":\"01\"}]}}}', '2021-12-12 13:11:08'),
(89, '{\"data\":{\"ref_id\":\"20211212131222_1\",\"customer_no\":\"8888803062458607\",\"customer_name\":\"VALOMA HILLARY GULTOM\",\"buyer_sku_code\":\"bpjskeslucky7\",\"admin\":2500,\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"sn\":\"\",\"rc\":\"00\",\"buyer_last_saldo\":215643,\"price\":141375,\"selling_price\":142500,\"desc\":{\"jumlah_peserta\":\"4\",\"lembar_tagihan\":1,\"detail\":[{\"periode\":\"01\"}]}}}', '2021-12-12 13:12:26'),
(90, '{\"data\":{\"ref_id\":\"20211212131736_1\",\"customer_no\":\"8888803062458607\",\"customer_name\":\"VALOMA HILLARY GULTOM\",\"buyer_sku_code\":\"bpjskeslucky7\",\"admin\":2500,\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"sn\":\"\",\"rc\":\"00\",\"buyer_last_saldo\":215643,\"price\":141375,\"selling_price\":142500,\"desc\":{\"jumlah_peserta\":\"4\",\"lembar_tagihan\":1,\"detail\":[{\"periode\":\"01\"}]}}}', '2021-12-12 13:17:37'),
(91, '{\"data\":{\"ref_id\":\"20211212132623_1\",\"customer_no\":\"8888803062458607\",\"customer_name\":\"VALOMA HILLARY GULTOM\",\"buyer_sku_code\":\"bpjskeslucky7\",\"admin\":2500,\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"sn\":\"\",\"rc\":\"00\",\"buyer_last_saldo\":215643,\"price\":141375,\"selling_price\":142500,\"desc\":{\"jumlah_peserta\":\"4\",\"lembar_tagihan\":1,\"detail\":[{\"periode\":\"01\"}]}}}', '2021-12-12 13:26:25'),
(92, '{\"data\":{\"ref_id\":\"20211212132755_1\",\"customer_no\":\"8888803062458607\",\"customer_name\":\"VALOMA HILLARY GULTOM\",\"buyer_sku_code\":\"bpjskeslucky7\",\"admin\":2500,\"message\":\"Transaksi Sukses\",\"status\":\"Sukses\",\"sn\":\"\",\"rc\":\"00\",\"buyer_last_saldo\":215643,\"price\":141375,\"selling_price\":142500,\"desc\":{\"jumlah_peserta\":\"4\",\"lembar_tagihan\":1,\"detail\":[{\"periode\":\"01\"}]}}}', '2021-12-12 13:27:59'),
(93, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-13 13:16:24'),
(94, '{\"data\":{\"ref_id\":\"20211213131628_1\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"pln20fait\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":195618,\"sn\":\"\",\"price\":20025,\"tele\":\"@helpdeskbabeh\",\"wa\":\"085158443919\"}}', '2021-12-13 13:16:34'),
(95, '{\"data\":{\"customer_no\":\"45040568763\",\"meter_no\":\"45040568763\",\"subscriber_id\":\"182102808835\",\"name\":\"SUPINAH\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-14 08:46:35'),
(96, '{\"data\":{\"ref_id\":\"20211214084648_1\",\"customer_no\":\"45040568763\",\"buyer_sku_code\":\"pln100speed\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":95543,\"sn\":\"\",\"price\":100075,\"tele\":\"@cs_speedpulsah2h\",\"wa\":\"085157032929\"}}', '2021-12-14 08:46:50'),
(97, '{\"data\":{\"ref_id\":\"20211216212057_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel50ayopop\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":45863,\"sn\":\"N/A\",\"price\":49680,\"tele\":\"@Ayopop_helpdesk\",\"wa\":\"08881620857\"}}', '2021-12-16 21:21:08'),
(98, '{\"data\":{\"ref_id\":\"20211216212137_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel20murah\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":26564,\"sn\":\"\",\"price\":19299,\"tele\":\"@Lokalsel_CS\",\"wa\":\"082147951979\"}}', '2021-12-16 21:21:38'),
(99, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-18 04:49:16'),
(100, '{\"data\":{\"ref_id\":\"20211218044927_1\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"pln20fait\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":6539,\"sn\":\"\",\"price\":20025,\"tele\":\"@helpdeskbabeh\",\"wa\":\"085158443919\"}}', '2021-12-18 04:49:30'),
(101, '{\"data\":{\"ref_id\":\"20211222203005_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel50ayopop\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":156882,\"sn\":\"N/A\",\"price\":49680,\"tele\":\"@Ayopop_helpdesk\",\"wa\":\"08881620857\"}}', '2021-12-22 20:30:27'),
(102, '{\"data\":{\"ref_id\":\"20211222203152_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel20murah\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":137583,\"sn\":\"\",\"price\":19299,\"tele\":\"@Lokalsel_CS\",\"wa\":\"082147951979\"}}', '2021-12-22 20:31:54'),
(103, '{\"data\":{\"ref_id\":\"20211222221931_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5ptmultiguna\",\"message\":\"Cut Off (Perbaikan Sistem Seller)\",\"status\":\"Gagal\",\"rc\":\"66\",\"sn\":\"\"}}', '2021-12-22 22:19:35'),
(104, '{\"data\":{\"ref_id\":\"20211222221957_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5Murah\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":132753,\"sn\":\"\",\"price\":4830,\"tele\":\"@cspulsagadget_01\",\"wa\":\"082271400250\"}}', '2021-12-22 22:19:57'),
(105, '{\"data\":{\"ref_id\":\"20211223094131_1\",\"customer_no\":\"082292576043\",\"buyer_sku_code\":\"tsel20murah\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":113454,\"sn\":\"\",\"price\":19299,\"tele\":\"@Lokalsel_CS\",\"wa\":\"082147951979\"}}', '2021-12-23 09:41:32'),
(106, '{\"data\":{\"ref_id\":\"20211223094255_1\",\"customer_no\":\"082292576043\",\"buyer_sku_code\":\"tsel20pulsagadged\",\"message\":\"Produk sedang Gangguan (Non Aktif)\",\"status\":\"Gagal\",\"rc\":\"43\",\"sn\":\"\"}}', '2021-12-23 09:42:56'),
(107, '{\"data\":{\"ref_id\":\"20211223094355_1\",\"customer_no\":\"082292576043\",\"buyer_sku_code\":\"tsel20murah\",\"message\":\"Tidak support transaksi multi\",\"status\":\"Gagal\",\"rc\":\"63\",\"buyer_last_saldo\":113454,\"sn\":\"\",\"tele\":\"@Lokalsel_CS\",\"wa\":\"082147951979\"}}', '2021-12-23 09:43:57'),
(108, '{\"data\":{\"ref_id\":\"20211223095158_1\",\"customer_no\":\"082292576043\",\"buyer_sku_code\":\"tsel20cad\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":93554,\"sn\":\"N/A\",\"price\":19900,\"tele\":\"@Ayopop_helpdesk\",\"wa\":\"08881620857\"}}', '2021-12-23 09:52:05'),
(109, '{\"data\":{\"ref_id\":\"20211223114244_1\",\"customer_no\":\"082276344834\",\"buyer_sku_code\":\"tsel20murah\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":74255,\"sn\":\"\",\"price\":19299,\"tele\":\"@Lokalsel_CS\",\"wa\":\"082147951979\"}}', '2021-12-23 11:42:45'),
(110, '{\"data\":{\"ref_id\":\"20211223120511_1\",\"customer_no\":\"082292576043\",\"buyer_sku_code\":\"tsel20cad2\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":54385,\"sn\":\"\",\"price\":19870,\"tele\":\"@CSMMBC\",\"wa\":\"085813052706\"}}', '2021-12-23 12:05:16'),
(111, '{\"data\":{\"ref_id\":\"20211223120709_1\",\"customer_no\":\"082292576043\",\"buyer_sku_code\":\"tsel20trikomsa\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":54360,\"sn\":\"\",\"price\":19895,\"tele\":\"@CsArya1\",\"wa\":\"088906113288\"}}', '2021-12-23 12:07:09'),
(112, '{\"data\":{\"ref_id\":\"20211223135041_1\",\"customer_no\":\"085363964206\",\"buyer_sku_code\":\"tsel20trikomsa\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":53764,\"sn\":\"\",\"price\":19895,\"tele\":\"@CsArya1\",\"wa\":\"088906113288\"}}', '2021-12-23 13:50:43'),
(113, '{\"data\":{\"ref_id\":\"20211224073315_1\",\"customer_no\":\"8888803062458607\",\"buyer_sku_code\":\"bpjskeslucky7\",\"message\":\"Tagihan belum tersedia\",\"status\":\"Gagal\",\"rc\":\"60\",\"sn\":\"\"}}', '2021-12-24 07:33:17'),
(114, '{\"data\":{\"customer_no\":\"32128397703\",\"meter_no\":\"32128397703\",\"subscriber_id\":\"182103244950\",\"name\":\"SAMUEL LIMBE TUA GULTOM\",\"segment_power\":\"R1M /000000900\"}}', '2021-12-25 08:44:33'),
(115, '{\"data\":{\"ref_id\":\"20211225084437_1\",\"customer_no\":\"32128397703\",\"buyer_sku_code\":\"pln20fait\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":33754,\"sn\":\"\",\"price\":20010,\"tele\":\"@helpdeskbabeh\",\"wa\":\"085158443919\"}}', '2021-12-25 08:44:39'),
(116, '{\"data\":{\"ref_id\":\"20211226105214_1\",\"customer_no\":\"082284899788\",\"buyer_sku_code\":\"tsel20murah\",\"message\":\"Produk sedang Gangguan (Non Aktif)\",\"status\":\"Gagal\",\"rc\":\"43\",\"sn\":\"\"}}', '2021-12-26 10:52:15'),
(117, '{\"data\":{\"ref_id\":\"20211226105242_1\",\"customer_no\":\"082284899788\",\"buyer_sku_code\":\"tsel20trikomsa\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":13859,\"sn\":\"\",\"price\":19895,\"tele\":\"@CsArya1\",\"wa\":\"088906113288\"}}', '2021-12-26 10:53:50'),
(118, '{\"data\":{\"ref_id\":\"20211226191837_1\",\"customer_no\":\"082277109994\",\"buyer_sku_code\":\"tsel5ptmultiguna\",\"message\":\"Transaksi Pending\",\"status\":\"Pending\",\"rc\":\"03\",\"buyer_last_saldo\":9029,\"sn\":\"\",\"price\":4830,\"tele\":\"@Mulyo_Oto\"}}', '2021-12-26 19:18:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_remote_server`
--
ALTER TABLE `tbl_remote_server`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_topup`
--
ALTER TABLE `tbl_topup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_trx`
--
ALTER TABLE `tbl_trx`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_remote_server`
--
ALTER TABLE `tbl_remote_server`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_topup`
--
ALTER TABLE `tbl_topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_trx`
--
ALTER TABLE `tbl_trx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
