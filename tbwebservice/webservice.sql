-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 11 Mei 2016 pada 11.10
-- Versi Server: 5.6.14
-- Versi PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `webservice`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1462023943),
('m130524_201442_init', 1462023946);

-- --------------------------------------------------------

--
-- Struktur dari tabel `repository`
--

CREATE TABLE IF NOT EXISTS `repository` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `repository`
--

INSERT INTO `repository` (`id`, `nama_barang`, `jenis_barang`) VALUES
(1, 'HP', 'Sedang'),
(2, 'AC', 'Sedang'),
(3, 'DVD', 'Kecil'),
(5, 'Tape', 'Kecil'),
(6, 'CD Player', 'Besar'),
(7, 'A', 'B'),
(10, 'Hardisk', 'Besar'),
(11, 'Laptop', 'Sedang'),
(12, 'F', 'K'),
(13, 'F', 'K');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Ar41kbUdhndUKbyiEp6uiHrKPbqaWzc2', '$2y$13$.wMZ4c990gbSK1ULN..n8.XflznDBU1vCMrPRoaRzUUE.cTgcXRZ6', NULL, 'admin@gmail.com', 10, 1462036022, 1462036022),
(2, 'gilang', 'VJE0t6AtxiVOUYK0leipr6OXkY1Cjh53', '$2y$13$CIThMq99XV.ZcmiFfFi.rOXWbp8EulqvQwEf1jzHC8Fl.R6Yh4PGy', NULL, 'gilang@gmail.com', 10, 1462104820, 1462104820),
(3, 'bayu', 'AFRrgEoSEG1sUyFryeilnyM3EVmIIZEK', '$2y$13$XNz2D68RQ76Yr51ZU8Mqgeowx7OS/OF4MRpF2bHpZaoUZzti0s3H.', NULL, 'bayu@gmail.com', 10, 1462104878, 1462104878),
(4, 'entol', 'i4rQBsxTAVvUFRJbvjZk0MDWL5-WxNA7', '$2y$13$VhUXlZz2w7zJvWinBttFZOftjSW19mYYZ6zP/4V.534twxQZjpB7.', NULL, 'entol@gmail.com', 10, 1462104900, 1462104900),
(5, 'boyan', 'm8ILO6ZUDbRTGb8aC6AjMJBQYoJ_mj94', '$2y$13$dupWYFuReNswC065BC1iou7Cuo2tO8ZpJSGyqxFX/SWN3/e4URXHK', NULL, 'boyan@gmail.com', 10, 1462108841, 1462512915);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
