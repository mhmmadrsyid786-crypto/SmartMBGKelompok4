-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2026 at 02:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_mbg4`
--

-- --------------------------------------------------------

--
-- Table structure for table `alergi_siswa`
--

CREATE TABLE `alergi_siswa` (
  `id_alergi_siswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_alergi` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alergi_siswa`
--

INSERT INTO `alergi_siswa` (`id_alergi_siswa`, `id_siswa`, `id_alergi`, `id_sekolah`, `catatan`) VALUES
(1, 1, 1, 1, 'Hindari minuman susu murni di lingkungan TK'),
(2, 2, 4, 1, 'Batasi makan telur ceplok/rebus saat makan siang'),
(3, 3, 3, 1, 'Sama sekali tidak boleh terpapar bumbu kacang'),
(4, 4, 2, 1, 'Hindari kuah tumisan seafood'),
(5, 11, 5, 2, 'Ganti roti gandum dengan opsi karbohidrat lain'),
(6, 12, 6, 2, 'Reaksi gatal kecil jika makan tahu goreng berlebih'),
(7, 13, 7, 2, 'Ganti lauk ikan tongkol dengan ayam tepung'),
(8, 14, 8, 2, 'Hindari snack cokelat batangan saat pembagian camilan'),
(9, 21, 1, 3, 'Alergi susu formula akut, sediakan opsi susu kedelai'),
(10, 22, 2, 3, 'Gatal di kulit jika makan udang rebon'),
(11, 23, 4, 3, 'Hindari mayones berbahan dasar telur pada makanan'),
(12, 24, 15, 3, 'Hindari toping keju parut pada jagung manis'),
(13, 31, 11, 4, 'Ganti jus stroberi ke jus jambu biji'),
(14, 32, 3, 4, 'Dilarang keras makan pecel/gado-gado'),
(15, 33, 2, 4, 'Alergi udang dan kepiting laut tingkat tinggi'),
(16, 34, 10, 4, 'Ganti bola daging sapi ke bola-bola ayam fillet'),
(17, 41, 12, 5, 'Hindari buah jeruk yang terlalu asam pada hidangan penutup'),
(18, 42, 6, 5, 'Kurangi porsi kecap manis berkedelai pekat'),
(19, 43, 14, 5, 'Ganti saus tomat kemasan dengan saus kaldu tomat asli'),
(20, 44, 1, 5, 'Ganti puding susu dengan puding buah jeli murni');

-- --------------------------------------------------------

--
-- Table structure for table `distribusi`
--

CREATE TABLE `distribusi` (
  `id_distribusi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_porsi` int(11) DEFAULT 1,
  `total_kalori` int(11) DEFAULT 0,
  `status` enum('Sudah Dibagikan','Belum Dibagikan') DEFAULT 'Belum Dibagikan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `distribusi`
--

INSERT INTO `distribusi` (`id_distribusi`, `id_siswa`, `id_menu`, `id_petugas`, `tanggal`, `jumlah_porsi`, `total_kalori`, `status`) VALUES
(1, 1, 1, 6, '2026-06-15', 1, 400, 'Sudah Dibagikan'),
(2, 2, 2, 6, '2026-06-15', 1, 380, 'Belum Dibagikan'),
(3, 3, 1, 6, '2026-06-15', 1, 400, 'Sudah Dibagikan'),
(4, 4, 2, 6, '2026-06-15', 1, 380, 'Sudah Dibagikan'),
(5, 11, 3, 6, '2026-06-15', 1, 550, 'Sudah Dibagikan'),
(6, 12, 4, 6, '2026-06-15', 1, 560, 'Belum Dibagikan'),
(7, 13, 3, 6, '2026-06-15', 1, 550, 'Sudah Dibagikan'),
(8, 14, 4, 6, '2026-06-15', 1, 560, 'Sudah Dibagikan'),
(9, 15, 3, 6, '2026-06-15', 1, 550, 'Sudah Dibagikan'),
(10, 21, 5, 6, '2026-06-15', 1, 680, 'Belum Dibagikan'),
(11, 22, 6, 7, '2026-06-15', 1, 670, 'Belum Dibagikan'),
(12, 23, 5, 7, '2026-06-15', 1, 680, 'Sudah Dibagikan'),
(13, 24, 6, 7, '2026-06-15', 1, 670, 'Sudah Dibagikan'),
(14, 31, 7, 7, '2026-06-15', 1, 750, 'Sudah Dibagikan'),
(15, 32, 8, 7, '2026-06-15', 1, 740, 'Sudah Dibagikan'),
(16, 33, 7, 7, '2026-06-15', 1, 750, 'Sudah Dibagikan'),
(17, 34, 8, 7, '2026-06-15', 1, 740, 'Belum Dibagikan'),
(18, 41, 9, 7, '2026-06-15', 1, 780, 'Sudah Dibagikan'),
(19, 42, 10, 7, '2026-06-15', 1, 760, 'Sudah Dibagikan'),
(20, 43, 9, 7, '2026-06-15', 1, 780, 'Sudah Dibagikan');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aktivitas` varchar(255) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id_log`, `id_user`, `aktivitas`, `waktu`) VALUES
(1, 1, 'Melakukan optimasi data massal database smartmbg', '2026-06-13 07:35:07'),
(2, 2, 'Menambahkan stok Beras Kepala Super sebanyak 150 kg', '2026-06-13 07:35:07'),
(3, 3, 'Membagikan porsi makan siang di SD Swasta Nusantara 1', '2026-06-13 07:35:07'),
(4, 1, 'Mengubah data master sekolah id 3', '2026-06-13 07:35:07'),
(5, 5, 'Melakukan update stok Daging Ayam Fillet masuk', '2026-06-13 07:35:07'),
(6, 6, 'Membagikan Jus Stroberi kepada siswa SMP', '2026-06-13 07:35:07'),
(7, 4, 'Melakukan audit berkala data master alergi', '2026-06-13 07:35:07'),
(8, 2, 'Mengeluarkan stok Udang Vaname untuk menu makan siang', '2026-06-13 07:35:07'),
(9, 7, 'Mencatat tanggal kedaluwarsa bahan mentah keju kraft', '2026-06-13 07:35:07'),
(10, 3, 'Melakukan validasi status pengiriman distribusi makanan', '2026-06-13 07:35:07'),
(11, 1, 'Menonaktifkan user akun lama yang tidak terpakai', '2026-06-13 07:35:07'),
(12, 5, 'Menginput log stok harian telur ayam negeri', '2026-06-13 07:35:07'),
(13, 6, 'Memperbarui status antrean pembagian makanan di SMK', '2026-06-13 07:35:07'),
(14, 4, 'Mengeksport data laporan bulanan MBG ke format Excel', '2026-06-13 07:35:07'),
(15, 2, 'Memeriksa kapasitas ruang penyimpanan dingin (cold storage)', '2026-06-13 07:35:07'),
(16, 3, 'Mengonfirmasi penerimaan porsi makan oleh kepala sekolah', '2026-06-13 07:35:07'),
(17, 1, 'Mengubah konfigurasi sistem keamanan password admin', '2026-06-13 07:35:07'),
(18, 7, 'Mendaftarkan item bahan makanan baru biji selasih kering', '2026-06-13 07:35:07'),
(19, 6, 'Menangani laporan kerusakan kemasan susu UHT kotak', '2026-06-13 07:35:07'),
(20, 4, 'Menyelesaikan rekap log validasi bahaya kontaminasi makanan', '2026-06-13 07:35:07'),
(21, 2, 'Menjadwalkan menu untuk siswa', '2026-06-14 05:04:26'),
(22, 1, 'Login ke dalam sistem', '2026-06-14 05:06:58'),
(23, 1, 'Mengubah data distribusi ID: 20', '2026-06-14 06:00:09'),
(24, 1, 'Mengubah data distribusi ID: 20', '2026-06-14 06:02:59'),
(25, 1, 'Logout dari sistem', '2026-06-14 06:05:06'),
(26, 2, 'Login ke dalam sistem', '2026-06-14 06:06:26'),
(27, 2, 'Logout dari sistem', '2026-06-14 06:07:20'),
(28, 2, 'Login ke dalam sistem', '2026-06-14 06:15:07'),
(29, 2, 'Logout dari sistem', '2026-06-14 06:15:31'),
(30, 1, 'Login ke dalam sistem', '2026-06-14 06:29:37'),
(31, 1, 'Mengubah master sekolah ID: 5', '2026-06-14 06:30:07'),
(32, 1, 'Mengubah master sekolah ID: 3', '2026-06-14 06:30:19'),
(33, 1, 'Menjadwalkan menu untuk siswa', '2026-06-14 06:38:33'),
(34, 1, 'Logout dari sistem', '2026-06-14 06:39:21'),
(35, 1, 'Login ke dalam sistem', '2026-06-14 07:16:55'),
(36, 2, 'Login ke dalam sistem', '2026-06-14 08:57:22'),
(37, 2, 'Login ke dalam sistem', '2026-06-15 06:52:22'),
(38, 2, 'Logout dari sistem', '2026-06-15 08:04:23'),
(39, 1, 'Login ke dalam sistem', '2026-06-15 08:25:28'),
(40, 1, 'Logout dari sistem', '2026-06-15 08:25:32'),
(41, 2, 'Login ke dalam sistem', '2026-06-20 06:47:12'),
(42, 2, 'Logout dari sistem', '2026-06-20 06:53:35'),
(43, 5, 'Login ke dalam sistem', '2026-06-20 06:54:37'),
(44, 5, 'Logout dari sistem', '2026-06-20 06:54:49'),
(45, 6, 'Login ke dalam sistem', '2026-06-20 06:55:07'),
(46, 6, 'Logout dari sistem', '2026-06-20 07:01:00'),
(47, 2, 'Login ke dalam sistem', '2026-06-20 07:01:34'),
(48, 2, 'Logout dari sistem', '2026-06-20 07:06:45'),
(49, 2, 'Login ke dalam sistem', '2026-06-20 07:18:20'),
(50, 2, 'Login ke dalam sistem', '2026-06-20 08:26:42'),
(51, 2, 'Login ke dalam sistem', '2026-06-21 10:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `master_alergi`
--

CREATE TABLE `master_alergi` (
  `id_alergi` int(11) NOT NULL,
  `nama_alergi` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_alergi`
--

INSERT INTO `master_alergi` (`id_alergi`, `nama_alergi`, `deskripsi`) VALUES
(1, 'Alergi Susu Sapi', 'Reaksi terhadap protein kasein atau whey dalam susu sapi'),
(2, 'Alergi Seafood', 'Reaksi terhadap ikan, udang, kepiting, atau kerang'),
(3, 'Alergi Kacang Tanah', 'Reaksi terhadap protein pada kacang tanah'),
(4, 'Alergi Telur Ayam', 'Alergi umum pada bagian putih telur atau kuning telur'),
(5, 'Alergi Gandum / Gluten', 'Intoleransi atau alergi terhadap protein tepung terigu'),
(6, 'Alergi Kedelai', 'Alergi terhadap olahan kedelai seperti tempe/tahu'),
(7, 'Alergi Ikan Tongkol', 'Sensitivitas terhadap jenis ikan air laut tertentu'),
(8, 'Alergi Cokelat', 'Reaksi alergi terhadap kandungan kakao atau tambahan zat di cokelat'),
(9, 'Alergi Jagung', 'Sensitivitas terhadap karbohidrat kompleks jagung'),
(10, 'Alergi Daging Sapi', 'Reaksi imun langka terhadap protein daging merah'),
(11, 'Alergi Stroberi', 'Reaksi gatal akibat buah stroberi asam'),
(12, 'Alergi Jeruk', 'Reaksi asam sitrat pada kulit mulut siswa'),
(13, 'Alergi Madu', 'Alergi karena kontaminasi serbuk sari di dalam madu'),
(14, 'Alergi Tomat', 'Gatal-gatal ringan seputar area mulut setelah makan tomat'),
(15, 'Alergi Keju', 'Turunan dari alergi susu dengan reaksi pencernaan kembung'),
(16, 'Alergi Udang Galah', 'Spesifik alergi seafood krustasea besar'),
(17, 'Alergi Kepiting', 'Pembengkakan bibir akibat kandungan protein kepiting baku'),
(18, 'Alergi Mentega', 'Reaksi terhadap lemak susu olahan padat'),
(19, 'Alergi Kacang Almond', 'Alergi jenis tree nuts (kacang pohon)'),
(20, 'Alergi Pewarna Sintetis', 'Alergi zat aditif pewarna merah/kuning makanan');

-- --------------------------------------------------------

--
-- Table structure for table `master_sekolah`
--

CREATE TABLE `master_sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `npsn` varchar(8) DEFAULT NULL,
  `nama_sekolah` varchar(150) NOT NULL,
  `jenjang` enum('TK','SD','SMP','SMA','SMK') DEFAULT 'SD',
  `jumlah_siswa` int(11) NOT NULL DEFAULT 0,
  `status_sekolah` enum('Negeri','Swasta') DEFAULT 'Negeri',
  `alamat_sekolah` text DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `nama_kepsek` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_sekolah`
--

INSERT INTO `master_sekolah` (`id_sekolah`, `npsn`, `nama_sekolah`, `jenjang`, `jumlah_siswa`, `status_sekolah`, `alamat_sekolah`, `telepon`, `nama_kepsek`, `created_at`) VALUES
(1, '10200001', 'TK Pembina Al-Fitrah', 'TK', 45, 'Negeri', 'Jl. Merdeka No. 12, Medan', '061-123401', 'Hj. Aminah Putri, M.Pd', '2026-06-13 07:35:07'),
(2, '10200002', 'SD Swasta Nusantara 1', 'SD', 180, 'Swasta', 'Jl. Sisingamangaraja No. 45, Medan', '061-123402', 'Drs. Budi Setiawan', '2026-06-13 07:35:07'),
(3, '10200003', 'SMP Negeri 1 Garuda', 'SMP', 220, 'Negeri', 'Jl. Gatot Subroto Km. 5, Medan', '061-123403', 'Siti Rahmah, S.Pd', '2026-06-13 07:35:07'),
(4, '10203456', 'SMA N 2 Kisaran', 'SMA', 250, 'Negeri', 'Jl. Jend. Ahmad Yani, Kisaran', '0623-41234', 'Drs. H. Syahrial, M.Pd', '2026-06-13 07:35:07'),
(5, '10200008', 'SMK Negeri 2 Medan', 'SMK', 200, 'Negeri', 'Jl. Jamin Ginting Km. 10, Medan', '061-123408', 'Dr. Supriyadi, M.T', '2026-06-13 07:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `menu_alergen`
--

CREATE TABLE `menu_alergen` (
  `id_menu_alergen` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_alergi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_alergen`
--

INSERT INTO `menu_alergen` (`id_menu_alergen`, `id_menu`, `id_alergi`) VALUES
(21, 1, 10),
(22, 2, 1),
(23, 3, 7),
(24, 5, 4),
(25, 6, 7),
(26, 8, 2),
(27, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `menu_makanan`
--

CREATE TABLE `menu_makanan` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `jenjang` enum('TK','SD','SMP','SMA','SMK') NOT NULL,
  `kategori` enum('Makanan Utama','Lauk','Sayur','Buah','Minuman') NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `kalori` int(11) NOT NULL,
  `protein` decimal(5,2) DEFAULT 0.00,
  `lemak` decimal(5,2) DEFAULT 0.00,
  `karbohidrat` decimal(5,2) DEFAULT 0.00,
  `vitamin` decimal(5,2) DEFAULT 0.00,
  `berat_porsi` int(11) DEFAULT 0 COMMENT 'gram',
  `harga` decimal(10,2) DEFAULT 0.00,
  `status` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_makanan`
--

INSERT INTO `menu_makanan` (`id_menu`, `nama_menu`, `jenjang`, `kategori`, `deskripsi`, `kalori`, `protein`, `lemak`, `karbohidrat`, `vitamin`, `berat_porsi`, `harga`, `status`, `created_at`) VALUES
(1, 'Paket Utama TK', 'TK', 'Makanan Utama', 'Nasi Putih Lembek, Telur Dadar Gulung Sapi Cincang, Sayur Bening Bayam, dan Buah Pisang Ambon.', 400, 15.00, 11.00, 53.00, 7.00, 230, 10000.00, 'Aktif', '2026-06-14 04:34:26'),
(2, 'Paket Cadangan TK', 'TK', 'Makanan Utama', 'Bubur Kacang Hijau murni, Tahu Kukus Lembut isi Ayam, dan Susu Kotak UHT Kecil.', 380, 13.50, 9.00, 55.00, 5.50, 220, 9500.00, 'Aktif', '2026-06-14 04:34:26'),
(3, 'Paket Utama SD', 'SD', 'Makanan Utama', 'Nasi Putih, Ikan Kembung Goreng Garing, Tempe Goreng Tepung, Sup Makaroni Wortel, dan Semangka Potong.', 550, 23.00, 15.00, 75.00, 12.00, 350, 12500.00, 'Aktif', '2026-06-14 04:34:26'),
(4, 'Paket Cadangan SD', 'SD', 'Makanan Utama', 'Nasi Putih, Ayam Goreng Lengkuas, Tahu Bacem Manis, Tumis Sawi Hijau, dan 1 buah Jeruk Lokal.', 560, 24.00, 14.50, 76.00, 14.00, 360, 12500.00, 'Aktif', '2026-06-14 04:34:26'),
(5, 'Paket Utama SMP', 'SMP', 'Makanan Utama', 'Nasi Putih, Ayam Ungkep Goreng, Telur Rebus Bulat, Tumis Kacang Panjang Tempe, dan Buah Pepaya Segar.', 680, 29.00, 19.00, 90.00, 11.00, 420, 14000.00, 'Aktif', '2026-06-14 04:34:26'),
(6, 'Paket Cadangan SMP', 'SMP', 'Makanan Utama', 'Nasi Putih, Ikan Kembung Sambal Cabai Merah, Tahu Isi Sayuran, Sayur Lodeh, dan Buah Jeruk.', 670, 28.00, 20.00, 88.00, 13.00, 430, 13500.00, 'Aktif', '2026-06-14 04:34:26'),
(7, 'Paket Utama SMA', 'SMA', 'Makanan Utama', 'Nasi Putih Porsi Besar, Daging Rendang Padang, Perkedel Kentang, Tumis Daun Singkong, dan Buah Melon.', 750, 33.00, 22.00, 95.00, 11.50, 460, 15000.00, 'Aktif', '2026-06-14 04:34:26'),
(8, 'Paket Cadangan SMA', 'SMA', 'Makanan Utama', 'Nasi Putih, Ayam Bakar Madu, Tahu Goreng Crispy, Cah Udang Capcay Sayur, dan Buah Apel.', 740, 31.50, 21.00, 93.00, 12.50, 450, 15000.00, 'Aktif', '2026-06-14 04:34:26'),
(9, 'Paket Utama SMK', 'SMK', 'Makanan Utama', 'Nasi Putih Porsi Mantap, Ayam Bakar Bumbu Kuning, Tempe Mendoan, Sup Kimlo Komplit, dan Buah Pisang Ambon.', 780, 34.00, 23.00, 100.00, 12.00, 480, 15000.00, 'Aktif', '2026-06-14 04:34:26'),
(10, 'Paket Cadangan SMK', 'SMK', 'Makanan Utama', 'Nasi Putih, Sambal Goreng Ati Ampela Kentang, Telur Ceplok Air, Tumis Buncis Jagung Muda, dan Buah Pepaya.', 760, 32.50, 22.00, 98.00, 10.50, 475, 14500.00, 'Aktif', '2026-06-14 04:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `status` enum('Aktif','Nonaktif') DEFAULT 'Aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_sekolah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_siswa`, `jenis_kelamin`, `status`, `created_at`, `id_sekolah`) VALUES
(1, '0211111001', 'Aisyah Putri', 'P', 'Aktif', '2026-06-13 07:35:07', 1),
(2, '0202222002', 'Faris Pratama', 'L', 'Aktif', '2026-06-13 07:35:07', 1),
(3, '0211111003', 'Gibran Rakabuming', 'L', 'Aktif', '2026-06-13 07:35:07', 1),
(4, '0202222004', 'Mutia Khanza', 'P', 'Aktif', '2026-06-13 07:35:07', 1),
(5, '0211111005', 'Qonita Kayla', 'P', 'Aktif', '2026-06-13 07:35:07', 1),
(6, '0202222006', 'Zaki Anwar', 'L', 'Aktif', '2026-06-13 07:35:07', 1),
(7, '0211111007', 'Naila Shafa', 'P', 'Aktif', '2026-06-13 07:35:07', 1),
(8, '0202222008', 'Rizky Alfariz', 'L', 'Aktif', '2026-06-13 07:35:07', 1),
(9, '0211111009', 'Ahmad Dani', 'L', 'Aktif', '2026-06-13 07:35:07', 1),
(10, '0202222010', 'Siti Zahra', 'P', 'Aktif', '2026-06-13 07:35:07', 1),
(11, '0153333011', 'Budi Ramadhan', 'L', 'Aktif', '2026-06-13 07:35:07', 2),
(12, '0164444012', 'Citra Lestari', 'P', 'Aktif', '2026-06-13 07:35:07', 2),
(13, '0141010013', 'Hendra Wijaya', 'L', 'Aktif', '2026-06-13 07:35:07', 2),
(14, '0161515014', 'Naufal Rizqi', 'L', 'Aktif', '2026-06-13 07:35:07', 2),
(15, '0151919015', 'Rian Alamsyah', 'L', 'Aktif', '2026-06-13 07:35:07', 2),
(16, '0164444016', 'Adelia Rahma', 'P', 'Aktif', '2026-06-13 07:35:07', 2),
(17, '0153333017', 'Fahri Husein', 'L', 'Aktif', '2026-06-13 07:35:07', 2),
(18, '0164444018', 'Indah Permata', 'P', 'Aktif', '2026-06-13 07:35:07', 2),
(19, '0153333019', 'Yusuf Mahendra', 'L', 'Aktif', '2026-06-13 07:35:07', 2),
(20, '0164444020', 'Tiara Andini', 'P', 'Aktif', '2026-06-13 07:35:07', 2),
(21, '0125555021', 'Doni Saputra', 'L', 'Aktif', '2026-06-13 07:35:07', 3),
(22, '0136666022', 'Larasati Ayu', 'P', 'Aktif', '2026-06-13 07:35:07', 3),
(23, '0121212023', 'Indah Lestari', 'P', 'Aktif', '2026-06-13 07:35:07', 3),
(24, '0132020024', 'Siti Rahma', 'P', 'Aktif', '2026-06-13 07:35:07', 3),
(25, '0125555025', 'Dimas Anggara', 'L', 'Aktif', '2026-06-13 07:35:07', 3),
(26, '0136666026', 'Arif Rahman', 'L', 'Aktif', '2026-06-13 07:35:07', 3),
(27, '0121212027', 'Nadia Vega', 'P', 'Aktif', '2026-06-13 07:35:07', 3),
(28, '0132020028', 'Bagus Saputra', 'L', 'Aktif', '2026-06-13 07:35:07', 3),
(29, '0125555029', 'Eka Satria', 'L', 'Aktif', '2026-06-13 07:35:07', 3),
(30, '0136666030', 'Windy Utami', 'P', 'Aktif', '2026-06-13 07:35:07', 3),
(31, '0082121031', 'Aditya Pratama', 'L', 'Aktif', '2026-06-13 07:35:07', 4),
(32, '0092121032', 'Bella Safira', 'P', 'Aktif', '2026-06-13 07:35:07', 4),
(33, '0102121033', 'Chandra Wijaya', 'L', 'Aktif', '2026-06-13 07:35:07', 4),
(34, '0082121034', 'Dinda Lestari', 'P', 'Aktif', '2026-06-13 07:35:07', 4),
(35, '0092121035', 'Edo Syahputra', 'L', 'Aktif', '2026-06-13 07:35:07', 4),
(36, '0102121036', 'Fitriani Pane', 'P', 'Aktif', '2026-06-13 07:35:07', 4),
(37, '0082121037', 'Gilang Ramadhan', 'L', 'Aktif', '2026-06-13 07:35:07', 4),
(38, '0092121038', 'Hana Salsabila', 'P', 'Aktif', '2026-06-13 07:35:07', 4),
(39, '0102121039', 'Irfan Hakim', 'L', 'Aktif', '2026-06-13 07:35:07', 4),
(40, '0082121040', 'Jessica Putri', 'P', 'Aktif', '2026-06-13 07:35:07', 4),
(41, '0097777041', 'Eka Putra', 'L', 'Aktif', '2026-06-13 07:35:07', 5),
(42, '0108888042', 'Putri Rahmadani', 'P', 'Aktif', '2026-06-13 07:35:07', 5),
(43, '0081313043', 'Kevin Sanjaya', 'L', 'Aktif', '2026-06-13 07:35:07', 5),
(44, '0091717044', 'Putra Perkasa', 'L', 'Aktif', '2026-06-13 07:35:07', 5),
(45, '0102121045', 'Taufik Hidayat', 'L', 'Aktif', '2026-06-13 07:35:07', 5),
(46, '0097777046', 'Rian Sanjaya', 'L', 'Aktif', '2026-06-13 07:35:07', 5),
(47, '0108888047', 'Mega Utami', 'P', 'Aktif', '2026-06-13 07:35:07', 5),
(48, '0081313048', 'Fajar Shadiq', 'L', 'Aktif', '2026-06-13 07:35:07', 5),
(49, '0091717049', 'Salsa Bila', 'P', 'Aktif', '2026-06-13 07:35:07', 5),
(50, '0102121050', 'Angga Wijaya', 'L', 'Aktif', '2026-06-13 07:35:07', 5),
(51, '212201', 'Ahmad Fauzi', 'L', 'Aktif', '2026-06-14 06:14:32', 1),
(52, '212202', 'Siti Aminah', 'P', 'Aktif', '2026-06-14 06:14:32', 1),
(53, '212203', 'Rizky Ramadhan', 'L', 'Aktif', '2026-06-14 06:14:32', 1),
(54, '212204', 'Putri Lestari', 'P', 'Aktif', '2026-06-14 06:14:32', 1),
(55, '212205', 'Bagas Saputra', 'L', 'Aktif', '2026-06-14 06:14:32', 1),
(56, '212206', 'Anisa Rahmawati', 'P', 'Aktif', '2026-06-14 06:14:32', 1),
(57, '212207', 'Daffa Alamsyah', 'L', 'Aktif', '2026-06-14 06:14:32', 1),
(58, '212208', 'Zahra Aulia', 'P', 'Aktif', '2026-06-14 06:14:32', 1),
(59, '212209', 'Farel Prayoga', 'L', 'Aktif', '2026-06-14 06:14:32', 1),
(60, '212210', 'Nabila Syahfitri', 'P', 'Aktif', '2026-06-14 06:14:32', 1),
(61, '171801', 'Aditya Wijaya', 'L', 'Aktif', '2026-06-14 06:14:32', 2),
(62, '171802', 'Keysha Putri', 'P', 'Aktif', '2026-06-14 06:14:32', 2),
(63, '171803', 'Guntur Wibowo', 'L', 'Aktif', '2026-06-14 06:14:32', 2),
(64, '171804', 'Tiara Andini', 'P', 'Aktif', '2026-06-14 06:14:32', 2),
(65, '171805', 'Dimas Setiawan', 'L', 'Aktif', '2026-06-14 06:14:32', 2),
(66, '171806', 'Salsabila Ayu', 'P', 'Aktif', '2026-06-14 06:14:32', 2),
(67, '171807', 'Raditya Pratama', 'L', 'Aktif', '2026-06-14 06:14:32', 2),
(68, '171808', 'Amanda Manopo', 'P', 'Aktif', '2026-06-14 06:14:32', 2),
(69, '171809', 'Eko Prasetyo', 'L', 'Aktif', '2026-06-14 06:14:32', 2),
(70, '171810', 'Dinda Kirana', 'P', 'Aktif', '2026-06-14 06:14:32', 2),
(71, '121301', 'Arif Rahman', 'L', 'Aktif', '2026-06-14 06:14:32', 3),
(72, '121302', 'Lestari Dewi', 'P', 'Aktif', '2026-06-14 06:14:32', 3),
(73, '121303', 'Hendra Wijaya', 'L', 'Aktif', '2026-06-14 06:14:32', 3),
(74, '121304', 'Fitri Handayani', 'P', 'Aktif', '2026-06-14 06:14:32', 3),
(75, '121305', 'Rian Hidayat', 'L', 'Aktif', '2026-06-14 06:14:32', 3),
(76, '121306', 'Mega Utami', 'P', 'Aktif', '2026-06-14 06:14:32', 3),
(77, '121307', 'Yusuf Bahtiar', 'L', 'Aktif', '2026-06-14 06:14:32', 3),
(78, '121308', 'Siti Nurhaliza', 'P', 'Aktif', '2026-06-14 06:14:32', 3),
(79, '121309', 'Fajar Shadiq', 'L', 'Aktif', '2026-06-14 06:14:32', 3),
(80, '121310', 'Rania Putri', 'P', 'Aktif', '2026-06-14 06:14:32', 3),
(81, '091001', 'Bambang Pamungkas', 'L', 'Aktif', '2026-06-14 06:14:32', 4),
(82, '091002', 'Citra Lestari', 'P', 'Aktif', '2026-06-14 06:14:32', 4),
(83, '091003', 'Andika Perkasa', 'L', 'Aktif', '2026-06-14 06:14:32', 4),
(84, '091004', 'Dewi Sartika', 'P', 'Aktif', '2026-06-14 06:14:32', 4),
(85, '091005', 'Ferry Irawan', 'L', 'Aktif', '2026-06-14 06:14:32', 4),
(86, '091006', 'Gisella Anastasia', 'P', 'Aktif', '2026-06-14 06:14:32', 4),
(87, '091007', 'Irfan Bachdim', 'L', 'Aktif', '2026-06-14 06:14:32', 4),
(88, '091008', 'Jessica Mila', 'P', 'Aktif', '2026-06-14 06:14:32', 4),
(89, '091009', 'Kevin Sanjaya', 'L', 'Aktif', '2026-06-14 06:14:32', 4),
(90, '091010', 'Luna Maya', 'P', 'Aktif', '2026-06-14 06:14:32', 4),
(91, '101101', 'Muhammad Ali', 'L', 'Aktif', '2026-06-14 06:14:32', 5),
(92, '101102', 'Nani Wijaya', 'P', 'Aktif', '2026-06-14 06:14:32', 5),
(93, '101103', 'Oki Setiana', 'L', 'Aktif', '2026-06-14 06:14:32', 5),
(94, '101104', 'Puspita Sari', 'P', 'Aktif', '2026-06-14 06:14:32', 5),
(95, '101105', 'Rendy Pandugo', 'L', 'Aktif', '2026-06-14 06:14:32', 5),
(96, '101106', 'Siti Badriah', 'P', 'Aktif', '2026-06-14 06:14:32', 5),
(97, '101107', 'Taufik Hidayat', 'L', 'Aktif', '2026-06-14 06:14:32', 5),
(98, '101108', 'Ussy Sulistiawaty', 'P', 'Aktif', '2026-06-14 06:14:32', 5),
(99, '101109', 'Vidi Aldiano', 'L', 'Aktif', '2026-06-14 06:14:32', 5),
(100, '101110', 'Wulan Guritno', 'P', 'Aktif', '2026-06-14 06:14:32', 5);

-- --------------------------------------------------------

--
-- Table structure for table `siswa_menu`
--

CREATE TABLE `siswa_menu` (
  `id_siswa_menu` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa_menu`
--

INSERT INTO `siswa_menu` (`id_siswa_menu`, `id_siswa`, `id_menu`, `tanggal`) VALUES
(31, 1, 1, '2026-06-15'),
(32, 2, 2, '2026-06-15'),
(33, 3, 1, '2026-06-15'),
(34, 4, 2, '2026-06-15'),
(35, 11, 3, '2026-06-15'),
(36, 12, 4, '2026-06-15'),
(37, 13, 3, '2026-06-15'),
(38, 14, 4, '2026-06-15'),
(39, 15, 3, '2026-06-15'),
(40, 21, 5, '2026-06-15'),
(41, 22, 6, '2026-06-15'),
(42, 23, 5, '2026-06-15'),
(43, 24, 6, '2026-06-15'),
(44, 31, 7, '2026-06-15'),
(45, 32, 8, '2026-06-15'),
(46, 33, 7, '2026-06-15'),
(47, 34, 8, '2026-06-15'),
(48, 41, 9, '2026-06-15'),
(49, 42, 10, '2026-06-15'),
(50, 43, 9, '2026-06-15'),
(51, 100, 9, '2026-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `stok_bahan`
--

CREATE TABLE `stok_bahan` (
  `id_bahan` int(11) NOT NULL,
  `nama_bahan` varchar(100) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stok_minimum` int(11) DEFAULT 0,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_expired` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stok_bahan`
--

INSERT INTO `stok_bahan` (`id_bahan`, `nama_bahan`, `jumlah_stok`, `satuan`, `stok_minimum`, `tanggal_masuk`, `tanggal_expired`, `created_at`) VALUES
(1, 'Beras Kepala Super', 145, 'Kg', 20, '2026-06-01', '2027-06-01', '2026-06-13 07:35:07'),
(2, 'Daging Ayam Fillet', 41, 'Kg', 10, '2026-06-10', '2026-06-25', '2026-06-13 07:35:07'),
(3, 'Udang Vaname Segar', 19, 'Kg', 5, '2026-06-12', '2026-06-15', '2026-06-13 07:35:07'),
(4, 'Susu UHT Dus', 29, 'Karton', 5, '2026-06-05', '2026-12-05', '2026-06-13 07:35:07'),
(5, 'Makaroni Pipa', 14, 'Kg', 3, '2026-06-02', '2027-06-02', '2026-06-13 07:35:07'),
(6, 'Kacang Tanah Kupas', 24, 'Kg', 5, '2026-06-01', '2026-09-01', '2026-06-13 07:35:07'),
(7, 'Buah Stroberi Frozen', 12, 'Kg', 2, '2026-06-11', '2026-07-11', '2026-06-13 07:35:07'),
(8, 'Telur Ayam Negeri', 90, 'Butir', 30, '2026-06-12', '2026-07-02', '2026-06-13 07:35:07'),
(9, 'Tahu Putih Bersih', 188, 'Pcs', 50, '2026-06-13', '2026-06-16', '2026-06-13 07:35:07'),
(10, 'Ikan Tongkol Segar', 27, 'Kg', 8, '2026-06-12', '2026-06-16', '2026-06-13 07:35:07'),
(11, 'Tepung Terigu Segitiga', 40, 'Kg', 10, '2026-06-01', '2027-03-01', '2026-06-13 07:35:07'),
(12, 'Cokelat Bubuk Murni', 10, 'Kg', 2, '2026-06-02', '2027-06-02', '2026-06-13 07:35:07'),
(13, 'Jagung Manis Pipil', 35, 'Kg', 10, '2026-06-10', '2026-08-10', '2026-06-13 07:35:07'),
(14, 'Daging Sapi Sirloin', 23, 'Kg', 5, '2026-06-11', '2026-07-11', '2026-06-13 07:35:07'),
(15, 'Buah Jeruk Siam', 50, 'Kg', 15, '2026-06-12', '2026-06-22', '2026-06-13 07:35:07'),
(16, 'Sayur Bayam Segar', 13, 'Ikat', 5, '2026-06-13', '2026-06-15', '2026-06-13 07:35:07'),
(17, 'Minyak Goreng Sania', 60, 'Liter', 12, '2026-06-01', '2028-06-01', '2026-06-13 07:35:07'),
(18, 'Gula Pasir Putih', 80, 'Kg', 15, '2026-06-01', '2029-06-01', '2026-06-13 07:35:07'),
(19, 'Keju Cheddar Kraft', 15, 'Pcs', 3, '2026-06-05', '2026-11-05', '2026-06-13 07:35:07'),
(20, 'Biji Selasih Kering', 5, 'Kg', 1, '2026-06-01', '2027-06-01', '2026-06-13 07:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','petugas_stok','petugas_distribusi') DEFAULT 'petugas_stok',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'Shaqilla Swita Sarah', 'shaqilla', '$2y$10$maTon2a2jmlHW8JJDkgk5.hCDMQov/kf9kJohNmZ/WiPZ1qm16WsC', 'admin', '2026-06-13 07:35:07'),
(2, 'Muhammad Rasyid', 'rasyid', '$2y$10$2hiKoFDYC3mNLZLzaG7JUelVoFZ0bwvlx.2nGjKRj9/rKJ28DPt9.', 'admin', '2026-06-13 07:35:07'),
(3, 'Muhammad Aldi', 'aldi', '$2y$10$LHnRm7KxjPGKAG7gv.U9x.suORbyC0IQ5nP47Wi7xVdAqY8b2SsqC', 'admin', '2026-06-13 07:35:07'),
(4, 'Suhabil AlFajri', 'suhabil', '$2y$10$PM3SeOdXn/qalv5WT56hV.Hc6DNLLbps9iuWlrfTH/tL10vmEvqpm', 'admin', '2026-06-13 07:35:07'),
(5, 'Siti Aminah', 'siti', '$2y$10$rSfvZuMsSeO8sqCZkLqBFOJvPK7CwBPRFR8kLHJCw573szjMN/KaW', 'petugas_stok', '2026-06-13 07:35:07'),
(6, 'Fauzan Lubis', 'fauzan', '$2y$10$Id00UOJFH8/m6ndAtM.EBeDgp3txQkwdthTd3FpcrItGhR0V.5fZO', 'petugas_distribusi', '2026-06-13 07:35:07'),
(7, 'Dewi Sartika', 'dewi', '$2y$10$a9mHFxbsk9Auqr9jUdO9m.2Gvsdrgf.h0iBrBDoqktoeGcBRHib3i', 'petugas_distribusi', '2026-06-13 07:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `validasi_alergi`
--

CREATE TABLE `validasi_alergi` (
  `id_validasi` int(11) NOT NULL,
  `id_distribusi` int(11) NOT NULL,
  `status_validasi` enum('Aman','Bahaya','Perlu Penggantian') DEFAULT 'Aman',
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `validasi_alergi`
--

INSERT INTO `validasi_alergi` (`id_validasi`, `id_distribusi`, `status_validasi`, `catatan`, `created_at`) VALUES
(21, 1, 'Aman', 'Siswa aman mengonsumsi menu Paket Utama TK.', '2026-06-14 05:49:54'),
(22, 2, 'Aman', 'Sajian bebas dari unsur alergen telur ayam siswa.', '2026-06-14 05:49:54'),
(23, 3, 'Aman', 'Menu tervalidasi aman dari kontaminasi kacang tanah.', '2026-06-14 05:49:54'),
(24, 4, 'Aman', 'Menu aman dikonsumsi, tidak mengandung komponen seafood.', '2026-06-14 05:49:54'),
(25, 5, 'Aman', 'Komponen menu aman untuk dikonsumsi.', '2026-06-14 05:49:54'),
(26, 6, 'Bahaya', 'PERINGATAN! Menu mengandung Tahu Bacem yang berbenturan dengan alergi kedelai siswa.', '2026-06-14 05:49:54'),
(27, 7, 'Aman', 'Menu aman, jenis ikan laut berbeda dengan riwayat alergi siswa.', '2026-06-14 05:49:54'),
(28, 8, 'Aman', 'Hidangan utama aman dari kandungan cokelat.', '2026-06-14 05:49:54'),
(29, 9, 'Aman', 'Siswa tidak memiliki rekam alergi pada menu ini.', '2026-06-14 05:49:54'),
(30, 10, 'Aman', 'Sajian aman untuk dikonsumsi.', '2026-06-14 05:49:54'),
(31, 11, 'Perlu Penggantian', 'Siswa alergi seafood udang rebon, harap perhatikan olahan ikan sambal.', '2026-06-14 05:49:54'),
(32, 12, 'Bahaya', 'PERINGATAN KERAS! Menu mengandung Telur Rebus Bulat, wajib diganti lauk tanpa telur.', '2026-06-14 05:49:54'),
(33, 13, 'Aman', 'Komposisi sayur lodeh dan ikan sambal aman dari keju.', '2026-06-14 05:49:54'),
(34, 14, 'Aman', 'Sajian makan siang aman dari buah stroberi.', '2026-06-14 05:49:54'),
(35, 15, 'Aman', 'Menu makan siang aman untuk dikonsumsi.', '2026-06-14 05:49:54'),
(36, 16, 'Aman', 'Rendang daging sapi aman dari unsur laut.', '2026-06-14 05:49:54'),
(37, 17, 'Aman', 'Sajian ayam bakar aman dari protein daging merah.', '2026-06-14 05:49:54'),
(38, 18, 'Aman', 'Pencuci mulut pisang ambon aman dari asam sitrat jeruk.', '2026-06-14 05:49:54'),
(39, 19, 'Perlu Penggantian', 'Kurangi porsi kecap manis berkedelai pekat pada tumisan buncis siswa.', '2026-06-14 05:49:54'),
(40, 20, 'Aman', 'Sop kimlo komplit tervalidasi aman dari kaldu tomat.', '2026-06-14 05:49:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alergi_siswa`
--
ALTER TABLE `alergi_siswa`
  ADD PRIMARY KEY (`id_alergi_siswa`),
  ADD UNIQUE KEY `id_siswa` (`id_siswa`,`id_alergi`),
  ADD KEY `id_alergi` (`id_alergi`),
  ADD KEY `alergi_siswa_ibfk_sekolah` (`id_sekolah`);

--
-- Indexes for table `distribusi`
--
ALTER TABLE `distribusi`
  ADD PRIMARY KEY (`id_distribusi`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `master_alergi`
--
ALTER TABLE `master_alergi`
  ADD PRIMARY KEY (`id_alergi`),
  ADD UNIQUE KEY `nama_alergi` (`nama_alergi`);

--
-- Indexes for table `master_sekolah`
--
ALTER TABLE `master_sekolah`
  ADD PRIMARY KEY (`id_sekolah`),
  ADD UNIQUE KEY `npsn` (`npsn`);

--
-- Indexes for table `menu_alergen`
--
ALTER TABLE `menu_alergen`
  ADD PRIMARY KEY (`id_menu_alergen`),
  ADD UNIQUE KEY `id_menu` (`id_menu`,`id_alergi`),
  ADD KEY `id_alergi` (`id_alergi`);

--
-- Indexes for table `menu_makanan`
--
ALTER TABLE `menu_makanan`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `siswa_ibfk_sekolah` (`id_sekolah`);

--
-- Indexes for table `siswa_menu`
--
ALTER TABLE `siswa_menu`
  ADD PRIMARY KEY (`id_siswa_menu`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `stok_bahan`
--
ALTER TABLE `stok_bahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `validasi_alergi`
--
ALTER TABLE `validasi_alergi`
  ADD PRIMARY KEY (`id_validasi`),
  ADD KEY `id_distribusi` (`id_distribusi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alergi_siswa`
--
ALTER TABLE `alergi_siswa`
  MODIFY `id_alergi_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `distribusi`
--
ALTER TABLE `distribusi`
  MODIFY `id_distribusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `master_alergi`
--
ALTER TABLE `master_alergi`
  MODIFY `id_alergi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `master_sekolah`
--
ALTER TABLE `master_sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_alergen`
--
ALTER TABLE `menu_alergen`
  MODIFY `id_menu_alergen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menu_makanan`
--
ALTER TABLE `menu_makanan`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `siswa_menu`
--
ALTER TABLE `siswa_menu`
  MODIFY `id_siswa_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `stok_bahan`
--
ALTER TABLE `stok_bahan`
  MODIFY `id_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `validasi_alergi`
--
ALTER TABLE `validasi_alergi`
  MODIFY `id_validasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alergi_siswa`
--
ALTER TABLE `alergi_siswa`
  ADD CONSTRAINT `alergi_siswa_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alergi_siswa_ibfk_2` FOREIGN KEY (`id_alergi`) REFERENCES `master_alergi` (`id_alergi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alergi_siswa_ibfk_sekolah` FOREIGN KEY (`id_sekolah`) REFERENCES `master_sekolah` (`id_sekolah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `distribusi`
--
ALTER TABLE `distribusi`
  ADD CONSTRAINT `distribusi_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `distribusi_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu_makanan` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `distribusi_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD CONSTRAINT `log_aktivitas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_alergen`
--
ALTER TABLE `menu_alergen`
  ADD CONSTRAINT `menu_alergen_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu_makanan` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_alergen_ibfk_2` FOREIGN KEY (`id_alergi`) REFERENCES `master_alergi` (`id_alergi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_sekolah` FOREIGN KEY (`id_sekolah`) REFERENCES `master_sekolah` (`id_sekolah`) ON UPDATE CASCADE;

--
-- Constraints for table `siswa_menu`
--
ALTER TABLE `siswa_menu`
  ADD CONSTRAINT `siswa_menu_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu_makanan` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `validasi_alergi`
--
ALTER TABLE `validasi_alergi`
  ADD CONSTRAINT `validasi_alergi_ibfk_1` FOREIGN KEY (`id_distribusi`) REFERENCES `distribusi` (`id_distribusi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
