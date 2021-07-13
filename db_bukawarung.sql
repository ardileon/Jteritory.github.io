-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2021 pada 05.05
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Iinu', 'admin', 'fcea920f7412b5da7be0cf42b8c93759', '+62 085889352275', 'ardileon444@gmail.com', 'Jl.gangmasjid No 15, Cengkareng Barat, Jakarta Barat 1150.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(17, 'Cashier'),
(18, 'Barista'),
(19, 'Guru Bimbel '),
(20, 'Penjaga Toko '),
(21, 'Waiter'),
(22, 'Sales'),
(23, 'Admin Toko Online ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `product_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `product_created`) VALUES
(14, 23, 'Mencari admin shopee', 2500000, '<p>Requirements :&nbsp;&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Seorang wanita/lelaki</li>\r\n	<li>Memiliki usia maksimal 30 tahun</li>\r\n	<li>Pendidikan minimal lulusan D3 / S1</li>\r\n	<li>Berpenampilan menarik</li>\r\n	<li>Memiliki ketelitian tingkat tinggi</li>\r\n	<li>Berkemampuan mengoperasikan computer dengan baik</li>\r\n	<li>Mumpuni (terampil) dalam mengoperasikan Microsoft Office (Word + Excel) dan program akuntansi</li>\r\n	<li>Berkemampuan yang baik dalam berkomunikasi dengan orang lain</li>\r\n	<li>Siap bekerja dengan tanggung jawab penuh</li>\r\n	<li>Memiliki pengalaman kerja di bidang yang sama minimal 2 tahun</li>\r\n</ul>\r\n', 'produk1625489057.jpg', 1, '2021-07-05 12:44:17'),
(15, 22, 'Sales promotion ', 350000, '<p>requirements:</p>\r\n\r\n<p>350000 /jam.</p>\r\n\r\n<ul>\r\n	<li>memiliki pendidikan minimal SMA/SMK/D3 dan lulusan sekolah sederajat</li>\r\n	<li>wanita/laki-laki maksimal umur 26 tahun</li>\r\n	<li>siap bekerja dengan orientasi target</li>\r\n	<li>memiliki tinggi badan yang cukup</li>\r\n	<li>memiliki dan bisa menggunakan teknologi masa kini seperti: komputer, tab, atau smartphone</li>\r\n	<li>dapat berkomunikasi dengan baik dan lancar, lebih bagus lagi bisa berbahasa asing</li>\r\n	<li>profesional dalam bekerja, menjaga norma-norma yang berlaku, dan memiliki body language yang menarik</li>\r\n	<li>memiliki kemampuan marketing pasti akan lebih dipertimbangkan</li>\r\n</ul>\r\n', 'produk1625489299.jpg', 1, '2021-07-05 12:48:19'),
(16, 21, 'Pelayan MCD ', 1200000, '<p>requirements:</p>\r\n\r\n<ul>\r\n	<li>Lulusan SMA/ sederajat.&nbsp;</li>\r\n	<li>Usia 18 &ndash; 23 tahun</li>\r\n	<li>Berpenampilan menari</li>\r\n	<li>Bersedia bekerja shifting &amp; di hari libur nasional</li>\r\n	<li>Jujur, bertanggung jawab dan customer oriented</li>\r\n	<li>Bersedia di tempatkan di seluruh restoran&nbsp;<a href=\"https://makassar.tribunnews.com/tag/mcd\">McD</a>onald&#39;s</li>\r\n</ul>\r\n', 'produk1625489593.jpg', 1, '2021-07-05 12:53:13'),
(17, 20, 'Penjaga Toko Bunga', 2000000, '<p>requirements:&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Dapat berkomunikasi dengan baik</strong></li>\r\n	<li>Sabar dalam melayani</li>\r\n	<li><strong><strong>Bersikap ramah pada pengunjung toko</strong></strong></li>\r\n	<li><strong><strong>Berpenampilan menarik</strong></strong></li>\r\n	<li><strong>Jujur dalam bekerja</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1625490028.jpg', 1, '2021-07-05 13:00:28'),
(18, 19, 'Guru Freelance', 300000, '<p>requirements;</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;300000 /jam.</p>\r\n\r\n<ul>\r\n	<li>Memiliki kualifikasi akademik.</li>\r\n	<li>Memilki kualifikasi kompetensi.</li>\r\n	<li>Memilki sertifikat pendidik.</li>\r\n	<li>Sehat jasmani dan rohani.</li>\r\n	<li>Memilki kemampuan untuk mewujudkan tujuan pendidikan nasional.</li>\r\n</ul>\r\n', 'produk1625490274.jpg', 1, '2021-07-05 13:04:34'),
(19, 18, 'Barista starbucks', 150000, '<p>requirements:</p>\r\n\r\n<p>Rp 150000 / jam</p>\r\n\r\n<ul>\r\n	<li>Pria / Wanita Usia 18 - 24 tahun</li>\r\n	<li>Pendidikan minimal SMA / SMK Sederajat (Untuk D3 / S1 Diutamakan Jurusan Perhotelan, Pariwisata dan Ilmu Sosial)</li>\r\n	<li>Kandidat yang bergairah dengan energi dan antusiasme tingkat tinggi</li>\r\n	<li>Keahlian interpersonal yang kuat dengan kepribadian yang ramah dan sikap layanan pelanggan</li>\r\n	<li>Kemampuan untuk bekerja sebagai bagian dari tim yang positif dan dinamis</li>\r\n	<li>Tersedia untuk bekerja di jam kerja dan fleksibel untuk pagi, sore, akhir pekan dan / atau waktu liburan</li>\r\n	<li>Berpengalaman minimal 1 tahun dibidang industri F&amp;B, Perhotelan, &amp; Retail</li>\r\n</ul>\r\n', 'produk1625490699.jpg', 1, '2021-07-05 13:11:39'),
(20, 17, 'Alfamart', 1900000, '<p>requirements:</p>\r\n\r\n<ul>\r\n	<li>Wanita/Pria</li>\r\n	<li>Tidak bertato dan bertindik</li>\r\n	<li>Badan Sehat</li>\r\n	<li>Umur maksimal 24 tahun ( untuk lulusan SMK sederajat )</li>\r\n	<li>Boleh berkacamata</li>\r\n	<li>Tinggi badan bebas</li>\r\n	<li>Tidak pernah terlibat masalah dengan kepolisian</li>\r\n	<li>Lulusan minimal SMA sederajat</li>\r\n</ul>\r\n', 'produk1625490832.jpg', 1, '2021-07-05 13:13:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
