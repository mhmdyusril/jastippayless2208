-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 11:42 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkp`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(1, 'Tas Ransel Converse', 'banner6.png', 'index.php?page=detail&barang_id=69', 'on'),
(2, 'Kaos Converse Chuck', 'banner5.png', 'index.php?page=detail&barang_id=68', 'on'),
(4, 'Converse All Star', 'banner4.png', 'index.php?page=detail&barang_id=34', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(16, 11, 'Dompet VNC', '   VNC SALE\r\nTas Rp 150.000\r\n(Harga Belum Termasuk Jastip Per Item 25rb Dan Ongkir)', 'vnc 1500.jpg', 150000, 5, 'on'),
(17, 11, 'Dompet VNC', '  VNC SALE\r\nDompet Rp 200.000\r\n(Harga Belum Termasuk Jastip Per Item 25rb Dan Ongkir).', 'vnc 2000.jpg', 200000, 5, 'on'),
(18, 11, 'Dompet VNC', '  VNC SALE\r\nDompet Rp 150.000\r\n(Harga Belum Termasuk Jastip Per Item 25rb Dan Ongkir).', 'vnccc 1500.jpg', 150000, 5, 'on'),
(19, 11, 'Dompet VNC', '  VNC SALE\r\nDompet Rp 250.000\r\n(Harga Belum Termasuk Jastip Per Item 25rb Dan Ongkir).', 'vncc 2500.jpg', 250000, 5, 'on'),
(20, 11, 'Dompet VNC', '  VNC SALE\r\nDompet Rp 150.000\r\n(Harga Belum Termasuk Jastip Per Item 25rb Dan Ongkir).', 'vncc 1500.jpg', 150000, 5, 'on'),
(22, 11, 'Dompet BrunBrun ', '      BrunBrun SALE\r\nDompet Rp 97.000\r\n(Harga Belum Termasuk Jastip Per Item 25rb Dan Ongkir).', 'brunbrun 977.jpg', 97000, 5, 'on'),
(23, 11, 'Dompet BrunBrun', '  BRUNBRUN SALE \r\nRp 63.000 Belum Termasuk Jastip 20rb & Ongkir .', 'brbr 633.jpg', 63000, 5, 'on'),
(24, 11, 'Dompet BrunBrun', '  BRUNBRUN SALE \r\nRp 100.000 Belum Termasuk Jastip 20rb & Ongkir .', 'brbrr 1000.jpg', 100000, 5, 'on'),
(25, 11, 'Dompet BrunBrun', '  BRUNBRUN SALE \r\nRp 100.000 Belum Termasuk Jastip 20rb & Ongkir .', 'brbr 1000.jpg', 100000, 5, 'on'),
(26, 11, 'Dompet BrunBrun', '  BRUNBRUN SALE \r\nRp 77.000 Belum Termasuk Jastip 20rb & Ongkir .', 'brbr 777.jpg', 77000, 5, 'on'),
(27, 7, 'Sepatu Converse New High Yellow', 'Converse New High Yellow\r\nBrand Converse\r\nRp 460.000 \r\nSize 36-42', 'cv ylw 460.jpg', 460000, 5, 'on'),
(28, 7, 'Sepatu Converse New High Army', '   Converse New High Army\r\nBrand : Converse\r\nRp.460.000 \r\nSize 36-42', 'cv armyy 460.jpg', 460000, 5, 'on'),
(29, 7, 'Sepatu Converse New High Black', ' Converse New High Black\r\nBrand Converse \r\nRp 530.000  \r\nSize 36-42', 'cv blck 530.jpg', 530000, 5, 'on'),
(30, 7, 'Sepatu Converse New Black', ' Converse New Black \r\nBrand Converse \r\nRp 500.000  \r\nSize 36-42', 'cv blckk 500.jpg', 500000, 5, 'on'),
(31, 7, 'Sepatu Converse Hight Black', ' Converse High Black\r\nBrand Converse \r\nRp 530.000  \r\nSize 36-42 ', 'cv blckkkk 530.jpg', 530000, 5, 'on'),
(32, 7, 'Sepatu Converse New High Cream', ' Converse New High Cream\r\nBrand Converse \r\nRp 530.000  \r\nSize 36-42', 'cv crm 530.jpg', 530000, 5, 'on'),
(33, 7, 'Sepatu Converse High Cream', ' Converse High Cream\r\nBrand Converse \r\nRp 460.000  \r\nSize 36-42 ', 'cv crmm 460.jpg', 460000, 5, 'on'),
(34, 7, 'Sepatu Converse New High', ' Converse New High Yellow \r\nBrand Converse \r\nRp 530.000  \r\nSize 36-42 ', 'cv ylww 530.jpg', 530000, 5, 'on'),
(35, 7, 'Sneakers Diadora Black', '  SPORTSTATION SALE\r\nBrand Diadora\r\nRp. 115.000\r\nSize 31 dan 32 ', 'diadora 90.jpeg', 115000, 5, 'on'),
(36, 7, 'Sneakers ColorBox White', ' ColorBox\r\nRp. 225.000\r\nSize 36-40 ', 'cb 200.jpeg', 225000, 5, 'on'),
(37, 8, 'Jam Tangan BrunBrun Black', ' Brand BrunBrun \r\nWarna : Hitam,Navy,Putih,Peach,Ungu\r\nRp. 123.000  ', 'brbr 108.jpg', 123000, 5, 'on'),
(38, 8, 'Jam Tangan BrunBrun', ' Brand BrunBrun\r\nWarna : Ungu, Merah\r\nRp. 160.000', 'brbr 145.jpg', 160000, 5, 'on'),
(39, 8, 'Jam Tangan VNC', 'Brand VNC \r\nWarna Pink, Navy, Hitam\r\nRp 250.000 2 Jam Tangan', 'vncbb.jpg', 250000, 5, 'on'),
(40, 8, 'Jam Tangan VNC', 'Brand VNC \r\nWarna Gold, Merah, Ungu \r\nRp 250.000 2 Jam Tangan ', 'vncqq 250 2jm.jpg', 250000, 5, 'on'),
(41, 8, 'Jam Tangan VNC', 'Brand VNC \r\nWarna Pink, Putih\r\nRp 250.000 2 Jam Tangan ', 'vncs 250 2.jpg', 250000, 5, 'on'),
(42, 8, 'Jam Tangan VNC', 'Brand VNC \r\nWarna Pink, Navy\r\nRp 250.000 2 Jam Tangan ', 'vncsa 250 2jm.jpg', 250000, 5, 'on'),
(43, 8, 'Jam Tangan VNC', 'Brand VNC \r\nWarna Merah, Navy\r\nRp 250.000 2 Jam Tangan ', 'vncsaa 250 2 jm.jpg', 250000, 5, 'on'),
(44, 8, 'Jam Tangan VNC', 'Brand VNC \r\nWarna Gold \r\nRp 250.000 2 Jam Tangan ', 'vncss 250 2jj.jpg', 250000, 5, 'on'),
(45, 8, 'Jam Tangan VNC', 'Brand VNC \r\nWarna Pink, Gold \r\nRp 250.000 2 Jam Tangan ', 'vncsss 250 2jmm.jpg', 250000, 5, 'on'),
(46, 8, 'Jam Tangan VNC', 'Brand VNC \r\nWarna Hijau Tosca , Orange \r\nRp 250.000 2 Jam Tangan ', 'vvnc 250 2.jpg', 250000, 5, 'on'),
(47, 9, 'Tas Skechers Navy', '  Tas Skechers  \r\nBrand : Skechers New\r\nWarna : Navy\r\nRp 285.000 ', 'tas skc 2855.jpg', 285000, 5, 'on'),
(48, 9, 'Tas Skechers Black', ' Tas Skechers \r\nBrand : Skechers New\r\nWarna : Hitam \r\nRp 285.000 ', 'tas skcc 2855.jpg', 285000, 5, 'on'),
(49, 9, 'Tas Ransel Converse', 'Tas Ransel Converse\r\nBrand : Converse \r\nWarna : Hitam \r\nRp 205.000 ', 'tas cv 205.jpg', 205000, 5, 'on'),
(50, 9, 'Tas Ransel Skechers Grey', 'Tas Ransel Skechers\r\nBrand : Skechers\r\nWarna : Grey\r\nRp 125.000', 'skcr 125.jpg', 125000, 5, 'on'),
(51, 9, 'Tas Ransel BrunBrun', 'Tas Ransel \r\nBrand : BrunBrun \r\nWarna : Hitam  \r\nRp 170.000 ', 'tas rs brbr 175.jpeg', 170000, 5, 'on'),
(52, 9, 'Tas Selempang Payless', ' Tas Selempang Payless\r\nBrand : Cristian Siriano \r\nWarna : Cream \r\nRp 225.000 ', 'tas sl payless.jpeg', 225000, 5, 'on'),
(54, 9, 'Tas Selempang Rubi', 'Tas selempang \r\nBrand : Rubi \r\nWarna : Coklat \r\nRp 125.000 ', 'tas sl rubi 125.jpeg', 125000, 5, 'on'),
(55, 9, 'Tas Selempang BrunBrun', 'Tas selempang \r\nBrand : Brunbrun \r\nWarna : Dusty Pink \r\nRp 132.000 ', 'tas sl brb 132.jpeg', 132000, 5, 'on'),
(56, 9, 'Tas Selempang Payless', 'Tas Selempang Payles  \r\nBrand : Christian Siriano \r\nWarna : Cream dengan aksen Merah  \r\nRp 150.000 ', 'tas sl pyl 150.jpeg', 150000, 5, 'on'),
(57, 9, 'Tas Selempang Payless', 'Tas Ransel Payles \r\nBrand : American Eagle  \r\nWarna : Coklat  \r\nRp 225.000', 'tas ae 225.jpeg', 225000, 5, 'on'),
(58, 10, 'Blouse ColorBox', '  Blouse ColorBox  \r\nBrand : ColorBox  \r\nWarna : Blue Pastel \r\nAll Size \r\nRp 140.000', 'bl cb 1400.jpeg', 140000, 5, 'on'),
(59, 10, 'Cardigan ColorBox', ' Cardigan ColorBox \r\nBrand : ColorBox  \r\nWarna : Hijau Army  \r\nSize S, M, L, XL  \r\nRp 225.000', 'cd cb 2255.jpeg', 225000, 5, 'on'),
(60, 10, 'Sweater ColorBox', 'Sweater ColorBox  \r\nBrand :ColorBox \r\nWarna : Dusty Pink  \r\nSize S, M, L \r\nRp 185.000', 'st cl 185.jpeg', 185000, 5, 'on'),
(61, 10, 'Sweater ColorBox', 'Sweater ColorBox  \r\nBrand : ColorBox \r\nWarna :Grey Muda  \r\nAll Size  \r\nRp 170.000', 'st cl 170.jpeg', 170000, 5, 'on'),
(62, 10, 'Kaos New Balance  ', 'Kaos New Balance  \r\nBrand : New Balance  \r\nWarna : Abu Muda  \r\nSize S, Size M \r\nRp 105.000', 'kaos nb 105.jpeg', 105000, 5, 'on'),
(63, 10, 'Kaos Converse Mountain Club', ' Kaos Converse Mountain Club  \r\nBrand : Converse  \r\nWarna : Hitam  \r\nAll Size  \r\nRp 105.000', 'kaos cv 105.jpeg', 105000, 5, 'on'),
(64, 10, 'Kaos Polo New Balance Wanita ', 'Kaos Polo New Balance  Wanita \r\nBrand : New Balance \r\nWarna : Dusty Purple \r\nSize S,M, L \r\nRp 100.000', 'kaos nb 100.jpeg', 100000, 5, 'on'),
(65, 10, ' Kaos Polo Adidas Wanita  ', ' Kaos Polo Adidas Wanita  \r\nBrand : Adidas \r\nWarna : Hitam  \r\nSize : S, M, L \r\nRp 100.000', 'kaos pl ad 100.jpeg', 100000, 5, 'on'),
(66, 10, 'Kaos Converse Wanita Mountain Club', 'Kaos Converse Wanita Mountain Club  \r\nBrand : Converse  \r\nWarna : Ungu Tua  \r\nSize : S, M, L  \r\nRp 105.000', 'kaos cv wt 105.jpeg', 105000, 5, 'on'),
(67, 10, 'Kemeja Polos Wanita', 'Kemeja Polos Wanita  \r\nBrand : ColorBox  \r\nWarna : Hijau Mint \r\nAll Size \r\nRp 150.000', 'kmj 150.jpeg', 150000, 5, 'on'),
(68, 10, 'Kaos Converse Chuck Taylor Kids', 'Kaos Kaos Converse Chuck Taylor Kids  \r\nBrand : Converse\r\nWarna : Pink\r\nSize S, Size M \r\nRp 80.000', 'kaos cv ct 80.jpeg', 80000, 5, 'on'),
(69, 9, 'Tas Ransel Converse Black', ' Tas Ransel Converse \r\nBrand : Converse \r\nWarna : Navy \r\nHarga : Rp. 285.000 ', 'tas rs cvbl 285.jpeg', 285000, 5, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(7, 'Sepatu', 'on'),
(8, 'Jam Tangan', 'on'),
(9, 'Tas', 'on'),
(10, 'Baju', 'on'),
(11, 'Dompet', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int(10) NOT NULL,
  `pesanan_id` int(10) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `tanggal_transfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `tanggal_transfer`) VALUES
(4, 8, '00009999', 'Yusril', '2020-07-23'),
(5, 7, '00009999', 'Nita', '2020-07-23'),
(6, 9, '00008888', 'Nita', '2020-07-28'),
(7, 10, '00008888', 'Yusril', '2020-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'Jakarta', 6000, 'on'),
(2, 'Bandung', 8000, 'on'),
(3, 'Surabaya', 11000, 'on'),
(4, 'Semarang', 9000, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(10) NOT NULL,
  `kota_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(7, 1, 7, 'nita', '09811213', 'Jl.xxx', '2020-07-23 15:12:09', 2),
(8, 1, 2, 'as', '41444', 'asda', '2020-07-23 15:31:53', 1),
(9, 3, 7, 'xxxxx', '980999', 'jl.xxxxx', '2020-07-28 11:53:25', 2),
(10, 2, 2, 'yusril', '41444', 'Jl.xxxx', '2020-08-04 21:08:18', 1),
(11, 1, 7, 'nita', '0888888888', 'jl XXXX\r\n', '2020-08-06 11:13:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(10, 29, 2, 530000),
(11, 32, 1, 530000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(2, 'superadmin', 'admin', 'admin@weshop.com', 'jl weshop', '08889999', '1b3231655cebb7a1f783eddf27d254ca', 'on'),
(6, 'customer', 'customer', 'customer1@aaa.com', 'jl.Customer Weshop', '088888', '5f4dcc3b5aa765d61d8327deb882cf99', 'on'),
(7, 'customer', 'Yunita', 'nita@aaa.com', 'jl.xxxx', '081231923091', '1eb6d605e0698d0c6d3121c8cd45e6b5', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
